local types = require("greengrassv2.types")

local record Client
    associateServiceRoleToAccount: function(Client, types.AssociateServiceRoleToAccountInput): types.AssociateServiceRoleToAccountOutput, table
    batchAssociateClientDeviceWithCoreDevice: function(Client, types.BatchAssociateClientDeviceWithCoreDeviceInput): types.BatchAssociateClientDeviceWithCoreDeviceOutput, table
    batchDisassociateClientDeviceFromCoreDevice: function(Client, types.BatchDisassociateClientDeviceFromCoreDeviceInput): types.BatchDisassociateClientDeviceFromCoreDeviceOutput, table
    cancelDeployment: function(Client, types.CancelDeploymentInput): types.CancelDeploymentOutput, table
    createComponentVersion: function(Client, types.CreateComponentVersionInput): types.CreateComponentVersionOutput, table
    createDeployment: function(Client, types.CreateDeploymentInput): types.CreateDeploymentOutput, table
    deleteComponent: function(Client, types.DeleteComponentInput): types.DeleteComponentOutput, table
    deleteCoreDevice: function(Client, types.DeleteCoreDeviceInput): types.DeleteCoreDeviceOutput, table
    deleteDeployment: function(Client, types.DeleteDeploymentInput): types.DeleteDeploymentOutput, table
    describeComponent: function(Client, types.DescribeComponentInput): types.DescribeComponentOutput, table
    disassociateServiceRoleFromAccount: function(Client, types.DisassociateServiceRoleFromAccountInput): types.DisassociateServiceRoleFromAccountOutput, table
    getComponent: function(Client, types.GetComponentInput): types.GetComponentOutput, table
    getComponentVersionArtifact: function(Client, types.GetComponentVersionArtifactInput): types.GetComponentVersionArtifactOutput, table
    getConnectivityInfo: function(Client, types.GetConnectivityInfoInput): types.GetConnectivityInfoOutput, table
    getCoreDevice: function(Client, types.GetCoreDeviceInput): types.GetCoreDeviceOutput, table
    getDeployment: function(Client, types.GetDeploymentInput): types.GetDeploymentOutput, table
    getServiceRoleForAccount: function(Client, types.GetServiceRoleForAccountInput): types.GetServiceRoleForAccountOutput, table
    listClientDevicesAssociatedWithCoreDevice: function(Client, types.ListClientDevicesAssociatedWithCoreDeviceInput): types.ListClientDevicesAssociatedWithCoreDeviceOutput, table
    listComponents: function(Client, types.ListComponentsInput): types.ListComponentsOutput, table
    listComponentVersions: function(Client, types.ListComponentVersionsInput): types.ListComponentVersionsOutput, table
    listCoreDevices: function(Client, types.ListCoreDevicesInput): types.ListCoreDevicesOutput, table
    listDeployments: function(Client, types.ListDeploymentsInput): types.ListDeploymentsOutput, table
    listEffectiveDeployments: function(Client, types.ListEffectiveDeploymentsInput): types.ListEffectiveDeploymentsOutput, table
    listInstalledComponents: function(Client, types.ListInstalledComponentsInput): types.ListInstalledComponentsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    resolveComponentCandidates: function(Client, types.ResolveComponentCandidatesInput): types.ResolveComponentCandidatesOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateConnectivityInfo: function(Client, types.UpdateConnectivityInfoInput): types.UpdateConnectivityInfoOutput, table
end

local record M
    new: function(table): Client
end

return M
