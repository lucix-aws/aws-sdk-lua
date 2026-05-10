-- Static credential provider.
-- Returns credentials from explicitly provided access key / secret key.

local auth = require("smithy.auth")

local M = {}

--- Create an identity resolver from explicit credentials.
--- @param access_key string
--- @param secret_key string
--- @param session_token string|nil
function M.new(access_key, secret_key, session_token)
    return function()
        return auth.new_credentials(access_key, secret_key, session_token), nil
    end
end

return M
