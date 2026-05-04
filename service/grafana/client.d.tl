local types = require("grafana.types")

local record Client
    associateLicense: function(Client, types.AssociateLicenseInput): types.AssociateLicenseOutput, table
    createWorkspace: function(Client, types.CreateWorkspaceInput): types.CreateWorkspaceOutput, table
    createWorkspaceApiKey: function(Client, types.CreateWorkspaceApiKeyInput): types.CreateWorkspaceApiKeyOutput, table
    createWorkspaceServiceAccount: function(Client, types.CreateWorkspaceServiceAccountInput): types.CreateWorkspaceServiceAccountOutput, table
    createWorkspaceServiceAccountToken: function(Client, types.CreateWorkspaceServiceAccountTokenInput): types.CreateWorkspaceServiceAccountTokenOutput, table
    deleteWorkspace: function(Client, types.DeleteWorkspaceInput): types.DeleteWorkspaceOutput, table
    deleteWorkspaceApiKey: function(Client, types.DeleteWorkspaceApiKeyInput): types.DeleteWorkspaceApiKeyOutput, table
    deleteWorkspaceServiceAccount: function(Client, types.DeleteWorkspaceServiceAccountInput): types.DeleteWorkspaceServiceAccountOutput, table
    deleteWorkspaceServiceAccountToken: function(Client, types.DeleteWorkspaceServiceAccountTokenInput): types.DeleteWorkspaceServiceAccountTokenOutput, table
    describeWorkspace: function(Client, types.DescribeWorkspaceInput): types.DescribeWorkspaceOutput, table
    describeWorkspaceAuthentication: function(Client, types.DescribeWorkspaceAuthenticationInput): types.DescribeWorkspaceAuthenticationOutput, table
    describeWorkspaceConfiguration: function(Client, types.DescribeWorkspaceConfigurationInput): types.DescribeWorkspaceConfigurationOutput, table
    disassociateLicense: function(Client, types.DisassociateLicenseInput): types.DisassociateLicenseOutput, table
    listPermissions: function(Client, types.ListPermissionsInput): types.ListPermissionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listVersions: function(Client, types.ListVersionsInput): types.ListVersionsOutput, table
    listWorkspaces: function(Client, types.ListWorkspacesInput): types.ListWorkspacesOutput, table
    listWorkspaceServiceAccounts: function(Client, types.ListWorkspaceServiceAccountsInput): types.ListWorkspaceServiceAccountsOutput, table
    listWorkspaceServiceAccountTokens: function(Client, types.ListWorkspaceServiceAccountTokensInput): types.ListWorkspaceServiceAccountTokensOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updatePermissions: function(Client, types.UpdatePermissionsInput): types.UpdatePermissionsOutput, table
    updateWorkspace: function(Client, types.UpdateWorkspaceInput): types.UpdateWorkspaceOutput, table
    updateWorkspaceAuthentication: function(Client, types.UpdateWorkspaceAuthenticationInput): types.UpdateWorkspaceAuthenticationOutput, table
    updateWorkspaceConfiguration: function(Client, types.UpdateWorkspaceConfigurationInput): types.UpdateWorkspaceConfigurationOutput, table
end

local record M
    new: function(table): Client
end

return M
