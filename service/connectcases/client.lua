local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("connectcases.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("connectcases.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonConnectCases"
    cfg.signing_name = "cases"
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

function Client:batchGetCaseRule(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCaseRule",
        input_schema = types.BatchGetCaseRuleInput,
        output_schema = types.BatchGetCaseRuleOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/rules-batch",
    }, options)
end

function Client:batchGetField(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetField",
        input_schema = types.BatchGetFieldInput,
        output_schema = types.BatchGetFieldOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/fields-batch",
    }, options)
end

function Client:batchPutFieldOptions(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutFieldOptions",
        input_schema = types.BatchPutFieldOptionsInput,
        output_schema = types.BatchPutFieldOptionsOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/fields/{fieldId}/options",
    }, options)
end

function Client:createCase(input, options)
    return self:invokeOperation(input, {
        name = "CreateCase",
        input_schema = types.CreateCaseInput,
        output_schema = types.CreateCaseOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases",
    }, options)
end

function Client:createCaseRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateCaseRule",
        input_schema = types.CreateCaseRuleInput,
        output_schema = types.CreateCaseRuleOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/case-rules",
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = types.CreateDomainInput,
        output_schema = types.CreateDomainOutput,
        http_method = "POST",
        http_path = "/domains",
    }, options)
end

function Client:createField(input, options)
    return self:invokeOperation(input, {
        name = "CreateField",
        input_schema = types.CreateFieldInput,
        output_schema = types.CreateFieldOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/fields",
    }, options)
end

function Client:createLayout(input, options)
    return self:invokeOperation(input, {
        name = "CreateLayout",
        input_schema = types.CreateLayoutInput,
        output_schema = types.CreateLayoutOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/layouts",
    }, options)
end

function Client:createRelatedItem(input, options)
    return self:invokeOperation(input, {
        name = "CreateRelatedItem",
        input_schema = types.CreateRelatedItemInput,
        output_schema = types.CreateRelatedItemOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases/{caseId}/related-items/",
    }, options)
end

function Client:createTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplate",
        input_schema = types.CreateTemplateInput,
        output_schema = types.CreateTemplateOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/templates",
    }, options)
end

function Client:deleteCase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCase",
        input_schema = types.DeleteCaseInput,
        output_schema = types.DeleteCaseOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/cases/{caseId}",
    }, options)
end

function Client:deleteCaseRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCaseRule",
        input_schema = types.DeleteCaseRuleInput,
        output_schema = types.DeleteCaseRuleOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/case-rules/{caseRuleId}",
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = types.DeleteDomainInput,
        output_schema = types.DeleteDomainOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}",
    }, options)
end

function Client:deleteField(input, options)
    return self:invokeOperation(input, {
        name = "DeleteField",
        input_schema = types.DeleteFieldInput,
        output_schema = types.DeleteFieldOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/fields/{fieldId}",
    }, options)
end

function Client:deleteLayout(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLayout",
        input_schema = types.DeleteLayoutInput,
        output_schema = types.DeleteLayoutOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/layouts/{layoutId}",
    }, options)
end

function Client:deleteRelatedItem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRelatedItem",
        input_schema = types.DeleteRelatedItemInput,
        output_schema = types.DeleteRelatedItemOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/cases/{caseId}/related-items/{relatedItemId}",
    }, options)
end

function Client:deleteTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplate",
        input_schema = types.DeleteTemplateInput,
        output_schema = types.DeleteTemplateOutput,
        http_method = "DELETE",
        http_path = "/domains/{domainId}/templates/{templateId}",
    }, options)
end

function Client:getCase(input, options)
    return self:invokeOperation(input, {
        name = "GetCase",
        input_schema = types.GetCaseInput,
        output_schema = types.GetCaseOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases/{caseId}",
    }, options)
end

function Client:getCaseAuditEvents(input, options)
    return self:invokeOperation(input, {
        name = "GetCaseAuditEvents",
        input_schema = types.GetCaseAuditEventsInput,
        output_schema = types.GetCaseAuditEventsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases/{caseId}/audit-history",
    }, options)
end

function Client:getCaseEventConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetCaseEventConfiguration",
        input_schema = types.GetCaseEventConfigurationInput,
        output_schema = types.GetCaseEventConfigurationOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/case-event-configuration",
    }, options)
end

