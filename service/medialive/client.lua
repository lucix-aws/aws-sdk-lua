



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("medialive.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("medialive.schemas")
local traits = require("smithy.traits")
local types = require("medialive.types")
local sdk_defaults = require("aws.sdk_defaults")

































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "MediaLive"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "medialive", signing_region = c.region } }
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

function C:acceptInputDeviceTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptInputDeviceTransfer, input, options)
end

function C:batchDelete(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDelete, input, options)
end

function C:batchStart(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchStart, input, options)
end

function C:batchStop(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchStop, input, options)
end

function C:batchUpdateSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateSchedule, input, options)
end

function C:cancelInputDeviceTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelInputDeviceTransfer, input, options)
end

function C:claimDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.ClaimDevice, input, options)
end

function C:createChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannel, input, options)
end

function C:createChannelPlacementGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannelPlacementGroup, input, options)
end

function C:createCloudWatchAlarmTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCloudWatchAlarmTemplate, input, options)
end

function C:createCloudWatchAlarmTemplateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCloudWatchAlarmTemplateGroup, input, options)
end

function C:createCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCluster, input, options)
end

function C:createEventBridgeRuleTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventBridgeRuleTemplate, input, options)
end

function C:createEventBridgeRuleTemplateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventBridgeRuleTemplateGroup, input, options)
end

function C:createInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInput, input, options)
end

function C:createInputSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInputSecurityGroup, input, options)
end

function C:createMultiplex(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMultiplex, input, options)
end

function C:createMultiplexProgram(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMultiplexProgram, input, options)
end

function C:createNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetwork, input, options)
end

function C:createNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNode, input, options)
end

function C:createNodeRegistrationScript(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNodeRegistrationScript, input, options)
end

function C:createPartnerInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePartnerInput, input, options)
end

function C:createSdiSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSdiSource, input, options)
end

function C:createSignalMap(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSignalMap, input, options)
end

function C:createTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTags, input, options)
end

function C:deleteChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannel, input, options)
end

function C:deleteChannelPlacementGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannelPlacementGroup, input, options)
end

function C:deleteCloudWatchAlarmTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCloudWatchAlarmTemplate, input, options)
end

function C:deleteCloudWatchAlarmTemplateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCloudWatchAlarmTemplateGroup, input, options)
end

function C:deleteCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCluster, input, options)
end

function C:deleteEventBridgeRuleTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventBridgeRuleTemplate, input, options)
end

function C:deleteEventBridgeRuleTemplateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventBridgeRuleTemplateGroup, input, options)
end

function C:deleteInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInput, input, options)
end

function C:deleteInputSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInputSecurityGroup, input, options)
end

function C:deleteMultiplex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMultiplex, input, options)
end

function C:deleteMultiplexProgram(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMultiplexProgram, input, options)
end

function C:deleteNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetwork, input, options)
end

function C:deleteNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNode, input, options)
end

function C:deleteReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReservation, input, options)
end

function C:deleteSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSchedule, input, options)
end

function C:deleteSdiSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSdiSource, input, options)
end

function C:deleteSignalMap(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSignalMap, input, options)
end

function C:deleteTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTags, input, options)
end

function C:describeAccountConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountConfiguration, input, options)
end

function C:describeChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChannel, input, options)
end

function C:describeChannelPlacementGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChannelPlacementGroup, input, options)
end

function C:describeCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCluster, input, options)
end

function C:describeInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInput, input, options)
end

function C:describeInputDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInputDevice, input, options)
end

function C:describeInputDeviceThumbnail(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInputDeviceThumbnail, input, options)
end

function C:describeInputSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInputSecurityGroup, input, options)
end

function C:describeMultiplex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMultiplex, input, options)
end

function C:describeMultiplexProgram(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMultiplexProgram, input, options)
end

function C:describeNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNetwork, input, options)
end

function C:describeNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNode, input, options)
end

function C:describeOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOffering, input, options)
end

function C:describeReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservation, input, options)
end

function C:describeSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSchedule, input, options)
end

function C:describeSdiSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSdiSource, input, options)
end

function C:describeThumbnails(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeThumbnails, input, options)
end

function C:getCloudWatchAlarmTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCloudWatchAlarmTemplate, input, options)
end

function C:getCloudWatchAlarmTemplateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCloudWatchAlarmTemplateGroup, input, options)
end

function C:getEventBridgeRuleTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventBridgeRuleTemplate, input, options)
end

function C:getEventBridgeRuleTemplateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventBridgeRuleTemplateGroup, input, options)
end

function C:getSignalMap(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSignalMap, input, options)
end

function C:listAlerts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAlerts, input, options)
end

function C:listChannelPlacementGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelPlacementGroups, input, options)
end

function C:listChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannels, input, options)
end

function C:listCloudWatchAlarmTemplateGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCloudWatchAlarmTemplateGroups, input, options)
end

function C:listCloudWatchAlarmTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCloudWatchAlarmTemplates, input, options)
end

function C:listClusterAlerts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusterAlerts, input, options)
end

function C:listClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusters, input, options)
end

function C:listEventBridgeRuleTemplateGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventBridgeRuleTemplateGroups, input, options)
end

function C:listEventBridgeRuleTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventBridgeRuleTemplates, input, options)
end

function C:listInputDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInputDevices, input, options)
end

function C:listInputDeviceTransfers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInputDeviceTransfers, input, options)
end

function C:listInputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInputs, input, options)
end

function C:listInputSecurityGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInputSecurityGroups, input, options)
end

function C:listMultiplexAlerts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMultiplexAlerts, input, options)
end

function C:listMultiplexes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMultiplexes, input, options)
end

function C:listMultiplexPrograms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMultiplexPrograms, input, options)
end

function C:listNetworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworks, input, options)
end

function C:listNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNodes, input, options)
end

function C:listOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOfferings, input, options)
end

function C:listReservations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReservations, input, options)
end

function C:listSdiSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSdiSources, input, options)
end

function C:listSignalMaps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSignalMaps, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVersions, input, options)
end

function C:purchaseOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseOffering, input, options)
end

function C:rebootInputDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootInputDevice, input, options)
end

function C:rejectInputDeviceTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectInputDeviceTransfer, input, options)
end

function C:restartChannelPipelines(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestartChannelPipelines, input, options)
end

function C:startChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartChannel, input, options)
end

function C:startDeleteMonitorDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDeleteMonitorDeployment, input, options)
end

function C:startInputDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartInputDevice, input, options)
end

function C:startInputDeviceMaintenanceWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartInputDeviceMaintenanceWindow, input, options)
end

function C:startMonitorDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMonitorDeployment, input, options)
end

function C:startMultiplex(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMultiplex, input, options)
end

function C:startUpdateSignalMap(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartUpdateSignalMap, input, options)
end

function C:stopChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopChannel, input, options)
end

function C:stopInputDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopInputDevice, input, options)
end

function C:stopMultiplex(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopMultiplex, input, options)
end

function C:transferInputDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.TransferInputDevice, input, options)
end

function C:updateAccountConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountConfiguration, input, options)
end

function C:updateChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChannel, input, options)
end

function C:updateChannelClass(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChannelClass, input, options)
end

function C:updateChannelPlacementGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChannelPlacementGroup, input, options)
end

function C:updateCloudWatchAlarmTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCloudWatchAlarmTemplate, input, options)
end

function C:updateCloudWatchAlarmTemplateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCloudWatchAlarmTemplateGroup, input, options)
end

function C:updateCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCluster, input, options)
end

function C:updateEventBridgeRuleTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventBridgeRuleTemplate, input, options)
end

function C:updateEventBridgeRuleTemplateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventBridgeRuleTemplateGroup, input, options)
end

function C:updateInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInput, input, options)
end

function C:updateInputDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInputDevice, input, options)
end

function C:updateInputSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInputSecurityGroup, input, options)
end

function C:updateMultiplex(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMultiplex, input, options)
end

function C:updateMultiplexProgram(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMultiplexProgram, input, options)
end

function C:updateNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNetwork, input, options)
end

function C:updateNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNode, input, options)
end

function C:updateNodeState(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNodeState, input, options)
end

function C:updateReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReservation, input, options)
end

function C:updateSdiSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSdiSource, input, options)
end

return M
