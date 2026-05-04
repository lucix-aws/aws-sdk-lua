local types = require("greengrass.types")

local record Client
    associateRoleToGroup: function(Client, types.AssociateRoleToGroupInput): types.AssociateRoleToGroupOutput, table
    associateServiceRoleToAccount: function(Client, types.AssociateServiceRoleToAccountInput): types.AssociateServiceRoleToAccountOutput, table
    createConnectorDefinition: function(Client, types.CreateConnectorDefinitionInput): types.CreateConnectorDefinitionOutput, table
    createConnectorDefinitionVersion: function(Client, types.CreateConnectorDefinitionVersionInput): types.CreateConnectorDefinitionVersionOutput, table
    createCoreDefinition: function(Client, types.CreateCoreDefinitionInput): types.CreateCoreDefinitionOutput, table
    createCoreDefinitionVersion: function(Client, types.CreateCoreDefinitionVersionInput): types.CreateCoreDefinitionVersionOutput, table
    createDeployment: function(Client, types.CreateDeploymentInput): types.CreateDeploymentOutput, table
    createDeviceDefinition: function(Client, types.CreateDeviceDefinitionInput): types.CreateDeviceDefinitionOutput, table
    createDeviceDefinitionVersion: function(Client, types.CreateDeviceDefinitionVersionInput): types.CreateDeviceDefinitionVersionOutput, table
    createFunctionDefinition: function(Client, types.CreateFunctionDefinitionInput): types.CreateFunctionDefinitionOutput, table
    createFunctionDefinitionVersion: function(Client, types.CreateFunctionDefinitionVersionInput): types.CreateFunctionDefinitionVersionOutput, table
    createGroup: function(Client, types.CreateGroupInput): types.CreateGroupOutput, table
    createGroupCertificateAuthority: function(Client, types.CreateGroupCertificateAuthorityInput): types.CreateGroupCertificateAuthorityOutput, table
    createGroupVersion: function(Client, types.CreateGroupVersionInput): types.CreateGroupVersionOutput, table
    createLoggerDefinition: function(Client, types.CreateLoggerDefinitionInput): types.CreateLoggerDefinitionOutput, table
    createLoggerDefinitionVersion: function(Client, types.CreateLoggerDefinitionVersionInput): types.CreateLoggerDefinitionVersionOutput, table
    createResourceDefinition: function(Client, types.CreateResourceDefinitionInput): types.CreateResourceDefinitionOutput, table
    createResourceDefinitionVersion: function(Client, types.CreateResourceDefinitionVersionInput): types.CreateResourceDefinitionVersionOutput, table
    createSoftwareUpdateJob: function(Client, types.CreateSoftwareUpdateJobInput): types.CreateSoftwareUpdateJobOutput, table
    createSubscriptionDefinition: function(Client, types.CreateSubscriptionDefinitionInput): types.CreateSubscriptionDefinitionOutput, table
    createSubscriptionDefinitionVersion: function(Client, types.CreateSubscriptionDefinitionVersionInput): types.CreateSubscriptionDefinitionVersionOutput, table
    deleteConnectorDefinition: function(Client, types.DeleteConnectorDefinitionInput): types.DeleteConnectorDefinitionOutput, table
    deleteCoreDefinition: function(Client, types.DeleteCoreDefinitionInput): types.DeleteCoreDefinitionOutput, table
    deleteDeviceDefinition: function(Client, types.DeleteDeviceDefinitionInput): types.DeleteDeviceDefinitionOutput, table
    deleteFunctionDefinition: function(Client, types.DeleteFunctionDefinitionInput): types.DeleteFunctionDefinitionOutput, table
    deleteGroup: function(Client, types.DeleteGroupInput): types.DeleteGroupOutput, table
    deleteLoggerDefinition: function(Client, types.DeleteLoggerDefinitionInput): types.DeleteLoggerDefinitionOutput, table
    deleteResourceDefinition: function(Client, types.DeleteResourceDefinitionInput): types.DeleteResourceDefinitionOutput, table
    deleteSubscriptionDefinition: function(Client, types.DeleteSubscriptionDefinitionInput): types.DeleteSubscriptionDefinitionOutput, table
    disassociateRoleFromGroup: function(Client, types.DisassociateRoleFromGroupInput): types.DisassociateRoleFromGroupOutput, table
    disassociateServiceRoleFromAccount: function(Client, types.DisassociateServiceRoleFromAccountInput): types.DisassociateServiceRoleFromAccountOutput, table
    getAssociatedRole: function(Client, types.GetAssociatedRoleInput): types.GetAssociatedRoleOutput, table
    getBulkDeploymentStatus: function(Client, types.GetBulkDeploymentStatusInput): types.GetBulkDeploymentStatusOutput, table
    getConnectivityInfo: function(Client, types.GetConnectivityInfoInput): types.GetConnectivityInfoOutput, table
    getConnectorDefinition: function(Client, types.GetConnectorDefinitionInput): types.GetConnectorDefinitionOutput, table
    getConnectorDefinitionVersion: function(Client, types.GetConnectorDefinitionVersionInput): types.GetConnectorDefinitionVersionOutput, table
    getCoreDefinition: function(Client, types.GetCoreDefinitionInput): types.GetCoreDefinitionOutput, table
    getCoreDefinitionVersion: function(Client, types.GetCoreDefinitionVersionInput): types.GetCoreDefinitionVersionOutput, table
    getDeploymentStatus: function(Client, types.GetDeploymentStatusInput): types.GetDeploymentStatusOutput, table
    getDeviceDefinition: function(Client, types.GetDeviceDefinitionInput): types.GetDeviceDefinitionOutput, table
    getDeviceDefinitionVersion: function(Client, types.GetDeviceDefinitionVersionInput): types.GetDeviceDefinitionVersionOutput, table
    getFunctionDefinition: function(Client, types.GetFunctionDefinitionInput): types.GetFunctionDefinitionOutput, table
    getFunctionDefinitionVersion: function(Client, types.GetFunctionDefinitionVersionInput): types.GetFunctionDefinitionVersionOutput, table
    getGroup: function(Client, types.GetGroupInput): types.GetGroupOutput, table
    getGroupCertificateAuthority: function(Client, types.GetGroupCertificateAuthorityInput): types.GetGroupCertificateAuthorityOutput, table
    getGroupCertificateConfiguration: function(Client, types.GetGroupCertificateConfigurationInput): types.GetGroupCertificateConfigurationOutput, table
    getGroupVersion: function(Client, types.GetGroupVersionInput): types.GetGroupVersionOutput, table
    getLoggerDefinition: function(Client, types.GetLoggerDefinitionInput): types.GetLoggerDefinitionOutput, table
    getLoggerDefinitionVersion: function(Client, types.GetLoggerDefinitionVersionInput): types.GetLoggerDefinitionVersionOutput, table
    getResourceDefinition: function(Client, types.GetResourceDefinitionInput): types.GetResourceDefinitionOutput, table
    getResourceDefinitionVersion: function(Client, types.GetResourceDefinitionVersionInput): types.GetResourceDefinitionVersionOutput, table
    getServiceRoleForAccount: function(Client, types.GetServiceRoleForAccountInput): types.GetServiceRoleForAccountOutput, table
    getSubscriptionDefinition: function(Client, types.GetSubscriptionDefinitionInput): types.GetSubscriptionDefinitionOutput, table
    getSubscriptionDefinitionVersion: function(Client, types.GetSubscriptionDefinitionVersionInput): types.GetSubscriptionDefinitionVersionOutput, table
    getThingRuntimeConfiguration: function(Client, types.GetThingRuntimeConfigurationInput): types.GetThingRuntimeConfigurationOutput, table
    listBulkDeploymentDetailedReports: function(Client, types.ListBulkDeploymentDetailedReportsInput): types.ListBulkDeploymentDetailedReportsOutput, table
    listBulkDeployments: function(Client, types.ListBulkDeploymentsInput): types.ListBulkDeploymentsOutput, table
    listConnectorDefinitions: function(Client, types.ListConnectorDefinitionsInput): types.ListConnectorDefinitionsOutput, table
    listConnectorDefinitionVersions: function(Client, types.ListConnectorDefinitionVersionsInput): types.ListConnectorDefinitionVersionsOutput, table
    listCoreDefinitions: function(Client, types.ListCoreDefinitionsInput): types.ListCoreDefinitionsOutput, table
    listCoreDefinitionVersions: function(Client, types.ListCoreDefinitionVersionsInput): types.ListCoreDefinitionVersionsOutput, table
    listDeployments: function(Client, types.ListDeploymentsInput): types.ListDeploymentsOutput, table
    listDeviceDefinitions: function(Client, types.ListDeviceDefinitionsInput): types.ListDeviceDefinitionsOutput, table
    listDeviceDefinitionVersions: function(Client, types.ListDeviceDefinitionVersionsInput): types.ListDeviceDefinitionVersionsOutput, table
    listFunctionDefinitions: function(Client, types.ListFunctionDefinitionsInput): types.ListFunctionDefinitionsOutput, table
    listFunctionDefinitionVersions: function(Client, types.ListFunctionDefinitionVersionsInput): types.ListFunctionDefinitionVersionsOutput, table
    listGroupCertificateAuthorities: function(Client, types.ListGroupCertificateAuthoritiesInput): types.ListGroupCertificateAuthoritiesOutput, table
    listGroups: function(Client, types.ListGroupsInput): types.ListGroupsOutput, table
    listGroupVersions: function(Client, types.ListGroupVersionsInput): types.ListGroupVersionsOutput, table
    listLoggerDefinitions: function(Client, types.ListLoggerDefinitionsInput): types.ListLoggerDefinitionsOutput, table
    listLoggerDefinitionVersions: function(Client, types.ListLoggerDefinitionVersionsInput): types.ListLoggerDefinitionVersionsOutput, table
    listResourceDefinitions: function(Client, types.ListResourceDefinitionsInput): types.ListResourceDefinitionsOutput, table
    listResourceDefinitionVersions: function(Client, types.ListResourceDefinitionVersionsInput): types.ListResourceDefinitionVersionsOutput, table
    listSubscriptionDefinitions: function(Client, types.ListSubscriptionDefinitionsInput): types.ListSubscriptionDefinitionsOutput, table
    listSubscriptionDefinitionVersions: function(Client, types.ListSubscriptionDefinitionVersionsInput): types.ListSubscriptionDefinitionVersionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    resetDeployments: function(Client, types.ResetDeploymentsInput): types.ResetDeploymentsOutput, table
    startBulkDeployment: function(Client, types.StartBulkDeploymentInput): types.StartBulkDeploymentOutput, table
    stopBulkDeployment: function(Client, types.StopBulkDeploymentInput): types.StopBulkDeploymentOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateConnectivityInfo: function(Client, types.UpdateConnectivityInfoInput): types.UpdateConnectivityInfoOutput, table
    updateConnectorDefinition: function(Client, types.UpdateConnectorDefinitionInput): types.UpdateConnectorDefinitionOutput, table
    updateCoreDefinition: function(Client, types.UpdateCoreDefinitionInput): types.UpdateCoreDefinitionOutput, table
    updateDeviceDefinition: function(Client, types.UpdateDeviceDefinitionInput): types.UpdateDeviceDefinitionOutput, table
    updateFunctionDefinition: function(Client, types.UpdateFunctionDefinitionInput): types.UpdateFunctionDefinitionOutput, table
    updateGroup: function(Client, types.UpdateGroupInput): types.UpdateGroupOutput, table
    updateGroupCertificateConfiguration: function(Client, types.UpdateGroupCertificateConfigurationInput): types.UpdateGroupCertificateConfigurationOutput, table
    updateLoggerDefinition: function(Client, types.UpdateLoggerDefinitionInput): types.UpdateLoggerDefinitionOutput, table
    updateResourceDefinition: function(Client, types.UpdateResourceDefinitionInput): types.UpdateResourceDefinitionOutput, table
    updateSubscriptionDefinition: function(Client, types.UpdateSubscriptionDefinitionInput): types.UpdateSubscriptionDefinitionOutput, table
    updateThingRuntimeConfiguration: function(Client, types.UpdateThingRuntimeConfigurationInput): types.UpdateThingRuntimeConfigurationOutput, table
end

local record M
    new: function(table): Client
end

return M
