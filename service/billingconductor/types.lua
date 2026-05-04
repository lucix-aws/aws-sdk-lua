local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccountAssociationsListElement = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        BillingGroupArn = {
            type = "string",
        },
        AccountName = {
            type = "string",
        },
        AccountEmail = {
            type = "string",
        },
    },
}

M.AccountGrouping = {
    type = "structure",
    members = {
        LinkedAccountIds = {
            type = "list",
            member_type = "string",
        },
        AutoAssociate = {
            type = "boolean",
        },
        ResponsibilityTransferArn = {
            type = "string",
        },
    },
}

M.AssociateAccountsInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAccountsOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ConflictExceptionReason = {
    RESOURCE_NAME_CONFLICT = "RESOURCE_NAME_CONFLICT",
    PRICING_RULE_IN_PRICING_PLAN_CONFLICT = "PRICING_RULE_IN_PRICING_PLAN_CONFLICT",
    PRICING_PLAN_ATTACHED_TO_BILLING_GROUP_DELETE_CONFLICT = "PRICING_PLAN_ATTACHED_TO_BILLING_GROUP_DELETE_CONFLICT",
    PRICING_RULE_ATTACHED_TO_PRICING_PLAN_DELETE_CONFLICT = "PRICING_RULE_ATTACHED_TO_PRICING_PLAN_DELETE_CONFLICT",
    WRITE_CONFLICT_RETRY = "WRITE_CONFLICT_RETRY",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        LimitCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
    PRIMARY_NOT_ASSOCIATED = "PRIMARY_NOT_ASSOCIATED",
    PRIMARY_CANNOT_DISASSOCIATE = "PRIMARY_CANNOT_DISASSOCIATE",
    ACCOUNTS_NOT_ASSOCIATED = "ACCOUNTS_NOT_ASSOCIATED",
    ACCOUNTS_ALREADY_ASSOCIATED = "ACCOUNTS_ALREADY_ASSOCIATED",
    ILLEGAL_PRIMARY_ACCOUNT = "ILLEGAL_PRIMARY_ACCOUNT",
    ILLEGAL_ACCOUNTS = "ILLEGAL_ACCOUNTS",
    MISMATCHED_BILLINGGROUP_ARN = "MISMATCHED_BILLINGGROUP_ARN",
    MISSING_BILLINGGROUP = "MISSING_BILLINGGROUP",
    MISMATCHED_CUSTOMLINEITEM_ARN = "MISMATCHED_CUSTOMLINEITEM_ARN",
    ILLEGAL_BILLING_PERIOD = "ILLEGAL_BILLING_PERIOD",
    ILLEGAL_BILLING_PERIOD_RANGE = "ILLEGAL_BILLING_PERIOD_RANGE",
    TOO_MANY_ACCOUNTS_IN_REQUEST = "TOO_MANY_ACCOUNTS_IN_REQUEST",
    DUPLICATE_ACCOUNT = "DUPLICATE_ACCOUNT",
    INVALID_BILLING_GROUP_STATUS = "INVALID_BILLING_GROUP_STATUS",
    MISMATCHED_PRICINGPLAN_ARN = "MISMATCHED_PRICINGPLAN_ARN",
    MISSING_PRICINGPLAN = "MISSING_PRICINGPLAN",
    MISMATCHED_PRICINGRULE_ARN = "MISMATCHED_PRICINGRULE_ARN",
    DUPLICATE_PRICINGRULE_ARNS = "DUPLICATE_PRICINGRULE_ARNS",
    MISSING_COSTCATEGORY = "MISSING_COSTCATEGORY",
    ILLEGAL_EXPRESSION = "ILLEGAL_EXPRESSION",
    ILLEGAL_SCOPE = "ILLEGAL_SCOPE",
    ILLEGAL_SERVICE = "ILLEGAL_SERVICE",
    PRICINGRULES_NOT_EXIST = "PRICINGRULES_NOT_EXIST",
    PRICINGRULES_ALREADY_ASSOCIATED = "PRICINGRULES_ALREADY_ASSOCIATED",
    PRICINGRULES_NOT_ASSOCIATED = "PRICINGRULES_NOT_ASSOCIATED",
    INVALID_TIME_RANGE = "INVALID_TIME_RANGE",
    INVALID_BILLINGVIEW_ARN = "INVALID_BILLINGVIEW_ARN",
    MISMATCHED_BILLINGVIEW_ARN = "MISMATCHED_BILLINGVIEW_ARN",
    ILLEGAL_CUSTOMLINEITEM = "ILLEGAL_CUSTOMLINEITEM",
    MISSING_CUSTOMLINEITEM = "MISSING_CUSTOMLINEITEM",
    ILLEGAL_CUSTOMLINEITEM_UPDATE = "ILLEGAL_CUSTOMLINEITEM_UPDATE",
    TOO_MANY_CUSTOMLINEITEMS_IN_REQUEST = "TOO_MANY_CUSTOMLINEITEMS_IN_REQUEST",
    ILLEGAL_CHARGE_DETAILS = "ILLEGAL_CHARGE_DETAILS",
    ILLEGAL_UPDATE_CHARGE_DETAILS = "ILLEGAL_UPDATE_CHARGE_DETAILS",
    INVALID_ARN = "INVALID_ARN",
    ILLEGAL_RESOURCE_ARNS = "ILLEGAL_RESOURCE_ARNS",
    ILLEGAL_CUSTOMLINEITEM_MODIFICATION = "ILLEGAL_CUSTOMLINEITEM_MODIFICATION",
    MISSING_LINKED_ACCOUNT_IDS = "MISSING_LINKED_ACCOUNT_IDS",
    MULTIPLE_LINKED_ACCOUNT_IDS = "MULTIPLE_LINKED_ACCOUNT_IDS",
    MISSING_PRICING_PLAN_ARN = "MISSING_PRICING_PLAN_ARN",
    MULTIPLE_PRICING_PLAN_ARN = "MULTIPLE_PRICING_PLAN_ARN",
    ILLEGAL_CHILD_ASSOCIATE_RESOURCE = "ILLEGAL_CHILD_ASSOCIATE_RESOURCE",
    CUSTOM_LINE_ITEM_ASSOCIATION_EXISTS = "CUSTOM_LINE_ITEM_ASSOCIATION_EXISTS",
    INVALID_BILLING_GROUP = "INVALID_BILLING_GROUP",
    INVALID_BILLING_PERIOD_FOR_OPERATION = "INVALID_BILLING_PERIOD_FOR_OPERATION",
    ILLEGAL_BILLING_ENTITY = "ILLEGAL_BILLING_ENTITY",
    ILLEGAL_MODIFIER_PERCENTAGE = "ILLEGAL_MODIFIER_PERCENTAGE",
    ILLEGAL_TYPE = "ILLEGAL_TYPE",
    ILLEGAL_BILLING_GROUP_TYPE = "ILLEGAL_BILLING_GROUP_TYPE",
    ILLEGAL_BILLING_GROUP_PRICING_PLAN = "ILLEGAL_BILLING_GROUP_PRICING_PLAN",
    ILLEGAL_ENDED_BILLINGGROUP = "ILLEGAL_ENDED_BILLINGGROUP",
    ILLEGAL_TIERING_INPUT = "ILLEGAL_TIERING_INPUT",
    ILLEGAL_OPERATION = "ILLEGAL_OPERATION",
    ILLEGAL_USAGE_TYPE = "ILLEGAL_USAGE_TYPE",
    INVALID_SKU_COMBO = "INVALID_SKU_COMBO",
    INVALID_FILTER = "INVALID_FILTER",
    TOO_MANY_AUTO_ASSOCIATE_BILLING_GROUPS = "TOO_MANY_AUTO_ASSOCIATE_BILLING_GROUPS",
    CANNOT_DELETE_AUTO_ASSOCIATE_BILLING_GROUP = "CANNOT_DELETE_AUTO_ASSOCIATE_BILLING_GROUP",
    ILLEGAL_ACCOUNT_ID = "ILLEGAL_ACCOUNT_ID",
    BILLING_GROUP_ALREADY_EXIST_IN_CURRENT_BILLING_PERIOD = "BILLING_GROUP_ALREADY_EXIST_IN_CURRENT_BILLING_PERIOD",
    ILLEGAL_COMPUTATION_RULE = "ILLEGAL_COMPUTATION_RULE",
    ILLEGAL_LINE_ITEM_FILTER = "ILLEGAL_LINE_ITEM_FILTER",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
        Fields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssociatePricingRulesInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingRuleArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatePricingRulesOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.AssociateResourceErrorReason = {
    INVALID_ARN = "INVALID_ARN",
    SERVICE_LIMIT_EXCEEDED = "SERVICE_LIMIT_EXCEEDED",
    ILLEGAL_CUSTOMLINEITEM = "ILLEGAL_CUSTOMLINEITEM",
    INTERNAL_SERVER_EXCEPTION = "INTERNAL_SERVER_EXCEPTION",
    INVALID_BILLING_PERIOD_RANGE = "INVALID_BILLING_PERIOD_RANGE",
}

M.AssociateResourceError = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.AssociateResourceResponseElement = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Error = {
            type = "structure",
        },
    },
}

