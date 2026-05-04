local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("medialive.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("medialive.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MediaLive"
    cfg.signing_name = "medialive"
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

function Client:acceptInputDeviceTransfer(input, options)
    return self:invokeOperation(input, {
        name = "AcceptInputDeviceTransfer",
        input_schema = types.AcceptInputDeviceTransferInput,
        output_schema = types.AcceptInputDeviceTransferOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/accept",
    }, options)
end

function Client:batchDelete(input, options)
    return self:invokeOperation(input, {
        name = "BatchDelete",
        input_schema = types.BatchDeleteInput,
        output_schema = types.BatchDeleteOutput,
        http_method = "POST",
        http_path = "/prod/batch/delete",
    }, options)
end

function Client:batchStart(input, options)
    return self:invokeOperation(input, {
        name = "BatchStart",
        input_schema = types.BatchStartInput,
        output_schema = types.BatchStartOutput,
        http_method = "POST",
        http_path = "/prod/batch/start",
    }, options)
end

function Client:batchStop(input, options)
    return self:invokeOperation(input, {
        name = "BatchStop",
        input_schema = types.BatchStopInput,
        output_schema = types.BatchStopOutput,
        http_method = "POST",
        http_path = "/prod/batch/stop",
    }, options)
end

function Client:batchUpdateSchedule(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateSchedule",
        input_schema = types.BatchUpdateScheduleInput,
        output_schema = types.BatchUpdateScheduleOutput,
        http_method = "PUT",
        http_path = "/prod/channels/{ChannelId}/schedule",
    }, options)
end

function Client:cancelInputDeviceTransfer(input, options)
    return self:invokeOperation(input, {
        name = "CancelInputDeviceTransfer",
        input_schema = types.CancelInputDeviceTransferInput,
        output_schema = types.CancelInputDeviceTransferOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/cancel",
    }, options)
end

function Client:claimDevice(input, options)
    return self:invokeOperation(input, {
        name = "ClaimDevice",
        input_schema = types.ClaimDeviceInput,
        output_schema = types.ClaimDeviceOutput,
        http_method = "POST",
        http_path = "/prod/claimDevice",
    }, options)
end

function Client:createChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannel",
        input_schema = types.CreateChannelInput,
        output_schema = types.CreateChannelOutput,
        http_method = "POST",
        http_path = "/prod/channels",
    }, options)
end

function Client:createChannelPlacementGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannelPlacementGroup",
        input_schema = types.CreateChannelPlacementGroupInput,
        output_schema = types.CreateChannelPlacementGroupOutput,
        http_method = "POST",
        http_path = "/prod/clusters/{ClusterId}/channelplacementgroups",
    }, options)
end

function Client:createCloudWatchAlarmTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudWatchAlarmTemplate",
        input_schema = types.CreateCloudWatchAlarmTemplateInput,
        output_schema = types.CreateCloudWatchAlarmTemplateOutput,
        http_method = "POST",
        http_path = "/prod/cloudwatch-alarm-templates",
    }, options)
end

function Client:createCloudWatchAlarmTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudWatchAlarmTemplateGroup",
        input_schema = types.CreateCloudWatchAlarmTemplateGroupInput,
        output_schema = types.CreateCloudWatchAlarmTemplateGroupOutput,
        http_method = "POST",
        http_path = "/prod/cloudwatch-alarm-template-groups",
    }, options)
end

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = types.CreateClusterInput,
        output_schema = types.CreateClusterOutput,
        http_method = "POST",
        http_path = "/prod/clusters",
    }, options)
end

function Client:createEventBridgeRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventBridgeRuleTemplate",
        input_schema = types.CreateEventBridgeRuleTemplateInput,
        output_schema = types.CreateEventBridgeRuleTemplateOutput,
        http_method = "POST",
        http_path = "/prod/eventbridge-rule-templates",
    }, options)
end

function Client:createEventBridgeRuleTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventBridgeRuleTemplateGroup",
        input_schema = types.CreateEventBridgeRuleTemplateGroupInput,
        output_schema = types.CreateEventBridgeRuleTemplateGroupOutput,
        http_method = "POST",
        http_path = "/prod/eventbridge-rule-template-groups",
    }, options)
end

