local types = require("tnb.types")

local record Client
    cancelSolNetworkOperation: function(Client, types.CancelSolNetworkOperationInput): types.CancelSolNetworkOperationOutput, table
    createSolFunctionPackage: function(Client, types.CreateSolFunctionPackageInput): types.CreateSolFunctionPackageOutput, table
    createSolNetworkInstance: function(Client, types.CreateSolNetworkInstanceInput): types.CreateSolNetworkInstanceOutput, table
    createSolNetworkPackage: function(Client, types.CreateSolNetworkPackageInput): types.CreateSolNetworkPackageOutput, table
    deleteSolFunctionPackage: function(Client, types.DeleteSolFunctionPackageInput): types.DeleteSolFunctionPackageOutput, table
    deleteSolNetworkInstance: function(Client, types.DeleteSolNetworkInstanceInput): types.DeleteSolNetworkInstanceOutput, table
    deleteSolNetworkPackage: function(Client, types.DeleteSolNetworkPackageInput): types.DeleteSolNetworkPackageOutput, table
    getSolFunctionInstance: function(Client, types.GetSolFunctionInstanceInput): types.GetSolFunctionInstanceOutput, table
    getSolFunctionPackage: function(Client, types.GetSolFunctionPackageInput): types.GetSolFunctionPackageOutput, table
    getSolFunctionPackageContent: function(Client, types.GetSolFunctionPackageContentInput): types.GetSolFunctionPackageContentOutput, table
    getSolFunctionPackageDescriptor: function(Client, types.GetSolFunctionPackageDescriptorInput): types.GetSolFunctionPackageDescriptorOutput, table
    getSolNetworkInstance: function(Client, types.GetSolNetworkInstanceInput): types.GetSolNetworkInstanceOutput, table
    getSolNetworkOperation: function(Client, types.GetSolNetworkOperationInput): types.GetSolNetworkOperationOutput, table
    getSolNetworkPackage: function(Client, types.GetSolNetworkPackageInput): types.GetSolNetworkPackageOutput, table
    getSolNetworkPackageContent: function(Client, types.GetSolNetworkPackageContentInput): types.GetSolNetworkPackageContentOutput, table
    getSolNetworkPackageDescriptor: function(Client, types.GetSolNetworkPackageDescriptorInput): types.GetSolNetworkPackageDescriptorOutput, table
    instantiateSolNetworkInstance: function(Client, types.InstantiateSolNetworkInstanceInput): types.InstantiateSolNetworkInstanceOutput, table
    listSolFunctionInstances: function(Client, types.ListSolFunctionInstancesInput): types.ListSolFunctionInstancesOutput, table
    listSolFunctionPackages: function(Client, types.ListSolFunctionPackagesInput): types.ListSolFunctionPackagesOutput, table
    listSolNetworkInstances: function(Client, types.ListSolNetworkInstancesInput): types.ListSolNetworkInstancesOutput, table
    listSolNetworkOperations: function(Client, types.ListSolNetworkOperationsInput): types.ListSolNetworkOperationsOutput, table
    listSolNetworkPackages: function(Client, types.ListSolNetworkPackagesInput): types.ListSolNetworkPackagesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putSolFunctionPackageContent: function(Client, types.PutSolFunctionPackageContentInput): types.PutSolFunctionPackageContentOutput, table
    putSolNetworkPackageContent: function(Client, types.PutSolNetworkPackageContentInput): types.PutSolNetworkPackageContentOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    terminateSolNetworkInstance: function(Client, types.TerminateSolNetworkInstanceInput): types.TerminateSolNetworkInstanceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateSolFunctionPackage: function(Client, types.UpdateSolFunctionPackageInput): types.UpdateSolFunctionPackageOutput, table
    updateSolNetworkInstance: function(Client, types.UpdateSolNetworkInstanceInput): types.UpdateSolNetworkInstanceOutput, table
    updateSolNetworkPackage: function(Client, types.UpdateSolNetworkPackageInput): types.UpdateSolNetworkPackageOutput, table
    validateSolFunctionPackageContent: function(Client, types.ValidateSolFunctionPackageContentInput): types.ValidateSolFunctionPackageContentOutput, table
    validateSolNetworkPackageContent: function(Client, types.ValidateSolNetworkPackageContentInput): types.ValidateSolNetworkPackageContentOutput, table
end

local record M
    new: function(table): Client
end

return M
