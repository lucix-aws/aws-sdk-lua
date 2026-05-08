



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("groundstation.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("groundstation.schemas")
local traits = require("smithy.traits")
local types = require("groundstation.types")
local sdk_defaults = require("aws.sdk_defaults")














































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "GroundStation"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "groundstation", signing_region = c.region } }
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

function C:cancelContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelContact, input, options)
end

function C:createConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfig, input, options)
end

function C:createDataflowEndpointGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataflowEndpointGroup, input, options)
end

function C:createDataflowEndpointGroupV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataflowEndpointGroupV2, input, options)
end

function C:createEphemeris(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEphemeris, input, options)
end

function C:createMissionProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMissionProfile, input, options)
end

function C:deleteConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfig, input, options)
end

function C:deleteDataflowEndpointGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataflowEndpointGroup, input, options)
end

function C:deleteEphemeris(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEphemeris, input, options)
end

function C:deleteMissionProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMissionProfile, input, options)
end

function C:describeContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContact, input, options)
end

function C:describeContactVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContactVersion, input, options)
end

function C:describeEphemeris(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEphemeris, input, options)
end

function C:getAgentConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentConfiguration, input, options)
end

function C:getAgentTaskResponseUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentTaskResponseUrl, input, options)
end

function C:getConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfig, input, options)
end

function C:getDataflowEndpointGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataflowEndpointGroup, input, options)
end

function C:getMinuteUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMinuteUsage, input, options)
end

function C:getMissionProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMissionProfile, input, options)
end

function C:getSatellite(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSatellite, input, options)
end

function C:listAntennas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAntennas, input, options)
end

function C:listConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigs, input, options)
end

function C:listContacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContacts, input, options)
end

function C:listContactVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContactVersions, input, options)
end

function C:listDataflowEndpointGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataflowEndpointGroups, input, options)
end

function C:listEphemerides(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEphemerides, input, options)
end

function C:listGroundStationReservations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroundStationReservations, input, options)
end

function C:listGroundStations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroundStations, input, options)
end

function C:listMissionProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMissionProfiles, input, options)
end

function C:listSatellites(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSatellites, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:registerAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterAgent, input, options)
end

function C:reserveContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReserveContact, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAgentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgentStatus, input, options)
end

function C:updateConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfig, input, options)
end

function C:updateContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContact, input, options)
end

function C:updateEphemeris(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEphemeris, input, options)
end

function C:updateMissionProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMissionProfile, input, options)
end

return M