function Client:createInput(input, options)
    return self:invokeOperation(input, {
        name = "CreateInput",
        input_schema = types.CreateInputInput,
        output_schema = types.CreateInputOutput,
        http_method = "POST",
        http_path = "/prod/inputs",
    }, options)
end

function Client:createInputSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateInputSecurityGroup",
        input_schema = types.CreateInputSecurityGroupInput,
        output_schema = types.CreateInputSecurityGroupOutput,
        http_method = "POST",
        http_path = "/prod/inputSecurityGroups",
    }, options)
end

function Client:createMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "CreateMultiplex",
        input_schema = types.CreateMultiplexInput,
        output_schema = types.CreateMultiplexOutput,
        http_method = "POST",
        http_path = "/prod/multiplexes",
    }, options)
end

function Client:createMultiplexProgram(input, options)
    return self:invokeOperation(input, {
        name = "CreateMultiplexProgram",
        input_schema = types.CreateMultiplexProgramInput,
        output_schema = types.CreateMultiplexProgramOutput,
        http_method = "POST",
        http_path = "/prod/multiplexes/{MultiplexId}/programs",
    }, options)
end

function Client:createNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetwork",
        input_schema = types.CreateNetworkInput,
        output_schema = types.CreateNetworkOutput,
        http_method = "POST",
        http_path = "/prod/networks",
    }, options)
end

function Client:createNode(input, options)
    return self:invokeOperation(input, {
        name = "CreateNode",
        input_schema = types.CreateNodeInput,
        output_schema = types.CreateNodeOutput,
        http_method = "POST",
        http_path = "/prod/clusters/{ClusterId}/nodes",
    }, options)
end

function Client:createNodeRegistrationScript(input, options)
    return self:invokeOperation(input, {
        name = "CreateNodeRegistrationScript",
        input_schema = types.CreateNodeRegistrationScriptInput,
        output_schema = types.CreateNodeRegistrationScriptOutput,
        http_method = "POST",
        http_path = "/prod/clusters/{ClusterId}/nodeRegistrationScript",
    }, options)
end

function Client:createPartnerInput(input, options)
    return self:invokeOperation(input, {
        name = "CreatePartnerInput",
        input_schema = types.CreatePartnerInputInput,
        output_schema = types.CreatePartnerInputOutput,
        http_method = "POST",
        http_path = "/prod/inputs/{InputId}/partners",
    }, options)
end

function Client:createSdiSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateSdiSource",
        input_schema = types.CreateSdiSourceInput,
        output_schema = types.CreateSdiSourceOutput,
        http_method = "POST",
        http_path = "/prod/sdiSources",
    }, options)
end

function Client:createSignalMap(input, options)
    return self:invokeOperation(input, {
        name = "CreateSignalMap",
        input_schema = types.CreateSignalMapInput,
        output_schema = types.CreateSignalMapOutput,
        http_method = "POST",
        http_path = "/prod/signal-maps",
    }, options)
end

function Client:createTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateTags",
        input_schema = types.CreateTagsInput,
        output_schema = types.CreateTagsOutput,
        http_method = "POST",
        http_path = "/prod/tags/{ResourceArn}",
    }, options)
end

function Client:deleteChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannel",
        input_schema = types.DeleteChannelInput,
        output_schema = types.DeleteChannelOutput,
        http_method = "DELETE",
        http_path = "/prod/channels/{ChannelId}",
    }, options)
end

function Client:deleteChannelPlacementGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannelPlacementGroup",
        input_schema = types.DeleteChannelPlacementGroupInput,
        output_schema = types.DeleteChannelPlacementGroupOutput,
        http_method = "DELETE",
        http_path = "/prod/clusters/{ClusterId}/channelplacementgroups/{ChannelPlacementGroupId}",
    }, options)
end

function Client:deleteCloudWatchAlarmTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCloudWatchAlarmTemplate",
        input_schema = types.DeleteCloudWatchAlarmTemplateInput,
        output_schema = types.DeleteCloudWatchAlarmTemplateOutput,
        http_method = "DELETE",
        http_path = "/prod/cloudwatch-alarm-templates/{Identifier}",
    }, options)
end

function Client:deleteCloudWatchAlarmTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCloudWatchAlarmTemplateGroup",
        input_schema = types.DeleteCloudWatchAlarmTemplateGroupInput,
        output_schema = types.DeleteCloudWatchAlarmTemplateGroupOutput,
        http_method = "DELETE",
        http_path = "/prod/cloudwatch-alarm-template-groups/{Identifier}",
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = types.DeleteClusterInput,
        output_schema = types.DeleteClusterOutput,
        http_method = "DELETE",
        http_path = "/prod/clusters/{ClusterId}",
    }, options)
