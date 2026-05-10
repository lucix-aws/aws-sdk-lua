-- Static credential provider.

local auth = require("smithy.auth")

local record M
    new: function(access_key: string, secret_key: string, session_token?: string): function(): any, any
end

function M.new(access_key: string, secret_key: string, session_token?: string): function(): any, any
    return function(): auth.Credentials, any
        return auth.new_credentials(access_key, secret_key, session_token), nil
    end
end

return M
