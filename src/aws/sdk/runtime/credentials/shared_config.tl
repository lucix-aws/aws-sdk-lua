-- Shared config/credentials file credential provider.

local auth = require("smithy.auth")

local record M
    new: function(cfg: {string:any}): function(): any, any
end

function M.new(cfg: {string:any}): function(): any, any
    return function(): auth.Credentials, any
        local ak = cfg.access_key_id as string
        local sk = cfg.secret_access_key as string
        if not ak or not sk then
            return nil, { type = "sdk", code = "NoCredentials",
                message = "no credentials in shared config/credentials file" }
        end
        return auth.new_credentials(ak, sk, cfg.session_token as string), nil
    end
end

return M
