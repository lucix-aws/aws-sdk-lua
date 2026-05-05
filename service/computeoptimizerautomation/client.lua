local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("computeoptimizerautomation.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("computeoptimizerautomation.types")

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
        input_schema = types.AssociateAccountsInput,
        output_schema = types.AssociateAccountsOutput,
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
        input_schema = types.CreateAutomationRuleInput,
        output_schema = types.CreateAutomationRuleOutput,
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
        input_schema = types.DeleteAutomationRuleInput,
        output_schema = types.DeleteAutomationRuleOutput,
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
        input_schema = types.DisassociateAccountsInput,
        output_schema = types.DisassociateAccountsOutput,
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
        input_schema = types.GetAutomationEventInput,
        output_schema = types.GetAutomationEventOutput,
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
        input_schema = types.GetAutomationRuleInput,
        output_schema = types.GetAutomationRuleOutput,
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
        input_schema = types.GetEnrollmentConfigurationInput,
        output_schema = types.GetEnrollmentConfigurationOutput,
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
        input_schema = types.ListAccountsInput,
        output_schema = types.ListAccountsOutput,
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
        input_schema = types.ListAutomationEventsInput,
        output_schema = types.ListAutomationEventsOutput,
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
        input_schema = types.ListAutomationEventStepsInput,
        output_schema = types.ListAutomationEventStepsOutput,
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
        input_schema = types.ListAutomationEventSummariesInput,
        output_schema = types.ListAutomationEventSummariesOutput,
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
        input_schema = types.ListAutomationRulePreviewInput,
        output_schema = types.ListAutomationRulePreviewOutput,
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
        input_schema = types.ListAutomationRulePreviewSummariesInput,
        output_schema = types.ListAutomationRulePreviewSummariesOutput,
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
        input_schema = types.ListAutomationRulesInput,
        output_schema = types.ListAutomationRulesOutput,
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
        input_schema = types.ListRecommendedActionsInput,
        output_schema = types.ListRecommendedActionsOutput,
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
        input_schema = types.ListRecommendedActionSummariesInput,
        output_schema = types.ListRecommendedActionSummariesOutput,
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

function Client:rollbackAutomationEvent(input, options)
    return self:invokeOperation(input, {
        name = "RollbackAutomationEvent",
        input_schema = types.RollbackAutomationEventInput,
        output_schema = types.RollbackAutomationEventOutput,
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
        input_schema = types.StartAutomationEventInput,
        output_schema = types.StartAutomationEventOutput,
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

function Client:updateAutomationRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutomationRule",
        input_schema = types.UpdateAutomationRuleInput,
        output_schema = types.UpdateAutomationRuleOutput,
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
        input_schema = types.UpdateEnrollmentConfigurationInput,
        output_schema = types.UpdateEnrollmentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
