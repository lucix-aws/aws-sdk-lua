



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("devicefarm.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("devicefarm.schemas")
local traits = require("smithy.traits")
local types = require("devicefarm.types")
local sdk_defaults = require("aws.sdk_defaults")



















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "DeviceFarm_20150623"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "devicefarm", signing_region = c.region } }
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

function C:createDevicePool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDevicePool, input, options)
end

function C:createInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstanceProfile, input, options)
end

function C:createNetworkProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetworkProfile, input, options)
end

function C:createProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProject, input, options)
end

function C:createRemoteAccessSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRemoteAccessSession, input, options)
end

function C:createTestGridProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTestGridProject, input, options)
end

function C:createTestGridUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTestGridUrl, input, options)
end

function C:createUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUpload, input, options)
end

function C:createVPCEConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVPCEConfiguration, input, options)
end

function C:deleteDevicePool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDevicePool, input, options)
end

function C:deleteInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstanceProfile, input, options)
end

function C:deleteNetworkProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkProfile, input, options)
end

function C:deleteProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProject, input, options)
end

function C:deleteRemoteAccessSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRemoteAccessSession, input, options)
end

function C:deleteRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRun, input, options)
end

function C:deleteTestGridProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTestGridProject, input, options)
end

function C:deleteUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUpload, input, options)
end

function C:deleteVPCEConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVPCEConfiguration, input, options)
end

function C:getAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountSettings, input, options)
end

function C:getDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDevice, input, options)
end

function C:getDeviceInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeviceInstance, input, options)
end

function C:getDevicePool(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDevicePool, input, options)
end

function C:getDevicePoolCompatibility(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDevicePoolCompatibility, input, options)
end

function C:getInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceProfile, input, options)
end

function C:getJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJob, input, options)
end

function C:getNetworkProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkProfile, input, options)
end

function C:getOfferingStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOfferingStatus, input, options)
end

function C:getProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProject, input, options)
end

function C:getRemoteAccessSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRemoteAccessSession, input, options)
end

function C:getRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRun, input, options)
end

function C:getSuite(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSuite, input, options)
end

function C:getTest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTest, input, options)
end

function C:getTestGridProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTestGridProject, input, options)
end

function C:getTestGridSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTestGridSession, input, options)
end

function C:getUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUpload, input, options)
end

function C:getVPCEConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVPCEConfiguration, input, options)
end

function C:installToRemoteAccessSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.InstallToRemoteAccessSession, input, options)
end

function C:listArtifacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListArtifacts, input, options)
end

function C:listDeviceInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeviceInstances, input, options)
end

function C:listDevicePools(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevicePools, input, options)
end

function C:listDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevices, input, options)
end

function C:listInstanceProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstanceProfiles, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listNetworkProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkProfiles, input, options)
end

function C:listOfferingPromotions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOfferingPromotions, input, options)
end

function C:listOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOfferings, input, options)
end

function C:listOfferingTransactions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOfferingTransactions, input, options)
end

function C:listProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProjects, input, options)
end

function C:listRemoteAccessSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRemoteAccessSessions, input, options)
end

function C:listRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRuns, input, options)
end

function C:listSamples(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSamples, input, options)
end

function C:listSuites(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSuites, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTestGridProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestGridProjects, input, options)
end

function C:listTestGridSessionActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestGridSessionActions, input, options)
end

function C:listTestGridSessionArtifacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestGridSessionArtifacts, input, options)
end

function C:listTestGridSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestGridSessions, input, options)
end

function C:listTests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTests, input, options)
end

function C:listUniqueProblems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUniqueProblems, input, options)
end

function C:listUploads(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUploads, input, options)
end

function C:listVPCEConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVPCEConfigurations, input, options)
end

function C:purchaseOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseOffering, input, options)
end

function C:renewOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.RenewOffering, input, options)
end

function C:scheduleRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.ScheduleRun, input, options)
end

function C:stopJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopJob, input, options)
end

function C:stopRemoteAccessSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopRemoteAccessSession, input, options)
end

function C:stopRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopRun, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDeviceInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeviceInstance, input, options)
end

function C:updateDevicePool(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDevicePool, input, options)
end

function C:updateInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInstanceProfile, input, options)
end

function C:updateNetworkProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNetworkProfile, input, options)
end

function C:updateProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProject, input, options)
end

function C:updateTestGridProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTestGridProject, input, options)
end

function C:updateUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUpload, input, options)
end

function C:updateVPCEConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVPCEConfiguration, input, options)
end

return M
