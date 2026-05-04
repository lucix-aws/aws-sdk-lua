local types = require("eksauth.types")

local record Client
    assumeRoleForPodIdentity: function(Client, types.AssumeRoleForPodIdentityInput): types.AssumeRoleForPodIdentityOutput, table
end

local record M
    new: function(table): Client
end

return M
