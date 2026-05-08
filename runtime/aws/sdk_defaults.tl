-- AWS SDK default config resolvers.
-- Builds the default credential chain using load_config for profile resolution.

local record M
    resolve_identity_resolver: function(cfg: {string:any})
end

function M.resolve_identity_resolver(cfg: {string:any})
    if cfg.identity_resolver then return end

    local load_config = require("aws.load_config") as {string:any}
    local chain = require("aws.credentials.chain") as {string:any}
    local env_provider = require("aws.credentials.environment") as {string:any}

    local load_fn = load_config.load as function({string:any}): {string:any}
    local resolved = load_fn(cfg) or {} as {string:any}
    local providers: {any} = {}

    -- 1. Static: user passed explicit credentials in config
    if cfg.access_key_id and cfg.secret_access_key then
        local static = require("aws.credentials.static") as {string:any}
        local new_fn = static.new as function(any, any, any): any
        providers[#providers + 1] = new_fn(cfg.access_key_id, cfg.secret_access_key, cfg.session_token)
    end

    -- 2. Environment variables
    local env_new = env_provider.new as function(): any
    providers[#providers + 1] = env_new()

    -- 3. Shared config/credentials file
    if resolved.access_key_id and resolved.secret_access_key then
        local shared = require("aws.credentials.shared_config") as {string:any}
        local shared_new = shared.new as function({string:any}): any
        providers[#providers + 1] = shared_new(resolved)
    end

    -- 4. Process credentials
    if resolved.credential_process then
        local process = require("aws.credentials.process") as {string:any}
        local process_new = process.new as function(any): any
        providers[#providers + 1] = process_new(resolved.credential_process)
    end

    -- Also propagate region from resolved config if not already set
    if not cfg.region and resolved.region then
        cfg.region = resolved.region
    end

    local chain_new = chain.new as function({any}): any
    cfg.identity_resolver = chain_new(providers)
    -- Wire into the identity_resolvers map that the auth system uses
    if not cfg.identity_resolvers then cfg.identity_resolvers = {} end
    local ir = cfg.identity_resolvers as {string:any}
    ir["aws_credentials"] = cfg.identity_resolver
end

return M