end

function Client:deleteEventBridgeRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventBridgeRuleTemplate",
        input_schema = types.DeleteEventBridgeRuleTemplateInput,
        output_schema = types.DeleteEventBridgeRuleTemplateOutput,
        http_method = "DELETE",
        http_path = "/prod/eventbridge-rule-templates/{Identifier}",
    }, options)
end

function Client:deleteEventBridgeRuleTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventBridgeRuleTemplateGroup",
        input_schema = types.DeleteEventBridgeRuleTemplateGroupInput,
        output_schema = types.DeleteEventBridgeRuleTemplateGroupOutput,
        http_method = "DELETE",
        http_path = "/prod/eventbridge-rule-template-groups/{Identifier}",
    }, options)
end

function Client:deleteInput(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInput",
        input_schema = types.DeleteInputInput,
        output_schema = types.DeleteInputOutput,
        http_method = "DELETE",
        http_path = "/prod/inputs/{InputId}",
    }, options)
end

function Client:deleteInputSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInputSecurityGroup",
        input_schema = types.DeleteInputSecurityGroupInput,
        output_schema = types.DeleteInputSecurityGroupOutput,
        http_method = "DELETE",
        http_path = "/prod/inputSecurityGroups/{InputSecurityGroupId}",
    }, options)
end

function Client:deleteMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMultiplex",
        input_schema = types.DeleteMultiplexInput,
        output_schema = types.DeleteMultiplexOutput,
        http_method = "DELETE",
        http_path = "/prod/multiplexes/{MultiplexId}",
    }, options)
end

function Client:deleteMultiplexProgram(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMultiplexProgram",
        input_schema = types.DeleteMultiplexProgramInput,
        output_schema = types.DeleteMultiplexProgramOutput,
        http_method = "DELETE",
        http_path = "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}",
    }, options)
end

function Client:deleteNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetwork",
        input_schema = types.DeleteNetworkInput,
        output_schema = types.DeleteNetworkOutput,
        http_method = "DELETE",
        http_path = "/prod/networks/{NetworkId}",
    }, options)
end

function Client:deleteNode(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNode",
        input_schema = types.DeleteNodeInput,
        output_schema = types.DeleteNodeOutput,
        http_method = "DELETE",
        http_path = "/prod/clusters/{ClusterId}/nodes/{NodeId}",
    }, options)
end

function Client:deleteReservation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReservation",
        input_schema = types.DeleteReservationInput,
        output_schema = types.DeleteReservationOutput,
        http_method = "DELETE",
        http_path = "/prod/reservations/{ReservationId}",
    }, options)
end

function Client:deleteSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchedule",
        input_schema = types.DeleteScheduleInput,
        output_schema = types.DeleteScheduleOutput,
        http_method = "DELETE",
        http_path = "/prod/channels/{ChannelId}/schedule",
    }, options)
end

function Client:deleteSdiSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSdiSource",
        input_schema = types.DeleteSdiSourceInput,
        output_schema = types.DeleteSdiSourceOutput,
        http_method = "DELETE",
        http_path = "/prod/sdiSources/{SdiSourceId}",
    }, options)
end

function Client:deleteSignalMap(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSignalMap",
        input_schema = types.DeleteSignalMapInput,
        output_schema = types.DeleteSignalMapOutput,
        http_method = "DELETE",
        http_path = "/prod/signal-maps/{Identifier}",
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = types.DeleteTagsInput,
        output_schema = types.DeleteTagsOutput,
        http_method = "DELETE",
        http_path = "/prod/tags/{ResourceArn}",
    }, options)
end

function Client:describeAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountConfiguration",
        input_schema = types.DescribeAccountConfigurationInput,
        output_schema = types.DescribeAccountConfigurationOutput,
        http_method = "GET",
        http_path = "/prod/accountConfiguration",
    }, options)
end

function Client:describeChannel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannel",
        input_schema = types.DescribeChannelInput,
        output_schema = types.DescribeChannelOutput,
        http_method = "GET",
        http_path = "/prod/channels/{ChannelId}",
    }, options)