function Client:getDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetDomain",
        input_schema = types.GetDomainInput,
        output_schema = types.GetDomainOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}",
    }, options)
end

function Client:getLayout(input, options)
    return self:invokeOperation(input, {
        name = "GetLayout",
        input_schema = types.GetLayoutInput,
        output_schema = types.GetLayoutOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/layouts/{layoutId}",
    }, options)
end

function Client:getTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplate",
        input_schema = types.GetTemplateInput,
        output_schema = types.GetTemplateOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/templates/{templateId}",
    }, options)
end

function Client:listCaseRules(input, options)
    return self:invokeOperation(input, {
        name = "ListCaseRules",
        input_schema = types.ListCaseRulesInput,
        output_schema = types.ListCaseRulesOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/rules-list/",
    }, options)
end

function Client:listCasesForContact(input, options)
    return self:invokeOperation(input, {
        name = "ListCasesForContact",
        input_schema = types.ListCasesForContactInput,
        output_schema = types.ListCasesForContactOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/list-cases-for-contact",
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = types.ListDomainsInput,
        output_schema = types.ListDomainsOutput,
        http_method = "POST",
        http_path = "/domains-list",
    }, options)
end

function Client:listFieldOptions(input, options)
    return self:invokeOperation(input, {
        name = "ListFieldOptions",
        input_schema = types.ListFieldOptionsInput,
        output_schema = types.ListFieldOptionsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/fields/{fieldId}/options-list",
    }, options)
end

function Client:listFields(input, options)
    return self:invokeOperation(input, {
        name = "ListFields",
        input_schema = types.ListFieldsInput,
        output_schema = types.ListFieldsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/fields-list",
    }, options)
end

function Client:listLayouts(input, options)
    return self:invokeOperation(input, {
        name = "ListLayouts",
        input_schema = types.ListLayoutsInput,
        output_schema = types.ListLayoutsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/layouts-list",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{arn}",
    }, options)
end

function Client:listTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplates",
        input_schema = types.ListTemplatesInput,
        output_schema = types.ListTemplatesOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/templates-list",
    }, options)
end

function Client:putCaseEventConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutCaseEventConfiguration",
        input_schema = types.PutCaseEventConfigurationInput,
        output_schema = types.PutCaseEventConfigurationOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/case-event-configuration",
    }, options)
end

function Client:searchAllRelatedItems(input, options)
    return self:invokeOperation(input, {
        name = "SearchAllRelatedItems",
        input_schema = types.SearchAllRelatedItemsInput,
        output_schema = types.SearchAllRelatedItemsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/related-items-search",
    }, options)
end

function Client:searchCases(input, options)
    return self:invokeOperation(input, {
        name = "SearchCases",
        input_schema = types.SearchCasesInput,
        output_schema = types.SearchCasesOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases-search",
    }, options)
end

function Client:searchRelatedItems(input, options)
    return self:invokeOperation(input, {
        name = "SearchRelatedItems",
        input_schema = types.SearchRelatedItemsInput,
        output_schema = types.SearchRelatedItemsOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/cases/{caseId}/related-items-search",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{arn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{arn}",
    }, options)
end

function Client:updateCase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCase",
        input_schema = types.UpdateCaseInput,
        output_schema = types.UpdateCaseOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/cases/{caseId}",
    }, options)
end

function Client:updateCaseRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCaseRule",
        input_schema = types.UpdateCaseRuleInput,
        output_schema = types.UpdateCaseRuleOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/case-rules/{caseRuleId}",
    }, options)
end

function Client:updateField(input, options)
    return self:invokeOperation(input, {
        name = "UpdateField",
        input_schema = types.UpdateFieldInput,
        output_schema = types.UpdateFieldOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/fields/{fieldId}",
    }, options)
end

function Client:updateLayout(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLayout",
        input_schema = types.UpdateLayoutInput,
        output_schema = types.UpdateLayoutOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/layouts/{layoutId}",
    }, options)
end

function Client:updateRelatedItem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRelatedItem",
        input_schema = types.UpdateRelatedItemInput,
        output_schema = types.UpdateRelatedItemOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/cases/{caseId}/related-items/{relatedItemId}",
    }, options)
end

function Client:updateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplate",
        input_schema = types.UpdateTemplateInput,
        output_schema = types.UpdateTemplateOutput,
        http_method = "PUT",
        http_path = "/domains/{domainId}/templates/{templateId}",
    }, options)
end

return M
