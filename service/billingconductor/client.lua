local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("billingconductor.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("billingconductor.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBillingConductor"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "billingconductor", signing_region = cfg.region } }
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
        http_path = "/associate-accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associatePricingRules(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePricingRules",
        input_schema = schemas.AssociatePricingRulesInput,
        output_schema = schemas.AssociatePricingRulesOutput,
        http_method = "PUT",
        http_path = "/associate-pricing-rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchAssociateResourcesToCustomLineItem(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateResourcesToCustomLineItem",
        input_schema = schemas.BatchAssociateResourcesToCustomLineItemInput,
        output_schema = schemas.BatchAssociateResourcesToCustomLineItemOutput,
        http_method = "PUT",
        http_path = "/batch-associate-resources-to-custom-line-item",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDisassociateResourcesFromCustomLineItem(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateResourcesFromCustomLineItem",
        input_schema = schemas.BatchDisassociateResourcesFromCustomLineItemInput,
        output_schema = schemas.BatchDisassociateResourcesFromCustomLineItemOutput,
        http_method = "PUT",
        http_path = "/batch-disassociate-resources-from-custom-line-item",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateBillingGroup",
        input_schema = schemas.CreateBillingGroupInput,
        output_schema = schemas.CreateBillingGroupOutput,
        http_method = "POST",
        http_path = "/create-billing-group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomLineItem(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomLineItem",
        input_schema = schemas.CreateCustomLineItemInput,
        output_schema = schemas.CreateCustomLineItemOutput,
        http_method = "POST",
        http_path = "/create-custom-line-item",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPricingPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreatePricingPlan",
        input_schema = schemas.CreatePricingPlanInput,
        output_schema = schemas.CreatePricingPlanOutput,
        http_method = "POST",
        http_path = "/create-pricing-plan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPricingRule(input, options)
    return self:invokeOperation(input, {
        name = "CreatePricingRule",
        input_schema = schemas.CreatePricingRuleInput,
        output_schema = schemas.CreatePricingRuleOutput,
        http_method = "POST",
        http_path = "/create-pricing-rule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBillingGroup",
        input_schema = schemas.DeleteBillingGroupInput,
        output_schema = schemas.DeleteBillingGroupOutput,
        http_method = "POST",
        http_path = "/delete-billing-group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomLineItem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomLineItem",
        input_schema = schemas.DeleteCustomLineItemInput,
        output_schema = schemas.DeleteCustomLineItemOutput,
        http_method = "POST",
        http_path = "/delete-custom-line-item",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePricingPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeletePricingPlan",
        input_schema = schemas.DeletePricingPlanInput,
        output_schema = schemas.DeletePricingPlanOutput,
        http_method = "POST",
        http_path = "/delete-pricing-plan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePricingRule(input, options)
    return self:invokeOperation(input, {
        name = "DeletePricingRule",
        input_schema = schemas.DeletePricingRuleInput,
        output_schema = schemas.DeletePricingRuleOutput,
        http_method = "POST",
        http_path = "/delete-pricing-rule",
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
        http_path = "/disassociate-accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociatePricingRules(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePricingRules",
        input_schema = schemas.DisassociatePricingRulesInput,
        output_schema = schemas.DisassociatePricingRulesOutput,
        http_method = "PUT",
        http_path = "/disassociate-pricing-rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBillingGroupCostReport(input, options)
    return self:invokeOperation(input, {
        name = "GetBillingGroupCostReport",
        input_schema = schemas.GetBillingGroupCostReportInput,
        output_schema = schemas.GetBillingGroupCostReportOutput,
        http_method = "POST",
        http_path = "/get-billing-group-cost-report",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountAssociations",
        input_schema = schemas.ListAccountAssociationsInput,
        output_schema = schemas.ListAccountAssociationsOutput,
        http_method = "POST",
        http_path = "/list-account-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillingGroupCostReports(input, options)
    return self:invokeOperation(input, {
        name = "ListBillingGroupCostReports",
        input_schema = schemas.ListBillingGroupCostReportsInput,
        output_schema = schemas.ListBillingGroupCostReportsOutput,
        http_method = "POST",
        http_path = "/list-billing-group-cost-reports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillingGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListBillingGroups",
        input_schema = schemas.ListBillingGroupsInput,
        output_schema = schemas.ListBillingGroupsOutput,
        http_method = "POST",
        http_path = "/list-billing-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomLineItems(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomLineItems",
        input_schema = schemas.ListCustomLineItemsInput,
        output_schema = schemas.ListCustomLineItemsOutput,
        http_method = "POST",
        http_path = "/list-custom-line-items",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomLineItemVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomLineItemVersions",
        input_schema = schemas.ListCustomLineItemVersionsInput,
        output_schema = schemas.ListCustomLineItemVersionsOutput,
        http_method = "POST",
        http_path = "/list-custom-line-item-versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPricingPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListPricingPlans",
        input_schema = schemas.ListPricingPlansInput,
        output_schema = schemas.ListPricingPlansOutput,
        http_method = "POST",
        http_path = "/list-pricing-plans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPricingPlansAssociatedWithPricingRule(input, options)
    return self:invokeOperation(input, {
        name = "ListPricingPlansAssociatedWithPricingRule",
        input_schema = schemas.ListPricingPlansAssociatedWithPricingRuleInput,
        output_schema = schemas.ListPricingPlansAssociatedWithPricingRuleOutput,
        http_method = "POST",
        http_path = "/list-pricing-plans-associated-with-pricing-rule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPricingRules(input, options)
    return self:invokeOperation(input, {
        name = "ListPricingRules",
        input_schema = schemas.ListPricingRulesInput,
        output_schema = schemas.ListPricingRulesOutput,
        http_method = "POST",
        http_path = "/list-pricing-rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPricingRulesAssociatedToPricingPlan(input, options)
    return self:invokeOperation(input, {
        name = "ListPricingRulesAssociatedToPricingPlan",
        input_schema = schemas.ListPricingRulesAssociatedToPricingPlanInput,
        output_schema = schemas.ListPricingRulesAssociatedToPricingPlanOutput,
        http_method = "POST",
        http_path = "/list-pricing-rules-associated-to-pricing-plan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourcesAssociatedToCustomLineItem(input, options)
    return self:invokeOperation(input, {
        name = "ListResourcesAssociatedToCustomLineItem",
        input_schema = schemas.ListResourcesAssociatedToCustomLineItemInput,
        output_schema = schemas.ListResourcesAssociatedToCustomLineItemOutput,
        http_method = "POST",
        http_path = "/list-resources-associated-to-custom-line-item",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBillingGroup",
        input_schema = schemas.UpdateBillingGroupInput,
        output_schema = schemas.UpdateBillingGroupOutput,
        http_method = "POST",
        http_path = "/update-billing-group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCustomLineItem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomLineItem",
        input_schema = schemas.UpdateCustomLineItemInput,
        output_schema = schemas.UpdateCustomLineItemOutput,
        http_method = "POST",
        http_path = "/update-custom-line-item",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePricingPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePricingPlan",
        input_schema = schemas.UpdatePricingPlanInput,
        output_schema = schemas.UpdatePricingPlanOutput,
        http_method = "PUT",
        http_path = "/update-pricing-plan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePricingRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePricingRule",
        input_schema = schemas.UpdatePricingRuleInput,
        output_schema = schemas.UpdatePricingRuleOutput,
        http_method = "PUT",
        http_path = "/update-pricing-rule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
