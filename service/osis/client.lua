local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("osis.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("osis.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonOpenSearchIngestionService"
    cfg.signing_name = "osis"
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

function Client:createPipeline(input, options)
    return self:invokeOperation(input, {
        name = "CreatePipeline",
        input_schema = types.CreatePipelineInput,
        output_schema = types.CreatePipelineOutput,
        http_method = "POST",
        http_path = "/2022-01-01/osis/createPipeline",
    }, options)
end

function Client:createPipelineEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreatePipelineEndpoint",
        input_schema = types.CreatePipelineEndpointInput,
        output_schema = types.CreatePipelineEndpointOutput,
        http_method = "POST",
        http_path = "/2022-01-01/osis/createPipelineEndpoint",
    }, options)
end

function Client:deletePipeline(input, options)
    return self:invokeOperation(input, {
        name = "DeletePipeline",
        input_schema = types.DeletePipelineInput,
        output_schema = types.DeletePipelineOutput,
        http_method = "DELETE",
        http_path = "/2022-01-01/osis/deletePipeline/{PipelineName}",
    }, options)
end

function Client:deletePipelineEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeletePipelineEndpoint",
        input_schema = types.DeletePipelineEndpointInput,
        output_schema = types.DeletePipelineEndpointOutput,
        http_method = "DELETE",
        http_path = "/2022-01-01/osis/deletePipelineEndpoint/{EndpointId}",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/2022-01-01/osis/resourcePolicy/{ResourceArn}",
    }, options)
end

function Client:getPipeline(input, options)
    return self:invokeOperation(input, {
        name = "GetPipeline",
        input_schema = types.GetPipelineInput,
        output_schema = types.GetPipelineOutput,
        http_method = "GET",
        http_path = "/2022-01-01/osis/getPipeline/{PipelineName}",
    }, options)
end

function Client:getPipelineBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "GetPipelineBlueprint",
        input_schema = types.GetPipelineBlueprintInput,
        output_schema = types.GetPipelineBlueprintOutput,
        http_method = "GET",
        http_path = "/2022-01-01/osis/getPipelineBlueprint/{BlueprintName}",
    }, options)
end

function Client:getPipelineChangeProgress(input, options)
    return self:invokeOperation(input, {
        name = "GetPipelineChangeProgress",
        input_schema = types.GetPipelineChangeProgressInput,
        output_schema = types.GetPipelineChangeProgressOutput,
        http_method = "GET",
        http_path = "/2022-01-01/osis/getPipelineChangeProgress/{PipelineName}",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "GET",
        http_path = "/2022-01-01/osis/resourcePolicy/{ResourceArn}",
    }, options)
end

function Client:listPipelineBlueprints(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelineBlueprints",
        input_schema = types.ListPipelineBlueprintsInput,
        output_schema = types.ListPipelineBlueprintsOutput,
        http_method = "POST",
        http_path = "/2022-01-01/osis/listPipelineBlueprints",
    }, options)
end

function Client:listPipelineEndpointConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelineEndpointConnections",
        input_schema = types.ListPipelineEndpointConnectionsInput,
        output_schema = types.ListPipelineEndpointConnectionsOutput,
        http_method = "GET",
        http_path = "/2022-01-01/osis/listPipelineEndpointConnections",
    }, options)
end

function Client:listPipelineEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelineEndpoints",
        input_schema = types.ListPipelineEndpointsInput,
        output_schema = types.ListPipelineEndpointsOutput,
        http_method = "GET",
        http_path = "/2022-01-01/osis/listPipelineEndpoints",
    }, options)
end

function Client:listPipelines(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelines",
        input_schema = types.ListPipelinesInput,
        output_schema = types.ListPipelinesOutput,
        http_method = "GET",
        http_path = "/2022-01-01/osis/listPipelines",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/2022-01-01/osis/listTagsForResource",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "PUT",
        http_path = "/2022-01-01/osis/resourcePolicy/{ResourceArn}",
    }, options)
end

function Client:revokePipelineEndpointConnections(input, options)
    return self:invokeOperation(input, {
        name = "RevokePipelineEndpointConnections",
        input_schema = types.RevokePipelineEndpointConnectionsInput,
        output_schema = types.RevokePipelineEndpointConnectionsOutput,
        http_method = "POST",
        http_path = "/2022-01-01/osis/revokePipelineEndpointConnections",
    }, options)
end

function Client:startPipeline(input, options)
    return self:invokeOperation(input, {
        name = "StartPipeline",
        input_schema = types.StartPipelineInput,
        output_schema = types.StartPipelineOutput,
        http_method = "PUT",
        http_path = "/2022-01-01/osis/startPipeline/{PipelineName}",
    }, options)
end

function Client:stopPipeline(input, options)
    return self:invokeOperation(input, {
        name = "StopPipeline",
        input_schema = types.StopPipelineInput,
        output_schema = types.StopPipelineOutput,
        http_method = "PUT",
        http_path = "/2022-01-01/osis/stopPipeline/{PipelineName}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/2022-01-01/osis/tagResource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/2022-01-01/osis/untagResource",
    }, options)
end

function Client:updatePipeline(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePipeline",
        input_schema = types.UpdatePipelineInput,
        output_schema = types.UpdatePipelineOutput,
        http_method = "PUT",
        http_path = "/2022-01-01/osis/updatePipeline/{PipelineName}",
    }, options)
end

function Client:validatePipeline(input, options)
    return self:invokeOperation(input, {
        name = "ValidatePipeline",
        input_schema = types.ValidatePipelineInput,
        output_schema = types.ValidatePipelineOutput,
        http_method = "POST",
        http_path = "/2022-01-01/osis/validatePipeline",
    }, options)
end

return M
