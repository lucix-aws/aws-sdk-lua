-- Environment variable credential provider.

local auth = require("smithy.auth")

local record M
    new: function(): function(): any, any
end

function M.new(): function(): any, any
    return function(): auth.Credentials, any
        local ak = os.getenv("AWS_ACCESS_KEY_ID")
        local sk = os.getenv("AWS_SECRET_ACCESS_KEY")
        if not ak or not sk then
            return nil, { type = "sdk", code = "NoCredentials",
                message = "AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY must be set" }
        end
        return auth.new_credentials(ak, sk, os.getenv("AWS_SESSION_TOKEN")), nil
    end
end

return M
