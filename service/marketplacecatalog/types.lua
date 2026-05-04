local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AmiProductEntityIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AmiProductLastModifiedDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.AmiProductLastModifiedDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
    },
}

M.AmiProductTitleFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.AmiProductVisibilityString = {
    Limited = "Limited",
    Public = "Public",
    Restricted = "Restricted",
    Draft = "Draft",
}

M.AmiProductVisibilityFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AmiProductFilters = {
    type = "structure",
    members = {
        EntityId = {
            type = "structure",
        },
        LastModifiedDate = {
            type = "structure",
        },
        ProductTitle = {
            type = "structure",
        },
        Visibility = {
            type = "structure",
        },
    },
}

M.AmiProductSortBy = {
    EntityId = "EntityId",
    LastModifiedDate = "LastModifiedDate",
    ProductTitle = "ProductTitle",
    Visibility = "Visibility",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.AmiProductSort = {
    type = "structure",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.AmiProductSummary = {
    type = "structure",
    members = {
        ProductTitle = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.EntityRequest = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDescribeEntitiesInput = {
    type = "structure",
    members = {
        EntityRequestList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EntityDetail = {
    type = "structure",
    members = {
        EntityType = {
            type = "string",
        },
        EntityArn = {
            type = "string",
        },
        EntityIdentifier = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        DetailsDocument = {
            type = "document",
        },
    },
}

M.BatchDescribeErrorDetail = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchDescribeEntitiesOutput = {
    type = "structure",
    members = {
        EntityDetails = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        Errors = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelChangeSetInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                http_query = "catalog",
                required = true,
            },
        },
        ChangeSetId = {
            type = "string",
            traits = {
                http_query = "changeSetId",
                required = true,
            },
        },
    },
}

M.CancelChangeSetOutput = {
    type = "structure",
    members = {
        ChangeSetId = {
            type = "string",
        },
        ChangeSetArn = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.DescribeChangeSetInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                http_query = "catalog",
                required = true,
            },
        },
        ChangeSetId = {
            type = "string",
            traits = {
                http_query = "changeSetId",
                required = true,
            },
        },
    },
}

M.Entity = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
        },
    },
}

M.ErrorDetail = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.ChangeSummary = {
    type = "structure",
    members = {
        ChangeType = {
            type = "string",
        },
        Entity = {
            type = "structure",
        },
        Details = {
            type = "string",
        },
        DetailsDocument = {
            type = "document",
        },
        ErrorDetailList = {
            type = "list",
            member_type = "structure",
        },
        ChangeName = {
            type = "string",
        },
    },
}

M.FailureCode = {
    ClientError = "CLIENT_ERROR",
    ServerFault = "SERVER_FAULT",
}

M.Intent = {
    VALIDATE = "VALIDATE",
    APPLY = "APPLY",
}

M.ChangeStatus = {
    PREPARING = "PREPARING",
    APPLYING = "APPLYING",
    SUCCEEDED = "SUCCEEDED",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
}

M.DescribeChangeSetOutput = {
    type = "structure",
    members = {
        ChangeSetId = {
            type = "string",
        },
        ChangeSetArn = {
            type = "string",
        },
        ChangeSetName = {
            type = "string",
        },
        Intent = {
            type = "string",
        },
        StartTime = {
            type = "string",
        },
        EndTime = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        FailureCode = {
            type = "string",
        },
        FailureDescription = {
            type = "string",
        },
        ChangeSet = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeEntityInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                http_query = "catalog",
                required = true,
            },
        },
        EntityId = {
            type = "string",
            traits = {
                http_query = "entityId",
                required = true,
            },
        },
    },
}

M.DescribeEntityOutput = {
    type = "structure",
    members = {
        EntityType = {
            type = "string",
        },
        EntityIdentifier = {
            type = "string",
        },
        EntityArn = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Details = {
            type = "string",
        },
        DetailsDocument = {
            type = "document",
        },
    },
}

