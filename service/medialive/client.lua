local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("medialive.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("medialive.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MediaLive"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "medialive", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:acceptInputDeviceTransfer(input, options)
    return self:invokeOperation(input, {
        name = "AcceptInputDeviceTransfer",
        input_schema = schemas.AcceptInputDeviceTransferInput,
        output_schema = schemas.AcceptInputDeviceTransferOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/accept",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDelete(input, options)
    return self:invokeOperation(input, {
        name = "BatchDelete",
        input_schema = schemas.BatchDeleteInput,
        output_schema = schemas.BatchDeleteOutput,
        http_method = "POST",
        http_path = "/prod/batch/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchStart(input, options)
    return self:invokeOperation(input, {
        name = "BatchStart",
        input_schema = schemas.BatchStartInput,
        output_schema = schemas.BatchStartOutput,
        http_method = "POST",
        http_path = "/prod/batch/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchStop(input, options)
    return self:invokeOperation(input, {
        name = "BatchStop",
        input_schema = schemas.BatchStopInput,
        output_schema = schemas.BatchStopOutput,
        http_method = "POST",
        http_path = "/prod/batch/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateSchedule(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateSchedule",
        input_schema = schemas.BatchUpdateScheduleInput,
        output_schema = schemas.BatchUpdateScheduleOutput,
        http_method = "PUT",
        http_path = "/prod/channels/{ChannelId}/schedule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelInputDeviceTransfer(input, options)
    return self:invokeOperation(input, {
        name = "CancelInputDeviceTransfer",
        input_schema = schemas.CancelInputDeviceTransferInput,
        output_schema = schemas.CancelInputDeviceTransferOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:claimDevice(input, options)
    return self:invokeOperation(input, {
        name = "ClaimDevice",
        input_schema = schemas.ClaimDeviceInput,
        output_schema = schemas.ClaimDeviceOutput,
        http_method = "POST",
        http_path = "/prod/claimDevice",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannel",
        input_schema = schemas.CreateChannelInput,
        output_schema = schemas.CreateChannelOutput,
        http_method = "POST",
        http_path = "/prod/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannelPlacementGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannelPlacementGroup",
        input_schema = schemas.CreateChannelPlacementGroupInput,
        output_schema = schemas.CreateChannelPlacementGroupOutput,
        http_method = "POST",
        http_path = "/prod/clusters/{ClusterId}/channelplacementgroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCloudWatchAlarmTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudWatchAlarmTemplate",
        input_schema = schemas.CreateCloudWatchAlarmTemplateInput,
        output_schema = schemas.CreateCloudWatchAlarmTemplateOutput,
        http_method = "POST",
        http_path = "/prod/cloudwatch-alarm-templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCloudWatchAlarmTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudWatchAlarmTemplateGroup",
        input_schema = schemas.CreateCloudWatchAlarmTemplateGroupInput,
        output_schema = schemas.CreateCloudWatchAlarmTemplateGroupOutput,
        http_method = "POST",
        http_path = "/prod/cloudwatch-alarm-template-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = schemas.CreateClusterInput,
        output_schema = schemas.CreateClusterOutput,
        http_method = "POST",
        http_path = "/prod/clusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEventBridgeRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventBridgeRuleTemplate",
        input_schema = schemas.CreateEventBridgeRuleTemplateInput,
        output_schema = schemas.CreateEventBridgeRuleTemplateOutput,
        http_method = "POST",
        http_path = "/prod/eventbridge-rule-templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEventBridgeRuleTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventBridgeRuleTemplateGroup",
        input_schema = schemas.CreateEventBridgeRuleTemplateGroupInput,
        output_schema = schemas.CreateEventBridgeRuleTemplateGroupOutput,
        http_method = "POST",
        http_path = "/prod/eventbridge-rule-template-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInput(input, options)
    return self:invokeOperation(input, {
        name = "CreateInput",
        input_schema = schemas.CreateInputInput,
        output_schema = schemas.CreateInputOutput,
        http_method = "POST",
        http_path = "/prod/inputs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInputSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateInputSecurityGroup",
        input_schema = schemas.CreateInputSecurityGroupInput,
        output_schema = schemas.CreateInputSecurityGroupOutput,
        http_method = "POST",
        http_path = "/prod/inputSecurityGroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "CreateMultiplex",
        input_schema = schemas.CreateMultiplexInput,
        output_schema = schemas.CreateMultiplexOutput,
        http_method = "POST",
        http_path = "/prod/multiplexes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMultiplexProgram(input, options)
    return self:invokeOperation(input, {
        name = "CreateMultiplexProgram",
        input_schema = schemas.CreateMultiplexProgramInput,
        output_schema = schemas.CreateMultiplexProgramOutput,
        http_method = "POST",
        http_path = "/prod/multiplexes/{MultiplexId}/programs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetwork",
        input_schema = schemas.CreateNetworkInput,
        output_schema = schemas.CreateNetworkOutput,
        http_method = "POST",
        http_path = "/prod/networks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNode(input, options)
    return self:invokeOperation(input, {
        name = "CreateNode",
        input_schema = schemas.CreateNodeInput,
        output_schema = schemas.CreateNodeOutput,
        http_method = "POST",
        http_path = "/prod/clusters/{ClusterId}/nodes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNodeRegistrationScript(input, options)
    return self:invokeOperation(input, {
        name = "CreateNodeRegistrationScript",
        input_schema = schemas.CreateNodeRegistrationScriptInput,
        output_schema = schemas.CreateNodeRegistrationScriptOutput,
        http_method = "POST",
        http_path = "/prod/clusters/{ClusterId}/nodeRegistrationScript",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPartnerInput(input, options)
    return self:invokeOperation(input, {
        name = "CreatePartnerInput",
        input_schema = schemas.CreatePartnerInputInput,
        output_schema = schemas.CreatePartnerInputOutput,
        http_method = "POST",
        http_path = "/prod/inputs/{InputId}/partners",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSdiSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateSdiSource",
        input_schema = schemas.CreateSdiSourceInput,
        output_schema = schemas.CreateSdiSourceOutput,
        http_method = "POST",
        http_path = "/prod/sdiSources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSignalMap(input, options)
    return self:invokeOperation(input, {
        name = "CreateSignalMap",
        input_schema = schemas.CreateSignalMapInput,
        output_schema = schemas.CreateSignalMapOutput,
        http_method = "POST",
        http_path = "/prod/signal-maps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateTags",
        input_schema = schemas.CreateTagsInput,
        output_schema = schemas.CreateTagsOutput,
        http_method = "POST",
        http_path = "/prod/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannel",
        input_schema = schemas.DeleteChannelInput,
        output_schema = schemas.DeleteChannelOutput,
        http_method = "DELETE",
        http_path = "/prod/channels/{ChannelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannelPlacementGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannelPlacementGroup",
        input_schema = schemas.DeleteChannelPlacementGroupInput,
        output_schema = schemas.DeleteChannelPlacementGroupOutput,
        http_method = "DELETE",
        http_path = "/prod/clusters/{ClusterId}/channelplacementgroups/{ChannelPlacementGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCloudWatchAlarmTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCloudWatchAlarmTemplate",
        input_schema = schemas.DeleteCloudWatchAlarmTemplateInput,
        output_schema = schemas.DeleteCloudWatchAlarmTemplateOutput,
        http_method = "DELETE",
        http_path = "/prod/cloudwatch-alarm-templates/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCloudWatchAlarmTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCloudWatchAlarmTemplateGroup",
        input_schema = schemas.DeleteCloudWatchAlarmTemplateGroupInput,
        output_schema = schemas.DeleteCloudWatchAlarmTemplateGroupOutput,
        http_method = "DELETE",
        http_path = "/prod/cloudwatch-alarm-template-groups/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = schemas.DeleteClusterInput,
        output_schema = schemas.DeleteClusterOutput,
        http_method = "DELETE",
        http_path = "/prod/clusters/{ClusterId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventBridgeRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventBridgeRuleTemplate",
        input_schema = schemas.DeleteEventBridgeRuleTemplateInput,
        output_schema = schemas.DeleteEventBridgeRuleTemplateOutput,
        http_method = "DELETE",
        http_path = "/prod/eventbridge-rule-templates/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventBridgeRuleTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventBridgeRuleTemplateGroup",
        input_schema = schemas.DeleteEventBridgeRuleTemplateGroupInput,
        output_schema = schemas.DeleteEventBridgeRuleTemplateGroupOutput,
        http_method = "DELETE",
        http_path = "/prod/eventbridge-rule-template-groups/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInput(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInput",
        input_schema = schemas.DeleteInputInput,
        output_schema = schemas.DeleteInputOutput,
        http_method = "DELETE",
        http_path = "/prod/inputs/{InputId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInputSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInputSecurityGroup",
        input_schema = schemas.DeleteInputSecurityGroupInput,
        output_schema = schemas.DeleteInputSecurityGroupOutput,
        http_method = "DELETE",
        http_path = "/prod/inputSecurityGroups/{InputSecurityGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMultiplex",
        input_schema = schemas.DeleteMultiplexInput,
        output_schema = schemas.DeleteMultiplexOutput,
        http_method = "DELETE",
        http_path = "/prod/multiplexes/{MultiplexId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMultiplexProgram(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMultiplexProgram",
        input_schema = schemas.DeleteMultiplexProgramInput,
        output_schema = schemas.DeleteMultiplexProgramOutput,
        http_method = "DELETE",
        http_path = "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetwork",
        input_schema = schemas.DeleteNetworkInput,
        output_schema = schemas.DeleteNetworkOutput,
        http_method = "DELETE",
        http_path = "/prod/networks/{NetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNode(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNode",
        input_schema = schemas.DeleteNodeInput,
        output_schema = schemas.DeleteNodeOutput,
        http_method = "DELETE",
        http_path = "/prod/clusters/{ClusterId}/nodes/{NodeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReservation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReservation",
        input_schema = schemas.DeleteReservationInput,
        output_schema = schemas.DeleteReservationOutput,
        http_method = "DELETE",
        http_path = "/prod/reservations/{ReservationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchedule",
        input_schema = schemas.DeleteScheduleInput,
        output_schema = schemas.DeleteScheduleOutput,
        http_method = "DELETE",
        http_path = "/prod/channels/{ChannelId}/schedule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSdiSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSdiSource",
        input_schema = schemas.DeleteSdiSourceInput,
        output_schema = schemas.DeleteSdiSourceOutput,
        http_method = "DELETE",
        http_path = "/prod/sdiSources/{SdiSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSignalMap(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSignalMap",
        input_schema = schemas.DeleteSignalMapInput,
        output_schema = schemas.DeleteSignalMapOutput,
        http_method = "DELETE",
        http_path = "/prod/signal-maps/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = schemas.DeleteTagsInput,
        output_schema = schemas.DeleteTagsOutput,
        http_method = "DELETE",
        http_path = "/prod/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountConfiguration",
        input_schema = schemas.DescribeAccountConfigurationInput,
        output_schema = schemas.DescribeAccountConfigurationOutput,
        http_method = "GET",
        http_path = "/prod/accountConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChannel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannel",
        input_schema = schemas.DescribeChannelInput,
        output_schema = schemas.DescribeChannelOutput,
        http_method = "GET",
        http_path = "/prod/channels/{ChannelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChannelPlacementGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannelPlacementGroup",
        input_schema = schemas.DescribeChannelPlacementGroupInput,
        output_schema = schemas.DescribeChannelPlacementGroupOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}/channelplacementgroups/{ChannelPlacementGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCluster(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCluster",
        input_schema = schemas.DescribeClusterInput,
        output_schema = schemas.DescribeClusterOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInput(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInput",
        input_schema = schemas.DescribeInputInput,
        output_schema = schemas.DescribeInputOutput,
        http_method = "GET",
        http_path = "/prod/inputs/{InputId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInputDevice",
        input_schema = schemas.DescribeInputDeviceInput,
        output_schema = schemas.DescribeInputDeviceOutput,
        http_method = "GET",
        http_path = "/prod/inputDevices/{InputDeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInputDeviceThumbnail(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInputDeviceThumbnail",
        input_schema = schemas.DescribeInputDeviceThumbnailInput,
        output_schema = schemas.DescribeInputDeviceThumbnailOutput,
        http_method = "GET",
        http_path = "/prod/inputDevices/{InputDeviceId}/thumbnailData",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInputSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInputSecurityGroup",
        input_schema = schemas.DescribeInputSecurityGroupInput,
        output_schema = schemas.DescribeInputSecurityGroupOutput,
        http_method = "GET",
        http_path = "/prod/inputSecurityGroups/{InputSecurityGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMultiplex",
        input_schema = schemas.DescribeMultiplexInput,
        output_schema = schemas.DescribeMultiplexOutput,
        http_method = "GET",
        http_path = "/prod/multiplexes/{MultiplexId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMultiplexProgram(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMultiplexProgram",
        input_schema = schemas.DescribeMultiplexProgramInput,
        output_schema = schemas.DescribeMultiplexProgramOutput,
        http_method = "GET",
        http_path = "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNetwork",
        input_schema = schemas.DescribeNetworkInput,
        output_schema = schemas.DescribeNetworkOutput,
        http_method = "GET",
        http_path = "/prod/networks/{NetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNode(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNode",
        input_schema = schemas.DescribeNodeInput,
        output_schema = schemas.DescribeNodeOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}/nodes/{NodeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOffering(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOffering",
        input_schema = schemas.DescribeOfferingInput,
        output_schema = schemas.DescribeOfferingOutput,
        http_method = "GET",
        http_path = "/prod/offerings/{OfferingId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservation",
        input_schema = schemas.DescribeReservationInput,
        output_schema = schemas.DescribeReservationOutput,
        http_method = "GET",
        http_path = "/prod/reservations/{ReservationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSchedule",
        input_schema = schemas.DescribeScheduleInput,
        output_schema = schemas.DescribeScheduleOutput,
        http_method = "GET",
        http_path = "/prod/channels/{ChannelId}/schedule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSdiSource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSdiSource",
        input_schema = schemas.DescribeSdiSourceInput,
        output_schema = schemas.DescribeSdiSourceOutput,
        http_method = "GET",
        http_path = "/prod/sdiSources/{SdiSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeThumbnails(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThumbnails",
        input_schema = schemas.DescribeThumbnailsInput,
        output_schema = schemas.DescribeThumbnailsOutput,
        http_method = "GET",
        http_path = "/prod/channels/{ChannelId}/thumbnails",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCloudWatchAlarmTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudWatchAlarmTemplate",
        input_schema = schemas.GetCloudWatchAlarmTemplateInput,
        output_schema = schemas.GetCloudWatchAlarmTemplateOutput,
        http_method = "GET",
        http_path = "/prod/cloudwatch-alarm-templates/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCloudWatchAlarmTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudWatchAlarmTemplateGroup",
        input_schema = schemas.GetCloudWatchAlarmTemplateGroupInput,
        output_schema = schemas.GetCloudWatchAlarmTemplateGroupOutput,
        http_method = "GET",
        http_path = "/prod/cloudwatch-alarm-template-groups/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventBridgeRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetEventBridgeRuleTemplate",
        input_schema = schemas.GetEventBridgeRuleTemplateInput,
        output_schema = schemas.GetEventBridgeRuleTemplateOutput,
        http_method = "GET",
        http_path = "/prod/eventbridge-rule-templates/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventBridgeRuleTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetEventBridgeRuleTemplateGroup",
        input_schema = schemas.GetEventBridgeRuleTemplateGroupInput,
        output_schema = schemas.GetEventBridgeRuleTemplateGroupOutput,
        http_method = "GET",
        http_path = "/prod/eventbridge-rule-template-groups/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSignalMap(input, options)
    return self:invokeOperation(input, {
        name = "GetSignalMap",
        input_schema = schemas.GetSignalMapInput,
        output_schema = schemas.GetSignalMapOutput,
        http_method = "GET",
        http_path = "/prod/signal-maps/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAlerts(input, options)
    return self:invokeOperation(input, {
        name = "ListAlerts",
        input_schema = schemas.ListAlertsInput,
        output_schema = schemas.ListAlertsOutput,
        http_method = "GET",
        http_path = "/prod/channels/{ChannelId}/alerts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannelPlacementGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelPlacementGroups",
        input_schema = schemas.ListChannelPlacementGroupsInput,
        output_schema = schemas.ListChannelPlacementGroupsOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}/channelplacementgroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListChannels",
        input_schema = schemas.ListChannelsInput,
        output_schema = schemas.ListChannelsOutput,
        http_method = "GET",
        http_path = "/prod/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCloudWatchAlarmTemplateGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListCloudWatchAlarmTemplateGroups",
        input_schema = schemas.ListCloudWatchAlarmTemplateGroupsInput,
        output_schema = schemas.ListCloudWatchAlarmTemplateGroupsOutput,
        http_method = "GET",
        http_path = "/prod/cloudwatch-alarm-template-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCloudWatchAlarmTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListCloudWatchAlarmTemplates",
        input_schema = schemas.ListCloudWatchAlarmTemplatesInput,
        output_schema = schemas.ListCloudWatchAlarmTemplatesOutput,
        http_method = "GET",
        http_path = "/prod/cloudwatch-alarm-templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusterAlerts(input, options)
    return self:invokeOperation(input, {
        name = "ListClusterAlerts",
        input_schema = schemas.ListClusterAlertsInput,
        output_schema = schemas.ListClusterAlertsOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}/alerts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = schemas.ListClustersInput,
        output_schema = schemas.ListClustersOutput,
        http_method = "GET",
        http_path = "/prod/clusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventBridgeRuleTemplateGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListEventBridgeRuleTemplateGroups",
        input_schema = schemas.ListEventBridgeRuleTemplateGroupsInput,
        output_schema = schemas.ListEventBridgeRuleTemplateGroupsOutput,
        http_method = "GET",
        http_path = "/prod/eventbridge-rule-template-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventBridgeRuleTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListEventBridgeRuleTemplates",
        input_schema = schemas.ListEventBridgeRuleTemplatesInput,
        output_schema = schemas.ListEventBridgeRuleTemplatesOutput,
        http_method = "GET",
        http_path = "/prod/eventbridge-rule-templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInputDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListInputDevices",
        input_schema = schemas.ListInputDevicesInput,
        output_schema = schemas.ListInputDevicesOutput,
        http_method = "GET",
        http_path = "/prod/inputDevices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInputDeviceTransfers(input, options)
    return self:invokeOperation(input, {
        name = "ListInputDeviceTransfers",
        input_schema = schemas.ListInputDeviceTransfersInput,
        output_schema = schemas.ListInputDeviceTransfersOutput,
        http_method = "GET",
        http_path = "/prod/inputDeviceTransfers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInputs(input, options)
    return self:invokeOperation(input, {
        name = "ListInputs",
        input_schema = schemas.ListInputsInput,
        output_schema = schemas.ListInputsOutput,
        http_method = "GET",
        http_path = "/prod/inputs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInputSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListInputSecurityGroups",
        input_schema = schemas.ListInputSecurityGroupsInput,
        output_schema = schemas.ListInputSecurityGroupsOutput,
        http_method = "GET",
        http_path = "/prod/inputSecurityGroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMultiplexAlerts(input, options)
    return self:invokeOperation(input, {
        name = "ListMultiplexAlerts",
        input_schema = schemas.ListMultiplexAlertsInput,
        output_schema = schemas.ListMultiplexAlertsOutput,
        http_method = "GET",
        http_path = "/prod/multiplexes/{MultiplexId}/alerts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMultiplexes(input, options)
    return self:invokeOperation(input, {
        name = "ListMultiplexes",
        input_schema = schemas.ListMultiplexesInput,
        output_schema = schemas.ListMultiplexesOutput,
        http_method = "GET",
        http_path = "/prod/multiplexes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMultiplexPrograms(input, options)
    return self:invokeOperation(input, {
        name = "ListMultiplexPrograms",
        input_schema = schemas.ListMultiplexProgramsInput,
        output_schema = schemas.ListMultiplexProgramsOutput,
        http_method = "GET",
        http_path = "/prod/multiplexes/{MultiplexId}/programs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworks(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworks",
        input_schema = schemas.ListNetworksInput,
        output_schema = schemas.ListNetworksOutput,
        http_method = "GET",
        http_path = "/prod/networks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListNodes",
        input_schema = schemas.ListNodesInput,
        output_schema = schemas.ListNodesOutput,
        http_method = "GET",
        http_path = "/prod/clusters/{ClusterId}/nodes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOfferings(input, options)
    return self:invokeOperation(input, {
        name = "ListOfferings",
        input_schema = schemas.ListOfferingsInput,
        output_schema = schemas.ListOfferingsOutput,
        http_method = "GET",
        http_path = "/prod/offerings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReservations(input, options)
    return self:invokeOperation(input, {
        name = "ListReservations",
        input_schema = schemas.ListReservationsInput,
        output_schema = schemas.ListReservationsOutput,
        http_method = "GET",
        http_path = "/prod/reservations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSdiSources(input, options)
    return self:invokeOperation(input, {
        name = "ListSdiSources",
        input_schema = schemas.ListSdiSourcesInput,
        output_schema = schemas.ListSdiSourcesOutput,
        http_method = "GET",
        http_path = "/prod/sdiSources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSignalMaps(input, options)
    return self:invokeOperation(input, {
        name = "ListSignalMaps",
        input_schema = schemas.ListSignalMapsInput,
        output_schema = schemas.ListSignalMapsOutput,
        http_method = "GET",
        http_path = "/prod/signal-maps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/prod/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListVersions",
        input_schema = schemas.ListVersionsInput,
        output_schema = schemas.ListVersionsOutput,
        http_method = "GET",
        http_path = "/prod/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseOffering",
        input_schema = schemas.PurchaseOfferingInput,
        output_schema = schemas.PurchaseOfferingOutput,
        http_method = "POST",
        http_path = "/prod/offerings/{OfferingId}/purchase",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "RebootInputDevice",
        input_schema = schemas.RebootInputDeviceInput,
        output_schema = schemas.RebootInputDeviceOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/reboot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectInputDeviceTransfer(input, options)
    return self:invokeOperation(input, {
        name = "RejectInputDeviceTransfer",
        input_schema = schemas.RejectInputDeviceTransferInput,
        output_schema = schemas.RejectInputDeviceTransferOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/reject",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restartChannelPipelines(input, options)
    return self:invokeOperation(input, {
        name = "RestartChannelPipelines",
        input_schema = schemas.RestartChannelPipelinesInput,
        output_schema = schemas.RestartChannelPipelinesOutput,
        http_method = "POST",
        http_path = "/prod/channels/{ChannelId}/restartChannelPipelines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startChannel(input, options)
    return self:invokeOperation(input, {
        name = "StartChannel",
        input_schema = schemas.StartChannelInput,
        output_schema = schemas.StartChannelOutput,
        http_method = "POST",
        http_path = "/prod/channels/{ChannelId}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDeleteMonitorDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StartDeleteMonitorDeployment",
        input_schema = schemas.StartDeleteMonitorDeploymentInput,
        output_schema = schemas.StartDeleteMonitorDeploymentOutput,
        http_method = "DELETE",
        http_path = "/prod/signal-maps/{Identifier}/monitor-deployment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "StartInputDevice",
        input_schema = schemas.StartInputDeviceInput,
        output_schema = schemas.StartInputDeviceOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startInputDeviceMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "StartInputDeviceMaintenanceWindow",
        input_schema = schemas.StartInputDeviceMaintenanceWindowInput,
        output_schema = schemas.StartInputDeviceMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/startInputDeviceMaintenanceWindow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMonitorDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StartMonitorDeployment",
        input_schema = schemas.StartMonitorDeploymentInput,
        output_schema = schemas.StartMonitorDeploymentOutput,
        http_method = "POST",
        http_path = "/prod/signal-maps/{Identifier}/monitor-deployment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "StartMultiplex",
        input_schema = schemas.StartMultiplexInput,
        output_schema = schemas.StartMultiplexOutput,
        http_method = "POST",
        http_path = "/prod/multiplexes/{MultiplexId}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startUpdateSignalMap(input, options)
    return self:invokeOperation(input, {
        name = "StartUpdateSignalMap",
        input_schema = schemas.StartUpdateSignalMapInput,
        output_schema = schemas.StartUpdateSignalMapOutput,
        http_method = "PATCH",
        http_path = "/prod/signal-maps/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopChannel(input, options)
    return self:invokeOperation(input, {
        name = "StopChannel",
        input_schema = schemas.StopChannelInput,
        output_schema = schemas.StopChannelOutput,
        http_method = "POST",
        http_path = "/prod/channels/{ChannelId}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "StopInputDevice",
        input_schema = schemas.StopInputDeviceInput,
        output_schema = schemas.StopInputDeviceOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "StopMultiplex",
        input_schema = schemas.StopMultiplexInput,
        output_schema = schemas.StopMultiplexOutput,
        http_method = "POST",
        http_path = "/prod/multiplexes/{MultiplexId}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:transferInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "TransferInputDevice",
        input_schema = schemas.TransferInputDeviceInput,
        output_schema = schemas.TransferInputDeviceOutput,
        http_method = "POST",
        http_path = "/prod/inputDevices/{InputDeviceId}/transfer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountConfiguration",
        input_schema = schemas.UpdateAccountConfigurationInput,
        output_schema = schemas.UpdateAccountConfigurationOutput,
        http_method = "PUT",
        http_path = "/prod/accountConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannel",
        input_schema = schemas.UpdateChannelInput,
        output_schema = schemas.UpdateChannelOutput,
        http_method = "PUT",
        http_path = "/prod/channels/{ChannelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannelClass(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannelClass",
        input_schema = schemas.UpdateChannelClassInput,
        output_schema = schemas.UpdateChannelClassOutput,
        http_method = "PUT",
        http_path = "/prod/channels/{ChannelId}/channelClass",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannelPlacementGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannelPlacementGroup",
        input_schema = schemas.UpdateChannelPlacementGroupInput,
        output_schema = schemas.UpdateChannelPlacementGroupOutput,
        http_method = "PUT",
        http_path = "/prod/clusters/{ClusterId}/channelplacementgroups/{ChannelPlacementGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCloudWatchAlarmTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCloudWatchAlarmTemplate",
        input_schema = schemas.UpdateCloudWatchAlarmTemplateInput,
        output_schema = schemas.UpdateCloudWatchAlarmTemplateOutput,
        http_method = "PATCH",
        http_path = "/prod/cloudwatch-alarm-templates/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCloudWatchAlarmTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCloudWatchAlarmTemplateGroup",
        input_schema = schemas.UpdateCloudWatchAlarmTemplateGroupInput,
        output_schema = schemas.UpdateCloudWatchAlarmTemplateGroupOutput,
        http_method = "PATCH",
        http_path = "/prod/cloudwatch-alarm-template-groups/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = schemas.UpdateClusterInput,
        output_schema = schemas.UpdateClusterOutput,
        http_method = "PUT",
        http_path = "/prod/clusters/{ClusterId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEventBridgeRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventBridgeRuleTemplate",
        input_schema = schemas.UpdateEventBridgeRuleTemplateInput,
        output_schema = schemas.UpdateEventBridgeRuleTemplateOutput,
        http_method = "PATCH",
        http_path = "/prod/eventbridge-rule-templates/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEventBridgeRuleTemplateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventBridgeRuleTemplateGroup",
        input_schema = schemas.UpdateEventBridgeRuleTemplateGroupInput,
        output_schema = schemas.UpdateEventBridgeRuleTemplateGroupOutput,
        http_method = "PATCH",
        http_path = "/prod/eventbridge-rule-template-groups/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInput(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInput",
        input_schema = schemas.UpdateInputInput,
        output_schema = schemas.UpdateInputOutput,
        http_method = "PUT",
        http_path = "/prod/inputs/{InputId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInputDevice(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInputDevice",
        input_schema = schemas.UpdateInputDeviceInput,
        output_schema = schemas.UpdateInputDeviceOutput,
        http_method = "PUT",
        http_path = "/prod/inputDevices/{InputDeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInputSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInputSecurityGroup",
        input_schema = schemas.UpdateInputSecurityGroupInput,
        output_schema = schemas.UpdateInputSecurityGroupOutput,
        http_method = "PUT",
        http_path = "/prod/inputSecurityGroups/{InputSecurityGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMultiplex(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMultiplex",
        input_schema = schemas.UpdateMultiplexInput,
        output_schema = schemas.UpdateMultiplexOutput,
        http_method = "PUT",
        http_path = "/prod/multiplexes/{MultiplexId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMultiplexProgram(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMultiplexProgram",
        input_schema = schemas.UpdateMultiplexProgramInput,
        output_schema = schemas.UpdateMultiplexProgramOutput,
        http_method = "PUT",
        http_path = "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetwork",
        input_schema = schemas.UpdateNetworkInput,
        output_schema = schemas.UpdateNetworkOutput,
        http_method = "PUT",
        http_path = "/prod/networks/{NetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNode(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNode",
        input_schema = schemas.UpdateNodeInput,
        output_schema = schemas.UpdateNodeOutput,
        http_method = "PUT",
        http_path = "/prod/clusters/{ClusterId}/nodes/{NodeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNodeState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNodeState",
        input_schema = schemas.UpdateNodeStateInput,
        output_schema = schemas.UpdateNodeStateOutput,
        http_method = "PUT",
        http_path = "/prod/clusters/{ClusterId}/nodes/{NodeId}/state",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReservation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReservation",
        input_schema = schemas.UpdateReservationInput,
        output_schema = schemas.UpdateReservationOutput,
        http_method = "PUT",
        http_path = "/prod/reservations/{ReservationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSdiSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSdiSource",
        input_schema = schemas.UpdateSdiSourceInput,
        output_schema = schemas.UpdateSdiSourceOutput,
        http_method = "PUT",
        http_path = "/prod/sdiSources/{SdiSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