end

function Client:describeChannelPlacementGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannelPlacementGroup",
        input_schema = types.DescribeChannelPlacementGroupInput,
        output_schema = types.DescribeChannelPlacementGroupOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}/channelplacementgroups/{ChannelPlacementGroupId}",
    }, options)
end

function Client:describeCluster(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCluster",
        input_schema = types.DescribeClusterInput,
        output_schema = types.DescribeClusterOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}",
    }, options)
end

function Client:describeInput(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInput",
        input_schema = types.DescribeInputInput,
        output_schema = types.DescribeInputOutput,
        http_method = "GET",
        http_path = "/prod/inputs/{InputId}",
    }, options)
end

function Client:describeInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInputDevice",
        input_schema = types.DescribeInputDeviceInput,
        output_schema = types.DescribeInputDeviceOutput,
        http_method = "GET",
        http_path = "/prod/inputDevices/{InputDeviceId}",
    }, options)
end

function Client:describeInputDeviceThumbnail(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInputDeviceThumbnail",
        input_schema = types.DescribeInputDeviceThumbnailInput,
        output_schema = types.DescribeInputDeviceThumbnailOutput,
        http_method = "GET",
        http_path = "/prod/inputDevices/{InputDeviceId}/thumbnailData",
    }, options)
end

function Client:describeInputSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInputSecurityGroup",
        input_schema = types.DescribeInputSecurityGroupInput,
        output_schema = types.DescribeInputSecurityGroupOutput,
        http_method = "GET",
        http_path = "/prod/inputSecurityGroups/{InputSecurityGroupId}",
    }, options)
end

function Client:describeMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMultiplex",
        input_schema = types.DescribeMultiplexInput,
        output_schema = types.DescribeMultiplexOutput,
        http_method = "GET",
        http_path = "/prod/multiplexes/{MultiplexId}",
    }, options)
end

function Client:describeMultiplexProgram(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMultiplexProgram",
        input_schema = types.DescribeMultiplexProgramInput,
        output_schema = types.DescribeMultiplexProgramOutput,
        http_method = "GET",
        http_path = "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}",
    }, options)
end

function Client:describeNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNetwork",
        input_schema = types.DescribeNetworkInput,
        output_schema = types.DescribeNetworkOutput,
        http_method = "GET",
        http_path = "/prod/networks/{NetworkId}",
    }, options)
end

function Client:describeNode(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNode",
        input_schema = types.DescribeNodeInput,
        output_schema = types.DescribeNodeOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}/nodes/{NodeId}",
    }, options)
end

function Client:describeOffering(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOffering",
        input_schema = types.DescribeOfferingInput,
        output_schema = types.DescribeOfferingOutput,
        http_method = "GET",
        http_path = "/prod/offerings/{OfferingId}",
    }, options)
end

function Client:describeReservation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservation",
        input_schema = types.DescribeReservationInput,
        output_schema = types.DescribeReservationOutput,
        http_method = "GET",
        http_path = "/prod/reservations/{ReservationId}",
    }, options)
end

function Client:describeSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSchedule",
        input_schema = types.DescribeScheduleInput,
        output_schema = types.DescribeScheduleOutput,
        http_method = "GET",
        http_path = "/prod/channels/{ChannelId}/schedule",
    }, options)
end

function Client:describeSdiSource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSdiSource",
        input_schema = types.DescribeSdiSourceInput,
        output_schema = types.DescribeSdiSourceOutput,
        http_method = "GET",
        http_path = "/prod/sdiSources/{SdiSourceId}",
    }, options)
end

function Client:describeThumbnails(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThumbnails",
        input_schema = types.DescribeThumbnailsInput,
        output_schema = types.DescribeThumbnailsOutput,
        http_method = "GET",
        http_path = "/prod/channels/{ChannelId}/thumbnails",
    }, options)
end

function Client:getCloudWatchAlarmTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudWatchAlarmTemplate",
        input_schema = types.GetCloudWatchAlarmTemplateInput,
        output_schema = types.GetCloudWatchAlarmTemplateOutput,
        http_method = "GET",
        http_path = "/prod/cloudwatch-alarm-templates/{Identifier}",
    }, options)
end

function Client:getCloudWatchAlarmTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudWatchAlarmTemplateGroup",
        input_schema = types.GetCloudWatchAlarmTemplateGroupInput,
        output_schema = types.GetCloudWatchAlarmTemplateGroupOutput,
        http_method = "GET",
        http_path = "/prod/cloudwatch-alarm-template-groups/{Identifier}",
    }, options)
end

function Client:getEventBridgeRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetEventBridgeRuleTemplate",
        input_schema = types.GetEventBridgeRuleTemplateInput,
        output_schema = types.GetEventBridgeRuleTemplateOutput,
        http_method = "GET",
        http_path = "/prod/eventbridge-rule-templates/{Identifier}",
    }, options)
end

function Client:getEventBridgeRuleTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetEventBridgeRuleTemplateGroup",
        input_schema = types.GetEventBridgeRuleTemplateGroupInput,
        output_schema = types.GetEventBridgeRuleTemplateGroupOutput,
        http_method = "GET",
        http_path = "/prod/eventbridge-rule-template-groups/{Identifier}",
    }, options)
end

function Client:getSignalMap(input, options)
    return self:invokeOperation(input, {
        name = "GetSignalMap",
        input_schema = types.GetSignalMapInput,
        output_schema = types.GetSignalMapOutput,
        http_method = "GET",
        http_path = "/prod/signal-maps/{Identifier}",
    }, options)
end

function Client:listAlerts(input, options)
    return self:invokeOperation(input, {
        name = "ListAlerts",
        input_schema = types.ListAlertsInput,
        output_schema = types.ListAlertsOutput,
        http_method = "GET",
        http_path = "/prod/channels/{ChannelId}/alerts",
    }, options)
end

function Client:listChannelPlacementGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelPlacementGroups",
        input_schema = types.ListChannelPlacementGroupsInput,
        output_schema = types.ListChannelPlacementGroupsOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}/channelplacementgroups",
    }, options)
end

function Client:listChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListChannels",
        input_schema = types.ListChannelsInput,
        output_schema = types.ListChannelsOutput,
        http_method = "GET",
        http_path = "/prod/channels",
    }, options)
end

function Client:listCloudWatchAlarmTemplateGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListCloudWatchAlarmTemplateGroups",
        input_schema = types.ListCloudWatchAlarmTemplateGroupsInput,
        output_schema = types.ListCloudWatchAlarmTemplateGroupsOutput,
        http_method = "GET",
        http_path = "/prod/cloudwatch-alarm-template-groups",
    }, options)
end

function Client:listCloudWatchAlarmTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListCloudWatchAlarmTemplates",
        input_schema = types.ListCloudWatchAlarmTemplatesInput,
        output_schema = types.ListCloudWatchAlarmTemplatesOutput,
        http_method = "GET",
        http_path = "/prod/cloudwatch-alarm-templates",
    }, options)
end

function Client:listClusterAlerts(input, options)
    return self:invokeOperation(input, {
        name = "ListClusterAlerts",
        input_schema = types.ListClusterAlertsInput,
        output_schema = types.ListClusterAlertsOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}/alerts",
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = types.ListClustersInput,
        output_schema = types.ListClustersOutput,
        http_method = "GET",
        http_path = "/prod/clusters",
    }, options)
end

function Client:listEventBridgeRuleTemplateGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListEventBridgeRuleTemplateGroups",
        input_schema = types.ListEventBridgeRuleTemplateGroupsInput,
        output_schema = types.ListEventBridgeRuleTemplateGroupsOutput,
        http_method = "GET",
        http_path = "/prod/eventbridge-rule-template-groups",
    }, options)
end

function Client:listEventBridgeRuleTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListEventBridgeRuleTemplates",
        input_schema = types.ListEventBridgeRuleTemplatesInput,
        output_schema = types.ListEventBridgeRuleTemplatesOutput,
        http_method = "GET",
        http_path = "/prod/eventbridge-rule-templates",
    }, options)
end

function Client:listInputDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListInputDevices",
        input_schema = types.ListInputDevicesInput,
        output_schema = types.ListInputDevicesOutput,
        http_method = "GET",
        http_path = "/prod/inputDevices",
    }, options)
end

function Client:listInputDeviceTransfers(input, options)
    return self:invokeOperation(input, {
        name = "ListInputDeviceTransfers",
        input_schema = types.ListInputDeviceTransfersInput,
        output_schema = types.ListInputDeviceTransfersOutput,
        http_method = "GET",
        http_path = "/prod/inputDeviceTransfers",
    }, options)
