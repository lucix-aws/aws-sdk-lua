local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudwatchevents.endpoint_rules")
local schemas = require("cloudwatchevents.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSEvents"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "events", signing_region = cfg.region } }
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

function Client:activateEventSource(input, options)
    return self:invokeOperation(input, {
        name = "ActivateEventSource",
        input_schema = schemas.ActivateEventSourceInput,
        output_schema = schemas.ActivateEventSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelReplay(input, options)
    return self:invokeOperation(input, {
        name = "CancelReplay",
        input_schema = schemas.CancelReplayInput,
        output_schema = schemas.CancelReplayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApiDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateApiDestination",
        input_schema = schemas.CreateApiDestinationInput,
        output_schema = schemas.CreateApiDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createArchive(input, options)
    return self:invokeOperation(input, {
        name = "CreateArchive",
        input_schema = schemas.CreateArchiveInput,
        output_schema = schemas.CreateArchiveOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnection",
        input_schema = schemas.CreateConnectionInput,
        output_schema = schemas.CreateConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEventBus(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventBus",
        input_schema = schemas.CreateEventBusInput,
        output_schema = schemas.CreateEventBusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPartnerEventSource(input, options)
    return self:invokeOperation(input, {
        name = "CreatePartnerEventSource",
        input_schema = schemas.CreatePartnerEventSourceInput,
        output_schema = schemas.CreatePartnerEventSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deactivateEventSource(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateEventSource",
        input_schema = schemas.DeactivateEventSourceInput,
        output_schema = schemas.DeactivateEventSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deauthorizeConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeauthorizeConnection",
        input_schema = schemas.DeauthorizeConnectionInput,
        output_schema = schemas.DeauthorizeConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApiDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApiDestination",
        input_schema = schemas.DeleteApiDestinationInput,
        output_schema = schemas.DeleteApiDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteArchive(input, options)
    return self:invokeOperation(input, {
        name = "DeleteArchive",
        input_schema = schemas.DeleteArchiveInput,
        output_schema = schemas.DeleteArchiveOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = schemas.DeleteConnectionInput,
        output_schema = schemas.DeleteConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventBus(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventBus",
        input_schema = schemas.DeleteEventBusInput,
        output_schema = schemas.DeleteEventBusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePartnerEventSource(input, options)
    return self:invokeOperation(input, {
        name = "DeletePartnerEventSource",
        input_schema = schemas.DeletePartnerEventSourceInput,
        output_schema = schemas.DeletePartnerEventSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = schemas.DeleteRuleInput,
        output_schema = schemas.DeleteRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApiDestination(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApiDestination",
        input_schema = schemas.DescribeApiDestinationInput,
        output_schema = schemas.DescribeApiDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeArchive(input, options)
    return self:invokeOperation(input, {
        name = "DescribeArchive",
        input_schema = schemas.DescribeArchiveInput,
        output_schema = schemas.DescribeArchiveOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnection(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnection",
        input_schema = schemas.DescribeConnectionInput,
        output_schema = schemas.DescribeConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventBus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventBus",
        input_schema = schemas.DescribeEventBusInput,
        output_schema = schemas.DescribeEventBusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventSource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventSource",
        input_schema = schemas.DescribeEventSourceInput,
        output_schema = schemas.DescribeEventSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePartnerEventSource(input, options)
    return self:invokeOperation(input, {
        name = "DescribePartnerEventSource",
        input_schema = schemas.DescribePartnerEventSourceInput,
        output_schema = schemas.DescribePartnerEventSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplay(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplay",
        input_schema = schemas.DescribeReplayInput,
        output_schema = schemas.DescribeReplayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRule",
        input_schema = schemas.DescribeRuleInput,
        output_schema = schemas.DescribeRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableRule(input, options)
    return self:invokeOperation(input, {
        name = "DisableRule",
        input_schema = schemas.DisableRuleInput,
        output_schema = schemas.DisableRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableRule(input, options)
    return self:invokeOperation(input, {
        name = "EnableRule",
        input_schema = schemas.EnableRuleInput,
        output_schema = schemas.EnableRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApiDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListApiDestinations",
        input_schema = schemas.ListApiDestinationsInput,
        output_schema = schemas.ListApiDestinationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listArchives(input, options)
    return self:invokeOperation(input, {
        name = "ListArchives",
        input_schema = schemas.ListArchivesInput,
        output_schema = schemas.ListArchivesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListConnections",
        input_schema = schemas.ListConnectionsInput,
        output_schema = schemas.ListConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventBuses(input, options)
    return self:invokeOperation(input, {
        name = "ListEventBuses",
        input_schema = schemas.ListEventBusesInput,
        output_schema = schemas.ListEventBusesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventSources(input, options)
    return self:invokeOperation(input, {
        name = "ListEventSources",
        input_schema = schemas.ListEventSourcesInput,
        output_schema = schemas.ListEventSourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPartnerEventSourceAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListPartnerEventSourceAccounts",
        input_schema = schemas.ListPartnerEventSourceAccountsInput,
        output_schema = schemas.ListPartnerEventSourceAccountsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPartnerEventSources(input, options)
    return self:invokeOperation(input, {
        name = "ListPartnerEventSources",
        input_schema = schemas.ListPartnerEventSourcesInput,
        output_schema = schemas.ListPartnerEventSourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReplays(input, options)
    return self:invokeOperation(input, {
        name = "ListReplays",
        input_schema = schemas.ListReplaysInput,
        output_schema = schemas.ListReplaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRuleNamesByTarget(input, options)
    return self:invokeOperation(input, {
        name = "ListRuleNamesByTarget",
        input_schema = schemas.ListRuleNamesByTargetInput,
        output_schema = schemas.ListRuleNamesByTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRules",
        input_schema = schemas.ListRulesInput,
        output_schema = schemas.ListRulesOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTargetsByRule(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetsByRule",
        input_schema = schemas.ListTargetsByRuleInput,
        output_schema = schemas.ListTargetsByRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEvents(input, options)
    return self:invokeOperation(input, {
        name = "PutEvents",
        input_schema = schemas.PutEventsInput,
        output_schema = schemas.PutEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPartnerEvents(input, options)
    return self:invokeOperation(input, {
        name = "PutPartnerEvents",
        input_schema = schemas.PutPartnerEventsInput,
        output_schema = schemas.PutPartnerEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPermission(input, options)
    return self:invokeOperation(input, {
        name = "PutPermission",
        input_schema = schemas.PutPermissionInput,
        output_schema = schemas.PutPermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRule(input, options)
    return self:invokeOperation(input, {
        name = "PutRule",
        input_schema = schemas.PutRuleInput,
        output_schema = schemas.PutRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTargets(input, options)
    return self:invokeOperation(input, {
        name = "PutTargets",
        input_schema = schemas.PutTargetsInput,
        output_schema = schemas.PutTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removePermission(input, options)
    return self:invokeOperation(input, {
        name = "RemovePermission",
        input_schema = schemas.RemovePermissionInput,
        output_schema = schemas.RemovePermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTargets(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTargets",
        input_schema = schemas.RemoveTargetsInput,
        output_schema = schemas.RemoveTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startReplay(input, options)
    return self:invokeOperation(input, {
        name = "StartReplay",
        input_schema = schemas.StartReplayInput,
        output_schema = schemas.StartReplayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testEventPattern(input, options)
    return self:invokeOperation(input, {
        name = "TestEventPattern",
        input_schema = schemas.TestEventPatternInput,
        output_schema = schemas.TestEventPatternOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApiDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApiDestination",
        input_schema = schemas.UpdateApiDestinationInput,
        output_schema = schemas.UpdateApiDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateArchive(input, options)
    return self:invokeOperation(input, {
        name = "UpdateArchive",
        input_schema = schemas.UpdateArchiveInput,
        output_schema = schemas.UpdateArchiveOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnection",
        input_schema = schemas.UpdateConnectionInput,
        output_schema = schemas.UpdateConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
