-- Process credential provider.

local auth = require("smithy.auth")
local json_decoder = require("smithy.json.decoder")

local record M
    new: function(command: string): function(): any, any
end

function M.new(command: string): function(): any, any
    return function(): auth.Credentials, any
        local handle = io.popen(command, "r")
        if not handle then
            return nil, { type = "sdk", code = "ProcessCredentials",
                message = "failed to execute credential_process: " .. command }
        end
        local output = handle:read("*a")
        local close_ok = handle:close()
        if close_ok == false then
            return nil, { type = "sdk", code = "ProcessCredentials",
                message = "credential_process failed: " .. (output or "") }
        end

        local parsed = json_decoder.decode(output) as {string:any}
        if not parsed then
            return nil, { type = "sdk", code = "ProcessCredentials",
                message = "failed to parse credential_process output" }
        end
        if parsed.Version ~= 1 then
            return nil, { type = "sdk", code = "ProcessCredentials",
                message = "unsupported credential_process version: " .. tostring(parsed.Version) }
        end
        if not parsed.AccessKeyId or not parsed.SecretAccessKey then
            return nil, { type = "sdk", code = "ProcessCredentials",
                message = "credential_process output missing AccessKeyId or SecretAccessKey" }
        end

        return auth.new_credentials(
            parsed.AccessKeyId as string,
            parsed.SecretAccessKey as string,
            parsed.SessionToken as string,
            parsed.Expiration as number
        ), nil
    end
end

return M