end

function Client:listInputs(input, options)
    return self:invokeOperation(input, {
        name = "ListInputs",
        input_schema = types.ListInputsInput,
        output_schema = types.ListInputsOutput,
        http_method = "GET",
        http_path = "/prod/inputs",
    }, options)
end

function Client:listInputSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListInputSecurityGroups",
        input_schema = types.ListInputSecurityGroupsInput,
        output_schema = types.ListInputSecurityGroupsOutput,
        http_method = "GET",
        http_path = "/prod/inputSecurityGroups",
    }, options)
end

function Client:listMultiplexAlerts(input, options)
    return self:invokeOperation(input, {
        name = "ListMultiplexAlerts",
        input_schema = types.ListMultiplexAlertsInput,
        output_schema = types.ListMultiplexAlertsOutput,
        http_method = "GET",
        http_path = "/prod/multiplexes/{MultiplexId}/alerts",
    }, options)
end

function Client:listMultiplexes(input, options)
    return self:invokeOperation(input, {
        name = "ListMultiplexes",
        input_schema = types.ListMultiplexesInput,
        output_schema = types.ListMultiplexesOutput,
        http_method = "GET",
        http_path = "/prod/multiplexes",
    }, options)
end

function Client:listMultiplexPrograms(input, options)
    return self:invokeOperation(input, {
        name = "ListMultiplexPrograms",
        input_schema = types.ListMultiplexProgramsInput,
        output_schema = types.ListMultiplexProgramsOutput,
        http_method = "GET",
        http_path = "/prod/multiplexes/{MultiplexId}/programs",
    }, options)
end

function Client:listNetworks(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworks",
        input_schema = types.ListNetworksInput,
        output_schema = types.ListNetworksOutput,
        http_method = "GET",
        http_path = "/prod/networks",
    }, options)
end

function Client:listNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListNodes",
        input_schema = types.ListNodesInput,
        output_schema = types.ListNodesOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}/nodes",
    }, options)
end

function Client:listOfferings(input, options)
    return self:invokeOperation(input, {
        name = "ListOfferings",
        input_schema = types.ListOfferingsInput,
        output_schema = types.ListOfferingsOutput,
        http_method = "GET",
        http_path = "/prod/offerings",
    }, options)
end

function Client:listReservations(input, options)
    return self:invokeOperation(input, {
        name = "ListReservations",
        input_schema = types.ListReservationsInput,
        output_schema = types.ListReservationsOutput,
        http_method = "GET",
        http_path = "/prod/reservations",
    }, options)
end

function Client:listSdiSources(input, options)
    return self:invokeOperation(input, {
        name = "ListSdiSources",
        input_schema = types.ListSdiSourcesInput,
        output_schema = types.ListSdiSourcesOutput,
        http_method = "GET",
        http_path = "/prod/sdiSources",
    }, options)
end

function Client:listSignalMaps(input, options)
    return self:invokeOperation(input, {
        name = "ListSignalMaps",
        input_schema = types.ListSignalMapsInput,
        output_schema = types.ListSignalMapsOutput,
        http_method = "GET",
        http_path = "/prod/signal-maps",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/prod/tags/{ResourceArn}",
    }, options)
end

function Client:listVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListVersions",
        input_schema = types.ListVersionsInput,
        output_schema = types.ListVersionsOutput,
        http_method = "GET",
        http_path = "/prod/versions",
    }, options)
end

function Client:purchaseOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseOffering",
        input_schema = types.PurchaseOfferingInput,
        output_schema = types.PurchaseOfferingOutput,
        http_method = "POST",
        http_path = "/prod/offerings/{OfferingId}/purchase",
    }, options)
end

function Client:rebootInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "RebootInputDevice",
        input_schema = types.RebootInputDeviceInput,
        output_schema = types.RebootInputDeviceOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/reboot",
    }, options)
end

function Client:rejectInputDeviceTransfer(input, options)
    return self:invokeOperation(input, {
        name = "RejectInputDeviceTransfer",
        input_schema = types.RejectInputDeviceTransferInput,
        output_schema = types.RejectInputDeviceTransferOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/reject",
    }, options)
end

