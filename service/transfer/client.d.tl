local types = require("transfer.types")

local record Client
    createAccess: function(Client, types.CreateAccessInput): types.CreateAccessOutput, table
    createAgreement: function(Client, types.CreateAgreementInput): types.CreateAgreementOutput, table
    createConnector: function(Client, types.CreateConnectorInput): types.CreateConnectorOutput, table
    createProfile: function(Client, types.CreateProfileInput): types.CreateProfileOutput, table
    createServer: function(Client, types.CreateServerInput): types.CreateServerOutput, table
    createUser: function(Client, types.CreateUserInput): types.CreateUserOutput, table
    createWebApp: function(Client, types.CreateWebAppInput): types.CreateWebAppOutput, table
    createWorkflow: function(Client, types.CreateWorkflowInput): types.CreateWorkflowOutput, table
    deleteAccess: function(Client, types.DeleteAccessInput): types.DeleteAccessOutput, table
    deleteAgreement: function(Client, types.DeleteAgreementInput): types.DeleteAgreementOutput, table
    deleteCertificate: function(Client, types.DeleteCertificateInput): types.DeleteCertificateOutput, table
    deleteConnector: function(Client, types.DeleteConnectorInput): types.DeleteConnectorOutput, table
    deleteHostKey: function(Client, types.DeleteHostKeyInput): types.DeleteHostKeyOutput, table
    deleteProfile: function(Client, types.DeleteProfileInput): types.DeleteProfileOutput, table
    deleteServer: function(Client, types.DeleteServerInput): types.DeleteServerOutput, table
    deleteSshPublicKey: function(Client, types.DeleteSshPublicKeyInput): types.DeleteSshPublicKeyOutput, table
    deleteUser: function(Client, types.DeleteUserInput): types.DeleteUserOutput, table
    deleteWebApp: function(Client, types.DeleteWebAppInput): types.DeleteWebAppOutput, table
    deleteWebAppCustomization: function(Client, types.DeleteWebAppCustomizationInput): types.DeleteWebAppCustomizationOutput, table
    deleteWorkflow: function(Client, types.DeleteWorkflowInput): types.DeleteWorkflowOutput, table
    describeAccess: function(Client, types.DescribeAccessInput): types.DescribeAccessOutput, table
    describeAgreement: function(Client, types.DescribeAgreementInput): types.DescribeAgreementOutput, table
    describeCertificate: function(Client, types.DescribeCertificateInput): types.DescribeCertificateOutput, table
    describeConnector: function(Client, types.DescribeConnectorInput): types.DescribeConnectorOutput, table
    describeExecution: function(Client, types.DescribeExecutionInput): types.DescribeExecutionOutput, table
    describeHostKey: function(Client, types.DescribeHostKeyInput): types.DescribeHostKeyOutput, table
    describeProfile: function(Client, types.DescribeProfileInput): types.DescribeProfileOutput, table
    describeSecurityPolicy: function(Client, types.DescribeSecurityPolicyInput): types.DescribeSecurityPolicyOutput, table
    describeServer: function(Client, types.DescribeServerInput): types.DescribeServerOutput, table
    describeUser: function(Client, types.DescribeUserInput): types.DescribeUserOutput, table
    describeWebApp: function(Client, types.DescribeWebAppInput): types.DescribeWebAppOutput, table
    describeWebAppCustomization: function(Client, types.DescribeWebAppCustomizationInput): types.DescribeWebAppCustomizationOutput, table
    describeWorkflow: function(Client, types.DescribeWorkflowInput): types.DescribeWorkflowOutput, table
    importCertificate: function(Client, types.ImportCertificateInput): types.ImportCertificateOutput, table
    importHostKey: function(Client, types.ImportHostKeyInput): types.ImportHostKeyOutput, table
    importSshPublicKey: function(Client, types.ImportSshPublicKeyInput): types.ImportSshPublicKeyOutput, table
    listAccesses: function(Client, types.ListAccessesInput): types.ListAccessesOutput, table
    listAgreements: function(Client, types.ListAgreementsInput): types.ListAgreementsOutput, table
    listCertificates: function(Client, types.ListCertificatesInput): types.ListCertificatesOutput, table
    listConnectors: function(Client, types.ListConnectorsInput): types.ListConnectorsOutput, table
    listExecutions: function(Client, types.ListExecutionsInput): types.ListExecutionsOutput, table
    listFileTransferResults: function(Client, types.ListFileTransferResultsInput): types.ListFileTransferResultsOutput, table
    listHostKeys: function(Client, types.ListHostKeysInput): types.ListHostKeysOutput, table
    listProfiles: function(Client, types.ListProfilesInput): types.ListProfilesOutput, table
    listSecurityPolicies: function(Client, types.ListSecurityPoliciesInput): types.ListSecurityPoliciesOutput, table
    listServers: function(Client, types.ListServersInput): types.ListServersOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listUsers: function(Client, types.ListUsersInput): types.ListUsersOutput, table
    listWebApps: function(Client, types.ListWebAppsInput): types.ListWebAppsOutput, table
    listWorkflows: function(Client, types.ListWorkflowsInput): types.ListWorkflowsOutput, table
    sendWorkflowStepState: function(Client, types.SendWorkflowStepStateInput): types.SendWorkflowStepStateOutput, table
    startDirectoryListing: function(Client, types.StartDirectoryListingInput): types.StartDirectoryListingOutput, table
    startFileTransfer: function(Client, types.StartFileTransferInput): types.StartFileTransferOutput, table
    startRemoteDelete: function(Client, types.StartRemoteDeleteInput): types.StartRemoteDeleteOutput, table
    startRemoteMove: function(Client, types.StartRemoteMoveInput): types.StartRemoteMoveOutput, table
    startServer: function(Client, types.StartServerInput): types.StartServerOutput, table
    stopServer: function(Client, types.StopServerInput): types.StopServerOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    testConnection: function(Client, types.TestConnectionInput): types.TestConnectionOutput, table
    testIdentityProvider: function(Client, types.TestIdentityProviderInput): types.TestIdentityProviderOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAccess: function(Client, types.UpdateAccessInput): types.UpdateAccessOutput, table
    updateAgreement: function(Client, types.UpdateAgreementInput): types.UpdateAgreementOutput, table
    updateCertificate: function(Client, types.UpdateCertificateInput): types.UpdateCertificateOutput, table
    updateConnector: function(Client, types.UpdateConnectorInput): types.UpdateConnectorOutput, table
    updateHostKey: function(Client, types.UpdateHostKeyInput): types.UpdateHostKeyOutput, table
    updateProfile: function(Client, types.UpdateProfileInput): types.UpdateProfileOutput, table
    updateServer: function(Client, types.UpdateServerInput): types.UpdateServerOutput, table
    updateUser: function(Client, types.UpdateUserInput): types.UpdateUserOutput, table
    updateWebApp: function(Client, types.UpdateWebAppInput): types.UpdateWebAppOutput, table
    updateWebAppCustomization: function(Client, types.UpdateWebAppCustomizationInput): types.UpdateWebAppCustomizationOutput, table
end

local record M
    new: function(table): Client
end

return M
