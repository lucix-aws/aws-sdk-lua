



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codeartifact.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("codeartifact.schemas")
local traits = require("smithy.traits")
local types = require("codeartifact.types")
local sdk_defaults = require("aws.sdk_defaults")






















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CodeArtifactControlPlaneService"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codeartifact", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:associateExternalConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateExternalConnection, input, options)
end

function C:copyPackageVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyPackageVersions, input, options)
end

function C:createDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomain, input, options)
end

function C:createPackageGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePackageGroup, input, options)
end

function C:createRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRepository, input, options)
end

function C:deleteDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomain, input, options)
end

function C:deleteDomainPermissionsPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainPermissionsPolicy, input, options)
end

function C:deletePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePackage, input, options)
end

function C:deletePackageGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePackageGroup, input, options)
end

function C:deletePackageVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePackageVersions, input, options)
end

function C:deleteRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRepository, input, options)
end

function C:deleteRepositoryPermissionsPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRepositoryPermissionsPolicy, input, options)
end

function C:describeDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomain, input, options)
end

function C:describePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePackage, input, options)
end

function C:describePackageGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePackageGroup, input, options)
end

function C:describePackageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePackageVersion, input, options)
end

function C:describeRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRepository, input, options)
end

function C:disassociateExternalConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateExternalConnection, input, options)
end

function C:disposePackageVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisposePackageVersions, input, options)
end

function C:getAssociatedPackageGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssociatedPackageGroup, input, options)
end

function C:getAuthorizationToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAuthorizationToken, input, options)
end

function C:getDomainPermissionsPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainPermissionsPolicy, input, options)
end

function C:getPackageVersionAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPackageVersionAsset, input, options)
end

function C:getPackageVersionReadme(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPackageVersionReadme, input, options)
end

function C:getRepositoryEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRepositoryEndpoint, input, options)
end

function C:getRepositoryPermissionsPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRepositoryPermissionsPolicy, input, options)
end

function C:listAllowedRepositoriesForGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAllowedRepositoriesForGroup, input, options)
end

function C:listAssociatedPackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociatedPackages, input, options)
end

function C:listDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomains, input, options)
end

function C:listPackageGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackageGroups, input, options)
end

function C:listPackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackages, input, options)
end

function C:listPackageVersionAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackageVersionAssets, input, options)
end

function C:listPackageVersionDependencies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackageVersionDependencies, input, options)
end

function C:listPackageVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackageVersions, input, options)
end

function C:listRepositories(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRepositories, input, options)
end

function C:listRepositoriesInDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRepositoriesInDomain, input, options)
end

function C:listSubPackageGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubPackageGroups, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:publishPackageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishPackageVersion, input, options)
end

function C:putDomainPermissionsPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDomainPermissionsPolicy, input, options)
end

function C:putPackageOriginConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPackageOriginConfiguration, input, options)
end

function C:putRepositoryPermissionsPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRepositoryPermissionsPolicy, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updatePackageGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePackageGroup, input, options)
end

function C:updatePackageGroupOriginConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePackageGroupOriginConfiguration, input, options)
end

function C:updatePackageVersionsStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePackageVersionsStatus, input, options)
end

function C:updateRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRepository, input, options)
end

return M
