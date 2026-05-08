



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("licensemanager.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("licensemanager.schemas")
local traits = require("smithy.traits")
local types = require("licensemanager.types")
local sdk_defaults = require("aws.sdk_defaults")




































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSLicenseManager"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "license-manager", signing_region = c.region } }
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

function C:acceptGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptGrant, input, options)
end

function C:checkInLicense(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckInLicense, input, options)
end

function C:checkoutBorrowLicense(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckoutBorrowLicense, input, options)
end

function C:checkoutLicense(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckoutLicense, input, options)
end

function C:createGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGrant, input, options)
end

function C:createGrantVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGrantVersion, input, options)
end

function C:createLicense(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLicense, input, options)
end

function C:createLicenseAssetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLicenseAssetGroup, input, options)
end

function C:createLicenseAssetRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLicenseAssetRuleset, input, options)
end

function C:createLicenseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLicenseConfiguration, input, options)
end

function C:createLicenseConversionTaskForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLicenseConversionTaskForResource, input, options)
end

function C:createLicenseManagerReportGenerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLicenseManagerReportGenerator, input, options)
end

function C:createLicenseVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLicenseVersion, input, options)
end

function C:createToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateToken, input, options)
end

function C:deleteGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGrant, input, options)
end

function C:deleteLicense(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLicense, input, options)
end

function C:deleteLicenseAssetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLicenseAssetGroup, input, options)
end

function C:deleteLicenseAssetRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLicenseAssetRuleset, input, options)
end

function C:deleteLicenseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLicenseConfiguration, input, options)
end

function C:deleteLicenseManagerReportGenerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLicenseManagerReportGenerator, input, options)
end

function C:deleteToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteToken, input, options)
end

function C:extendLicenseConsumption(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExtendLicenseConsumption, input, options)
end

function C:getAccessToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessToken, input, options)
end

function C:getGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGrant, input, options)
end

function C:getLicense(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLicense, input, options)
end

function C:getLicenseAssetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLicenseAssetGroup, input, options)
end

function C:getLicenseAssetRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLicenseAssetRuleset, input, options)
end

function C:getLicenseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLicenseConfiguration, input, options)
end

function C:getLicenseConversionTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLicenseConversionTask, input, options)
end

function C:getLicenseManagerReportGenerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLicenseManagerReportGenerator, input, options)
end

function C:getLicenseUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLicenseUsage, input, options)
end

function C:getServiceSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceSettings, input, options)
end

function C:listAssetsForLicenseAssetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssetsForLicenseAssetGroup, input, options)
end

function C:listAssociationsForLicenseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociationsForLicenseConfiguration, input, options)
end

function C:listDistributedGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributedGrants, input, options)
end

function C:listFailuresForLicenseConfigurationOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFailuresForLicenseConfigurationOperations, input, options)
end

function C:listLicenseAssetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLicenseAssetGroups, input, options)
end

function C:listLicenseAssetRulesets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLicenseAssetRulesets, input, options)
end

function C:listLicenseConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLicenseConfigurations, input, options)
end

function C:listLicenseConfigurationsForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLicenseConfigurationsForOrganization, input, options)
end

function C:listLicenseConversionTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLicenseConversionTasks, input, options)
end

function C:listLicenseManagerReportGenerators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLicenseManagerReportGenerators, input, options)
end

function C:listLicenses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLicenses, input, options)
end

function C:listLicenseSpecificationsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLicenseSpecificationsForResource, input, options)
end

function C:listLicenseVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLicenseVersions, input, options)
end

function C:listReceivedGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReceivedGrants, input, options)
end

function C:listReceivedGrantsForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReceivedGrantsForOrganization, input, options)
end

function C:listReceivedLicenses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReceivedLicenses, input, options)
end

function C:listReceivedLicensesForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReceivedLicensesForOrganization, input, options)
end

function C:listResourceInventory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceInventory, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTokens(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTokens, input, options)
end

function C:listUsageForLicenseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsageForLicenseConfiguration, input, options)
end

function C:rejectGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectGrant, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateLicenseAssetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLicenseAssetGroup, input, options)
end

function C:updateLicenseAssetRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLicenseAssetRuleset, input, options)
end

function C:updateLicenseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLicenseConfiguration, input, options)
end

function C:updateLicenseManagerReportGenerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLicenseManagerReportGenerator, input, options)
end

function C:updateLicenseSpecificationsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLicenseSpecificationsForResource, input, options)
end

function C:updateServiceSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceSettings, input, options)
end

return M
