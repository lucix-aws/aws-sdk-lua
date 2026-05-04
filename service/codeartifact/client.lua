local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codeartifact.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("codeartifact.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeArtifactControlPlaneService"
    cfg.signing_name = "codeartifactcontrolplaneservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateExternalConnection(input, options)
    return self:invokeOperation(input, {
        name = "AssociateExternalConnection",
        input_schema = types.AssociateExternalConnectionInput,
        output_schema = types.AssociateExternalConnectionOutput,
        http_method = "POST",
        http_path = "/v1/repository/external-connection",
    }, options)
end

function Client:copyPackageVersions(input, options)
    return self:invokeOperation(input, {
        name = "CopyPackageVersions",
        input_schema = types.CopyPackageVersionsInput,
        output_schema = types.CopyPackageVersionsOutput,
        http_method = "POST",
        http_path = "/v1/package/versions/copy",
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = types.CreateDomainInput,
        output_schema = types.CreateDomainOutput,
        http_method = "POST",
        http_path = "/v1/domain",
    }, options)
end

function Client:createPackageGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackageGroup",
        input_schema = types.CreatePackageGroupInput,
        output_schema = types.CreatePackageGroupOutput,
        http_method = "POST",
        http_path = "/v1/package-group",
    }, options)
end

function Client:createRepository(input, options)
    return self:invokeOperation(input, {
        name = "CreateRepository",
        input_schema = types.CreateRepositoryInput,
        output_schema = types.CreateRepositoryOutput,
        http_method = "POST",
        http_path = "/v1/repository",
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = types.DeleteDomainInput,
        output_schema = types.DeleteDomainOutput,
        http_method = "DELETE",
        http_path = "/v1/domain",
    }, options)
end

function Client:deleteDomainPermissionsPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainPermissionsPolicy",
        input_schema = types.DeleteDomainPermissionsPolicyInput,
        output_schema = types.DeleteDomainPermissionsPolicyOutput,
        http_method = "DELETE",
        http_path = "/v1/domain/permissions/policy",
    }, options)
end

function Client:deletePackage(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackage",
        input_schema = types.DeletePackageInput,
        output_schema = types.DeletePackageOutput,
        http_method = "DELETE",
        http_path = "/v1/package",
    }, options)
end

function Client:deletePackageGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackageGroup",
        input_schema = types.DeletePackageGroupInput,
        output_schema = types.DeletePackageGroupOutput,
        http_method = "DELETE",
        http_path = "/v1/package-group",
    }, options)
end

function Client:deletePackageVersions(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackageVersions",
        input_schema = types.DeletePackageVersionsInput,
        output_schema = types.DeletePackageVersionsOutput,
        http_method = "POST",
        http_path = "/v1/package/versions/delete",
    }, options)
end

function Client:deleteRepository(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepository",
        input_schema = types.DeleteRepositoryInput,
        output_schema = types.DeleteRepositoryOutput,
        http_method = "DELETE",
        http_path = "/v1/repository",
    }, options)
end

function Client:deleteRepositoryPermissionsPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepositoryPermissionsPolicy",
        input_schema = types.DeleteRepositoryPermissionsPolicyInput,
        output_schema = types.DeleteRepositoryPermissionsPolicyOutput,
        http_method = "DELETE",
        http_path = "/v1/repository/permissions/policies",
    }, options)
end

function Client:describeDomain(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomain",
        input_schema = types.DescribeDomainInput,
        output_schema = types.DescribeDomainOutput,
        http_method = "GET",
        http_path = "/v1/domain",
    }, options)
end

function Client:describePackage(input, options)
    return self:invokeOperation(input, {
        name = "DescribePackage",
        input_schema = types.DescribePackageInput,
        output_schema = types.DescribePackageOutput,
        http_method = "GET",
        http_path = "/v1/package",
    }, options)
end

function Client:describePackageGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribePackageGroup",
        input_schema = types.DescribePackageGroupInput,
        output_schema = types.DescribePackageGroupOutput,
        http_method = "GET",
        http_path = "/v1/package-group",
    }, options)
end

