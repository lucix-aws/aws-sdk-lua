local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getBillingGroupCostReport.
function M.pages_get_billing_group_cost_report(client, input)
    return paginator.pages(client, "getBillingGroupCostReport", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "BillingGroupCostReportResults",
    })
end

--- Returns an item iterator for getBillingGroupCostReport.
function M.items_get_billing_group_cost_report(client, input)
    return paginator.items(client, "getBillingGroupCostReport", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "BillingGroupCostReportResults",
    })
end

--- Returns a page iterator for listAccountAssociations.
function M.pages_list_account_associations(client, input)
    return paginator.pages(client, "listAccountAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LinkedAccounts",
    })
end

--- Returns an item iterator for listAccountAssociations.
function M.items_list_account_associations(client, input)
    return paginator.items(client, "listAccountAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LinkedAccounts",
    })
end

--- Returns a page iterator for listBillingGroupCostReports.
function M.pages_list_billing_group_cost_reports(client, input)
    return paginator.pages(client, "listBillingGroupCostReports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "BillingGroupCostReports",
    })
end

--- Returns an item iterator for listBillingGroupCostReports.
function M.items_list_billing_group_cost_reports(client, input)
    return paginator.items(client, "listBillingGroupCostReports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "BillingGroupCostReports",
    })
end

--- Returns a page iterator for listBillingGroups.
function M.pages_list_billing_groups(client, input)
    return paginator.pages(client, "listBillingGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "BillingGroups",
    })
end

--- Returns an item iterator for listBillingGroups.
function M.items_list_billing_groups(client, input)
    return paginator.items(client, "listBillingGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "BillingGroups",
    })
end

--- Returns a page iterator for listCustomLineItemVersions.
function M.pages_list_custom_line_item_versions(client, input)
    return paginator.pages(client, "listCustomLineItemVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomLineItemVersions",
    })
end

--- Returns an item iterator for listCustomLineItemVersions.
function M.items_list_custom_line_item_versions(client, input)
    return paginator.items(client, "listCustomLineItemVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomLineItemVersions",
    })
end

--- Returns a page iterator for listCustomLineItems.
function M.pages_list_custom_line_items(client, input)
    return paginator.pages(client, "listCustomLineItems", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomLineItems",
    })
end

--- Returns an item iterator for listCustomLineItems.
function M.items_list_custom_line_items(client, input)
    return paginator.items(client, "listCustomLineItems", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomLineItems",
    })
end

--- Returns a page iterator for listPricingPlans.
function M.pages_list_pricing_plans(client, input)
    return paginator.pages(client, "listPricingPlans", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PricingPlans",
    })
end

--- Returns an item iterator for listPricingPlans.
function M.items_list_pricing_plans(client, input)
    return paginator.items(client, "listPricingPlans", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PricingPlans",
    })
end

--- Returns a page iterator for listPricingPlansAssociatedWithPricingRule.
function M.pages_list_pricing_plans_associated_with_pricing_rule(client, input)
    return paginator.pages(client, "listPricingPlansAssociatedWithPricingRule", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PricingPlanArns",
    })
end

--- Returns an item iterator for listPricingPlansAssociatedWithPricingRule.
function M.items_list_pricing_plans_associated_with_pricing_rule(client, input)
    return paginator.items(client, "listPricingPlansAssociatedWithPricingRule", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PricingPlanArns",
    })
end

--- Returns a page iterator for listPricingRules.
function M.pages_list_pricing_rules(client, input)
    return paginator.pages(client, "listPricingRules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PricingRules",
    })
end

--- Returns an item iterator for listPricingRules.
function M.items_list_pricing_rules(client, input)
    return paginator.items(client, "listPricingRules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PricingRules",
    })
end

--- Returns a page iterator for listPricingRulesAssociatedToPricingPlan.
function M.pages_list_pricing_rules_associated_to_pricing_plan(client, input)
    return paginator.pages(client, "listPricingRulesAssociatedToPricingPlan", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PricingRuleArns",
    })
end

--- Returns an item iterator for listPricingRulesAssociatedToPricingPlan.
function M.items_list_pricing_rules_associated_to_pricing_plan(client, input)
    return paginator.items(client, "listPricingRulesAssociatedToPricingPlan", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PricingRuleArns",
    })
end

--- Returns a page iterator for listResourcesAssociatedToCustomLineItem.
function M.pages_list_resources_associated_to_custom_line_item(client, input)
    return paginator.pages(client, "listResourcesAssociatedToCustomLineItem", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AssociatedResources",
    })
end

--- Returns an item iterator for listResourcesAssociatedToCustomLineItem.
function M.items_list_resources_associated_to_custom_line_item(client, input)
    return paginator.items(client, "listResourcesAssociatedToCustomLineItem", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AssociatedResources",
    })
end

return M
