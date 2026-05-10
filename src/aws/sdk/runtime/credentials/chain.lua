-- Credential chain provider.
-- Tries a list of identity resolvers in order, returning the first success.

local M = {}

--- Create a chain identity resolver.
--- @param providers table  Array of identity resolver functions
function M.new(providers)
    return function()
        local errors = {}
        for _, provider in ipairs(providers) do
            local identity, err = provider()
            if identity then return identity, nil end
            if err then errors[#errors + 1] = err.message or err.code or "unknown" end
        end
        return nil, { type = "sdk", code = "NoCredentials",
            message = "all credential providers failed: " .. table.concat(errors, "; ") }
    end
end

return M