function Client:describePackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribePackageVersion",
        input_schema = types.DescribePackageVersionInput,
        output_schema = types.DescribePackageVersionOutput,
        http_method = "GET",
        http_path = "/v1/package/version",
    }, options)
end

function Client:describeRepository(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRepository",
        input_schema = types.DescribeRepositoryInput,
        output_schema = types.DescribeRepositoryOutput,
        http_method = "GET",
        http_path = "/v1/repository",
    }, options)
end

function Client:disassociateExternalConnection(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateExternalConnection",
        input_schema = types.DisassociateExternalConnectionInput,
        output_schema = types.DisassociateExternalConnectionOutput,
        http_method = "DELETE",
        http_path = "/v1/repository/external-connection",
    }, options)
end

function Client:disposePackageVersions(input, options)
    return self:invokeOperation(input, {
        name = "DisposePackageVersions",
        input_schema = types.DisposePackageVersionsInput,
        output_schema = types.DisposePackageVersionsOutput,
        http_method = "POST",
        http_path = "/v1/package/versions/dispose",
    }, options)
end

function Client:getAssociatedPackageGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetAssociatedPackageGroup",
        input_schema = types.GetAssociatedPackageGroupInput,
        output_schema = types.GetAssociatedPackageGroupOutput,
        http_method = "GET",
        http_path = "/v1/get-associated-package-group",
    }, options)
end

function Client:getAuthorizationToken(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthorizationToken",
        input_schema = types.GetAuthorizationTokenInput,
        output_schema = types.GetAuthorizationTokenOutput,
        http_method = "POST",
        http_path = "/v1/authorization-token",
    }, options)
end

function Client:getDomainPermissionsPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainPermissionsPolicy",
        input_schema = types.GetDomainPermissionsPolicyInput,
        output_schema = types.GetDomainPermissionsPolicyOutput,
        http_method = "GET",
        http_path = "/v1/domain/permissions/policy",
    }, options)
end

function Client:getPackageVersionAsset(input, options)
    return self:invokeOperation(input, {
        name = "GetPackageVersionAsset",
        input_schema = types.GetPackageVersionAssetInput,
        output_schema = types.GetPackageVersionAssetOutput,
        http_method = "GET",
        http_path = "/v1/package/version/asset",
    }, options)
end

function Client:getPackageVersionReadme(input, options)
    return self:invokeOperation(input, {
        name = "GetPackageVersionReadme",
        input_schema = types.GetPackageVersionReadmeInput,
        output_schema = types.GetPackageVersionReadmeOutput,
        http_method = "GET",
        http_path = "/v1/package/version/readme",
    }, options)
end

function Client:getRepositoryEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositoryEndpoint",
        input_schema = types.GetRepositoryEndpointInput,
        output_schema = types.GetRepositoryEndpointOutput,
        http_method = "GET",
        http_path = "/v1/repository/endpoint",
    }, options)
end

function Client:getRepositoryPermissionsPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositoryPermissionsPolicy",
        input_schema = types.GetRepositoryPermissionsPolicyInput,
        output_schema = types.GetRepositoryPermissionsPolicyOutput,
        http_method = "GET",
        http_path = "/v1/repository/permissions/policy",
    }, options)
end

function Client:listAllowedRepositoriesForGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListAllowedRepositoriesForGroup",
        input_schema = types.ListAllowedRepositoriesForGroupInput,
        output_schema = types.ListAllowedRepositoriesForGroupOutput,
        http_method = "GET",
        http_path = "/v1/package-group-allowed-repositories",
    }, options)
end

function Client:listAssociatedPackages(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedPackages",
        input_schema = types.ListAssociatedPackagesInput,
        output_schema = types.ListAssociatedPackagesOutput,
        http_method = "GET",
        http_path = "/v1/list-associated-packages",
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = types.ListDomainsInput,
        output_schema = types.ListDomainsOutput,
        http_method = "POST",
        http_path = "/v1/domains",
    }, options)
end

function Client:listPackageGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListPackageGroups",
        input_schema = types.ListPackageGroupsInput,
        output_schema = types.ListPackageGroupsOutput,
        http_method = "POST",
        http_path = "/v1/package-groups",
    }, options)
end

