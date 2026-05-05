local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("datapipeline.endpoint_rules")
local schemas = require("datapipeline.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DataPipeline"
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
        input_schema = schemas.ActivatePipelineInput,
        output_schema = schemas.ActivatePipelineOutput,
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
        input_schema = schemas.AddTagsInput,
        output_schema = schemas.AddTagsOutput,
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
        input_schema = schemas.CreatePipelineInput,
        output_schema = schemas.CreatePipelineOutput,
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
        input_schema = schemas.DeactivatePipelineInput,
        output_schema = schemas.DeactivatePipelineOutput,
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
        input_schema = schemas.DeletePipelineInput,
        output_schema = schemas.DeletePipelineOutput,
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
        input_schema = schemas.DescribeObjectsInput,
        output_schema = schemas.DescribeObjectsOutput,
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
        input_schema = schemas.DescribePipelinesInput,
        output_schema = schemas.DescribePipelinesOutput,
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
        input_schema = schemas.EvaluateExpressionInput,
        output_schema = schemas.EvaluateExpressionOutput,
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
        input_schema = schemas.GetPipelineDefinitionInput,
        output_schema = schemas.GetPipelineDefinitionOutput,
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
        input_schema = schemas.ListPipelinesInput,
        output_schema = schemas.ListPipelinesOutput,
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
        input_schema = schemas.PollForTaskInput,
        output_schema = schemas.PollForTaskOutput,
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
        input_schema = schemas.PutPipelineDefinitionInput,
        output_schema = schemas.PutPipelineDefinitionOutput,
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
        input_schema = schemas.QueryObjectsInput,
        output_schema = schemas.QueryObjectsOutput,
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
        input_schema = schemas.RemoveTagsInput,
        output_schema = schemas.RemoveTagsOutput,
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
        input_schema = schemas.ReportTaskProgressInput,
        output_schema = schemas.ReportTaskProgressOutput,
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
        input_schema = schemas.ReportTaskRunnerHeartbeatInput,
        output_schema = schemas.ReportTaskRunnerHeartbeatOutput,
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
        input_schema = schemas.SetStatusInput,
        output_schema = schemas.SetStatusOutput,
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
        input_schema = schemas.SetTaskStatusInput,
        output_schema = schemas.SetTaskStatusOutput,
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
        input_schema = schemas.ValidatePipelineDefinitionInput,
        output_schema = schemas.ValidatePipelineDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
