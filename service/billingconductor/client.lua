local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("billingconductor.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("billingconductor.types")

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
        input_schema = types.AssociateAccountsInput,
        output_schema = types.AssociateAccountsOutput,
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
        input_schema = types.AssociatePricingRulesInput,
        output_schema = types.AssociatePricingRulesOutput,
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
        input_schema = types.BatchAssociateResourcesToCustomLineItemInput,
        output_schema = types.BatchAssociateResourcesToCustomLineItemOutput,
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
        input_schema = types.BatchDisassociateResourcesFromCustomLineItemInput,
        output_schema = types.BatchDisassociateResourcesFromCustomLineItemOutput,
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
        input_schema = types.CreateBillingGroupInput,
        output_schema = types.CreateBillingGroupOutput,
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
        input_schema = types.CreateCustomLineItemInput,
        output_schema = types.CreateCustomLineItemOutput,
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
        input_schema = types.CreatePricingPlanInput,
        output_schema = types.CreatePricingPlanOutput,
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
        input_schema = types.CreatePricingRuleInput,
        output_schema = types.CreatePricingRuleOutput,
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
        input_schema = types.DeleteBillingGroupInput,
        output_schema = types.DeleteBillingGroupOutput,
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
        input_schema = types.DeleteCustomLineItemInput,
        output_schema = types.DeleteCustomLineItemOutput,
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
        input_schema = types.DeletePricingPlanInput,
        output_schema = types.DeletePricingPlanOutput,
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
        input_schema = types.DeletePricingRuleInput,
        output_schema = types.DeletePricingRuleOutput,
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
        input_schema = types.DisassociateAccountsInput,
        output_schema = types.DisassociateAccountsOutput,
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
        input_schema = types.DisassociatePricingRulesInput,
        output_schema = types.DisassociatePricingRulesOutput,
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
        input_schema = types.GetBillingGroupCostReportInput,
        output_schema = types.GetBillingGroupCostReportOutput,
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
        input_schema = types.ListAccountAssociationsInput,
        output_schema = types.ListAccountAssociationsOutput,
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
        input_schema = types.ListBillingGroupCostReportsInput,
        output_schema = types.ListBillingGroupCostReportsOutput,
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
        input_schema = types.ListBillingGroupsInput,
        output_schema = types.ListBillingGroupsOutput,
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
        input_schema = types.ListCustomLineItemsInput,
        output_schema = types.ListCustomLineItemsOutput,
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
        input_schema = types.ListCustomLineItemVersionsInput,
        output_schema = types.ListCustomLineItemVersionsOutput,
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
        input_schema = types.ListPricingPlansInput,
        output_schema = types.ListPricingPlansOutput,
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
        input_schema = types.ListPricingPlansAssociatedWithPricingRuleInput,
        output_schema = types.ListPricingPlansAssociatedWithPricingRuleOutput,
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
        input_schema = types.ListPricingRulesInput,
        output_schema = types.ListPricingRulesOutput,
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
        input_schema = types.ListPricingRulesAssociatedToPricingPlanInput,
        output_schema = types.ListPricingRulesAssociatedToPricingPlanOutput,
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
        input_schema = types.ListResourcesAssociatedToCustomLineItemInput,
        output_schema = types.ListResourcesAssociatedToCustomLineItemOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateBillingGroupInput,
        output_schema = types.UpdateBillingGroupOutput,
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
        input_schema = types.UpdateCustomLineItemInput,
        output_schema = types.UpdateCustomLineItemOutput,
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
        input_schema = types.UpdatePricingPlanInput,
        output_schema = types.UpdatePricingPlanOutput,
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
        input_schema = types.UpdatePricingRuleInput,
        output_schema = types.UpdatePricingRuleOutput,
        http_method = "PUT",
        http_path = "/update-pricing-rule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