function Client:listPackages(input, options)
    return self:invokeOperation(input, {
        name = "ListPackages",
        input_schema = types.ListPackagesInput,
        output_schema = types.ListPackagesOutput,
        http_method = "POST",
        http_path = "/v1/packages",
    }, options)
end

function Client:listPackageVersionAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListPackageVersionAssets",
        input_schema = types.ListPackageVersionAssetsInput,
        output_schema = types.ListPackageVersionAssetsOutput,
        http_method = "POST",
        http_path = "/v1/package/version/assets",
    }, options)
end

function Client:listPackageVersionDependencies(input, options)
    return self:invokeOperation(input, {
        name = "ListPackageVersionDependencies",
        input_schema = types.ListPackageVersionDependenciesInput,
        output_schema = types.ListPackageVersionDependenciesOutput,
        http_method = "POST",
        http_path = "/v1/package/version/dependencies",
    }, options)
end

function Client:listPackageVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPackageVersions",
        input_schema = types.ListPackageVersionsInput,
        output_schema = types.ListPackageVersionsOutput,
        http_method = "POST",
        http_path = "/v1/package/versions",
    }, options)
end

function Client:listRepositories(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositories",
        input_schema = types.ListRepositoriesInput,
        output_schema = types.ListRepositoriesOutput,
        http_method = "POST",
        http_path = "/v1/repositories",
    }, options)
end

function Client:listRepositoriesInDomain(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositoriesInDomain",
        input_schema = types.ListRepositoriesInDomainInput,
        output_schema = types.ListRepositoriesInDomainOutput,
        http_method = "POST",
        http_path = "/v1/domain/repositories",
    }, options)
end

function Client:listSubPackageGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListSubPackageGroups",
        input_schema = types.ListSubPackageGroupsInput,
        output_schema = types.ListSubPackageGroupsOutput,
        http_method = "POST",
        http_path = "/v1/package-groups/sub-groups",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/v1/tags",
    }, options)
end

function Client:publishPackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "PublishPackageVersion",
        input_schema = types.PublishPackageVersionInput,
        output_schema = types.PublishPackageVersionOutput,
        http_method = "POST",
        http_path = "/v1/package/version/publish",
    }, options)
end

function Client:putDomainPermissionsPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutDomainPermissionsPolicy",
        input_schema = types.PutDomainPermissionsPolicyInput,
        output_schema = types.PutDomainPermissionsPolicyOutput,
        http_method = "PUT",
        http_path = "/v1/domain/permissions/policy",
    }, options)
end

function Client:putPackageOriginConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutPackageOriginConfiguration",
        input_schema = types.PutPackageOriginConfigurationInput,
        output_schema = types.PutPackageOriginConfigurationOutput,
        http_method = "POST",
        http_path = "/v1/package",
    }, options)
end

function Client:putRepositoryPermissionsPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutRepositoryPermissionsPolicy",
        input_schema = types.PutRepositoryPermissionsPolicyInput,
        output_schema = types.PutRepositoryPermissionsPolicyOutput,
        http_method = "PUT",
        http_path = "/v1/repository/permissions/policy",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v1/tag",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/v1/untag",
    }, options)
end

function Client:updatePackageGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackageGroup",
        input_schema = types.UpdatePackageGroupInput,
        output_schema = types.UpdatePackageGroupOutput,
        http_method = "PUT",
        http_path = "/v1/package-group",
    }, options)
end

function Client:updatePackageGroupOriginConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackageGroupOriginConfiguration",
        input_schema = types.UpdatePackageGroupOriginConfigurationInput,
        output_schema = types.UpdatePackageGroupOriginConfigurationOutput,
        http_method = "PUT",
        http_path = "/v1/package-group-origin-configuration",
    }, options)
end

function Client:updatePackageVersionsStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackageVersionsStatus",
        input_schema = types.UpdatePackageVersionsStatusInput,
        output_schema = types.UpdatePackageVersionsStatusOutput,
        http_method = "POST",
        http_path = "/v1/package/versions/update_status",
    }, options)
end

function Client:updateRepository(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRepository",
        input_schema = types.UpdateRepositoryInput,
        output_schema = types.UpdateRepositoryOutput,
        http_method = "PUT",
        http_path = "/v1/repository",
    }, options)
end

return M
