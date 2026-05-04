-- AWS SDK default config resolvers.
-- Builds the default credential chain using load_config for profile resolution.

local M = {}

--- Resolve the default identity resolver.
-- Chain order: static > environment > shared config > process credentials.
function M.resolve_identity_resolver(cfg)
    if cfg.identity_resolver then return end

    local load_config = require("load_config")
    local chain = require("credentials.chain")
    local env_provider = require("credentials.environment")

    local resolved = load_config.load(cfg) or {}
    local providers = {}

    -- 1. Static: user passed explicit credentials in config
    if cfg.access_key_id and cfg.secret_access_key then
        local static = require("credentials.static")
        providers[#providers + 1] = static.new(cfg.access_key_id, cfg.secret_access_key, cfg.session_token)
    end

    -- 2. Environment variables
    providers[#providers + 1] = env_provider.new()

    -- 3. Shared config/credentials file
    if resolved.access_key_id and resolved.secret_access_key then
        local shared = require("credentials.shared_config")
        providers[#providers + 1] = shared.new(resolved)
    end

    -- 4. Process credentials
    if resolved.credential_process then
        local process = require("credentials.process")
        providers[#providers + 1] = process.new(resolved.credential_process)
    end

    -- Also propagate region from resolved config if not already set
    if not cfg.region and resolved.region then
        cfg.region = resolved.region
    end

    cfg.identity_resolver = chain.new(providers)
end

return M
