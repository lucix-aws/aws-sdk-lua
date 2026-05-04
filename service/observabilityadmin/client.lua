local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("observabilityadmin.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("observabilityadmin.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ObservabilityAdmin"
    cfg.signing_name = "observabilityadmin"
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

function Client:createCentralizationRuleForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "CreateCentralizationRuleForOrganization",
        input_schema = types.CreateCentralizationRuleForOrganizationInput,
        output_schema = types.CreateCentralizationRuleForOrganizationOutput,
        http_method = "POST",
        http_path = "/CreateCentralizationRuleForOrganization",
    }, options)
end

function Client:createS3TableIntegration(input, options)
    return self:invokeOperation(input, {
        name = "CreateS3TableIntegration",
        input_schema = types.CreateS3TableIntegrationInput,
        output_schema = types.CreateS3TableIntegrationOutput,
        http_method = "POST",
        http_path = "/CreateS3TableIntegration",
    }, options)
end

function Client:createTelemetryPipeline(input, options)
    return self:invokeOperation(input, {
        name = "CreateTelemetryPipeline",
        input_schema = types.CreateTelemetryPipelineInput,
        output_schema = types.CreateTelemetryPipelineOutput,
        http_method = "POST",
        http_path = "/CreateTelemetryPipeline",
    }, options)
end

function Client:createTelemetryRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateTelemetryRule",
        input_schema = types.CreateTelemetryRuleInput,
        output_schema = types.CreateTelemetryRuleOutput,
        http_method = "POST",
        http_path = "/CreateTelemetryRule",
    }, options)
end

function Client:createTelemetryRuleForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "CreateTelemetryRuleForOrganization",
        input_schema = types.CreateTelemetryRuleForOrganizationInput,
        output_schema = types.CreateTelemetryRuleForOrganizationOutput,
        http_method = "POST",
        http_path = "/CreateTelemetryRuleForOrganization",
    }, options)
end

function Client:deleteCentralizationRuleForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCentralizationRuleForOrganization",
        input_schema = types.DeleteCentralizationRuleForOrganizationInput,
        output_schema = types.DeleteCentralizationRuleForOrganizationOutput,
        http_method = "POST",
        http_path = "/DeleteCentralizationRuleForOrganization",
    }, options)
end

function Client:deleteS3TableIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteS3TableIntegration",
        input_schema = types.DeleteS3TableIntegrationInput,
        output_schema = types.DeleteS3TableIntegrationOutput,
        http_method = "POST",
        http_path = "/DeleteS3TableIntegration",
    }, options)
end

function Client:deleteTelemetryPipeline(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTelemetryPipeline",
        input_schema = types.DeleteTelemetryPipelineInput,
        output_schema = types.DeleteTelemetryPipelineOutput,
        http_method = "POST",
        http_path = "/DeleteTelemetryPipeline",
    }, options)
end

function Client:deleteTelemetryRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTelemetryRule",
        input_schema = types.DeleteTelemetryRuleInput,
        output_schema = types.DeleteTelemetryRuleOutput,
        http_method = "POST",
        http_path = "/DeleteTelemetryRule",
    }, options)
end

function Client:deleteTelemetryRuleForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTelemetryRuleForOrganization",
        input_schema = types.DeleteTelemetryRuleForOrganizationInput,
        output_schema = types.DeleteTelemetryRuleForOrganizationOutput,
        http_method = "POST",
        http_path = "/DeleteTelemetryRuleForOrganization",
    }, options)
end

function Client:getCentralizationRuleForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "GetCentralizationRuleForOrganization",
        input_schema = types.GetCentralizationRuleForOrganizationInput,
        output_schema = types.GetCentralizationRuleForOrganizationOutput,
        http_method = "POST",
        http_path = "/GetCentralizationRuleForOrganization",
    }, options)
end

function Client:getS3TableIntegration(input, options)
    return self:invokeOperation(input, {
        name = "GetS3TableIntegration",
        input_schema = types.GetS3TableIntegrationInput,
        output_schema = types.GetS3TableIntegrationOutput,
        http_method = "POST",
        http_path = "/GetS3TableIntegration",
    }, options)
end

function Client:getTelemetryEnrichmentStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTelemetryEnrichmentStatus",
        input_schema = types.GetTelemetryEnrichmentStatusInput,
        output_schema = types.GetTelemetryEnrichmentStatusOutput,
        http_method = "POST",
        http_path = "/GetTelemetryEnrichmentStatus",
    }, options)
end

function Client:getTelemetryEvaluationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTelemetryEvaluationStatus",
        input_schema = types.GetTelemetryEvaluationStatusInput,
        output_schema = types.GetTelemetryEvaluationStatusOutput,
        http_method = "POST",
        http_path = "/GetTelemetryEvaluationStatus",
    }, options)
end

function Client:getTelemetryEvaluationStatusForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "GetTelemetryEvaluationStatusForOrganization",
        input_schema = types.GetTelemetryEvaluationStatusForOrganizationInput,
        output_schema = types.GetTelemetryEvaluationStatusForOrganizationOutput,
        http_method = "POST",
        http_path = "/GetTelemetryEvaluationStatusForOrganization",
    }, options)
end

function Client:getTelemetryPipeline(input, options)
    return self:invokeOperation(input, {
        name = "GetTelemetryPipeline",
        input_schema = types.GetTelemetryPipelineInput,
        output_schema = types.GetTelemetryPipelineOutput,
        http_method = "POST",
        http_path = "/GetTelemetryPipeline",
    }, options)
end

function Client:getTelemetryRule(input, options)
    return self:invokeOperation(input, {
        name = "GetTelemetryRule",
        input_schema = types.GetTelemetryRuleInput,
        output_schema = types.GetTelemetryRuleOutput,
        http_method = "POST",
        http_path = "/GetTelemetryRule",
    }, options)
end

function Client:getTelemetryRuleForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "GetTelemetryRuleForOrganization",
        input_schema = types.GetTelemetryRuleForOrganizationInput,
        output_schema = types.GetTelemetryRuleForOrganizationOutput,
        http_method = "POST",
        http_path = "/GetTelemetryRuleForOrganization",
    }, options)
end

function Client:listCentralizationRulesForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListCentralizationRulesForOrganization",
        input_schema = types.ListCentralizationRulesForOrganizationInput,
        output_schema = types.ListCentralizationRulesForOrganizationOutput,
        http_method = "POST",
        http_path = "/ListCentralizationRulesForOrganization",
    }, options)
end

function Client:listResourceTelemetry(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceTelemetry",
        input_schema = types.ListResourceTelemetryInput,
        output_schema = types.ListResourceTelemetryOutput,
        http_method = "POST",
        http_path = "/ListResourceTelemetry",
    }, options)
end

function Client:listResourceTelemetryForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceTelemetryForOrganization",
        input_schema = types.ListResourceTelemetryForOrganizationInput,
        output_schema = types.ListResourceTelemetryForOrganizationOutput,
        http_method = "POST",
        http_path = "/ListResourceTelemetryForOrganization",
    }, options)
end

function Client:listS3TableIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "ListS3TableIntegrations",
        input_schema = types.ListS3TableIntegrationsInput,
        output_schema = types.ListS3TableIntegrationsOutput,
        http_method = "POST",
        http_path = "/ListS3TableIntegrations",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/ListTagsForResource",
    }, options)
end

function Client:listTelemetryPipelines(input, options)
    return self:invokeOperation(input, {
        name = "ListTelemetryPipelines",
        input_schema = types.ListTelemetryPipelinesInput,
        output_schema = types.ListTelemetryPipelinesOutput,
        http_method = "POST",
        http_path = "/ListTelemetryPipelines",
    }, options)
end

function Client:listTelemetryRules(input, options)
    return self:invokeOperation(input, {
        name = "ListTelemetryRules",
        input_schema = types.ListTelemetryRulesInput,
        output_schema = types.ListTelemetryRulesOutput,
        http_method = "POST",
        http_path = "/ListTelemetryRules",
    }, options)
end

function Client:listTelemetryRulesForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListTelemetryRulesForOrganization",
        input_schema = types.ListTelemetryRulesForOrganizationInput,
        output_schema = types.ListTelemetryRulesForOrganizationOutput,
        http_method = "POST",
        http_path = "/ListTelemetryRulesForOrganization",
    }, options)
