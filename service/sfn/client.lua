local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sfn.endpoint_rules")
local schemas = require("sfn.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.CreateActivityInput,
        output_schema = schemas.CreateActivityOutput,
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
        input_schema = schemas.CreateStateMachineInput,
        output_schema = schemas.CreateStateMachineOutput,
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
        input_schema = schemas.CreateStateMachineAliasInput,
        output_schema = schemas.CreateStateMachineAliasOutput,
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
        input_schema = schemas.DeleteActivityInput,
        output_schema = schemas.DeleteActivityOutput,
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
        input_schema = schemas.DeleteStateMachineInput,
        output_schema = schemas.DeleteStateMachineOutput,
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
        input_schema = schemas.DeleteStateMachineAliasInput,
        output_schema = schemas.DeleteStateMachineAliasOutput,
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
        input_schema = schemas.DeleteStateMachineVersionInput,
        output_schema = schemas.DeleteStateMachineVersionOutput,
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
        input_schema = schemas.DescribeActivityInput,
        output_schema = schemas.DescribeActivityOutput,
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
        input_schema = schemas.DescribeExecutionInput,
        output_schema = schemas.DescribeExecutionOutput,
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
        input_schema = schemas.DescribeMapRunInput,
        output_schema = schemas.DescribeMapRunOutput,
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
        input_schema = schemas.DescribeStateMachineInput,
        output_schema = schemas.DescribeStateMachineOutput,
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
        input_schema = schemas.DescribeStateMachineAliasInput,
        output_schema = schemas.DescribeStateMachineAliasOutput,
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
        input_schema = schemas.DescribeStateMachineForExecutionInput,
        output_schema = schemas.DescribeStateMachineForExecutionOutput,
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
        input_schema = schemas.GetActivityTaskInput,
        output_schema = schemas.GetActivityTaskOutput,
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
        input_schema = schemas.GetExecutionHistoryInput,
        output_schema = schemas.GetExecutionHistoryOutput,
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
        input_schema = schemas.ListActivitiesInput,
        output_schema = schemas.ListActivitiesOutput,
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
        input_schema = schemas.ListExecutionsInput,
        output_schema = schemas.ListExecutionsOutput,
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
        input_schema = schemas.ListMapRunsInput,
        output_schema = schemas.ListMapRunsOutput,
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
        input_schema = schemas.ListStateMachineAliasesInput,
        output_schema = schemas.ListStateMachineAliasesOutput,
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
        input_schema = schemas.ListStateMachinesInput,
        output_schema = schemas.ListStateMachinesOutput,
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
        input_schema = schemas.ListStateMachineVersionsInput,
        output_schema = schemas.ListStateMachineVersionsOutput,
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

function Client:publishStateMachineVersion(input, options)
    return self:invokeOperation(input, {
        name = "PublishStateMachineVersion",
        input_schema = schemas.PublishStateMachineVersionInput,
        output_schema = schemas.PublishStateMachineVersionOutput,
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
        input_schema = schemas.RedriveExecutionInput,
        output_schema = schemas.RedriveExecutionOutput,
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
        input_schema = schemas.SendTaskFailureInput,
        output_schema = schemas.SendTaskFailureOutput,
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
        input_schema = schemas.SendTaskHeartbeatInput,
        output_schema = schemas.SendTaskHeartbeatOutput,
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
        input_schema = schemas.SendTaskSuccessInput,
        output_schema = schemas.SendTaskSuccessOutput,
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
        input_schema = schemas.StartExecutionInput,
        output_schema = schemas.StartExecutionOutput,
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
        input_schema = schemas.StartSyncExecutionInput,
        output_schema = schemas.StartSyncExecutionOutput,
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
        input_schema = schemas.StopExecutionInput,
        output_schema = schemas.StopExecutionOutput,
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

function Client:testState(input, options)
    return self:invokeOperation(input, {
        name = "TestState",
        input_schema = schemas.TestStateInput,
        output_schema = schemas.TestStateOutput,
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

function Client:updateMapRun(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMapRun",
        input_schema = schemas.UpdateMapRunInput,
        output_schema = schemas.UpdateMapRunOutput,
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
        input_schema = schemas.UpdateStateMachineInput,
        output_schema = schemas.UpdateStateMachineOutput,
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
        input_schema = schemas.UpdateStateMachineAliasInput,
        output_schema = schemas.UpdateStateMachineAliasOutput,
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
        input_schema = schemas.ValidateStateMachineDefinitionInput,
        output_schema = schemas.ValidateStateMachineDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
