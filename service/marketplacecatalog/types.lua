local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AmiProductEntityIdFilter = {
    type = "structure",
    id = "AmiProductEntityIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AmiProductLastModifiedDateFilterDateRange = {
    type = "structure",
    id = "AmiProductLastModifiedDateFilterDateRange",
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
    id = "AmiProductLastModifiedDateFilter",
    members = {
        DateRange = M.AmiProductLastModifiedDateFilterDateRange,
    },
}

M.AmiProductTitleFilter = {
    type = "structure",
    id = "AmiProductTitleFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
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
    id = "AmiProductVisibilityFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AmiProductFilters = {
    type = "structure",
    id = "AmiProductFilters",
    members = {
        EntityId = M.AmiProductEntityIdFilter,
        LastModifiedDate = M.AmiProductLastModifiedDateFilter,
        ProductTitle = M.AmiProductTitleFilter,
        Visibility = M.AmiProductVisibilityFilter,
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
    id = "AmiProductSort",
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
    id = "AmiProductSummary",
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
    id = "EntityRequest",
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
    id = "BatchDescribeEntitiesInput",
    members = {
        EntityRequestList = {
            type = "list",
            member = M.EntityRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.EntityDetail = {
    type = "structure",
    id = "EntityDetail",
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
    id = "BatchDescribeErrorDetail",
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
    id = "BatchDescribeEntitiesOutput",
    members = {
        EntityDetails = {
            type = "map",
            key = { type = "string" },
            value = M.EntityDetail,
        },
        Errors = {
            type = "map",
            key = { type = "string" },
            value = M.BatchDescribeErrorDetail,
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
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
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelChangeSetInput = {
    type = "structure",
    id = "CancelChangeSetInput",
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
    id = "CancelChangeSetOutput",
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
    id = "ResourceInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
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
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
}

M.DescribeChangeSetInput = {
    type = "structure",
    id = "DescribeChangeSetInput",
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
    id = "Entity",
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
    id = "ErrorDetail",
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
    id = "ChangeSummary",
    members = {
        ChangeType = {
            type = "string",
        },
        Entity = M.Entity,
        Details = {
            type = "string",
        },
        DetailsDocument = {
            type = "document",
        },
        ErrorDetailList = {
            type = "list",
            member = M.ErrorDetail,
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
    id = "DescribeChangeSetOutput",
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
            member = M.ChangeSummary,
        },
    },
}

M.DescribeEntityInput = {
    type = "structure",
    id = "DescribeEntityInput",
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
    id = "DescribeEntityOutput",
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
    id = "ResourceNotSupportedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
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
    id = "GetResourcePolicyOutput",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Name = {
            type = "string",
        },
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Sort = {
    type = "structure",
    id = "Sort",
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
    id = "ListChangeSetsInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilterList = {
            type = "list",
            member = M.Filter,
        },
        Sort = M.Sort,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ChangeSetSummaryListItem = {
    type = "structure",
    id = "ChangeSetSummaryListItem",
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
            member = { type = "string" },
        },
        FailureCode = {
            type = "string",
        },
    },
}

M.ListChangeSetsOutput = {
    type = "structure",
    id = "ListChangeSetsOutput",
    members = {
        ChangeSetSummaryList = {
            type = "list",
            member = M.ChangeSetSummaryListItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ContainerProductEntityIdFilter = {
    type = "structure",
    id = "ContainerProductEntityIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ContainerProductLastModifiedDateFilterDateRange = {
    type = "structure",
    id = "ContainerProductLastModifiedDateFilterDateRange",
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
    id = "ContainerProductLastModifiedDateFilter",
    members = {
        DateRange = M.ContainerProductLastModifiedDateFilterDateRange,
    },
}

M.ContainerProductTitleFilter = {
    type = "structure",
    id = "ContainerProductTitleFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
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
    id = "ContainerProductVisibilityFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ContainerProductFilters = {
    type = "structure",
    id = "ContainerProductFilters",
    members = {
        EntityId = M.ContainerProductEntityIdFilter,
        LastModifiedDate = M.ContainerProductLastModifiedDateFilter,
        ProductTitle = M.ContainerProductTitleFilter,
        Visibility = M.ContainerProductVisibilityFilter,
    },
}

M.DataProductEntityIdFilter = {
    type = "structure",
    id = "DataProductEntityIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DataProductLastModifiedDateFilterDateRange = {
    type = "structure",
    id = "DataProductLastModifiedDateFilterDateRange",
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
    id = "DataProductLastModifiedDateFilter",
    members = {
        DateRange = M.DataProductLastModifiedDateFilterDateRange,
    },
}

M.DataProductTitleFilter = {
    type = "structure",
    id = "DataProductTitleFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
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
    id = "DataProductVisibilityFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DataProductFilters = {
    type = "structure",
    id = "DataProductFilters",
    members = {
        EntityId = M.DataProductEntityIdFilter,
        ProductTitle = M.DataProductTitleFilter,
        Visibility = M.DataProductVisibilityFilter,
        LastModifiedDate = M.DataProductLastModifiedDateFilter,
    },
}

M.MachineLearningProductEntityIdFilter = {
    type = "structure",
    id = "MachineLearningProductEntityIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MachineLearningProductLastModifiedDateFilterDateRange = {
    type = "structure",
    id = "MachineLearningProductLastModifiedDateFilterDateRange",
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
    id = "MachineLearningProductLastModifiedDateFilter",
    members = {
        DateRange = M.MachineLearningProductLastModifiedDateFilterDateRange,
    },
}

M.MachineLearningProductTitleFilter = {
    type = "structure",
    id = "MachineLearningProductTitleFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
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
    id = "MachineLearningProductVisibilityFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MachineLearningProductFilters = {
    type = "structure",
    id = "MachineLearningProductFilters",
    members = {
        EntityId = M.MachineLearningProductEntityIdFilter,
        LastModifiedDate = M.MachineLearningProductLastModifiedDateFilter,
        ProductTitle = M.MachineLearningProductTitleFilter,
        Visibility = M.MachineLearningProductVisibilityFilter,
    },
}

M.OfferAvailabilityEndDateFilterDateRange = {
    type = "structure",
    id = "OfferAvailabilityEndDateFilterDateRange",
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
    id = "OfferAvailabilityEndDateFilter",
    members = {
        DateRange = M.OfferAvailabilityEndDateFilterDateRange,
    },
}

M.OfferBuyerAccountsFilter = {
    type = "structure",
    id = "OfferBuyerAccountsFilter",
    members = {
        WildCardValue = {
            type = "string",
        },
    },
}

M.OfferEntityIdFilter = {
    type = "structure",
    id = "OfferEntityIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OfferLastModifiedDateFilterDateRange = {
    type = "structure",
    id = "OfferLastModifiedDateFilterDateRange",
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
    id = "OfferLastModifiedDateFilter",
    members = {
        DateRange = M.OfferLastModifiedDateFilterDateRange,
    },
}

M.OfferNameFilter = {
    type = "structure",
    id = "OfferNameFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.OfferSetIdFilter = {
    type = "structure",
    id = "OfferSetIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OfferProductIdFilter = {
    type = "structure",
    id = "OfferProductIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OfferReleaseDateFilterDateRange = {
    type = "structure",
    id = "OfferReleaseDateFilterDateRange",
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
    id = "OfferReleaseDateFilter",
    members = {
        DateRange = M.OfferReleaseDateFilterDateRange,
    },
}

M.OfferResaleAuthorizationIdFilter = {
    type = "structure",
    id = "OfferResaleAuthorizationIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OfferStateString = {
    Draft = "Draft",
    Released = "Released",
}

M.OfferStateFilter = {
    type = "structure",
    id = "OfferStateFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
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
    id = "OfferTargetingFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OfferFilters = {
    type = "structure",
    id = "OfferFilters",
    members = {
        EntityId = M.OfferEntityIdFilter,
        Name = M.OfferNameFilter,
        ProductId = M.OfferProductIdFilter,
        ResaleAuthorizationId = M.OfferResaleAuthorizationIdFilter,
        ReleaseDate = M.OfferReleaseDateFilter,
        AvailabilityEndDate = M.OfferAvailabilityEndDateFilter,
        BuyerAccounts = M.OfferBuyerAccountsFilter,
        State = M.OfferStateFilter,
        Targeting = M.OfferTargetingFilter,
        LastModifiedDate = M.OfferLastModifiedDateFilter,
        OfferSetId = M.OfferSetIdFilter,
    },
}

M.OfferSetAssociatedOfferIdsFilter = {
    type = "structure",
    id = "OfferSetAssociatedOfferIdsFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OfferSetEntityIdFilter = {
    type = "structure",
    id = "OfferSetEntityIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OfferSetLastModifiedDateFilterDateRange = {
    type = "structure",
    id = "OfferSetLastModifiedDateFilterDateRange",
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
    id = "OfferSetLastModifiedDateFilter",
    members = {
        DateRange = M.OfferSetLastModifiedDateFilterDateRange,
    },
}

M.OfferSetNameFilter = {
    type = "structure",
    id = "OfferSetNameFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OfferSetReleaseDateFilterDateRange = {
    type = "structure",
    id = "OfferSetReleaseDateFilterDateRange",
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
    id = "OfferSetReleaseDateFilter",
    members = {
        DateRange = M.OfferSetReleaseDateFilterDateRange,
    },
}

M.OfferSetSolutionIdFilter = {
    type = "structure",
    id = "OfferSetSolutionIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OfferSetStateString = {
    Draft = "Draft",
    Released = "Released",
}

M.OfferSetStateFilter = {
    type = "structure",
    id = "OfferSetStateFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OfferSetFilters = {
    type = "structure",
    id = "OfferSetFilters",
    members = {
        EntityId = M.OfferSetEntityIdFilter,
        Name = M.OfferSetNameFilter,
        State = M.OfferSetStateFilter,
        ReleaseDate = M.OfferSetReleaseDateFilter,
        AssociatedOfferIds = M.OfferSetAssociatedOfferIdsFilter,
        SolutionId = M.OfferSetSolutionIdFilter,
        LastModifiedDate = M.OfferSetLastModifiedDateFilter,
    },
}

M.ResaleAuthorizationAvailabilityEndDateFilterDateRange = {
    type = "structure",
    id = "ResaleAuthorizationAvailabilityEndDateFilterDateRange",
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
    id = "ResaleAuthorizationAvailabilityEndDateFilter",
    members = {
        DateRange = M.ResaleAuthorizationAvailabilityEndDateFilterDateRange,
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResaleAuthorizationCreatedDateFilterDateRange = {
    type = "structure",
    id = "ResaleAuthorizationCreatedDateFilterDateRange",
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
    id = "ResaleAuthorizationCreatedDateFilter",
    members = {
        DateRange = M.ResaleAuthorizationCreatedDateFilterDateRange,
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResaleAuthorizationEntityIdFilter = {
    type = "structure",
    id = "ResaleAuthorizationEntityIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResaleAuthorizationLastModifiedDateFilterDateRange = {
    type = "structure",
    id = "ResaleAuthorizationLastModifiedDateFilterDateRange",
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
    id = "ResaleAuthorizationLastModifiedDateFilter",
    members = {
        DateRange = M.ResaleAuthorizationLastModifiedDateFilterDateRange,
    },
}

M.ResaleAuthorizationManufacturerAccountIdFilter = {
    type = "structure",
    id = "ResaleAuthorizationManufacturerAccountIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationManufacturerLegalNameFilter = {
    type = "structure",
    id = "ResaleAuthorizationManufacturerLegalNameFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationNameFilter = {
    type = "structure",
    id = "ResaleAuthorizationNameFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationOfferExtendedStatusFilter = {
    type = "structure",
    id = "ResaleAuthorizationOfferExtendedStatusFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResaleAuthorizationProductIdFilter = {
    type = "structure",
    id = "ResaleAuthorizationProductIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationProductNameFilter = {
    type = "structure",
    id = "ResaleAuthorizationProductNameFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationResellerAccountIDFilter = {
    type = "structure",
    id = "ResaleAuthorizationResellerAccountIDFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
        WildCardValue = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationResellerLegalNameFilter = {
    type = "structure",
    id = "ResaleAuthorizationResellerLegalNameFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
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
    id = "ResaleAuthorizationStatusFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResaleAuthorizationFilters = {
    type = "structure",
    id = "ResaleAuthorizationFilters",
    members = {
        EntityId = M.ResaleAuthorizationEntityIdFilter,
        Name = M.ResaleAuthorizationNameFilter,
        ProductId = M.ResaleAuthorizationProductIdFilter,
        CreatedDate = M.ResaleAuthorizationCreatedDateFilter,
        AvailabilityEndDate = M.ResaleAuthorizationAvailabilityEndDateFilter,
        ManufacturerAccountId = M.ResaleAuthorizationManufacturerAccountIdFilter,
        ProductName = M.ResaleAuthorizationProductNameFilter,
        ManufacturerLegalName = M.ResaleAuthorizationManufacturerLegalNameFilter,
        ResellerAccountID = M.ResaleAuthorizationResellerAccountIDFilter,
        ResellerLegalName = M.ResaleAuthorizationResellerLegalNameFilter,
        Status = M.ResaleAuthorizationStatusFilter,
        OfferExtendedStatus = M.ResaleAuthorizationOfferExtendedStatusFilter,
        LastModifiedDate = M.ResaleAuthorizationLastModifiedDateFilter,
    },
}

M.SaaSProductEntityIdFilter = {
    type = "structure",
    id = "SaaSProductEntityIdFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SaaSProductLastModifiedDateFilterDateRange = {
    type = "structure",
    id = "SaaSProductLastModifiedDateFilterDateRange",
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
    id = "SaaSProductLastModifiedDateFilter",
    members = {
        DateRange = M.SaaSProductLastModifiedDateFilterDateRange,
    },
}

M.SaaSProductTitleFilter = {
    type = "structure",
    id = "SaaSProductTitleFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
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
    id = "SaaSProductVisibilityFilter",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SaaSProductFilters = {
    type = "structure",
    id = "SaaSProductFilters",
    members = {
        EntityId = M.SaaSProductEntityIdFilter,
        ProductTitle = M.SaaSProductTitleFilter,
        Visibility = M.SaaSProductVisibilityFilter,
        LastModifiedDate = M.SaaSProductLastModifiedDateFilter,
    },
}

M.EntityTypeFilters = {
    type = "union",
    id = "EntityTypeFilters",
    members = {
        DataProductFilters = M.DataProductFilters,
        SaaSProductFilters = M.SaaSProductFilters,
        AmiProductFilters = M.AmiProductFilters,
        OfferFilters = M.OfferFilters,
        ContainerProductFilters = M.ContainerProductFilters,
        ResaleAuthorizationFilters = M.ResaleAuthorizationFilters,
        MachineLearningProductFilters = M.MachineLearningProductFilters,
        OfferSetFilters = M.OfferSetFilters,
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
    id = "ContainerProductSort",
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
    id = "DataProductSort",
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
    id = "MachineLearningProductSort",
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
    id = "OfferSetSort",
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
    id = "OfferSort",
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
    id = "ResaleAuthorizationSort",
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
    id = "SaaSProductSort",
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
    id = "EntityTypeSort",
    members = {
        DataProductSort = M.DataProductSort,
        SaaSProductSort = M.SaaSProductSort,
        AmiProductSort = M.AmiProductSort,
        OfferSort = M.OfferSort,
        ContainerProductSort = M.ContainerProductSort,
        ResaleAuthorizationSort = M.ResaleAuthorizationSort,
        MachineLearningProductSort = M.MachineLearningProductSort,
        OfferSetSort = M.OfferSetSort,
    },
}

M.OwnershipType = {
    SELF = "SELF",
    SHARED = "SHARED",
}

M.ListEntitiesInput = {
    type = "structure",
    id = "ListEntitiesInput",
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
            member = M.Filter,
        },
        Sort = M.Sort,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        OwnershipType = {
            type = "string",
        },
        EntityTypeFilters = M.EntityTypeFilters,
        EntityTypeSort = M.EntityTypeSort,
    },
}

M.ContainerProductSummary = {
    type = "structure",
    id = "ContainerProductSummary",
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
    id = "DataProductSummary",
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
    id = "MachineLearningProductSummary",
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
    id = "OfferSetSummary",
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
            member = { type = "string" },
        },
        SolutionId = {
            type = "string",
        },
    },
}

M.OfferSummary = {
    type = "structure",
    id = "OfferSummary",
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
            member = { type = "string" },
        },
        State = {
            type = "string",
        },
        Targeting = {
            type = "list",
            member = { type = "string" },
        },
        OfferSetId = {
            type = "string",
        },
    },
}

M.ResaleAuthorizationSummary = {
    type = "structure",
    id = "ResaleAuthorizationSummary",
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
    id = "SaaSProductSummary",
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
    id = "EntitySummary",
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
        AmiProductSummary = M.AmiProductSummary,
        ContainerProductSummary = M.ContainerProductSummary,
        DataProductSummary = M.DataProductSummary,
        SaaSProductSummary = M.SaaSProductSummary,
        OfferSummary = M.OfferSummary,
        ResaleAuthorizationSummary = M.ResaleAuthorizationSummary,
        MachineLearningProductSummary = M.MachineLearningProductSummary,
        OfferSetSummary = M.OfferSetSummary,
    },
}

M.ListEntitiesOutput = {
    type = "structure",
    id = "ListEntitiesOutput",
    members = {
        EntitySummaryList = {
            type = "list",
            member = M.EntitySummary,
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
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
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
    id = "ListTagsForResourceOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Change = {
    type = "structure",
    id = "Change",
    members = {
        ChangeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Entity }),
        EntityTags = {
            type = "list",
            member = M.Tag,
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
    id = "StartChangeSetInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeSet = {
            type = "list",
            member = M.Change,
            traits = {
                required = true,
            },
        },
        ChangeSetName = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ChangeSetTags = {
            type = "list",
            member = M.Tag,
        },
        Intent = {
            type = "string",
        },
    },
}

M.StartChangeSetOutput = {
    type = "structure",
    id = "StartChangeSetOutput",
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
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
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