M.Attribute = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ComputationPreference = {
    type = "structure",
    members = {
        PricingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBillingGroupInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountGrouping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ComputationPreference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PrimaryAccountId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateBillingGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeleteBillingGroupInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBillingGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DisassociateAccountsInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateAccountsOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.BillingGroupType = {
    STANDARD = "STANDARD",
    TRANSFER_BILLING = "TRANSFER_BILLING",
}

M.SearchOption = {
    STARTS_WITH = "STARTS_WITH",
}

M.StringSearch = {
    type = "structure",
    members = {
        SearchOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SearchValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BillingGroupStatus = {
    ACTIVE = "ACTIVE",
    PRIMARY_ACCOUNT_MISSING = "PRIMARY_ACCOUNT_MISSING",
    PENDING = "PENDING",
}

M.ListBillingGroupsFilter = {
    type = "structure",
    members = {
        Arns = {
            type = "list",
            member_type = "string",
        },
        PricingPlan = {
            type = "string",
        },
        Statuses = {
            type = "list",
            member_type = "string",
        },
        AutoAssociate = {
            type = "boolean",
        },
        PrimaryAccountIds = {
            type = "list",
            member_type = "string",
        },
        BillingGroupTypes = {
            type = "list",
            member_type = "string",
        },
        Names = {
            type = "list",
            member_type = "structure",
        },
        ResponsibilityTransferArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListBillingGroupsInput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
    },
}

M.ListBillingGroupAccountGrouping = {
    type = "structure",
    members = {
        AutoAssociate = {
            type = "boolean",
        },
        ResponsibilityTransferArn = {
            type = "string",
        },
    },
}

M.BillingGroupListElement = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        PrimaryAccountId = {
            type = "string",
        },
        ComputationPreference = {
            type = "structure",
        },
        Size = {
            type = "number",
        },
        CreationTime = {
            type = "number",
        },
        LastModifiedTime = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        AccountGrouping = {
            type = "structure",
        },
        BillingGroupType = {
            type = "string",
        },
    },
}

M.ListBillingGroupsOutput = {
    type = "structure",
    members = {
        BillingGroups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateBillingGroupAccountGrouping = {
    type = "structure",
    members = {
        AutoAssociate = {
            type = "boolean",
        },
        ResponsibilityTransferArn = {
            type = "string",
        },
    },
}

M.UpdateBillingGroupInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ComputationPreference = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        AccountGrouping = {
            type = "structure",
        },
    },
}

M.UpdateBillingGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        PrimaryAccountId = {
            type = "string",
        },
        PricingPlanArn = {
            type = "string",
        },
        Size = {
            type = "number",
        },
        LastModifiedTime = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        AccountGrouping = {
            type = "structure",
        },
    },
}