M.ResourceNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.Filter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Sort = {
    type = "structure",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListChangeSetsInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilterList = {
            type = "list",
            member_type = "structure",
        },
        Sort = {
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

M.ChangeSetSummaryListItem = {
    type = "structure",
    members = {
        ChangeSetId = {
            type = "string",
        },
        ChangeSetArn = {
            type = "string",
        },
        ChangeSetName = {
            type = "string",
        },
        StartTime = {
            type = "string",
        },
        EndTime = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        EntityIdList = {
            type = "list",
            member_type = "string",
        },
        FailureCode = {
            type = "string",
        },
    },
}

M.ListChangeSetsOutput = {
    type = "structure",
    members = {
        ChangeSetSummaryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ContainerProductEntityIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ContainerProductLastModifiedDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.ContainerProductLastModifiedDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
    },
}

M.ContainerProductTitleFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ContainerProductVisibilityString = {
    Limited = "Limited",
    Public = "Public",
    Restricted = "Restricted",
    Draft = "Draft",
}

M.ContainerProductVisibilityFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ContainerProductFilters = {
    type = "structure",
    members = {
        EntityId = {
            type = "structure",
        },
        LastModifiedDate = {
            type = "structure",
        },
        ProductTitle = {
            type = "structure",
        },
        Visibility = {
            type = "structure",
        },
    },
}

M.DataProductEntityIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DataProductLastModifiedDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.DataProductLastModifiedDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
    },
}

M.DataProductTitleFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.DataProductVisibilityString = {
    Limited = "Limited",
    Public = "Public",
    Restricted = "Restricted",
    Unavailable = "Unavailable",
    Draft = "Draft",
}

M.DataProductVisibilityFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DataProductFilters = {
    type = "structure",
    members = {
        EntityId = {
            type = "structure",
        },
        ProductTitle = {
            type = "structure",
        },
        Visibility = {
            type = "structure",
        },
        LastModifiedDate = {
            type = "structure",
        },
    },
}

M.MachineLearningProductEntityIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MachineLearningProductLastModifiedDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.MachineLearningProductLastModifiedDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
    },
}

M.MachineLearningProductTitleFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.MachineLearningProductVisibilityString = {
    Limited = "Limited",
    Public = "Public",
    Restricted = "Restricted",
    Draft = "Draft",
}

M.MachineLearningProductVisibilityFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MachineLearningProductFilters = {
    type = "structure",
    members = {
        EntityId = {
            type = "structure",
        },
        LastModifiedDate = {
            type = "structure",
        },
        ProductTitle = {
            type = "structure",
        },
        Visibility = {
            type = "structure",
        },
    },
}

M.OfferAvailabilityEndDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.OfferAvailabilityEndDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
    },
}

M.OfferBuyerAccountsFilter = {
    type = "structure",
    members = {
        WildCardValue = {
            type = "string",
        },
    },
}

M.OfferEntityIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OfferLastModifiedDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.OfferLastModifiedDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
    },
}

M.OfferNameFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.OfferSetIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OfferProductIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OfferReleaseDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.OfferReleaseDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
    },
}

M.OfferResaleAuthorizationIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OfferStateString = {
    Draft = "Draft",
    Released = "Released",
}

M.OfferStateFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OfferTargetingString = {
    BuyerAccounts = "BuyerAccounts",
    ParticipatingPrograms = "ParticipatingPrograms",
    CountryCodes = "CountryCodes",
    None = "None",
}

M.OfferTargetingFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OfferFilters = {
    type = "structure",
    members = {
        EntityId = {
            type = "structure",
        },
        Name = {
            type = "structure",
        },
        ProductId = {
            type = "structure",
        },
        ResaleAuthorizationId = {
            type = "structure",
        },
        ReleaseDate = {
            type = "structure",
        },
        AvailabilityEndDate = {
            type = "structure",
        },
        BuyerAccounts = {
            type = "structure",
        },
        State = {
            type = "structure",
        },
        Targeting = {
            type = "structure",
        },
        LastModifiedDate = {
            type = "structure",
        },
        OfferSetId = {
            type = "structure",
        },
    },
}

M.OfferSetAssociatedOfferIdsFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OfferSetEntityIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OfferSetLastModifiedDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.OfferSetLastModifiedDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
    },
}

M.OfferSetNameFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OfferSetReleaseDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.OfferSetReleaseDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
    },
}

M.OfferSetSolutionIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OfferSetStateString = {
    Draft = "Draft",
    Released = "Released",
}

M.OfferSetStateFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OfferSetFilters = {
    type = "structure",
    members = {
        EntityId = {
            type = "structure",
        },
        Name = {
            type = "structure",
        },
        State = {
            type = "structure",
        },
        ReleaseDate = {
            type = "structure",
        },
        AssociatedOfferIds = {
            type = "structure",
        },
        SolutionId = {
            type = "structure",
        },
        LastModifiedDate = {
            type = "structure",
        },
    },
}

M.ResaleAuthorizationAvailabilityEndDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationAvailabilityEndDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ResaleAuthorizationCreatedDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationCreatedDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ResaleAuthorizationEntityIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ResaleAuthorizationLastModifiedDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationLastModifiedDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
    },
}

M.ResaleAuthorizationManufacturerAccountIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationManufacturerLegalNameFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationNameFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationOfferExtendedStatusFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ResaleAuthorizationProductIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationProductNameFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationResellerAccountIDFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationResellerLegalNameFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationStatusString = {
    Draft = "Draft",
    Active = "Active",
    Restricted = "Restricted",
}

M.ResaleAuthorizationStatusFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ResaleAuthorizationFilters = {
    type = "structure",
    members = {
        EntityId = {
            type = "structure",
        },
        Name = {
            type = "structure",
        },
        ProductId = {
            type = "structure",
        },
        CreatedDate = {
            type = "structure",
        },
        AvailabilityEndDate = {
            type = "structure",
        },
        ManufacturerAccountId = {
            type = "structure",
        },
        ProductName = {
            type = "structure",
        },
        ManufacturerLegalName = {
            type = "structure",
        },
        ResellerAccountID = {
            type = "structure",
        },
        ResellerLegalName = {
            type = "structure",
        },
        Status = {
            type = "structure",
        },
        OfferExtendedStatus = {
            type = "structure",
        },
        LastModifiedDate = {
            type = "structure",
        },
    },
}

M.SaaSProductEntityIdFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SaaSProductLastModifiedDateFilterDateRange = {
    type = "structure",
    members = {
        AfterValue = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
    },
}

M.SaaSProductLastModifiedDateFilter = {
    type = "structure",
    members = {
        DateRange = {
            type = "structure",
        },
    },
}

M.SaaSProductTitleFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.SaaSProductVisibilityString = {
    Limited = "Limited",
    Public = "Public",
    Restricted = "Restricted",
    Draft = "Draft",
}

M.SaaSProductVisibilityFilter = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SaaSProductFilters = {
    type = "structure",
    members = {
        EntityId = {
            type = "structure",
        },
        ProductTitle = {
            type = "structure",
        },
        Visibility = {
            type = "structure",
        },
        LastModifiedDate = {
            type = "structure",
        },
    },
}

M.EntityTypeFilters = {
    type = "union",
    members = {
        DataProductFilters = {
            type = "structure",
        },
        SaaSProductFilters = {
            type = "structure",
        },
        AmiProductFilters = {
            type = "structure",
        },
        OfferFilters = {
            type = "structure",
        },
        ContainerProductFilters = {
            type = "structure",
        },
        ResaleAuthorizationFilters = {
            type = "structure",
        },
        MachineLearningProductFilters = {
            type = "structure",
        },
        OfferSetFilters = {
            type = "structure",
        },
    },
}

M.ContainerProductSortBy = {
    EntityId = "EntityId",
    LastModifiedDate = "LastModifiedDate",
    ProductTitle = "ProductTitle",
    Visibility = "Visibility",
    CompatibleAWSServices = "CompatibleAWSServices",
}

