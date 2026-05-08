



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("appstream.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("appstream.schemas")
local traits = require("smithy.traits")
local types = require("appstream.types")
local sdk_defaults = require("aws.sdk_defaults")































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "PhotonAdminProxyService"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "appstream", signing_region = c.region } }
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

function C:associateAppBlockBuilderAppBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAppBlockBuilderAppBlock, input, options)
end

function C:associateApplicationFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateApplicationFleet, input, options)
end

function C:associateApplicationToEntitlement(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateApplicationToEntitlement, input, options)
end

function C:associateFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateFleet, input, options)
end

function C:associateSoftwareToImageBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSoftwareToImageBuilder, input, options)
end

function C:batchAssociateUserStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAssociateUserStack, input, options)
end

function C:batchDisassociateUserStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisassociateUserStack, input, options)
end

function C:copyImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyImage, input, options)
end

function C:createAppBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppBlock, input, options)
end

function C:createAppBlockBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppBlockBuilder, input, options)
end

function C:createAppBlockBuilderStreamingURL(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppBlockBuilderStreamingURL, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createDirectoryConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDirectoryConfig, input, options)
end

function C:createEntitlement(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEntitlement, input, options)
end

function C:createExportImageTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExportImageTask, input, options)
end

function C:createFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFleet, input, options)
end

function C:createImageBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImageBuilder, input, options)
end

function C:createImageBuilderStreamingURL(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImageBuilderStreamingURL, input, options)
end

function C:createImportedImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImportedImage, input, options)
end

function C:createStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStack, input, options)
end

function C:createStreamingURL(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStreamingURL, input, options)
end

function C:createThemeForStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateThemeForStack, input, options)
end

function C:createUpdatedImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUpdatedImage, input, options)
end

function C:createUsageReportSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUsageReportSubscription, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:deleteAppBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppBlock, input, options)
end

function C:deleteAppBlockBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppBlockBuilder, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteDirectoryConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDirectoryConfig, input, options)
end

function C:deleteEntitlement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEntitlement, input, options)
end

function C:deleteFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFleet, input, options)
end

function C:deleteImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImage, input, options)
end

function C:deleteImageBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImageBuilder, input, options)
end

function C:deleteImagePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImagePermissions, input, options)
end

function C:deleteStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStack, input, options)
end

function C:deleteThemeForStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteThemeForStack, input, options)
end

function C:deleteUsageReportSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUsageReportSubscription, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:describeAppBlockBuilderAppBlockAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppBlockBuilderAppBlockAssociations, input, options)
end

function C:describeAppBlockBuilders(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppBlockBuilders, input, options)
end

function C:describeAppBlocks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppBlocks, input, options)
end

function C:describeApplicationFleetAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplicationFleetAssociations, input, options)
end

function C:describeApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplications, input, options)
end

function C:describeAppLicenseUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppLicenseUsage, input, options)
end

function C:describeDirectoryConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDirectoryConfigs, input, options)
end

function C:describeEntitlements(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEntitlements, input, options)
end

function C:describeFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleets, input, options)
end

function C:describeImageBuilders(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageBuilders, input, options)
end

function C:describeImagePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImagePermissions, input, options)
end

function C:describeImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImages, input, options)
end

function C:describeSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSessions, input, options)
end

function C:describeSoftwareAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSoftwareAssociations, input, options)
end

function C:describeStacks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStacks, input, options)
end

function C:describeThemeForStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeThemeForStack, input, options)
end

function C:describeUsageReportSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUsageReportSubscriptions, input, options)
end

function C:describeUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUsers, input, options)
end

function C:describeUserStackAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUserStackAssociations, input, options)
end

function C:disableUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableUser, input, options)
end

function C:disassociateAppBlockBuilderAppBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAppBlockBuilderAppBlock, input, options)
end

function C:disassociateApplicationFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateApplicationFleet, input, options)
end

function C:disassociateApplicationFromEntitlement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateApplicationFromEntitlement, input, options)
end

function C:disassociateFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFleet, input, options)
end

function C:disassociateSoftwareFromImageBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSoftwareFromImageBuilder, input, options)
end

function C:drainSessionInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DrainSessionInstance, input, options)
end

function C:enableUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableUser, input, options)
end

function C:expireSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExpireSession, input, options)
end

function C:getExportImageTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExportImageTask, input, options)
end

function C:listAssociatedFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociatedFleets, input, options)
end

function C:listAssociatedStacks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociatedStacks, input, options)
end

function C:listEntitledApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntitledApplications, input, options)
end

function C:listExportImageTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExportImageTasks, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startAppBlockBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAppBlockBuilder, input, options)
end

function C:startFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFleet, input, options)
end

function C:startImageBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImageBuilder, input, options)
end

function C:startSoftwareDeploymentToImageBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSoftwareDeploymentToImageBuilder, input, options)
end

function C:stopAppBlockBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopAppBlockBuilder, input, options)
end

function C:stopFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopFleet, input, options)
end

function C:stopImageBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopImageBuilder, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAppBlockBuilder(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAppBlockBuilder, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateDirectoryConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDirectoryConfig, input, options)
end

function C:updateEntitlement(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEntitlement, input, options)
end

function C:updateFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFleet, input, options)
end

function C:updateImagePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateImagePermissions, input, options)
end

function C:updateStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStack, input, options)
end

function C:updateThemeForStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateThemeForStack, input, options)
end

return M
