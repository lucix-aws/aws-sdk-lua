



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("directoryservice.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("directoryservice.schemas")
local traits = require("smithy.traits")
local types = require("directoryservice.types")
local sdk_defaults = require("aws.sdk_defaults")






















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "DirectoryService_20150416"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ds", signing_region = c.region } }
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

function C:acceptSharedDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptSharedDirectory, input, options)
end

function C:addIpRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddIpRoutes, input, options)
end

function C:addRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddRegion, input, options)
end

function C:addTagsToResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTagsToResource, input, options)
end

function C:cancelSchemaExtension(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelSchemaExtension, input, options)
end

function C:connectDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConnectDirectory, input, options)
end

function C:createAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAlias, input, options)
end

function C:createComputer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateComputer, input, options)
end

function C:createConditionalForwarder(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConditionalForwarder, input, options)
end

function C:createDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDirectory, input, options)
end

function C:createHybridAD(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHybridAD, input, options)
end

function C:createLogSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLogSubscription, input, options)
end

function C:createMicrosoftAD(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMicrosoftAD, input, options)
end

function C:createSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshot, input, options)
end

function C:createTrust(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrust, input, options)
end

function C:deleteADAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteADAssessment, input, options)
end

function C:deleteConditionalForwarder(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConditionalForwarder, input, options)
end

function C:deleteDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDirectory, input, options)
end

function C:deleteLogSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLogSubscription, input, options)
end

function C:deleteSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSnapshot, input, options)
end

function C:deleteTrust(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrust, input, options)
end

function C:deregisterCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterCertificate, input, options)
end

function C:deregisterEventTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterEventTopic, input, options)
end

function C:describeADAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeADAssessment, input, options)
end

function C:describeCAEnrollmentPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCAEnrollmentPolicy, input, options)
end

function C:describeCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCertificate, input, options)
end

function C:describeClientAuthenticationSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClientAuthenticationSettings, input, options)
end

function C:describeConditionalForwarders(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConditionalForwarders, input, options)
end

function C:describeDirectories(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDirectories, input, options)
end

function C:describeDirectoryDataAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDirectoryDataAccess, input, options)
end

function C:describeDomainControllers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomainControllers, input, options)
end

function C:describeEventTopics(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventTopics, input, options)
end

function C:describeHybridADUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHybridADUpdate, input, options)
end

function C:describeLDAPSSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLDAPSSettings, input, options)
end

function C:describeRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegions, input, options)
end

function C:describeSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSettings, input, options)
end

function C:describeSharedDirectories(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSharedDirectories, input, options)
end

function C:describeSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSnapshots, input, options)
end

function C:describeTrusts(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrusts, input, options)
end

function C:describeUpdateDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUpdateDirectory, input, options)
end

function C:disableCAEnrollmentPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableCAEnrollmentPolicy, input, options)
end

function C:disableClientAuthentication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableClientAuthentication, input, options)
end

function C:disableDirectoryDataAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableDirectoryDataAccess, input, options)
end

function C:disableLDAPS(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableLDAPS, input, options)
end

function C:disableRadius(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableRadius, input, options)
end

function C:disableSso(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableSso, input, options)
end

function C:enableCAEnrollmentPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableCAEnrollmentPolicy, input, options)
end

function C:enableClientAuthentication(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableClientAuthentication, input, options)
end

function C:enableDirectoryDataAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableDirectoryDataAccess, input, options)
end

function C:enableLDAPS(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableLDAPS, input, options)
end

function C:enableRadius(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableRadius, input, options)
end

function C:enableSso(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableSso, input, options)
end

function C:getDirectoryLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDirectoryLimits, input, options)
end

function C:getSnapshotLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSnapshotLimits, input, options)
end

function C:listADAssessments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListADAssessments, input, options)
end

function C:listCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCertificates, input, options)
end

function C:listIpRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIpRoutes, input, options)
end

function C:listLogSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLogSubscriptions, input, options)
end

function C:listSchemaExtensions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchemaExtensions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:registerCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterCertificate, input, options)
end

function C:registerEventTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterEventTopic, input, options)
end

function C:rejectSharedDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectSharedDirectory, input, options)
end

function C:removeIpRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveIpRoutes, input, options)
end

function C:removeRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveRegion, input, options)
end

function C:removeTagsFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTagsFromResource, input, options)
end

function C:resetUserPassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetUserPassword, input, options)
end

function C:restoreFromSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreFromSnapshot, input, options)
end

function C:shareDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ShareDirectory, input, options)
end

function C:startADAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartADAssessment, input, options)
end

function C:startSchemaExtension(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSchemaExtension, input, options)
end

function C:unshareDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnshareDirectory, input, options)
end

function C:updateConditionalForwarder(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConditionalForwarder, input, options)
end

function C:updateDirectorySetup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDirectorySetup, input, options)
end

function C:updateHybridAD(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHybridAD, input, options)
end

function C:updateNumberOfDomainControllers(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNumberOfDomainControllers, input, options)
end

function C:updateRadius(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRadius, input, options)
end

function C:updateSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSettings, input, options)
end

function C:updateTrust(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrust, input, options)
end

function C:verifyTrust(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyTrust, input, options)
end

return M
