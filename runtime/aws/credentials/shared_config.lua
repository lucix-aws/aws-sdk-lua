-- Shared config/credentials file credential provider.
-- Reads aws_access_key_id / aws_secret_access_key from the resolved profile.

local auth = require("smithy.auth")

local M = {}

--- Create an identity resolver from resolved config fields.
--- @param cfg table  Resolved config from load_config.load() with access_key_id, secret_access_key, session_token
function M.new(cfg)
    return function()
        local ak = cfg.access_key_id
        local sk = cfg.secret_access_key
        if not ak or not sk then
            return nil, { type = "sdk", code = "NoCredentials",
                message = "no credentials in shared config/credentials file" }
        end
        return auth.new_credentials(ak, sk, cfg.session_token), nil
    end
end

return M
