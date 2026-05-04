local types = require("sso.types")

local record Client
    getRoleCredentials: function(Client, types.GetRoleCredentialsInput): types.GetRoleCredentialsOutput, table
    listAccountRoles: function(Client, types.ListAccountRolesInput): types.ListAccountRolesOutput, table
    listAccounts: function(Client, types.ListAccountsInput): types.ListAccountsOutput, table
    logout: function(Client, types.LogoutInput): types.LogoutOutput, table
end

local record M
    new: function(table): Client
end

return M
