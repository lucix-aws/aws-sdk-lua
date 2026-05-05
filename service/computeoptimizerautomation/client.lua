local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("computeoptimizerautomation.endpoint_rules")
local schemas = require("computeoptimizerautomation.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ComputeOptimizerAutomationService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aco-automation", signing_region = cfg.region } }
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

function Client:associateAccounts(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAccounts",
        input_schema = schemas.AssociateAccountsInput,
        output_schema = schemas.AssociateAccountsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAutomationRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutomationRule",
        input_schema = schemas.CreateAutomationRuleInput,
        output_schema = schemas.CreateAutomationRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAutomationRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAutomationRule",
        input_schema = schemas.DeleteAutomationRuleInput,
        output_schema = schemas.DeleteAutomationRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateAccounts(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAccounts",
        input_schema = schemas.DisassociateAccountsInput,
        output_schema = schemas.DisassociateAccountsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAutomationEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomationEvent",
        input_schema = schemas.GetAutomationEventInput,
        output_schema = schemas.GetAutomationEventOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAutomationRule(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomationRule",
        input_schema = schemas.GetAutomationRuleInput,
        output_schema = schemas.GetAutomationRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnrollmentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetEnrollmentConfiguration",
        input_schema = schemas.GetEnrollmentConfigurationInput,
        output_schema = schemas.GetEnrollmentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListAccounts",
        input_schema = schemas.ListAccountsInput,
        output_schema = schemas.ListAccountsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutomationEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomationEvents",
        input_schema = schemas.ListAutomationEventsInput,
        output_schema = schemas.ListAutomationEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutomationEventSteps(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomationEventSteps",
        input_schema = schemas.ListAutomationEventStepsInput,
        output_schema = schemas.ListAutomationEventStepsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutomationEventSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomationEventSummaries",
        input_schema = schemas.ListAutomationEventSummariesInput,
        output_schema = schemas.ListAutomationEventSummariesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutomationRulePreview(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomationRulePreview",
        input_schema = schemas.ListAutomationRulePreviewInput,
        output_schema = schemas.ListAutomationRulePreviewOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutomationRulePreviewSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomationRulePreviewSummaries",
        input_schema = schemas.ListAutomationRulePreviewSummariesInput,
        output_schema = schemas.ListAutomationRulePreviewSummariesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutomationRules(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomationRules",
        input_schema = schemas.ListAutomationRulesInput,
        output_schema = schemas.ListAutomationRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommendedActions(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendedActions",
        input_schema = schemas.ListRecommendedActionsInput,
        output_schema = schemas.ListRecommendedActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommendedActionSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendedActionSummaries",
        input_schema = schemas.ListRecommendedActionSummariesInput,
        output_schema = schemas.ListRecommendedActionSummariesOutput,
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

function Client:rollbackAutomationEvent(input, options)
    return self:invokeOperation(input, {
        name = "RollbackAutomationEvent",
        input_schema = schemas.RollbackAutomationEventInput,
        output_schema = schemas.RollbackAutomationEventOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAutomationEvent(input, options)
    return self:invokeOperation(input, {
        name = "StartAutomationEvent",
        input_schema = schemas.StartAutomationEventInput,
        output_schema = schemas.StartAutomationEventOutput,
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

function Client:updateAutomationRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutomationRule",
        input_schema = schemas.UpdateAutomationRuleInput,
        output_schema = schemas.UpdateAutomationRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnrollmentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnrollmentConfiguration",
        input_schema = schemas.UpdateEnrollmentConfigurationInput,
        output_schema = schemas.UpdateEnrollmentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
