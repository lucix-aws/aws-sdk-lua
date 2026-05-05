local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sfn.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("sfn.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSStepFunctions"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "states", signing_region = cfg.region } }
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

function Client:createActivity(input, options)
    return self:invokeOperation(input, {
        name = "CreateActivity",
        input_schema = types.CreateActivityInput,
        output_schema = types.CreateActivityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStateMachine(input, options)
    return self:invokeOperation(input, {
        name = "CreateStateMachine",
        input_schema = types.CreateStateMachineInput,
        output_schema = types.CreateStateMachineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStateMachineAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateStateMachineAlias",
        input_schema = types.CreateStateMachineAliasInput,
        output_schema = types.CreateStateMachineAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteActivity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteActivity",
        input_schema = types.DeleteActivityInput,
        output_schema = types.DeleteActivityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStateMachine(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStateMachine",
        input_schema = types.DeleteStateMachineInput,
        output_schema = types.DeleteStateMachineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStateMachineAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStateMachineAlias",
        input_schema = types.DeleteStateMachineAliasInput,
        output_schema = types.DeleteStateMachineAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStateMachineVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStateMachineVersion",
        input_schema = types.DeleteStateMachineVersionInput,
        output_schema = types.DeleteStateMachineVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeActivity(input, options)
    return self:invokeOperation(input, {
        name = "DescribeActivity",
        input_schema = types.DescribeActivityInput,
        output_schema = types.DescribeActivityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExecution",
        input_schema = types.DescribeExecutionInput,
        output_schema = types.DescribeExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMapRun(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMapRun",
        input_schema = types.DescribeMapRunInput,
        output_schema = types.DescribeMapRunOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStateMachine(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStateMachine",
        input_schema = types.DescribeStateMachineInput,
        output_schema = types.DescribeStateMachineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStateMachineAlias(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStateMachineAlias",
        input_schema = types.DescribeStateMachineAliasInput,
        output_schema = types.DescribeStateMachineAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStateMachineForExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStateMachineForExecution",
        input_schema = types.DescribeStateMachineForExecutionInput,
        output_schema = types.DescribeStateMachineForExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getActivityTask(input, options)
    return self:invokeOperation(input, {
        name = "GetActivityTask",
        input_schema = types.GetActivityTaskInput,
        output_schema = types.GetActivityTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExecutionHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetExecutionHistory",
        input_schema = types.GetExecutionHistoryInput,
        output_schema = types.GetExecutionHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listActivities(input, options)
    return self:invokeOperation(input, {
        name = "ListActivities",
        input_schema = types.ListActivitiesInput,
        output_schema = types.ListActivitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListExecutions",
        input_schema = types.ListExecutionsInput,
        output_schema = types.ListExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMapRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListMapRuns",
        input_schema = types.ListMapRunsInput,
        output_schema = types.ListMapRunsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStateMachineAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListStateMachineAliases",
        input_schema = types.ListStateMachineAliasesInput,
        output_schema = types.ListStateMachineAliasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStateMachines(input, options)
    return self:invokeOperation(input, {
        name = "ListStateMachines",
        input_schema = types.ListStateMachinesInput,
        output_schema = types.ListStateMachinesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStateMachineVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListStateMachineVersions",
        input_schema = types.ListStateMachineVersionsInput,
        output_schema = types.ListStateMachineVersionsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:publishStateMachineVersion(input, options)
    return self:invokeOperation(input, {
        name = "PublishStateMachineVersion",
        input_schema = types.PublishStateMachineVersionInput,
        output_schema = types.PublishStateMachineVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:redriveExecution(input, options)
    return self:invokeOperation(input, {
        name = "RedriveExecution",
        input_schema = types.RedriveExecutionInput,
        output_schema = types.RedriveExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendTaskFailure(input, options)
    return self:invokeOperation(input, {
        name = "SendTaskFailure",
        input_schema = types.SendTaskFailureInput,
        output_schema = types.SendTaskFailureOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendTaskHeartbeat(input, options)
    return self:invokeOperation(input, {
        name = "SendTaskHeartbeat",
        input_schema = types.SendTaskHeartbeatInput,
        output_schema = types.SendTaskHeartbeatOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendTaskSuccess(input, options)
    return self:invokeOperation(input, {
        name = "SendTaskSuccess",
        input_schema = types.SendTaskSuccessInput,
        output_schema = types.SendTaskSuccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartExecution",
        input_schema = types.StartExecutionInput,
        output_schema = types.StartExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSyncExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartSyncExecution",
        input_schema = types.StartSyncExecutionInput,
        output_schema = types.StartSyncExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopExecution(input, options)
    return self:invokeOperation(input, {
        name = "StopExecution",
        input_schema = types.StopExecutionInput,
        output_schema = types.StopExecutionOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testState(input, options)
    return self:invokeOperation(input, {
        name = "TestState",
        input_schema = types.TestStateInput,
        output_schema = types.TestStateOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMapRun(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMapRun",
        input_schema = types.UpdateMapRunInput,
        output_schema = types.UpdateMapRunOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStateMachine(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStateMachine",
        input_schema = types.UpdateStateMachineInput,
        output_schema = types.UpdateStateMachineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStateMachineAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStateMachineAlias",
        input_schema = types.UpdateStateMachineAliasInput,
        output_schema = types.UpdateStateMachineAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validateStateMachineDefinition(input, options)
    return self:invokeOperation(input, {
        name = "ValidateStateMachineDefinition",
        input_schema = types.ValidateStateMachineDefinitionInput,
        output_schema = types.ValidateStateMachineDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
