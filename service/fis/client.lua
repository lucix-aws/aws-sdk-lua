local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("fis.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("fis.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "FaultInjectionSimulator"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "fis", signing_region = cfg.region } }
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

function Client:createExperimentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateExperimentTemplate",
        input_schema = schemas.CreateExperimentTemplateInput,
        output_schema = schemas.CreateExperimentTemplateOutput,
        http_method = "POST",
        http_path = "/experimentTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTargetAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateTargetAccountConfiguration",
        input_schema = schemas.CreateTargetAccountConfigurationInput,
        output_schema = schemas.CreateTargetAccountConfigurationOutput,
        http_method = "POST",
        http_path = "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteExperimentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExperimentTemplate",
        input_schema = schemas.DeleteExperimentTemplateInput,
        output_schema = schemas.DeleteExperimentTemplateOutput,
        http_method = "DELETE",
        http_path = "/experimentTemplates/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTargetAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTargetAccountConfiguration",
        input_schema = schemas.DeleteTargetAccountConfigurationInput,
        output_schema = schemas.DeleteTargetAccountConfigurationOutput,
        http_method = "DELETE",
        http_path = "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAction(input, options)
    return self:invokeOperation(input, {
        name = "GetAction",
        input_schema = schemas.GetActionInput,
        output_schema = schemas.GetActionOutput,
        http_method = "GET",
        http_path = "/actions/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExperiment(input, options)
    return self:invokeOperation(input, {
        name = "GetExperiment",
        input_schema = schemas.GetExperimentInput,
        output_schema = schemas.GetExperimentOutput,
        http_method = "GET",
        http_path = "/experiments/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExperimentTargetAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetExperimentTargetAccountConfiguration",
        input_schema = schemas.GetExperimentTargetAccountConfigurationInput,
        output_schema = schemas.GetExperimentTargetAccountConfigurationOutput,
        http_method = "GET",
        http_path = "/experiments/{experimentId}/targetAccountConfigurations/{accountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExperimentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetExperimentTemplate",
        input_schema = schemas.GetExperimentTemplateInput,
        output_schema = schemas.GetExperimentTemplateOutput,
        http_method = "GET",
        http_path = "/experimentTemplates/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSafetyLever(input, options)
    return self:invokeOperation(input, {
        name = "GetSafetyLever",
        input_schema = schemas.GetSafetyLeverInput,
        output_schema = schemas.GetSafetyLeverOutput,
        http_method = "GET",
        http_path = "/safetyLevers/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTargetAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTargetAccountConfiguration",
        input_schema = schemas.GetTargetAccountConfigurationInput,
        output_schema = schemas.GetTargetAccountConfigurationOutput,
        http_method = "GET",
        http_path = "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTargetResourceType(input, options)
    return self:invokeOperation(input, {
        name = "GetTargetResourceType",
        input_schema = schemas.GetTargetResourceTypeInput,
        output_schema = schemas.GetTargetResourceTypeOutput,
        http_method = "GET",
        http_path = "/targetResourceTypes/{resourceType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listActions(input, options)
    return self:invokeOperation(input, {
        name = "ListActions",
        input_schema = schemas.ListActionsInput,
        output_schema = schemas.ListActionsOutput,
        http_method = "GET",
        http_path = "/actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExperimentResolvedTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListExperimentResolvedTargets",
        input_schema = schemas.ListExperimentResolvedTargetsInput,
        output_schema = schemas.ListExperimentResolvedTargetsOutput,
        http_method = "GET",
        http_path = "/experiments/{experimentId}/resolvedTargets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExperiments(input, options)
    return self:invokeOperation(input, {
        name = "ListExperiments",
        input_schema = schemas.ListExperimentsInput,
        output_schema = schemas.ListExperimentsOutput,
        http_method = "GET",
        http_path = "/experiments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExperimentTargetAccountConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListExperimentTargetAccountConfigurations",
        input_schema = schemas.ListExperimentTargetAccountConfigurationsInput,
        output_schema = schemas.ListExperimentTargetAccountConfigurationsOutput,
        http_method = "GET",
        http_path = "/experiments/{experimentId}/targetAccountConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExperimentTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListExperimentTemplates",
        input_schema = schemas.ListExperimentTemplatesInput,
        output_schema = schemas.ListExperimentTemplatesOutput,
        http_method = "GET",
        http_path = "/experimentTemplates",
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
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTargetAccountConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetAccountConfigurations",
        input_schema = schemas.ListTargetAccountConfigurationsInput,
        output_schema = schemas.ListTargetAccountConfigurationsOutput,
        http_method = "GET",
        http_path = "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTargetResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetResourceTypes",
        input_schema = schemas.ListTargetResourceTypesInput,
        output_schema = schemas.ListTargetResourceTypesOutput,
        http_method = "GET",
        http_path = "/targetResourceTypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startExperiment(input, options)
    return self:invokeOperation(input, {
        name = "StartExperiment",
        input_schema = schemas.StartExperimentInput,
        output_schema = schemas.StartExperimentOutput,
        http_method = "POST",
        http_path = "/experiments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopExperiment(input, options)
    return self:invokeOperation(input, {
        name = "StopExperiment",
        input_schema = schemas.StopExperimentInput,
        output_schema = schemas.StopExperimentOutput,
        http_method = "DELETE",
        http_path = "/experiments/{id}",
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
        http_path = "/tags/{resourceArn}",
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
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateExperimentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExperimentTemplate",
        input_schema = schemas.UpdateExperimentTemplateInput,
        output_schema = schemas.UpdateExperimentTemplateOutput,
        http_method = "PATCH",
        http_path = "/experimentTemplates/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSafetyLeverState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSafetyLeverState",
        input_schema = schemas.UpdateSafetyLeverStateOperationInput,
        output_schema = schemas.UpdateSafetyLeverStateOutput,
        http_method = "PATCH",
        http_path = "/safetyLevers/{id}/state",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTargetAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTargetAccountConfiguration",
        input_schema = schemas.UpdateTargetAccountConfigurationInput,
        output_schema = schemas.UpdateTargetAccountConfigurationOutput,
        http_method = "PATCH",
        http_path = "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
