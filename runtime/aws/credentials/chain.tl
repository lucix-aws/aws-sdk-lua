-- Credential chain provider.

local record M
    new: function(providers: {function(): any, any}): function(): any, any
end

function M.new(providers: {function(): any, any}): function(): any, any
    return function(): any, any
        local errors: {string} = {}
        for _, provider in ipairs(providers) do
            local identity, err = provider()
            if identity then return identity, nil end
            if err then
                local e = err as {string:any}
                errors[#errors + 1] = (e.message or e.code or "unknown") as string
            end
        end
        return nil, { type = "sdk", code = "NoCredentials",
            message = "all credential providers failed: " .. table.concat(errors, "; ") }
    end
end

return M
