local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("fis.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("fis.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "FaultInjectionSimulator"
    cfg.signing_name = "fis"
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

function Client:createExperimentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateExperimentTemplate",
        input_schema = types.CreateExperimentTemplateInput,
        output_schema = types.CreateExperimentTemplateOutput,
        http_method = "POST",
        http_path = "/experimentTemplates",
    }, options)
end

function Client:createTargetAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateTargetAccountConfiguration",
        input_schema = types.CreateTargetAccountConfigurationInput,
        output_schema = types.CreateTargetAccountConfigurationOutput,
        http_method = "POST",
        http_path = "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}",
    }, options)
end

function Client:deleteExperimentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExperimentTemplate",
        input_schema = types.DeleteExperimentTemplateInput,
        output_schema = types.DeleteExperimentTemplateOutput,
        http_method = "DELETE",
        http_path = "/experimentTemplates/{id}",
    }, options)
end

function Client:deleteTargetAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTargetAccountConfiguration",
        input_schema = types.DeleteTargetAccountConfigurationInput,
        output_schema = types.DeleteTargetAccountConfigurationOutput,
        http_method = "DELETE",
        http_path = "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}",
    }, options)
end

function Client:getAction(input, options)
    return self:invokeOperation(input, {
        name = "GetAction",
        input_schema = types.GetActionInput,
        output_schema = types.GetActionOutput,
        http_method = "GET",
        http_path = "/actions/{id}",
    }, options)
end

function Client:getExperiment(input, options)
    return self:invokeOperation(input, {
        name = "GetExperiment",
        input_schema = types.GetExperimentInput,
        output_schema = types.GetExperimentOutput,
        http_method = "GET",
        http_path = "/experiments/{id}",
    }, options)
end

function Client:getExperimentTargetAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetExperimentTargetAccountConfiguration",
        input_schema = types.GetExperimentTargetAccountConfigurationInput,
        output_schema = types.GetExperimentTargetAccountConfigurationOutput,
        http_method = "GET",
        http_path = "/experiments/{experimentId}/targetAccountConfigurations/{accountId}",
    }, options)
end

function Client:getExperimentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetExperimentTemplate",
        input_schema = types.GetExperimentTemplateInput,
        output_schema = types.GetExperimentTemplateOutput,
        http_method = "GET",
        http_path = "/experimentTemplates/{id}",
    }, options)
end

function Client:getSafetyLever(input, options)
    return self:invokeOperation(input, {
        name = "GetSafetyLever",
        input_schema = types.GetSafetyLeverInput,
        output_schema = types.GetSafetyLeverOutput,
        http_method = "GET",
        http_path = "/safetyLevers/{id}",
    }, options)
end

function Client:getTargetAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTargetAccountConfiguration",
        input_schema = types.GetTargetAccountConfigurationInput,
        output_schema = types.GetTargetAccountConfigurationOutput,
        http_method = "GET",
        http_path = "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}",
    }, options)
end

function Client:getTargetResourceType(input, options)
    return self:invokeOperation(input, {
        name = "GetTargetResourceType",
        input_schema = types.GetTargetResourceTypeInput,
        output_schema = types.GetTargetResourceTypeOutput,
        http_method = "GET",
        http_path = "/targetResourceTypes/{resourceType}",
    }, options)
end

function Client:listActions(input, options)
    return self:invokeOperation(input, {
        name = "ListActions",
        input_schema = types.ListActionsInput,
        output_schema = types.ListActionsOutput,
        http_method = "GET",
        http_path = "/actions",
    }, options)
end

function Client:listExperimentResolvedTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListExperimentResolvedTargets",
        input_schema = types.ListExperimentResolvedTargetsInput,
        output_schema = types.ListExperimentResolvedTargetsOutput,
        http_method = "GET",
        http_path = "/experiments/{experimentId}/resolvedTargets",
    }, options)
end

function Client:listExperiments(input, options)
    return self:invokeOperation(input, {
        name = "ListExperiments",
        input_schema = types.ListExperimentsInput,
        output_schema = types.ListExperimentsOutput,
        http_method = "GET",
        http_path = "/experiments",
    }, options)
end

function Client:listExperimentTargetAccountConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListExperimentTargetAccountConfigurations",
        input_schema = types.ListExperimentTargetAccountConfigurationsInput,
        output_schema = types.ListExperimentTargetAccountConfigurationsOutput,
        http_method = "GET",
        http_path = "/experiments/{experimentId}/targetAccountConfigurations",
    }, options)
end

function Client:listExperimentTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListExperimentTemplates",
        input_schema = types.ListExperimentTemplatesInput,
        output_schema = types.ListExperimentTemplatesOutput,
        http_method = "GET",
        http_path = "/experimentTemplates",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:listTargetAccountConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetAccountConfigurations",
        input_schema = types.ListTargetAccountConfigurationsInput,
        output_schema = types.ListTargetAccountConfigurationsOutput,
        http_method = "GET",
        http_path = "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations",
    }, options)
end

function Client:listTargetResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetResourceTypes",
        input_schema = types.ListTargetResourceTypesInput,
        output_schema = types.ListTargetResourceTypesOutput,
        http_method = "GET",
        http_path = "/targetResourceTypes",
    }, options)
end

function Client:startExperiment(input, options)
    return self:invokeOperation(input, {
        name = "StartExperiment",
        input_schema = types.StartExperimentInput,
        output_schema = types.StartExperimentOutput,
        http_method = "POST",
        http_path = "/experiments",
    }, options)
end

function Client:stopExperiment(input, options)
    return self:invokeOperation(input, {
        name = "StopExperiment",
        input_schema = types.StopExperimentInput,
        output_schema = types.StopExperimentOutput,
        http_method = "DELETE",
        http_path = "/experiments/{id}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateExperimentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExperimentTemplate",
        input_schema = types.UpdateExperimentTemplateInput,
        output_schema = types.UpdateExperimentTemplateOutput,
        http_method = "PATCH",
        http_path = "/experimentTemplates/{id}",
    }, options)
end

function Client:updateSafetyLeverState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSafetyLeverState",
        input_schema = types.UpdateSafetyLeverStateOperationInput,
        output_schema = types.UpdateSafetyLeverStateOutput,
        http_method = "PATCH",
        http_path = "/safetyLevers/{id}/state",
    }, options)
end

function Client:updateTargetAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTargetAccountConfiguration",
        input_schema = types.UpdateTargetAccountConfigurationInput,
        output_schema = types.UpdateTargetAccountConfigurationOutput,
        http_method = "PATCH",
        http_path = "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}",
    }, options)
end

return M