M.CustomLineItemBillingPeriodRange = {
    type = "structure",
    members = {
        InclusiveStartBillingPeriod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExclusiveEndBillingPeriod = {
            type = "string",
        },
    },
}

M.BatchAssociateResourcesToCustomLineItemInput = {
    type = "structure",
    members = {
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        BillingPeriodRange = {
            type = "structure",
        },
    },
}

M.BatchAssociateResourcesToCustomLineItemOutput = {
    type = "structure",
    members = {
        SuccessfullyAssociatedResources = {
            type = "list",
            member_type = "structure",
        },
        FailedAssociatedResources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDisassociateResourcesFromCustomLineItemInput = {
    type = "structure",
    members = {
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        BillingPeriodRange = {
            type = "structure",
        },
    },
}

M.DisassociateResourceResponseElement = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Error = {
            type = "structure",
        },
    },
}

M.BatchDisassociateResourcesFromCustomLineItemOutput = {
    type = "structure",
    members = {
        SuccessfullyDisassociatedResources = {
            type = "list",
            member_type = "structure",
        },
        FailedDisassociatedResources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CustomLineItemFlatChargeDetails = {
    type = "structure",
    members = {
        ChargeValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.LineItemFilterAttributeName = {
    LINE_ITEM_TYPE = "LINE_ITEM_TYPE",
    SERVICE = "SERVICE",
}

M.MatchOption = {
    NOT_EQUAL = "NOT_EQUAL",
    EQUAL = "EQUAL",
}

M.LineItemFilterValue = {
    SAVINGS_PLAN_NEGATION = "SAVINGS_PLAN_NEGATION",
}

M.LineItemFilter = {
    type = "structure",
    members = {
        Attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MatchOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
        },
        AttributeValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CustomLineItemPercentageChargeDetails = {
    type = "structure",
    members = {
        PercentageValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        AssociatedValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CustomLineItemType = {
    CREDIT = "CREDIT",
    FEE = "FEE",
}

M.CustomLineItemChargeDetails = {
    type = "structure",
    members = {
        Flat = {
            type = "structure",
        },
        Percentage = {
            type = "structure",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LineItemFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ComputationRuleEnum = {
    ITEMIZED = "ITEMIZED",
    CONSOLIDATED = "CONSOLIDATED",
}

M.PresentationObject = {
    type = "structure",
    members = {
        Service = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomLineItemInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BillingGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BillingPeriodRange = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ChargeDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
        },
        ComputationRule = {
            type = "string",
        },
        PresentationDetails = {
            type = "structure",
        },
    },
}

M.CreateCustomLineItemOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeleteCustomLineItemInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BillingPeriodRange = {
            type = "structure",
        },
    },
}

M.DeleteCustomLineItemOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ListCustomLineItemsFilter = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member_type = "string",
        },
        BillingGroups = {
            type = "list",
            member_type = "string",
        },
        Arns = {
            type = "list",
            member_type = "string",
        },
        AccountIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListCustomLineItemsInput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
    },
}

M.ListCustomLineItemFlatChargeDetails = {
    type = "structure",
    members = {
        ChargeValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCustomLineItemPercentageChargeDetails = {
    type = "structure",
    members = {
        PercentageValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCustomLineItemChargeDetails = {
    type = "structure",
    members = {
        Flat = {
            type = "structure",
        },
        Percentage = {
            type = "structure",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LineItemFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CurrencyCode = {
    USD = "USD",
    CNY = "CNY",
}

M.CustomLineItemListElement = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ChargeDetails = {
            type = "structure",
        },
        CurrencyCode = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ProductCode = {
            type = "string",
        },
        BillingGroupArn = {
            type = "string",
        },
        CreationTime = {
            type = "number",
        },
        LastModifiedTime = {
            type = "number",
        },
        AssociationSize = {
            type = "number",
        },
        AccountId = {
            type = "string",
        },
        ComputationRule = {
            type = "string",
        },
        PresentationDetails = {
            type = "structure",
        },
    },
}

M.ListCustomLineItemsOutput = {
    type = "structure",
    members = {
        CustomLineItems = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomLineItemVersionsBillingPeriodRangeFilter = {
    type = "structure",
    members = {
        StartBillingPeriod = {
            type = "string",
        },
        EndBillingPeriod = {
            type = "string",
        },
    },
}

M.ListCustomLineItemVersionsFilter = {
    type = "structure",
    members = {
        BillingPeriodRange = {
            type = "structure",
        },
    },
}

M.ListCustomLineItemVersionsInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
    },
}

M.CustomLineItemVersionListElement = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ChargeDetails = {
            type = "structure",
        },
        CurrencyCode = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ProductCode = {
            type = "string",
        },
        BillingGroupArn = {
            type = "string",
        },
        CreationTime = {
            type = "number",
        },
        LastModifiedTime = {
            type = "number",
        },
        AssociationSize = {
            type = "number",
        },
        StartBillingPeriod = {
            type = "string",
        },
        EndBillingPeriod = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        StartTime = {
            type = "number",
        },
        AccountId = {
            type = "string",
        },
        ComputationRule = {
            type = "string",
        },
        PresentationDetails = {
            type = "structure",
        },
    },
}

M.ListCustomLineItemVersionsOutput = {
    type = "structure",
    members = {
        CustomLineItemVersions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CustomLineItemRelationship = {
    PARENT = "PARENT",
    CHILD = "CHILD",
}

M.ListResourcesAssociatedToCustomLineItemFilter = {
    type = "structure",
    members = {
        Relationship = {
            type = "string",
        },
    },
}

M.ListResourcesAssociatedToCustomLineItemInput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
    },
}

M.ListResourcesAssociatedToCustomLineItemResponseElement = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Relationship = {
            type = "string",
        },
        EndBillingPeriod = {
            type = "string",
        },
    },
}

M.ListResourcesAssociatedToCustomLineItemOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AssociatedResources = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateCustomLineItemFlatChargeDetails = {
    type = "structure",
    members = {
        ChargeValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCustomLineItemPercentageChargeDetails = {
    type = "structure",
    members = {
        PercentageValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCustomLineItemChargeDetails = {
    type = "structure",
    members = {
        Flat = {
            type = "structure",
        },
        Percentage = {
            type = "structure",
        },
        LineItemFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateCustomLineItemInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ChargeDetails = {
            type = "structure",
        },
        BillingPeriodRange = {
            type = "structure",
        },
    },
}

M.UpdateCustomLineItemOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        BillingGroupArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ChargeDetails = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "number",
        },
        AssociationSize = {
            type = "number",
        },
    },
}

M.BillingPeriodRange = {
    type = "structure",
    members = {
        InclusiveStartBillingPeriod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExclusiveEndBillingPeriod = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GroupByAttributeName = {
    PRODUCT_NAME = "PRODUCT_NAME",
    BILLING_PERIOD = "BILLING_PERIOD",
}

M.GetBillingGroupCostReportInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BillingPeriodRange = {
            type = "structure",
        },
        GroupBy = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BillingGroupCostReportResultElement = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AWSCost = {
            type = "string",
        },
        ProformaCost = {
            type = "string",
        },
        Margin = {
            type = "string",
        },
        MarginPercentage = {
            type = "string",
        },
        Currency = {
            type = "string",
        },
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetBillingGroupCostReportOutput = {
    type = "structure",
    members = {
        BillingGroupCostReportResults = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountAssociationsFilter = {
    type = "structure",
    members = {
        Association = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        AccountIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListAccountAssociationsInput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountAssociationsOutput = {
    type = "structure",
    members = {
        LinkedAccounts = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBillingGroupCostReportsFilter = {
    type = "structure",
    members = {
        BillingGroupArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListBillingGroupCostReportsInput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
    },
}

M.BillingGroupCostReportElement = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AWSCost = {
            type = "string",
        },
        ProformaCost = {
            type = "string",
        },
        Margin = {
            type = "string",
        },
        MarginPercentage = {
            type = "string",
        },
        Currency = {
            type = "string",
        },
    },
}

M.ListBillingGroupCostReportsOutput = {
    type = "structure",
    members = {
        BillingGroupCostReports = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreatePricingPlanInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        PricingRuleArns = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreatePricingPlanOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeletePricingPlanInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePricingPlanOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DisassociatePricingRulesInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingRuleArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociatePricingRulesOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ListPricingPlansFilter = {
    type = "structure",
    members = {
        Arns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListPricingPlansInput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PricingPlanListElement = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Size = {
            type = "number",
        },
        CreationTime = {
            type = "number",
        },
        LastModifiedTime = {
            type = "number",
        },
    },
}

M.ListPricingPlansOutput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        PricingPlans = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPricingPlansAssociatedWithPricingRuleInput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        PricingRuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPricingPlansAssociatedWithPricingRuleOutput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        PricingRuleArn = {
            type = "string",
        },
        PricingPlanArns = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdatePricingPlanInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdatePricingPlanOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Size = {
            type = "number",
        },
        LastModifiedTime = {
            type = "number",
        },
    },
}

M.PricingRuleScope = {
    GLOBAL = "GLOBAL",
    SERVICE = "SERVICE",
    BILLING_ENTITY = "BILLING_ENTITY",
    SKU = "SKU",
}

M.CreateFreeTierConfig = {
    type = "structure",
    members = {
        Activated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTieringInput = {
    type = "structure",
    members = {
        FreeTier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PricingRuleType = {
    MARKUP = "MARKUP",
    DISCOUNT = "DISCOUNT",
    TIERING = "TIERING",
}

M.CreatePricingRuleInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModifierPercentage = {
            type = "number",
        },
        Service = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        BillingEntity = {
            type = "string",
        },
        Tiering = {
            type = "structure",
        },
        UsageType = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
    },
}

M.CreatePricingRuleOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeletePricingRuleInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePricingRuleOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ListPricingRulesFilter = {
    type = "structure",
    members = {
        Arns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListPricingRulesInput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FreeTierConfig = {
    type = "structure",
    members = {
        Activated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.Tiering = {
    type = "structure",
    members = {
        FreeTier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PricingRuleListElement = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Scope = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ModifierPercentage = {
            type = "number",
        },
        Service = {
            type = "string",
        },
        AssociatedPricingPlanCount = {
            type = "number",
        },
        CreationTime = {
            type = "number",
        },
        LastModifiedTime = {
            type = "number",
        },
        BillingEntity = {
            type = "string",
        },
        Tiering = {
            type = "structure",
        },
        UsageType = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
    },
}

M.ListPricingRulesOutput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        PricingRules = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPricingRulesAssociatedToPricingPlanInput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        PricingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPricingRulesAssociatedToPricingPlanOutput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
        },
        PricingPlanArn = {
            type = "string",
        },
        PricingRuleArns = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateFreeTierConfig = {
    type = "structure",
    members = {
        Activated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTieringInput = {
    type = "structure",
    members = {
        FreeTier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePricingRuleInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ModifierPercentage = {
            type = "number",
        },
        Tiering = {
            type = "structure",
        },
    },
}

M.UpdatePricingRuleOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Scope = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ModifierPercentage = {
            type = "number",
        },
        Service = {
            type = "string",
        },
        AssociatedPricingPlanCount = {
            type = "number",
        },
        LastModifiedTime = {
            type = "number",
        },
        BillingEntity = {
            type = "string",
        },
        Tiering = {
            type = "structure",
        },
        UsageType = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