function Client:restartChannelPipelines(input, options)
    return self:invokeOperation(input, {
        name = "RestartChannelPipelines",
        input_schema = types.RestartChannelPipelinesInput,
        output_schema = types.RestartChannelPipelinesOutput,
        http_method = "POST",
        http_path = "/prod/channels/{ChannelId}/restartChannelPipelines",
    }, options)
end

function Client:startChannel(input, options)
    return self:invokeOperation(input, {
        name = "StartChannel",
        input_schema = types.StartChannelInput,
        output_schema = types.StartChannelOutput,
        http_method = "POST",
        http_path = "/prod/channels/{ChannelId}/start",
    }, options)
end

function Client:startDeleteMonitorDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StartDeleteMonitorDeployment",
        input_schema = types.StartDeleteMonitorDeploymentInput,
        output_schema = types.StartDeleteMonitorDeploymentOutput,
        http_method = "DELETE",
        http_path = "/prod/signal-maps/{Identifier}/monitor-deployment",
    }, options)
end

function Client:startInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "StartInputDevice",
        input_schema = types.StartInputDeviceInput,
        output_schema = types.StartInputDeviceOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/start",
    }, options)
end

function Client:startInputDeviceMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "StartInputDeviceMaintenanceWindow",
        input_schema = types.StartInputDeviceMaintenanceWindowInput,
        output_schema = types.StartInputDeviceMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/startInputDeviceMaintenanceWindow",
    }, options)
end

function Client:startMonitorDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StartMonitorDeployment",
        input_schema = types.StartMonitorDeploymentInput,
        output_schema = types.StartMonitorDeploymentOutput,
        http_method = "POST",
        http_path = "/prod/signal-maps/{Identifier}/monitor-deployment",
    }, options)
end

function Client:startMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "StartMultiplex",
        input_schema = types.StartMultiplexInput,
        output_schema = types.StartMultiplexOutput,
        http_method = "POST",
        http_path = "/prod/multiplexes/{MultiplexId}/start",
    }, options)
end

function Client:startUpdateSignalMap(input, options)
    return self:invokeOperation(input, {
        name = "StartUpdateSignalMap",
        input_schema = types.StartUpdateSignalMapInput,
        output_schema = types.StartUpdateSignalMapOutput,
        http_method = "PATCH",
        http_path = "/prod/signal-maps/{Identifier}",
    }, options)
end

function Client:stopChannel(input, options)
    return self:invokeOperation(input, {
        name = "StopChannel",
        input_schema = types.StopChannelInput,
        output_schema = types.StopChannelOutput,
        http_method = "POST",
        http_path = "/prod/channels/{ChannelId}/stop",
    }, options)
end

function Client:stopInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "StopInputDevice",
        input_schema = types.StopInputDeviceInput,
        output_schema = types.StopInputDeviceOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/stop",
    }, options)
end

function Client:stopMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "StopMultiplex",
        input_schema = types.StopMultiplexInput,
        output_schema = types.StopMultiplexOutput,
        http_method = "POST",
        http_path = "/prod/multiplexes/{MultiplexId}/stop",
    }, options)
end

function Client:transferInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "TransferInputDevice",
        input_schema = types.TransferInputDeviceInput,
        output_schema = types.TransferInputDeviceOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/transfer",
    }, options)
end

function Client:updateAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountConfiguration",
        input_schema = types.UpdateAccountConfigurationInput,
        output_schema = types.UpdateAccountConfigurationOutput,
        http_method = "PUT",
        http_path = "/prod/accountConfiguration",
    }, options)
end

function Client:updateChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannel",
        input_schema = types.UpdateChannelInput,
        output_schema = types.UpdateChannelOutput,
        http_method = "PUT",
        http_path = "/prod/channels/{ChannelId}",
    }, options)
end

function Client:updateChannelClass(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannelClass",
        input_schema = types.UpdateChannelClassInput,
        output_schema = types.UpdateChannelClassOutput,
        http_method = "PUT",
        http_path = "/prod/channels/{ChannelId}/channelClass",
    }, options)
end

function Client:updateChannelPlacementGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannelPlacementGroup",
        input_schema = types.UpdateChannelPlacementGroupInput,
        output_schema = types.UpdateChannelPlacementGroupOutput,
        http_method = "PUT",
        http_path = "/prod/clusters/{ClusterId}/channelplacementgroups/{ChannelPlacementGroupId}",
    }, options)
end

function Client:updateCloudWatchAlarmTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCloudWatchAlarmTemplate",
        input_schema = types.UpdateCloudWatchAlarmTemplateInput,
        output_schema = types.UpdateCloudWatchAlarmTemplateOutput,
        http_method = "PATCH",
        http_path = "/prod/cloudwatch-alarm-templates/{Identifier}",
    }, options)
end

function Client:updateCloudWatchAlarmTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCloudWatchAlarmTemplateGroup",
        input_schema = types.UpdateCloudWatchAlarmTemplateGroupInput,
        output_schema = types.UpdateCloudWatchAlarmTemplateGroupOutput,
        http_method = "PATCH",
        http_path = "/prod/cloudwatch-alarm-template-groups/{Identifier}",
    }, options)
end

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = types.UpdateClusterInput,
        output_schema = types.UpdateClusterOutput,
        http_method = "PUT",
        http_path = "/prod/clusters/{ClusterId}",
    }, options)
end

function Client:updateEventBridgeRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventBridgeRuleTemplate",
        input_schema = types.UpdateEventBridgeRuleTemplateInput,
        output_schema = types.UpdateEventBridgeRuleTemplateOutput,
        http_method = "PATCH",
        http_path = "/prod/eventbridge-rule-templates/{Identifier}",
    }, options)
end

function Client:updateEventBridgeRuleTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventBridgeRuleTemplateGroup",
        input_schema = types.UpdateEventBridgeRuleTemplateGroupInput,
        output_schema = types.UpdateEventBridgeRuleTemplateGroupOutput,
        http_method = "PATCH",
        http_path = "/prod/eventbridge-rule-template-groups/{Identifier}",
    }, options)
end

function Client:updateInput(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInput",
        input_schema = types.UpdateInputInput,
        output_schema = types.UpdateInputOutput,
        http_method = "PUT",
        http_path = "/prod/inputs/{InputId}",
    }, options)
end

function Client:updateInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInputDevice",
        input_schema = types.UpdateInputDeviceInput,
        output_schema = types.UpdateInputDeviceOutput,
        http_method = "PUT",
        http_path = "/prod/inputDevices/{InputDeviceId}",
    }, options)
end

function Client:updateInputSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInputSecurityGroup",
        input_schema = types.UpdateInputSecurityGroupInput,
        output_schema = types.UpdateInputSecurityGroupOutput,
        http_method = "PUT",
        http_path = "/prod/inputSecurityGroups/{InputSecurityGroupId}",
    }, options)
end

function Client:updateMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMultiplex",
        input_schema = types.UpdateMultiplexInput,
        output_schema = types.UpdateMultiplexOutput,
        http_method = "PUT",
        http_path = "/prod/multiplexes/{MultiplexId}",
    }, options)
end

function Client:updateMultiplexProgram(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMultiplexProgram",
        input_schema = types.UpdateMultiplexProgramInput,
        output_schema = types.UpdateMultiplexProgramOutput,
        http_method = "PUT",
        http_path = "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}",
    }, options)
end

function Client:updateNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetwork",
        input_schema = types.UpdateNetworkInput,
        output_schema = types.UpdateNetworkOutput,
        http_method = "PUT",
        http_path = "/prod/networks/{NetworkId}",
    }, options)
end

function Client:updateNode(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNode",
        input_schema = types.UpdateNodeInput,
        output_schema = types.UpdateNodeOutput,
        http_method = "PUT",
        http_path = "/prod/clusters/{ClusterId}/nodes/{NodeId}",
    }, options)
end

function Client:updateNodeState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNodeState",
        input_schema = types.UpdateNodeStateInput,
        output_schema = types.UpdateNodeStateOutput,
        http_method = "PUT",
        http_path = "/prod/clusters/{ClusterId}/nodes/{NodeId}/state",
    }, options)
end

function Client:updateReservation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReservation",
        input_schema = types.UpdateReservationInput,
        output_schema = types.UpdateReservationOutput,
        http_method = "PUT",
        http_path = "/prod/reservations/{ReservationId}",
    }, options)
end

function Client:updateSdiSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSdiSource",
        input_schema = types.UpdateSdiSourceInput,
        output_schema = types.UpdateSdiSourceOutput,
        http_method = "PUT",
        http_path = "/prod/sdiSources/{SdiSourceId}",
    }, options)
end

return M
