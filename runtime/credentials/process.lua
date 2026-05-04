-- Process credential provider.
-- Runs a credential_process command and parses the JSON output.
-- Expected JSON: { Version: 1, AccessKeyId, SecretAccessKey, SessionToken?, Expiration? }

local auth = require("auth")
local json_decoder = require("json.decoder")

local M = {}

--- Create an identity resolver that runs a credential_process command.
--- @param command string  The command to execute
function M.new(command)
    return function()
        local handle = io.popen(command, "r")
        if not handle then
            return nil, { type = "sdk", code = "ProcessCredentials",
                message = "failed to execute credential_process: " .. command }
        end
        local output = handle:read("*a")
        local close_ok = handle:close()
        -- LuaJIT io.popen:close() returns just true/nil, not the 3-value form
        if close_ok == false then
            return nil, { type = "sdk", code = "ProcessCredentials",
                message = "credential_process failed: " .. (output or "") }
        end

        local parsed, err = json_decoder.decode(output)
        if not parsed then
            return nil, { type = "sdk", code = "ProcessCredentials",
                message = "failed to parse credential_process output: " .. tostring(err) }
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
            parsed.AccessKeyId,
            parsed.SecretAccessKey,
            parsed.SessionToken,
            parsed.Expiration
        ), nil
    end
end

return M
