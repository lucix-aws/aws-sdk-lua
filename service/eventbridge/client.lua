local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("eventbridge.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("eventbridge.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSEvents"
    cfg.signing_name = "events"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:activateEventSource(input, options)
    return self:invokeOperation(input, {
        name = "ActivateEventSource",
        input_schema = types.ActivateEventSourceInput,
        output_schema = types.ActivateEventSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelReplay(input, options)
    return self:invokeOperation(input, {
        name = "CancelReplay",
        input_schema = types.CancelReplayInput,
        output_schema = types.CancelReplayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createApiDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateApiDestination",
        input_schema = types.CreateApiDestinationInput,
        output_schema = types.CreateApiDestinationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createArchive(input, options)
    return self:invokeOperation(input, {
        name = "CreateArchive",
        input_schema = types.CreateArchiveInput,
        output_schema = types.CreateArchiveOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnection",
        input_schema = types.CreateConnectionInput,
        output_schema = types.CreateConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateEndpoint",
        input_schema = types.CreateEndpointInput,
        output_schema = types.CreateEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEventBus(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventBus",
        input_schema = types.CreateEventBusInput,
        output_schema = types.CreateEventBusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPartnerEventSource(input, options)
    return self:invokeOperation(input, {
        name = "CreatePartnerEventSource",
        input_schema = types.CreatePartnerEventSourceInput,
        output_schema = types.CreatePartnerEventSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deactivateEventSource(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateEventSource",
        input_schema = types.DeactivateEventSourceInput,
        output_schema = types.DeactivateEventSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deauthorizeConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeauthorizeConnection",
        input_schema = types.DeauthorizeConnectionInput,
        output_schema = types.DeauthorizeConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApiDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApiDestination",
        input_schema = types.DeleteApiDestinationInput,
        output_schema = types.DeleteApiDestinationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteArchive(input, options)
    return self:invokeOperation(input, {
        name = "DeleteArchive",
        input_schema = types.DeleteArchiveInput,
        output_schema = types.DeleteArchiveOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = types.DeleteConnectionInput,
        output_schema = types.DeleteConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpoint",
        input_schema = types.DeleteEndpointInput,
        output_schema = types.DeleteEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEventBus(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventBus",
        input_schema = types.DeleteEventBusInput,
        output_schema = types.DeleteEventBusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePartnerEventSource(input, options)
    return self:invokeOperation(input, {
        name = "DeletePartnerEventSource",
        input_schema = types.DeletePartnerEventSourceInput,
        output_schema = types.DeletePartnerEventSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = types.DeleteRuleInput,
        output_schema = types.DeleteRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeApiDestination(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApiDestination",
        input_schema = types.DescribeApiDestinationInput,
        output_schema = types.DescribeApiDestinationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeArchive(input, options)
    return self:invokeOperation(input, {
        name = "DescribeArchive",
        input_schema = types.DescribeArchiveInput,
        output_schema = types.DescribeArchiveOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeConnection(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnection",
        input_schema = types.DescribeConnectionInput,
        output_schema = types.DescribeConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpoint",
        input_schema = types.DescribeEndpointInput,
        output_schema = types.DescribeEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEventBus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventBus",
        input_schema = types.DescribeEventBusInput,
        output_schema = types.DescribeEventBusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEventSource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventSource",
        input_schema = types.DescribeEventSourceInput,
        output_schema = types.DescribeEventSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePartnerEventSource(input, options)
    return self:invokeOperation(input, {
        name = "DescribePartnerEventSource",
        input_schema = types.DescribePartnerEventSourceInput,
        output_schema = types.DescribePartnerEventSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeReplay(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplay",
        input_schema = types.DescribeReplayInput,
        output_schema = types.DescribeReplayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRule",
        input_schema = types.DescribeRuleInput,
        output_schema = types.DescribeRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableRule(input, options)
    return self:invokeOperation(input, {
        name = "DisableRule",
        input_schema = types.DisableRuleInput,
        output_schema = types.DisableRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableRule(input, options)
    return self:invokeOperation(input, {
        name = "EnableRule",
        input_schema = types.EnableRuleInput,
        output_schema = types.EnableRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listApiDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListApiDestinations",
        input_schema = types.ListApiDestinationsInput,
        output_schema = types.ListApiDestinationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listArchives(input, options)
    return self:invokeOperation(input, {
        name = "ListArchives",
        input_schema = types.ListArchivesInput,
        output_schema = types.ListArchivesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListConnections",
        input_schema = types.ListConnectionsInput,
        output_schema = types.ListConnectionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListEndpoints",
        input_schema = types.ListEndpointsInput,
        output_schema = types.ListEndpointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEventBuses(input, options)
    return self:invokeOperation(input, {
        name = "ListEventBuses",
        input_schema = types.ListEventBusesInput,
        output_schema = types.ListEventBusesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEventSources(input, options)
    return self:invokeOperation(input, {
        name = "ListEventSources",
        input_schema = types.ListEventSourcesInput,
        output_schema = types.ListEventSourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPartnerEventSourceAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListPartnerEventSourceAccounts",
        input_schema = types.ListPartnerEventSourceAccountsInput,
        output_schema = types.ListPartnerEventSourceAccountsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPartnerEventSources(input, options)
    return self:invokeOperation(input, {
        name = "ListPartnerEventSources",
        input_schema = types.ListPartnerEventSourcesInput,
        output_schema = types.ListPartnerEventSourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listReplays(input, options)
    return self:invokeOperation(input, {
        name = "ListReplays",
        input_schema = types.ListReplaysInput,
        output_schema = types.ListReplaysOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRuleNamesByTarget(input, options)
    return self:invokeOperation(input, {
        name = "ListRuleNamesByTarget",
        input_schema = types.ListRuleNamesByTargetInput,
        output_schema = types.ListRuleNamesByTargetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRules",
        input_schema = types.ListRulesInput,
        output_schema = types.ListRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTargetsByRule(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetsByRule",
        input_schema = types.ListTargetsByRuleInput,
        output_schema = types.ListTargetsByRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putEvents(input, options)
    return self:invokeOperation(input, {
        name = "PutEvents",
        input_schema = types.PutEventsInput,
        output_schema = types.PutEventsOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            EndpointId = "EndpointId",
        },
    }, options)
end

function Client:putPartnerEvents(input, options)
    return self:invokeOperation(input, {
        name = "PutPartnerEvents",
        input_schema = types.PutPartnerEventsInput,
        output_schema = types.PutPartnerEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putPermission(input, options)
    return self:invokeOperation(input, {
        name = "PutPermission",
        input_schema = types.PutPermissionInput,
        output_schema = types.PutPermissionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putRule(input, options)
    return self:invokeOperation(input, {
        name = "PutRule",
        input_schema = types.PutRuleInput,
        output_schema = types.PutRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putTargets(input, options)
    return self:invokeOperation(input, {
        name = "PutTargets",
        input_schema = types.PutTargetsInput,
        output_schema = types.PutTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removePermission(input, options)
    return self:invokeOperation(input, {
        name = "RemovePermission",
        input_schema = types.RemovePermissionInput,
        output_schema = types.RemovePermissionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeTargets(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTargets",
        input_schema = types.RemoveTargetsInput,
        output_schema = types.RemoveTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startReplay(input, options)
    return self:invokeOperation(input, {
        name = "StartReplay",
        input_schema = types.StartReplayInput,
        output_schema = types.StartReplayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:testEventPattern(input, options)
    return self:invokeOperation(input, {
        name = "TestEventPattern",
        input_schema = types.TestEventPatternInput,
        output_schema = types.TestEventPatternOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateApiDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApiDestination",
        input_schema = types.UpdateApiDestinationInput,
        output_schema = types.UpdateApiDestinationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateArchive(input, options)
    return self:invokeOperation(input, {
        name = "UpdateArchive",
        input_schema = types.UpdateArchiveInput,
        output_schema = types.UpdateArchiveOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnection",
        input_schema = types.UpdateConnectionInput,
        output_schema = types.UpdateConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEndpoint",
        input_schema = types.UpdateEndpointInput,
        output_schema = types.UpdateEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEventBus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventBus",
        input_schema = types.UpdateEventBusInput,
        output_schema = types.UpdateEventBusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
