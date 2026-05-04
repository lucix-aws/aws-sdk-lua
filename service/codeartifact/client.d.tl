local types = require("codeartifact.types")

local record Client
    associateExternalConnection: function(Client, types.AssociateExternalConnectionInput): types.AssociateExternalConnectionOutput, table
    copyPackageVersions: function(Client, types.CopyPackageVersionsInput): types.CopyPackageVersionsOutput, table
    createDomain: function(Client, types.CreateDomainInput): types.CreateDomainOutput, table
    createPackageGroup: function(Client, types.CreatePackageGroupInput): types.CreatePackageGroupOutput, table
    createRepository: function(Client, types.CreateRepositoryInput): types.CreateRepositoryOutput, table
    deleteDomain: function(Client, types.DeleteDomainInput): types.DeleteDomainOutput, table
    deleteDomainPermissionsPolicy: function(Client, types.DeleteDomainPermissionsPolicyInput): types.DeleteDomainPermissionsPolicyOutput, table
    deletePackage: function(Client, types.DeletePackageInput): types.DeletePackageOutput, table
    deletePackageGroup: function(Client, types.DeletePackageGroupInput): types.DeletePackageGroupOutput, table
    deletePackageVersions: function(Client, types.DeletePackageVersionsInput): types.DeletePackageVersionsOutput, table
    deleteRepository: function(Client, types.DeleteRepositoryInput): types.DeleteRepositoryOutput, table
    deleteRepositoryPermissionsPolicy: function(Client, types.DeleteRepositoryPermissionsPolicyInput): types.DeleteRepositoryPermissionsPolicyOutput, table
    describeDomain: function(Client, types.DescribeDomainInput): types.DescribeDomainOutput, table
    describePackage: function(Client, types.DescribePackageInput): types.DescribePackageOutput, table
    describePackageGroup: function(Client, types.DescribePackageGroupInput): types.DescribePackageGroupOutput, table
    describePackageVersion: function(Client, types.DescribePackageVersionInput): types.DescribePackageVersionOutput, table
    describeRepository: function(Client, types.DescribeRepositoryInput): types.DescribeRepositoryOutput, table
    disassociateExternalConnection: function(Client, types.DisassociateExternalConnectionInput): types.DisassociateExternalConnectionOutput, table
    disposePackageVersions: function(Client, types.DisposePackageVersionsInput): types.DisposePackageVersionsOutput, table
    getAssociatedPackageGroup: function(Client, types.GetAssociatedPackageGroupInput): types.GetAssociatedPackageGroupOutput, table
    getAuthorizationToken: function(Client, types.GetAuthorizationTokenInput): types.GetAuthorizationTokenOutput, table
    getDomainPermissionsPolicy: function(Client, types.GetDomainPermissionsPolicyInput): types.GetDomainPermissionsPolicyOutput, table
    getPackageVersionAsset: function(Client, types.GetPackageVersionAssetInput): types.GetPackageVersionAssetOutput, table
    getPackageVersionReadme: function(Client, types.GetPackageVersionReadmeInput): types.GetPackageVersionReadmeOutput, table
    getRepositoryEndpoint: function(Client, types.GetRepositoryEndpointInput): types.GetRepositoryEndpointOutput, table
    getRepositoryPermissionsPolicy: function(Client, types.GetRepositoryPermissionsPolicyInput): types.GetRepositoryPermissionsPolicyOutput, table
    listAllowedRepositoriesForGroup: function(Client, types.ListAllowedRepositoriesForGroupInput): types.ListAllowedRepositoriesForGroupOutput, table
    listAssociatedPackages: function(Client, types.ListAssociatedPackagesInput): types.ListAssociatedPackagesOutput, table
    listDomains: function(Client, types.ListDomainsInput): types.ListDomainsOutput, table
    listPackageGroups: function(Client, types.ListPackageGroupsInput): types.ListPackageGroupsOutput, table
    listPackages: function(Client, types.ListPackagesInput): types.ListPackagesOutput, table
    listPackageVersionAssets: function(Client, types.ListPackageVersionAssetsInput): types.ListPackageVersionAssetsOutput, table
    listPackageVersionDependencies: function(Client, types.ListPackageVersionDependenciesInput): types.ListPackageVersionDependenciesOutput, table
    listPackageVersions: function(Client, types.ListPackageVersionsInput): types.ListPackageVersionsOutput, table
    listRepositories: function(Client, types.ListRepositoriesInput): types.ListRepositoriesOutput, table
    listRepositoriesInDomain: function(Client, types.ListRepositoriesInDomainInput): types.ListRepositoriesInDomainOutput, table
    listSubPackageGroups: function(Client, types.ListSubPackageGroupsInput): types.ListSubPackageGroupsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    publishPackageVersion: function(Client, types.PublishPackageVersionInput): types.PublishPackageVersionOutput, table
    putDomainPermissionsPolicy: function(Client, types.PutDomainPermissionsPolicyInput): types.PutDomainPermissionsPolicyOutput, table
    putPackageOriginConfiguration: function(Client, types.PutPackageOriginConfigurationInput): types.PutPackageOriginConfigurationOutput, table
    putRepositoryPermissionsPolicy: function(Client, types.PutRepositoryPermissionsPolicyInput): types.PutRepositoryPermissionsPolicyOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updatePackageGroup: function(Client, types.UpdatePackageGroupInput): types.UpdatePackageGroupOutput, table
    updatePackageGroupOriginConfiguration: function(Client, types.UpdatePackageGroupOriginConfigurationInput): types.UpdatePackageGroupOriginConfigurationOutput, table
    updatePackageVersionsStatus: function(Client, types.UpdatePackageVersionsStatusInput): types.UpdatePackageVersionsStatusOutput, table
    updateRepository: function(Client, types.UpdateRepositoryInput): types.UpdateRepositoryOutput, table
end

local record M
    new: function(table): Client
end

return M
