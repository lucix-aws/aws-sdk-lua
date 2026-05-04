local types = require("billingconductor.types")

local record Client
    associateAccounts: function(Client, types.AssociateAccountsInput): types.AssociateAccountsOutput, table
    associatePricingRules: function(Client, types.AssociatePricingRulesInput): types.AssociatePricingRulesOutput, table
    batchAssociateResourcesToCustomLineItem: function(Client, types.BatchAssociateResourcesToCustomLineItemInput): types.BatchAssociateResourcesToCustomLineItemOutput, table
    batchDisassociateResourcesFromCustomLineItem: function(Client, types.BatchDisassociateResourcesFromCustomLineItemInput): types.BatchDisassociateResourcesFromCustomLineItemOutput, table
    createBillingGroup: function(Client, types.CreateBillingGroupInput): types.CreateBillingGroupOutput, table
    createCustomLineItem: function(Client, types.CreateCustomLineItemInput): types.CreateCustomLineItemOutput, table
    createPricingPlan: function(Client, types.CreatePricingPlanInput): types.CreatePricingPlanOutput, table
    createPricingRule: function(Client, types.CreatePricingRuleInput): types.CreatePricingRuleOutput, table
    deleteBillingGroup: function(Client, types.DeleteBillingGroupInput): types.DeleteBillingGroupOutput, table
    deleteCustomLineItem: function(Client, types.DeleteCustomLineItemInput): types.DeleteCustomLineItemOutput, table
    deletePricingPlan: function(Client, types.DeletePricingPlanInput): types.DeletePricingPlanOutput, table
    deletePricingRule: function(Client, types.DeletePricingRuleInput): types.DeletePricingRuleOutput, table
    disassociateAccounts: function(Client, types.DisassociateAccountsInput): types.DisassociateAccountsOutput, table
    disassociatePricingRules: function(Client, types.DisassociatePricingRulesInput): types.DisassociatePricingRulesOutput, table
    getBillingGroupCostReport: function(Client, types.GetBillingGroupCostReportInput): types.GetBillingGroupCostReportOutput, table
    listAccountAssociations: function(Client, types.ListAccountAssociationsInput): types.ListAccountAssociationsOutput, table
    listBillingGroupCostReports: function(Client, types.ListBillingGroupCostReportsInput): types.ListBillingGroupCostReportsOutput, table
    listBillingGroups: function(Client, types.ListBillingGroupsInput): types.ListBillingGroupsOutput, table
    listCustomLineItems: function(Client, types.ListCustomLineItemsInput): types.ListCustomLineItemsOutput, table
    listCustomLineItemVersions: function(Client, types.ListCustomLineItemVersionsInput): types.ListCustomLineItemVersionsOutput, table
    listPricingPlans: function(Client, types.ListPricingPlansInput): types.ListPricingPlansOutput, table
    listPricingPlansAssociatedWithPricingRule: function(Client, types.ListPricingPlansAssociatedWithPricingRuleInput): types.ListPricingPlansAssociatedWithPricingRuleOutput, table
    listPricingRules: function(Client, types.ListPricingRulesInput): types.ListPricingRulesOutput, table
    listPricingRulesAssociatedToPricingPlan: function(Client, types.ListPricingRulesAssociatedToPricingPlanInput): types.ListPricingRulesAssociatedToPricingPlanOutput, table
    listResourcesAssociatedToCustomLineItem: function(Client, types.ListResourcesAssociatedToCustomLineItemInput): types.ListResourcesAssociatedToCustomLineItemOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateBillingGroup: function(Client, types.UpdateBillingGroupInput): types.UpdateBillingGroupOutput, table
    updateCustomLineItem: function(Client, types.UpdateCustomLineItemInput): types.UpdateCustomLineItemOutput, table
    updatePricingPlan: function(Client, types.UpdatePricingPlanInput): types.UpdatePricingPlanOutput, table
    updatePricingRule: function(Client, types.UpdatePricingRuleInput): types.UpdatePricingRuleOutput, table
end

local record M
    new: function(table): Client
end

return M