end

function Client:startTelemetryEnrichment(input, options)
    return self:invokeOperation(input, {
        name = "StartTelemetryEnrichment",
        input_schema = types.StartTelemetryEnrichmentInput,
        output_schema = types.StartTelemetryEnrichmentOutput,
        http_method = "POST",
        http_path = "/StartTelemetryEnrichment",
    }, options)
end

function Client:startTelemetryEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "StartTelemetryEvaluation",
        input_schema = types.StartTelemetryEvaluationInput,
        output_schema = types.StartTelemetryEvaluationOutput,
        http_method = "POST",
        http_path = "/StartTelemetryEvaluation",
    }, options)
end

function Client:startTelemetryEvaluationForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "StartTelemetryEvaluationForOrganization",
        input_schema = types.StartTelemetryEvaluationForOrganizationInput,
        output_schema = types.StartTelemetryEvaluationForOrganizationOutput,
        http_method = "POST",
        http_path = "/StartTelemetryEvaluationForOrganization",
    }, options)
end

function Client:stopTelemetryEnrichment(input, options)
    return self:invokeOperation(input, {
        name = "StopTelemetryEnrichment",
        input_schema = types.StopTelemetryEnrichmentInput,
        output_schema = types.StopTelemetryEnrichmentOutput,
        http_method = "POST",
        http_path = "/StopTelemetryEnrichment",
    }, options)
end

function Client:stopTelemetryEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "StopTelemetryEvaluation",
        input_schema = types.StopTelemetryEvaluationInput,
        output_schema = types.StopTelemetryEvaluationOutput,
        http_method = "POST",
        http_path = "/StopTelemetryEvaluation",
    }, options)
end

function Client:stopTelemetryEvaluationForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "StopTelemetryEvaluationForOrganization",
        input_schema = types.StopTelemetryEvaluationForOrganizationInput,
        output_schema = types.StopTelemetryEvaluationForOrganizationOutput,
        http_method = "POST",
        http_path = "/StopTelemetryEvaluationForOrganization",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/TagResource",
    }, options)
end

function Client:testTelemetryPipeline(input, options)
    return self:invokeOperation(input, {
        name = "TestTelemetryPipeline",
        input_schema = types.TestTelemetryPipelineInput,
        output_schema = types.TestTelemetryPipelineOutput,
        http_method = "POST",
        http_path = "/TestTelemetryPipeline",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/UntagResource",
    }, options)
end

function Client:updateCentralizationRuleForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCentralizationRuleForOrganization",
        input_schema = types.UpdateCentralizationRuleForOrganizationInput,
        output_schema = types.UpdateCentralizationRuleForOrganizationOutput,
        http_method = "POST",
        http_path = "/UpdateCentralizationRuleForOrganization",
    }, options)
end

function Client:updateTelemetryPipeline(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTelemetryPipeline",
        input_schema = types.UpdateTelemetryPipelineInput,
        output_schema = types.UpdateTelemetryPipelineOutput,
        http_method = "POST",
        http_path = "/UpdateTelemetryPipeline",
    }, options)
end

function Client:updateTelemetryRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTelemetryRule",
        input_schema = types.UpdateTelemetryRuleInput,
        output_schema = types.UpdateTelemetryRuleOutput,
        http_method = "POST",
        http_path = "/UpdateTelemetryRule",
    }, options)
end

function Client:updateTelemetryRuleForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTelemetryRuleForOrganization",
        input_schema = types.UpdateTelemetryRuleForOrganizationInput,
        output_schema = types.UpdateTelemetryRuleForOrganizationOutput,
        http_method = "POST",
        http_path = "/UpdateTelemetryRuleForOrganization",
    }, options)
end

function Client:validateTelemetryPipelineConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ValidateTelemetryPipelineConfiguration",
        input_schema = types.ValidateTelemetryPipelineConfigurationInput,
        output_schema = types.ValidateTelemetryPipelineConfigurationOutput,
        http_method = "POST",
        http_path = "/ValidateTelemetryPipelineConfiguration",
    }, options)
end

return M
