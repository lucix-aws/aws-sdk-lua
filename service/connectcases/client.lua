local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("connectcases.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("connectcases.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonConnectCases"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cases", signing_region = cfg.region } }
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

function Client:batchGetCaseRule(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCaseRule",
        input_schema = schemas.BatchGetCaseRuleInput,
        output_schema = schemas.BatchGetCaseRuleOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/rules-batch",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetField(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetField",
        input_schema = schemas.BatchGetFieldInput,
        output_schema = schemas.BatchGetFieldOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/fields-batch",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchPutFieldOptions(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutFieldOptions",
        input_schema = schemas.BatchPutFieldOptionsInput,
        output_schema = schemas.BatchPutFieldOptionsOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/fields/{fieldId}/options",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCase(input, options)
    return self:invokeOperation(input, {
        name = "CreateCase",
        input_schema = schemas.CreateCaseInput,
        output_schema = schemas.CreateCaseOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCaseRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateCaseRule",
        input_schema = schemas.CreateCaseRuleInput,
        output_schema = schemas.CreateCaseRuleOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/case-rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = schemas.CreateDomainInput,
        output_schema = schemas.CreateDomainOutput,
        http_method = "POST",
        http_path = "/domains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createField(input, options)
    return self:invokeOperation(input, {
        name = "CreateField",
        input_schema = schemas.CreateFieldInput,
        output_schema = schemas.CreateFieldOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/fields",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLayout(input, options)
    return self:invokeOperation(input, {
        name = "CreateLayout",
        input_schema = schemas.CreateLayoutInput,
        output_schema = schemas.CreateLayoutOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/layouts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRelatedItem(input, options)
    return self:invokeOperation(input, {
        name = "CreateRelatedItem",
        input_schema = schemas.CreateRelatedItemInput,
        output_schema = schemas.CreateRelatedItemOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases/{caseId}/related-items/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplate",
        input_schema = schemas.CreateTemplateInput,
        output_schema = schemas.CreateTemplateOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCase",
        input_schema = schemas.DeleteCaseInput,
        output_schema = schemas.DeleteCaseOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/cases/{caseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCaseRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCaseRule",
        input_schema = schemas.DeleteCaseRuleInput,
        output_schema = schemas.DeleteCaseRuleOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/case-rules/{caseRuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = schemas.DeleteDomainInput,
        output_schema = schemas.DeleteDomainOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteField(input, options)
    return self:invokeOperation(input, {
        name = "DeleteField",
        input_schema = schemas.DeleteFieldInput,
        output_schema = schemas.DeleteFieldOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/fields/{fieldId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLayout(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLayout",
        input_schema = schemas.DeleteLayoutInput,
        output_schema = schemas.DeleteLayoutOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/layouts/{layoutId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRelatedItem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRelatedItem",
        input_schema = schemas.DeleteRelatedItemInput,
        output_schema = schemas.DeleteRelatedItemOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/cases/{caseId}/related-items/{relatedItemId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplate",
        input_schema = schemas.DeleteTemplateInput,
        output_schema = schemas.DeleteTemplateOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/templates/{templateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCase(input, options)
    return self:invokeOperation(input, {
        name = "GetCase",
        input_schema = schemas.GetCaseInput,
        output_schema = schemas.GetCaseOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases/{caseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCaseAuditEvents(input, options)
    return self:invokeOperation(input, {
        name = "GetCaseAuditEvents",
        input_schema = schemas.GetCaseAuditEventsInput,
        output_schema = schemas.GetCaseAuditEventsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases/{caseId}/audit-history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCaseEventConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetCaseEventConfiguration",
        input_schema = schemas.GetCaseEventConfigurationInput,
        output_schema = schemas.GetCaseEventConfigurationOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/case-event-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetDomain",
        input_schema = schemas.GetDomainInput,
        output_schema = schemas.GetDomainOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLayout(input, options)
    return self:invokeOperation(input, {
        name = "GetLayout",
        input_schema = schemas.GetLayoutInput,
        output_schema = schemas.GetLayoutOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/layouts/{layoutId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplate",
        input_schema = schemas.GetTemplateInput,
        output_schema = schemas.GetTemplateOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/templates/{templateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCaseRules(input, options)
    return self:invokeOperation(input, {
        name = "ListCaseRules",
        input_schema = schemas.ListCaseRulesInput,
        output_schema = schemas.ListCaseRulesOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/rules-list/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCasesForContact(input, options)
    return self:invokeOperation(input, {
        name = "ListCasesForContact",
        input_schema = schemas.ListCasesForContactInput,
        output_schema = schemas.ListCasesForContactOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/list-cases-for-contact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = schemas.ListDomainsInput,
        output_schema = schemas.ListDomainsOutput,
        http_method = "POST",
        http_path = "/domains-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFieldOptions(input, options)
    return self:invokeOperation(input, {
        name = "ListFieldOptions",
        input_schema = schemas.ListFieldOptionsInput,
        output_schema = schemas.ListFieldOptionsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/fields/{fieldId}/options-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFields(input, options)
    return self:invokeOperation(input, {
        name = "ListFields",
        input_schema = schemas.ListFieldsInput,
        output_schema = schemas.ListFieldsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/fields-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLayouts(input, options)
    return self:invokeOperation(input, {
        name = "ListLayouts",
        input_schema = schemas.ListLayoutsInput,
        output_schema = schemas.ListLayoutsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/layouts-list",
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
        http_path = "/tags/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplates",
        input_schema = schemas.ListTemplatesInput,
        output_schema = schemas.ListTemplatesOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/templates-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putCaseEventConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutCaseEventConfiguration",
        input_schema = schemas.PutCaseEventConfigurationInput,
        output_schema = schemas.PutCaseEventConfigurationOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/case-event-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchAllRelatedItems(input, options)
    return self:invokeOperation(input, {
        name = "SearchAllRelatedItems",
        input_schema = schemas.SearchAllRelatedItemsInput,
        output_schema = schemas.SearchAllRelatedItemsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/related-items-search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchCases(input, options)
    return self:invokeOperation(input, {
        name = "SearchCases",
        input_schema = schemas.SearchCasesInput,
        output_schema = schemas.SearchCasesOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases-search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchRelatedItems(input, options)
    return self:invokeOperation(input, {
        name = "SearchRelatedItems",
        input_schema = schemas.SearchRelatedItemsInput,
        output_schema = schemas.SearchRelatedItemsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases/{caseId}/related-items-search",
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
        http_path = "/tags/{arn}",
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
        http_path = "/tags/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCase",
        input_schema = schemas.UpdateCaseInput,
        output_schema = schemas.UpdateCaseOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/cases/{caseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCaseRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCaseRule",
        input_schema = schemas.UpdateCaseRuleInput,
        output_schema = schemas.UpdateCaseRuleOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/case-rules/{caseRuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateField(input, options)
    return self:invokeOperation(input, {
        name = "UpdateField",
        input_schema = schemas.UpdateFieldInput,
        output_schema = schemas.UpdateFieldOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/fields/{fieldId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLayout(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLayout",
        input_schema = schemas.UpdateLayoutInput,
        output_schema = schemas.UpdateLayoutOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/layouts/{layoutId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRelatedItem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRelatedItem",
        input_schema = schemas.UpdateRelatedItemInput,
        output_schema = schemas.UpdateRelatedItemOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/cases/{caseId}/related-items/{relatedItemId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplate",
        input_schema = schemas.UpdateTemplateInput,
        output_schema = schemas.UpdateTemplateOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/templates/{templateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