M.ContainerProductSort = {
    type = "structure",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.DataProductSortBy = {
    EntityId = "EntityId",
    ProductTitle = "ProductTitle",
    Visibility = "Visibility",
    LastModifiedDate = "LastModifiedDate",
}

M.DataProductSort = {
    type = "structure",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.MachineLearningProductSortBy = {
    EntityId = "EntityId",
    LastModifiedDate = "LastModifiedDate",
    ProductTitle = "ProductTitle",
    Visibility = "Visibility",
}

M.MachineLearningProductSort = {
    type = "structure",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.OfferSetSortBy = {
    Name = "Name",
    State = "State",
    ReleaseDate = "ReleaseDate",
    SolutionId = "SolutionId",
    EntityId = "EntityId",
    LastModifiedDate = "LastModifiedDate",
}

M.OfferSetSort = {
    type = "structure",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.OfferSortBy = {
    EntityId = "EntityId",
    Name = "Name",
    ProductId = "ProductId",
    ResaleAuthorizationId = "ResaleAuthorizationId",
    ReleaseDate = "ReleaseDate",
    AvailabilityEndDate = "AvailabilityEndDate",
    BuyerAccounts = "BuyerAccounts",
    State = "State",
    Targeting = "Targeting",
    LastModifiedDate = "LastModifiedDate",
    OfferSetId = "OfferSetId",
}

M.OfferSort = {
    type = "structure",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationSortBy = {
    EntityId = "EntityId",
    Name = "Name",
    ProductId = "ProductId",
    ProductName = "ProductName",
    ManufacturerAccountId = "ManufacturerAccountId",
    ManufacturerLegalName = "ManufacturerLegalName",
    ResellerAccountID = "ResellerAccountID",
    ResellerLegalName = "ResellerLegalName",
    Status = "Status",
    OfferExtendedStatus = "OfferExtendedStatus",
    CreatedDate = "CreatedDate",
    AvailabilityEndDate = "AvailabilityEndDate",
    LastModifiedDate = "LastModifiedDate",
}

M.ResaleAuthorizationSort = {
    type = "structure",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.SaaSProductSortBy = {
    EntityId = "EntityId",
    ProductTitle = "ProductTitle",
    Visibility = "Visibility",
    LastModifiedDate = "LastModifiedDate",
    DeliveryOptionTypes = "DeliveryOptionTypes",
}

M.SaaSProductSort = {
    type = "structure",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.EntityTypeSort = {
    type = "union",
    members = {
        DataProductSort = {
            type = "structure",
        },
        SaaSProductSort = {
            type = "structure",
        },
        AmiProductSort = {
            type = "structure",
        },
        OfferSort = {
            type = "structure",
        },
        ContainerProductSort = {
            type = "structure",
        },
        ResaleAuthorizationSort = {
            type = "structure",
        },
        MachineLearningProductSort = {
            type = "structure",
        },
        OfferSetSort = {
            type = "structure",
        },
    },
}

M.OwnershipType = {
    SELF = "SELF",
    SHARED = "SHARED",
}

M.ListEntitiesInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilterList = {
            type = "list",
            member_type = "structure",
        },
        Sort = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        OwnershipType = {
            type = "string",
        },
        EntityTypeFilters = {
            type = "union",
        },
        EntityTypeSort = {
            type = "union",
        },
    },
}

M.ContainerProductSummary = {
    type = "structure",
    members = {
        ProductTitle = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.DataProductSummary = {
    type = "structure",
    members = {
        ProductTitle = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.MachineLearningProductSummary = {
    type = "structure",
    members = {
        ProductTitle = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.OfferSetSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ReleaseDate = {
            type = "string",
        },
        AssociatedOfferIds = {
            type = "list",
            member_type = "string",
        },
        SolutionId = {
            type = "string",
        },
    },
}

M.OfferSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ResaleAuthorizationId = {
            type = "string",
        },
        ReleaseDate = {
            type = "string",
        },
        AvailabilityEndDate = {
            type = "string",
        },
        BuyerAccounts = {
            type = "list",
            member_type = "string",
        },
        State = {
            type = "string",
        },
        Targeting = {
            type = "list",
            member_type = "string",
        },
        OfferSetId = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ProductName = {
            type = "string",
        },
        ManufacturerAccountId = {
            type = "string",
        },
        ManufacturerLegalName = {
            type = "string",
        },
        ResellerAccountID = {
            type = "string",
        },
        ResellerLegalName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        OfferExtendedStatus = {
            type = "string",
        },
        CreatedDate = {
            type = "string",
        },
        AvailabilityEndDate = {
            type = "string",
        },
    },
}

M.SaaSProductSummary = {
    type = "structure",
    members = {
        ProductTitle = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.EntitySummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        EntityType = {
            type = "string",
        },
        EntityId = {
            type = "string",
        },
        EntityArn = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        AmiProductSummary = {
            type = "structure",
        },
        ContainerProductSummary = {
            type = "structure",
        },
        DataProductSummary = {
            type = "structure",
        },
        SaaSProductSummary = {
            type = "structure",
        },
        OfferSummary = {
            type = "structure",
        },
        ResaleAuthorizationSummary = {
            type = "structure",
        },
        MachineLearningProductSummary = {
            type = "structure",
        },
        OfferSetSummary = {
            type = "structure",
        },
    },
}

M.ListEntitiesOutput = {
    type = "structure",
    members = {
        EntitySummaryList = {
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
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Change = {
    type = "structure",
    members = {
        ChangeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EntityTags = {
            type = "list",
            member_type = "structure",
        },
        Details = {
            type = "string",
        },
        DetailsDocument = {
            type = "document",
        },
        ChangeName = {
            type = "string",
        },
    },
}

M.StartChangeSetInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeSet = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ChangeSetName = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        ChangeSetTags = {
            type = "list",
            member_type = "structure",
        },
        Intent = {
            type = "string",
        },
    },
}

M.StartChangeSetOutput = {
    type = "structure",
    members = {
        ChangeSetId = {
            type = "string",
        },
        ChangeSetArn = {
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
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
