local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "AccountAssociationsListElement",
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
    id = "AccountGrouping",
    members = {
        LinkedAccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                default = {},
            },
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
    id = "AssociateAccountsInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAccountsOutput = {
    type = "structure",
    id = "AssociateAccountsOutput",
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
    id = "ConflictException",
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
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
    id = "ServiceLimitExceededException",
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
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
            member = M.ValidationExceptionField,
        },
    },
}

M.AssociatePricingRulesInput = {
    type = "structure",
    id = "AssociatePricingRulesInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingRuleArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatePricingRulesOutput = {
    type = "structure",
    id = "AssociatePricingRulesOutput",
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
    id = "AssociateResourceError",
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
    id = "AssociateResourceResponseElement",
    members = {
        Arn = {
            type = "string",
        },
        Error = M.AssociateResourceError,
    },
}

M.Attribute = {
    type = "structure",
    id = "Attribute",
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
    id = "ComputationPreference",
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
    id = "CreateBillingGroupInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
                idempotency_token = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountGrouping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountGrouping }),
        ComputationPreference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputationPreference }),
        PrimaryAccountId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateBillingGroupOutput = {
    type = "structure",
    id = "CreateBillingGroupOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeleteBillingGroupInput = {
    type = "structure",
    id = "DeleteBillingGroupInput",
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
    id = "DeleteBillingGroupOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DisassociateAccountsInput = {
    type = "structure",
    id = "DisassociateAccountsInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateAccountsOutput = {
    type = "structure",
    id = "DisassociateAccountsOutput",
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
    id = "StringSearch",
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
    id = "ListBillingGroupsFilter",
    members = {
        Arns = {
            type = "list",
            member = { type = "string" },
        },
        PricingPlan = {
            type = "string",
        },
        Statuses = {
            type = "list",
            member = { type = "string" },
        },
        AutoAssociate = {
            type = "boolean",
        },
        PrimaryAccountIds = {
            type = "list",
            member = { type = "string" },
        },
        BillingGroupTypes = {
            type = "list",
            member = { type = "string" },
        },
        Names = {
            type = "list",
            member = M.StringSearch,
        },
        ResponsibilityTransferArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListBillingGroupsInput = {
    type = "structure",
    id = "ListBillingGroupsInput",
    members = {
        BillingPeriod = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = M.ListBillingGroupsFilter,
    },
}

M.ListBillingGroupAccountGrouping = {
    type = "structure",
    id = "ListBillingGroupAccountGrouping",
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
    id = "BillingGroupListElement",
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
        ComputationPreference = M.ComputationPreference,
        Size = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CreationTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        LastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        AccountGrouping = M.ListBillingGroupAccountGrouping,
        BillingGroupType = {
            type = "string",
        },
    },
}

M.ListBillingGroupsOutput = {
    type = "structure",
    id = "ListBillingGroupsOutput",
    members = {
        BillingGroups = {
            type = "list",
            member = M.BillingGroupListElement,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateBillingGroupAccountGrouping = {
    type = "structure",
    id = "UpdateBillingGroupAccountGrouping",
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
    id = "UpdateBillingGroupInput",
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
        ComputationPreference = M.ComputationPreference,
        Description = {
            type = "string",
        },
        AccountGrouping = M.UpdateBillingGroupAccountGrouping,
    },
}

M.UpdateBillingGroupOutput = {
    type = "structure",
    id = "UpdateBillingGroupOutput",
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
            type = "long",
            traits = {
                default = 0,
            },
        },
        LastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        AccountGrouping = M.UpdateBillingGroupAccountGrouping,
    },
}

M.CustomLineItemBillingPeriodRange = {
    type = "structure",
    id = "CustomLineItemBillingPeriodRange",
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
    id = "BatchAssociateResourcesToCustomLineItemInput",
    members = {
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        BillingPeriodRange = M.CustomLineItemBillingPeriodRange,
    },
}

M.BatchAssociateResourcesToCustomLineItemOutput = {
    type = "structure",
    id = "BatchAssociateResourcesToCustomLineItemOutput",
    members = {
        SuccessfullyAssociatedResources = {
            type = "list",
            member = M.AssociateResourceResponseElement,
        },
        FailedAssociatedResources = {
            type = "list",
            member = M.AssociateResourceResponseElement,
        },
    },
}

M.BatchDisassociateResourcesFromCustomLineItemInput = {
    type = "structure",
    id = "BatchDisassociateResourcesFromCustomLineItemInput",
    members = {
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        BillingPeriodRange = M.CustomLineItemBillingPeriodRange,
    },
}

M.DisassociateResourceResponseElement = {
    type = "structure",
    id = "DisassociateResourceResponseElement",
    members = {
        Arn = {
            type = "string",
        },
        Error = M.AssociateResourceError,
    },
}

M.BatchDisassociateResourcesFromCustomLineItemOutput = {
    type = "structure",
    id = "BatchDisassociateResourcesFromCustomLineItemOutput",
    members = {
        SuccessfullyDisassociatedResources = {
            type = "list",
            member = M.DisassociateResourceResponseElement,
        },
        FailedDisassociatedResources = {
            type = "list",
            member = M.DisassociateResourceResponseElement,
        },
    },
}

M.CustomLineItemFlatChargeDetails = {
    type = "structure",
    id = "CustomLineItemFlatChargeDetails",
    members = {
        ChargeValue = {
            type = "double",
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
    id = "LineItemFilter",
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
            member = { type = "string" },
            traits = {
                default = {},
            },
        },
        AttributeValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CustomLineItemPercentageChargeDetails = {
    type = "structure",
    id = "CustomLineItemPercentageChargeDetails",
    members = {
        PercentageValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
        AssociatedValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CustomLineItemType = {
    CREDIT = "CREDIT",
    FEE = "FEE",
}

M.CustomLineItemChargeDetails = {
    type = "structure",
    id = "CustomLineItemChargeDetails",
    members = {
        Flat = M.CustomLineItemFlatChargeDetails,
        Percentage = M.CustomLineItemPercentageChargeDetails,
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LineItemFilters = {
            type = "list",
            member = M.LineItemFilter,
        },
    },
}

M.ComputationRuleEnum = {
    ITEMIZED = "ITEMIZED",
    CONSOLIDATED = "CONSOLIDATED",
}

M.PresentationObject = {
    type = "structure",
    id = "PresentationObject",
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
    id = "CreateCustomLineItemInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
                idempotency_token = true,
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
        BillingPeriodRange = M.CustomLineItemBillingPeriodRange,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ChargeDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomLineItemChargeDetails }),
        AccountId = {
            type = "string",
        },
        ComputationRule = {
            type = "string",
        },
        PresentationDetails = M.PresentationObject,
    },
}

M.CreateCustomLineItemOutput = {
    type = "structure",
    id = "CreateCustomLineItemOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeleteCustomLineItemInput = {
    type = "structure",
    id = "DeleteCustomLineItemInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BillingPeriodRange = M.CustomLineItemBillingPeriodRange,
    },
}

M.DeleteCustomLineItemOutput = {
    type = "structure",
    id = "DeleteCustomLineItemOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ListCustomLineItemsFilter = {
    type = "structure",
    id = "ListCustomLineItemsFilter",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        BillingGroups = {
            type = "list",
            member = { type = "string" },
        },
        Arns = {
            type = "list",
            member = { type = "string" },
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListCustomLineItemsInput = {
    type = "structure",
    id = "ListCustomLineItemsInput",
    members = {
        BillingPeriod = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = M.ListCustomLineItemsFilter,
    },
}

M.ListCustomLineItemFlatChargeDetails = {
    type = "structure",
    id = "ListCustomLineItemFlatChargeDetails",
    members = {
        ChargeValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCustomLineItemPercentageChargeDetails = {
    type = "structure",
    id = "ListCustomLineItemPercentageChargeDetails",
    members = {
        PercentageValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCustomLineItemChargeDetails = {
    type = "structure",
    id = "ListCustomLineItemChargeDetails",
    members = {
        Flat = M.ListCustomLineItemFlatChargeDetails,
        Percentage = M.ListCustomLineItemPercentageChargeDetails,
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LineItemFilters = {
            type = "list",
            member = M.LineItemFilter,
        },
    },
}

M.CurrencyCode = {
    USD = "USD",
    CNY = "CNY",
}

M.CustomLineItemListElement = {
    type = "structure",
    id = "CustomLineItemListElement",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ChargeDetails = M.ListCustomLineItemChargeDetails,
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
            type = "long",
            traits = {
                default = 0,
            },
        },
        LastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AssociationSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AccountId = {
            type = "string",
        },
        ComputationRule = {
            type = "string",
        },
        PresentationDetails = M.PresentationObject,
    },
}

M.ListCustomLineItemsOutput = {
    type = "structure",
    id = "ListCustomLineItemsOutput",
    members = {
        CustomLineItems = {
            type = "list",
            member = M.CustomLineItemListElement,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomLineItemVersionsBillingPeriodRangeFilter = {
    type = "structure",
    id = "ListCustomLineItemVersionsBillingPeriodRangeFilter",
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
    id = "ListCustomLineItemVersionsFilter",
    members = {
        BillingPeriodRange = M.ListCustomLineItemVersionsBillingPeriodRangeFilter,
    },
}

M.ListCustomLineItemVersionsInput = {
    type = "structure",
    id = "ListCustomLineItemVersionsInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = M.ListCustomLineItemVersionsFilter,
    },
}

M.CustomLineItemVersionListElement = {
    type = "structure",
    id = "CustomLineItemVersionListElement",
    members = {
        Name = {
            type = "string",
        },
        ChargeDetails = M.ListCustomLineItemChargeDetails,
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
            type = "long",
            traits = {
                default = 0,
            },
        },
        LastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AssociationSize = {
            type = "long",
            traits = {
                default = 0,
            },
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
            type = "long",
            traits = {
                default = 0,
            },
        },
        AccountId = {
            type = "string",
        },
        ComputationRule = {
            type = "string",
        },
        PresentationDetails = M.PresentationObject,
    },
}

M.ListCustomLineItemVersionsOutput = {
    type = "structure",
    id = "ListCustomLineItemVersionsOutput",
    members = {
        CustomLineItemVersions = {
            type = "list",
            member = M.CustomLineItemVersionListElement,
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
    id = "ListResourcesAssociatedToCustomLineItemFilter",
    members = {
        Relationship = {
            type = "string",
        },
    },
}

M.ListResourcesAssociatedToCustomLineItemInput = {
    type = "structure",
    id = "ListResourcesAssociatedToCustomLineItemInput",
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
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = M.ListResourcesAssociatedToCustomLineItemFilter,
    },
}

M.ListResourcesAssociatedToCustomLineItemResponseElement = {
    type = "structure",
    id = "ListResourcesAssociatedToCustomLineItemResponseElement",
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
    id = "ListResourcesAssociatedToCustomLineItemOutput",
    members = {
        Arn = {
            type = "string",
        },
        AssociatedResources = {
            type = "list",
            member = M.ListResourcesAssociatedToCustomLineItemResponseElement,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateCustomLineItemFlatChargeDetails = {
    type = "structure",
    id = "UpdateCustomLineItemFlatChargeDetails",
    members = {
        ChargeValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCustomLineItemPercentageChargeDetails = {
    type = "structure",
    id = "UpdateCustomLineItemPercentageChargeDetails",
    members = {
        PercentageValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCustomLineItemChargeDetails = {
    type = "structure",
    id = "UpdateCustomLineItemChargeDetails",
    members = {
        Flat = M.UpdateCustomLineItemFlatChargeDetails,
        Percentage = M.UpdateCustomLineItemPercentageChargeDetails,
        LineItemFilters = {
            type = "list",
            member = M.LineItemFilter,
        },
    },
}

M.UpdateCustomLineItemInput = {
    type = "structure",
    id = "UpdateCustomLineItemInput",
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
        ChargeDetails = M.UpdateCustomLineItemChargeDetails,
        BillingPeriodRange = M.CustomLineItemBillingPeriodRange,
    },
}

M.UpdateCustomLineItemOutput = {
    type = "structure",
    id = "UpdateCustomLineItemOutput",
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
        ChargeDetails = M.ListCustomLineItemChargeDetails,
        LastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AssociationSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.BillingPeriodRange = {
    type = "structure",
    id = "BillingPeriodRange",
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
    id = "GetBillingGroupCostReportInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BillingPeriodRange = M.BillingPeriodRange,
        GroupBy = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BillingGroupCostReportResultElement = {
    type = "structure",
    id = "BillingGroupCostReportResultElement",
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
            member = M.Attribute,
        },
    },
}

M.GetBillingGroupCostReportOutput = {
    type = "structure",
    id = "GetBillingGroupCostReportOutput",
    members = {
        BillingGroupCostReportResults = {
            type = "list",
            member = M.BillingGroupCostReportResultElement,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountAssociationsFilter = {
    type = "structure",
    id = "ListAccountAssociationsFilter",
    members = {
        Association = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListAccountAssociationsInput = {
    type = "structure",
    id = "ListAccountAssociationsInput",
    members = {
        BillingPeriod = {
            type = "string",
        },
        Filters = M.ListAccountAssociationsFilter,
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountAssociationsOutput = {
    type = "structure",
    id = "ListAccountAssociationsOutput",
    members = {
        LinkedAccounts = {
            type = "list",
            member = M.AccountAssociationsListElement,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBillingGroupCostReportsFilter = {
    type = "structure",
    id = "ListBillingGroupCostReportsFilter",
    members = {
        BillingGroupArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListBillingGroupCostReportsInput = {
    type = "structure",
    id = "ListBillingGroupCostReportsInput",
    members = {
        BillingPeriod = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = M.ListBillingGroupCostReportsFilter,
    },
}

M.BillingGroupCostReportElement = {
    type = "structure",
    id = "BillingGroupCostReportElement",
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
    id = "ListBillingGroupCostReportsOutput",
    members = {
        BillingGroupCostReports = {
            type = "list",
            member = M.BillingGroupCostReportElement,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreatePricingPlanInput = {
    type = "structure",
    id = "CreatePricingPlanInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
                idempotency_token = true,
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
            member = { type = "string" },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreatePricingPlanOutput = {
    type = "structure",
    id = "CreatePricingPlanOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeletePricingPlanInput = {
    type = "structure",
    id = "DeletePricingPlanInput",
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
    id = "DeletePricingPlanOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DisassociatePricingRulesInput = {
    type = "structure",
    id = "DisassociatePricingRulesInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingRuleArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociatePricingRulesOutput = {
    type = "structure",
    id = "DisassociatePricingRulesOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ListPricingPlansFilter = {
    type = "structure",
    id = "ListPricingPlansFilter",
    members = {
        Arns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListPricingPlansInput = {
    type = "structure",
    id = "ListPricingPlansInput",
    members = {
        BillingPeriod = {
            type = "string",
        },
        Filters = M.ListPricingPlansFilter,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PricingPlanListElement = {
    type = "structure",
    id = "PricingPlanListElement",
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
            type = "long",
            traits = {
                default = 0,
            },
        },
        CreationTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        LastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListPricingPlansOutput = {
    type = "structure",
    id = "ListPricingPlansOutput",
    members = {
        BillingPeriod = {
            type = "string",
        },
        PricingPlans = {
            type = "list",
            member = M.PricingPlanListElement,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPricingPlansAssociatedWithPricingRuleInput = {
    type = "structure",
    id = "ListPricingPlansAssociatedWithPricingRuleInput",
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
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPricingPlansAssociatedWithPricingRuleOutput = {
    type = "structure",
    id = "ListPricingPlansAssociatedWithPricingRuleOutput",
    members = {
        BillingPeriod = {
            type = "string",
        },
        PricingRuleArn = {
            type = "string",
        },
        PricingPlanArns = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdatePricingPlanInput = {
    type = "structure",
    id = "UpdatePricingPlanInput",
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
    id = "UpdatePricingPlanOutput",
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
            type = "long",
            traits = {
                default = 0,
            },
        },
        LastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
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
    id = "CreateFreeTierConfig",
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
    id = "CreateTieringInput",
    members = {
        FreeTier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CreateFreeTierConfig }),
    },
}

M.PricingRuleType = {
    MARKUP = "MARKUP",
    DISCOUNT = "DISCOUNT",
    TIERING = "TIERING",
}

M.CreatePricingRuleInput = {
    type = "structure",
    id = "CreatePricingRuleInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
                idempotency_token = true,
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
            type = "double",
        },
        Service = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        BillingEntity = {
            type = "string",
        },
        Tiering = M.CreateTieringInput,
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
    id = "CreatePricingRuleOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeletePricingRuleInput = {
    type = "structure",
    id = "DeletePricingRuleInput",
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
    id = "DeletePricingRuleOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ListPricingRulesFilter = {
    type = "structure",
    id = "ListPricingRulesFilter",
    members = {
        Arns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListPricingRulesInput = {
    type = "structure",
    id = "ListPricingRulesInput",
    members = {
        BillingPeriod = {
            type = "string",
        },
        Filters = M.ListPricingRulesFilter,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FreeTierConfig = {
    type = "structure",
    id = "FreeTierConfig",
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
    id = "Tiering",
    members = {
        FreeTier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FreeTierConfig }),
    },
}

M.PricingRuleListElement = {
    type = "structure",
    id = "PricingRuleListElement",
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
            type = "double",
        },
        Service = {
            type = "string",
        },
        AssociatedPricingPlanCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CreationTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        LastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        BillingEntity = {
            type = "string",
        },
        Tiering = M.Tiering,
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
    id = "ListPricingRulesOutput",
    members = {
        BillingPeriod = {
            type = "string",
        },
        PricingRules = {
            type = "list",
            member = M.PricingRuleListElement,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPricingRulesAssociatedToPricingPlanInput = {
    type = "structure",
    id = "ListPricingRulesAssociatedToPricingPlanInput",
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
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPricingRulesAssociatedToPricingPlanOutput = {
    type = "structure",
    id = "ListPricingRulesAssociatedToPricingPlanOutput",
    members = {
        BillingPeriod = {
            type = "string",
        },
        PricingPlanArn = {
            type = "string",
        },
        PricingRuleArns = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateFreeTierConfig = {
    type = "structure",
    id = "UpdateFreeTierConfig",
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
    id = "UpdateTieringInput",
    members = {
        FreeTier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateFreeTierConfig }),
    },
}

M.UpdatePricingRuleInput = {
    type = "structure",
    id = "UpdatePricingRuleInput",
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
            type = "double",
        },
        Tiering = M.UpdateTieringInput,
    },
}

M.UpdatePricingRuleOutput = {
    type = "structure",
    id = "UpdatePricingRuleOutput",
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
            type = "double",
        },
        Service = {
            type = "string",
        },
        AssociatedPricingPlanCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        LastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        BillingEntity = {
            type = "string",
        },
        Tiering = M.UpdateTieringInput,
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
    id = "TagResourceInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
