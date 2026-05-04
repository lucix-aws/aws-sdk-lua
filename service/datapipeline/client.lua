local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("datapipeline.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("datapipeline.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DataPipeline"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "datapipeline", signing_region = cfg.region } }
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

function Client:activatePipeline(input, options)
    return self:invokeOperation(input, {
        name = "ActivatePipeline",
        input_schema = types.ActivatePipelineInput,
        output_schema = types.ActivatePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addTags(input, options)
    return self:invokeOperation(input, {
        name = "AddTags",
        input_schema = types.AddTagsInput,
        output_schema = types.AddTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPipeline(input, options)
    return self:invokeOperation(input, {
        name = "CreatePipeline",
        input_schema = types.CreatePipelineInput,
        output_schema = types.CreatePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deactivatePipeline(input, options)
    return self:invokeOperation(input, {
        name = "DeactivatePipeline",
        input_schema = types.DeactivatePipelineInput,
        output_schema = types.DeactivatePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePipeline(input, options)
    return self:invokeOperation(input, {
        name = "DeletePipeline",
        input_schema = types.DeletePipelineInput,
        output_schema = types.DeletePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeObjects(input, options)
    return self:invokeOperation(input, {
        name = "DescribeObjects",
        input_schema = types.DescribeObjectsInput,
        output_schema = types.DescribeObjectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePipelines(input, options)
    return self:invokeOperation(input, {
        name = "DescribePipelines",
        input_schema = types.DescribePipelinesInput,
        output_schema = types.DescribePipelinesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:evaluateExpression(input, options)
    return self:invokeOperation(input, {
        name = "EvaluateExpression",
        input_schema = types.EvaluateExpressionInput,
        output_schema = types.EvaluateExpressionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPipelineDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetPipelineDefinition",
        input_schema = types.GetPipelineDefinitionInput,
        output_schema = types.GetPipelineDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPipelines(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelines",
        input_schema = types.ListPipelinesInput,
        output_schema = types.ListPipelinesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:pollForTask(input, options)
    return self:invokeOperation(input, {
        name = "PollForTask",
        input_schema = types.PollForTaskInput,
        output_schema = types.PollForTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPipelineDefinition(input, options)
    return self:invokeOperation(input, {
        name = "PutPipelineDefinition",
        input_schema = types.PutPipelineDefinitionInput,
        output_schema = types.PutPipelineDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:queryObjects(input, options)
    return self:invokeOperation(input, {
        name = "QueryObjects",
        input_schema = types.QueryObjectsInput,
        output_schema = types.QueryObjectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTags(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTags",
        input_schema = types.RemoveTagsInput,
        output_schema = types.RemoveTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:reportTaskProgress(input, options)
    return self:invokeOperation(input, {
        name = "ReportTaskProgress",
        input_schema = types.ReportTaskProgressInput,
        output_schema = types.ReportTaskProgressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:reportTaskRunnerHeartbeat(input, options)
    return self:invokeOperation(input, {
        name = "ReportTaskRunnerHeartbeat",
        input_schema = types.ReportTaskRunnerHeartbeatInput,
        output_schema = types.ReportTaskRunnerHeartbeatOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setStatus(input, options)
    return self:invokeOperation(input, {
        name = "SetStatus",
        input_schema = types.SetStatusInput,
        output_schema = types.SetStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setTaskStatus(input, options)
    return self:invokeOperation(input, {
        name = "SetTaskStatus",
        input_schema = types.SetTaskStatusInput,
        output_schema = types.SetTaskStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validatePipelineDefinition(input, options)
    return self:invokeOperation(input, {
        name = "ValidatePipelineDefinition",
        input_schema = types.ValidatePipelineDefinitionInput,
        output_schema = types.ValidatePipelineDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
