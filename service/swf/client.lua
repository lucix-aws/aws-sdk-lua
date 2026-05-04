local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("swf.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("swf.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SimpleWorkflowService"
    cfg.signing_name = "swf"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:countClosedWorkflowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "CountClosedWorkflowExecutions",
        input_schema = types.CountClosedWorkflowExecutionsInput,
        output_schema = types.CountClosedWorkflowExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:countOpenWorkflowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "CountOpenWorkflowExecutions",
        input_schema = types.CountOpenWorkflowExecutionsInput,
        output_schema = types.CountOpenWorkflowExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:countPendingActivityTasks(input, options)
    return self:invokeOperation(input, {
        name = "CountPendingActivityTasks",
        input_schema = types.CountPendingActivityTasksInput,
        output_schema = types.CountPendingActivityTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:countPendingDecisionTasks(input, options)
    return self:invokeOperation(input, {
        name = "CountPendingDecisionTasks",
        input_schema = types.CountPendingDecisionTasksInput,
        output_schema = types.CountPendingDecisionTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteActivityType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteActivityType",
        input_schema = types.DeleteActivityTypeInput,
        output_schema = types.DeleteActivityTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteWorkflowType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflowType",
        input_schema = types.DeleteWorkflowTypeInput,
        output_schema = types.DeleteWorkflowTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deprecateActivityType(input, options)
    return self:invokeOperation(input, {
        name = "DeprecateActivityType",
        input_schema = types.DeprecateActivityTypeInput,
        output_schema = types.DeprecateActivityTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deprecateDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeprecateDomain",
        input_schema = types.DeprecateDomainInput,
        output_schema = types.DeprecateDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deprecateWorkflowType(input, options)
    return self:invokeOperation(input, {
        name = "DeprecateWorkflowType",
        input_schema = types.DeprecateWorkflowTypeInput,
        output_schema = types.DeprecateWorkflowTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeActivityType(input, options)
    return self:invokeOperation(input, {
        name = "DescribeActivityType",
        input_schema = types.DescribeActivityTypeInput,
        output_schema = types.DescribeActivityTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDomain(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomain",
        input_schema = types.DescribeDomainInput,
        output_schema = types.DescribeDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeWorkflowExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkflowExecution",
        input_schema = types.DescribeWorkflowExecutionInput,
        output_schema = types.DescribeWorkflowExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeWorkflowType(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkflowType",
        input_schema = types.DescribeWorkflowTypeInput,
        output_schema = types.DescribeWorkflowTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getWorkflowExecutionHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowExecutionHistory",
        input_schema = types.GetWorkflowExecutionHistoryInput,
        output_schema = types.GetWorkflowExecutionHistoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listActivityTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListActivityTypes",
        input_schema = types.ListActivityTypesInput,
        output_schema = types.ListActivityTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listClosedWorkflowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListClosedWorkflowExecutions",
        input_schema = types.ListClosedWorkflowExecutionsInput,
        output_schema = types.ListClosedWorkflowExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = types.ListDomainsInput,
        output_schema = types.ListDomainsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOpenWorkflowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListOpenWorkflowExecutions",
        input_schema = types.ListOpenWorkflowExecutionsInput,
        output_schema = types.ListOpenWorkflowExecutionsOutput,
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

function Client:listWorkflowTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowTypes",
        input_schema = types.ListWorkflowTypesInput,
        output_schema = types.ListWorkflowTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:pollForActivityTask(input, options)
    return self:invokeOperation(input, {
        name = "PollForActivityTask",
        input_schema = types.PollForActivityTaskInput,
        output_schema = types.PollForActivityTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:pollForDecisionTask(input, options)
    return self:invokeOperation(input, {
        name = "PollForDecisionTask",
        input_schema = types.PollForDecisionTaskInput,
        output_schema = types.PollForDecisionTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:recordActivityTaskHeartbeat(input, options)
    return self:invokeOperation(input, {
        name = "RecordActivityTaskHeartbeat",
        input_schema = types.RecordActivityTaskHeartbeatInput,
        output_schema = types.RecordActivityTaskHeartbeatOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerActivityType(input, options)
    return self:invokeOperation(input, {
        name = "RegisterActivityType",
        input_schema = types.RegisterActivityTypeInput,
        output_schema = types.RegisterActivityTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerDomain(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDomain",
        input_schema = types.RegisterDomainInput,
        output_schema = types.RegisterDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerWorkflowType(input, options)
    return self:invokeOperation(input, {
        name = "RegisterWorkflowType",
        input_schema = types.RegisterWorkflowTypeInput,
        output_schema = types.RegisterWorkflowTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:requestCancelWorkflowExecution(input, options)
    return self:invokeOperation(input, {
        name = "RequestCancelWorkflowExecution",
        input_schema = types.RequestCancelWorkflowExecutionInput,
        output_schema = types.RequestCancelWorkflowExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:respondActivityTaskCanceled(input, options)
    return self:invokeOperation(input, {
        name = "RespondActivityTaskCanceled",
        input_schema = types.RespondActivityTaskCanceledInput,
        output_schema = types.RespondActivityTaskCanceledOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:respondActivityTaskCompleted(input, options)
    return self:invokeOperation(input, {
        name = "RespondActivityTaskCompleted",
        input_schema = types.RespondActivityTaskCompletedInput,
        output_schema = types.RespondActivityTaskCompletedOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:respondActivityTaskFailed(input, options)
    return self:invokeOperation(input, {
        name = "RespondActivityTaskFailed",
        input_schema = types.RespondActivityTaskFailedInput,
        output_schema = types.RespondActivityTaskFailedOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:respondDecisionTaskCompleted(input, options)
    return self:invokeOperation(input, {
        name = "RespondDecisionTaskCompleted",
        input_schema = types.RespondDecisionTaskCompletedInput,
        output_schema = types.RespondDecisionTaskCompletedOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:signalWorkflowExecution(input, options)
    return self:invokeOperation(input, {
        name = "SignalWorkflowExecution",
        input_schema = types.SignalWorkflowExecutionInput,
        output_schema = types.SignalWorkflowExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startWorkflowExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartWorkflowExecution",
        input_schema = types.StartWorkflowExecutionInput,
        output_schema = types.StartWorkflowExecutionOutput,
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

function Client:terminateWorkflowExecution(input, options)
    return self:invokeOperation(input, {
        name = "TerminateWorkflowExecution",
        input_schema = types.TerminateWorkflowExecutionInput,
        output_schema = types.TerminateWorkflowExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:undeprecateActivityType(input, options)
    return self:invokeOperation(input, {
        name = "UndeprecateActivityType",
        input_schema = types.UndeprecateActivityTypeInput,
        output_schema = types.UndeprecateActivityTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:undeprecateDomain(input, options)
    return self:invokeOperation(input, {
        name = "UndeprecateDomain",
        input_schema = types.UndeprecateDomainInput,
        output_schema = types.UndeprecateDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:undeprecateWorkflowType(input, options)
    return self:invokeOperation(input, {
        name = "UndeprecateWorkflowType",
        input_schema = types.UndeprecateWorkflowTypeInput,
        output_schema = types.UndeprecateWorkflowTypeOutput,
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

return M
