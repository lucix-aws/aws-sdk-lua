local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.marketplacecatalog"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AmiProductEntityIdFilter = schema.new({
    id = id.from(_N, "AmiProductEntityIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "AmiProductEntityIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AmiProductLastModifiedDateFilterDateRange = schema.new({
    id = id.from(_N, "AmiProductLastModifiedDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "AmiProductLastModifiedDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "AmiProductLastModifiedDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.AmiProductLastModifiedDateFilter = schema.new({
    id = id.from(_N, "AmiProductLastModifiedDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "AmiProductLastModifiedDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "AmiProductLastModifiedDateFilterDateRange"),
            target = M.AmiProductLastModifiedDateFilterDateRange,
        }),
    },
})

M.AmiProductTitleFilter = schema.new({
    id = id.from(_N, "AmiProductTitleFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "AmiProductTitleFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "AmiProductTitleFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.AmiProductVisibilityFilter = schema.new({
    id = id.from(_N, "AmiProductVisibilityFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "AmiProductVisibilityFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AmiProductFilters = schema.new({
    id = id.from(_N, "AmiProductFilters"),
    type = "structure",
    members = {
        EntityId = schema.new({
            id = id.from(_N, "AmiProductFilters", "EntityId"),
            type = "structure",
            name = "EntityId",
            target_id = id.from(_N, "AmiProductEntityIdFilter"),
            target = M.AmiProductEntityIdFilter,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "AmiProductFilters", "LastModifiedDate"),
            type = "structure",
            name = "LastModifiedDate",
            target_id = id.from(_N, "AmiProductLastModifiedDateFilter"),
            target = M.AmiProductLastModifiedDateFilter,
        }),
        ProductTitle = schema.new({
            id = id.from(_N, "AmiProductFilters", "ProductTitle"),
            type = "structure",
            name = "ProductTitle",
            target_id = id.from(_N, "AmiProductTitleFilter"),
            target = M.AmiProductTitleFilter,
        }),
        Visibility = schema.new({
            id = id.from(_N, "AmiProductFilters", "Visibility"),
            type = "structure",
            name = "Visibility",
            target_id = id.from(_N, "AmiProductVisibilityFilter"),
            target = M.AmiProductVisibilityFilter,
        }),
    },
})

M.AmiProductSort = schema.new({
    id = id.from(_N, "AmiProductSort"),
    type = "structure",
    members = {
        SortBy = schema.new({
            id = id.from(_N, "AmiProductSort", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "AmiProductSort", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.AmiProductSummary = schema.new({
    id = id.from(_N, "AmiProductSummary"),
    type = "structure",
    members = {
        ProductTitle = schema.new({
            id = id.from(_N, "AmiProductSummary", "ProductTitle"),
            type = "string",
            name = "ProductTitle",
            target_id = prelude.String.id,
        }),
        Visibility = schema.new({
            id = id.from(_N, "AmiProductSummary", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityRequest = schema.new({
    id = id.from(_N, "EntityRequest"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "EntityRequest", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "EntityRequest", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDescribeEntitiesInput = schema.new({
    id = id.from(_N, "BatchDescribeEntitiesInput"),
    type = "structure",
    members = {
        EntityRequestList = schema.new({
            id = id.from(_N, "BatchDescribeEntitiesInput", "EntityRequestList"),
            type = "list",
            name = "EntityRequestList",
            target_id = prelude.Document.id,
            list_member = M.EntityRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EntityDetail = schema.new({
    id = id.from(_N, "EntityDetail"),
    type = "structure",
    members = {
        EntityType = schema.new({
            id = id.from(_N, "EntityDetail", "EntityType"),
            type = "string",
            name = "EntityType",
            target_id = prelude.String.id,
        }),
        EntityArn = schema.new({
            id = id.from(_N, "EntityDetail", "EntityArn"),
            type = "string",
            name = "EntityArn",
            target_id = prelude.String.id,
        }),
        EntityIdentifier = schema.new({
            id = id.from(_N, "EntityDetail", "EntityIdentifier"),
            type = "string",
            name = "EntityIdentifier",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "EntityDetail", "LastModifiedDate"),
            type = "string",
            name = "LastModifiedDate",
            target_id = prelude.String.id,
        }),
        DetailsDocument = schema.new({
            id = id.from(_N, "EntityDetail", "DetailsDocument"),
            type = "document",
            name = "DetailsDocument",
            target_id = prelude.Document.id,
        }),
    },
})

M.BatchDescribeErrorDetail = schema.new({
    id = id.from(_N, "BatchDescribeErrorDetail"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "BatchDescribeErrorDetail", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "BatchDescribeErrorDetail", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDescribeEntitiesOutput = schema.new({
    id = id.from(_N, "BatchDescribeEntitiesOutput"),
    type = "structure",
    members = {
        EntityDetails = schema.new({
            id = id.from(_N, "BatchDescribeEntitiesOutput", "EntityDetails"),
            type = "map",
            name = "EntityDetails",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.EntityDetail,
        }),
        Errors = schema.new({
            id = id.from(_N, "BatchDescribeEntitiesOutput", "Errors"),
            type = "map",
            name = "Errors",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.BatchDescribeErrorDetail,
        }),
    },
})

M.InternalServiceException = schema.new({
    id = id.from(_N, "InternalServiceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServiceException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelChangeSetInput = schema.new({
    id = id.from(_N, "CancelChangeSetInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "CancelChangeSetInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "catalog" },
            },
        }),
        ChangeSetId = schema.new({
            id = id.from(_N, "CancelChangeSetInput", "ChangeSetId"),
            type = "string",
            name = "ChangeSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "changeSetId" },
            },
        }),
    },
})

M.CancelChangeSetOutput = schema.new({
    id = id.from(_N, "CancelChangeSetOutput"),
    type = "structure",
    members = {
        ChangeSetId = schema.new({
            id = id.from(_N, "CancelChangeSetOutput", "ChangeSetId"),
            type = "string",
            name = "ChangeSetId",
            target_id = prelude.String.id,
        }),
        ChangeSetArn = schema.new({
            id = id.from(_N, "CancelChangeSetOutput", "ChangeSetArn"),
            type = "string",
            name = "ChangeSetArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceInUseException = schema.new({
    id = id.from(_N, "ResourceInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteResourcePolicyInput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
    },
})

M.DeleteResourcePolicyOutput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyOutput"),
    type = "structure",
})

M.DescribeChangeSetInput = schema.new({
    id = id.from(_N, "DescribeChangeSetInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "DescribeChangeSetInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "catalog" },
            },
        }),
        ChangeSetId = schema.new({
            id = id.from(_N, "DescribeChangeSetInput", "ChangeSetId"),
            type = "string",
            name = "ChangeSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "changeSetId" },
            },
        }),
    },
})

M.Entity = schema.new({
    id = id.from(_N, "Entity"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "Entity", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Identifier = schema.new({
            id = id.from(_N, "Entity", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
        }),
    },
})

M.ErrorDetail = schema.new({
    id = id.from(_N, "ErrorDetail"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "ErrorDetail", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "ErrorDetail", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ChangeSummary = schema.new({
    id = id.from(_N, "ChangeSummary"),
    type = "structure",
    members = {
        ChangeType = schema.new({
            id = id.from(_N, "ChangeSummary", "ChangeType"),
            type = "string",
            name = "ChangeType",
            target_id = prelude.String.id,
        }),
        Entity = schema.new({
            id = id.from(_N, "ChangeSummary", "Entity"),
            type = "structure",
            name = "Entity",
            target_id = id.from(_N, "Entity"),
            target = M.Entity,
        }),
        Details = schema.new({
            id = id.from(_N, "ChangeSummary", "Details"),
            type = "string",
            name = "Details",
            target_id = prelude.String.id,
        }),
        DetailsDocument = schema.new({
            id = id.from(_N, "ChangeSummary", "DetailsDocument"),
            type = "document",
            name = "DetailsDocument",
            target_id = prelude.Document.id,
        }),
        ErrorDetailList = schema.new({
            id = id.from(_N, "ChangeSummary", "ErrorDetailList"),
            type = "list",
            name = "ErrorDetailList",
            target_id = prelude.Document.id,
            list_member = M.ErrorDetail,
        }),
        ChangeName = schema.new({
            id = id.from(_N, "ChangeSummary", "ChangeName"),
            type = "string",
            name = "ChangeName",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeChangeSetOutput = schema.new({
    id = id.from(_N, "DescribeChangeSetOutput"),
    type = "structure",
    members = {
        ChangeSetId = schema.new({
            id = id.from(_N, "DescribeChangeSetOutput", "ChangeSetId"),
            type = "string",
            name = "ChangeSetId",
            target_id = prelude.String.id,
        }),
        ChangeSetArn = schema.new({
            id = id.from(_N, "DescribeChangeSetOutput", "ChangeSetArn"),
            type = "string",
            name = "ChangeSetArn",
            target_id = prelude.String.id,
        }),
        ChangeSetName = schema.new({
            id = id.from(_N, "DescribeChangeSetOutput", "ChangeSetName"),
            type = "string",
            name = "ChangeSetName",
            target_id = prelude.String.id,
        }),
        Intent = schema.new({
            id = id.from(_N, "DescribeChangeSetOutput", "Intent"),
            type = "string",
            name = "Intent",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "DescribeChangeSetOutput", "StartTime"),
            type = "string",
            name = "StartTime",
            target_id = prelude.String.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "DescribeChangeSetOutput", "EndTime"),
            type = "string",
            name = "EndTime",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeChangeSetOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        FailureCode = schema.new({
            id = id.from(_N, "DescribeChangeSetOutput", "FailureCode"),
            type = "string",
            name = "FailureCode",
            target_id = prelude.String.id,
        }),
        FailureDescription = schema.new({
            id = id.from(_N, "DescribeChangeSetOutput", "FailureDescription"),
            type = "string",
            name = "FailureDescription",
            target_id = prelude.String.id,
        }),
        ChangeSet = schema.new({
            id = id.from(_N, "DescribeChangeSetOutput", "ChangeSet"),
            type = "list",
            name = "ChangeSet",
            target_id = prelude.Document.id,
            list_member = M.ChangeSummary,
        }),
    },
})

M.DescribeEntityInput = schema.new({
    id = id.from(_N, "DescribeEntityInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "DescribeEntityInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "catalog" },
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "DescribeEntityInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "entityId" },
            },
        }),
    },
})

M.DescribeEntityOutput = schema.new({
    id = id.from(_N, "DescribeEntityOutput"),
    type = "structure",
    members = {
        EntityType = schema.new({
            id = id.from(_N, "DescribeEntityOutput", "EntityType"),
            type = "string",
            name = "EntityType",
            target_id = prelude.String.id,
        }),
        EntityIdentifier = schema.new({
            id = id.from(_N, "DescribeEntityOutput", "EntityIdentifier"),
            type = "string",
            name = "EntityIdentifier",
            target_id = prelude.String.id,
        }),
        EntityArn = schema.new({
            id = id.from(_N, "DescribeEntityOutput", "EntityArn"),
            type = "string",
            name = "EntityArn",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "DescribeEntityOutput", "LastModifiedDate"),
            type = "string",
            name = "LastModifiedDate",
            target_id = prelude.String.id,
        }),
        Details = schema.new({
            id = id.from(_N, "DescribeEntityOutput", "Details"),
            type = "string",
            name = "Details",
            target_id = prelude.String.id,
        }),
        DetailsDocument = schema.new({
            id = id.from(_N, "DescribeEntityOutput", "DetailsDocument"),
            type = "document",
            name = "DetailsDocument",
            target_id = prelude.Document.id,
        }),
    },
})

M.ResourceNotSupportedException = schema.new({
    id = id.from(_N, "ResourceNotSupportedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotSupportedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourcePolicyInput = schema.new({
    id = id.from(_N, "GetResourcePolicyInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "GetResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
    },
})

M.GetResourcePolicyOutput = schema.new({
    id = id.from(_N, "GetResourcePolicyOutput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Filter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ValueList = schema.new({
            id = id.from(_N, "Filter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.Sort = schema.new({
    id = id.from(_N, "Sort"),
    type = "structure",
    members = {
        SortBy = schema.new({
            id = id.from(_N, "Sort", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "Sort", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChangeSetsInput = schema.new({
    id = id.from(_N, "ListChangeSetsInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "ListChangeSetsInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FilterList = schema.new({
            id = id.from(_N, "ListChangeSetsInput", "FilterList"),
            type = "list",
            name = "FilterList",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        Sort = schema.new({
            id = id.from(_N, "ListChangeSetsInput", "Sort"),
            type = "structure",
            name = "Sort",
            target_id = id.from(_N, "Sort"),
            target = M.Sort,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListChangeSetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChangeSetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ChangeSetSummaryListItem = schema.new({
    id = id.from(_N, "ChangeSetSummaryListItem"),
    type = "structure",
    members = {
        ChangeSetId = schema.new({
            id = id.from(_N, "ChangeSetSummaryListItem", "ChangeSetId"),
            type = "string",
            name = "ChangeSetId",
            target_id = prelude.String.id,
        }),
        ChangeSetArn = schema.new({
            id = id.from(_N, "ChangeSetSummaryListItem", "ChangeSetArn"),
            type = "string",
            name = "ChangeSetArn",
            target_id = prelude.String.id,
        }),
        ChangeSetName = schema.new({
            id = id.from(_N, "ChangeSetSummaryListItem", "ChangeSetName"),
            type = "string",
            name = "ChangeSetName",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ChangeSetSummaryListItem", "StartTime"),
            type = "string",
            name = "StartTime",
            target_id = prelude.String.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "ChangeSetSummaryListItem", "EndTime"),
            type = "string",
            name = "EndTime",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ChangeSetSummaryListItem", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        EntityIdList = schema.new({
            id = id.from(_N, "ChangeSetSummaryListItem", "EntityIdList"),
            type = "list",
            name = "EntityIdList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        FailureCode = schema.new({
            id = id.from(_N, "ChangeSetSummaryListItem", "FailureCode"),
            type = "string",
            name = "FailureCode",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChangeSetsOutput = schema.new({
    id = id.from(_N, "ListChangeSetsOutput"),
    type = "structure",
    members = {
        ChangeSetSummaryList = schema.new({
            id = id.from(_N, "ListChangeSetsOutput", "ChangeSetSummaryList"),
            type = "list",
            name = "ChangeSetSummaryList",
            target_id = prelude.Document.id,
            list_member = M.ChangeSetSummaryListItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChangeSetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ContainerProductEntityIdFilter = schema.new({
    id = id.from(_N, "ContainerProductEntityIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ContainerProductEntityIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ContainerProductLastModifiedDateFilterDateRange = schema.new({
    id = id.from(_N, "ContainerProductLastModifiedDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "ContainerProductLastModifiedDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "ContainerProductLastModifiedDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ContainerProductLastModifiedDateFilter = schema.new({
    id = id.from(_N, "ContainerProductLastModifiedDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "ContainerProductLastModifiedDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "ContainerProductLastModifiedDateFilterDateRange"),
            target = M.ContainerProductLastModifiedDateFilterDateRange,
        }),
    },
})

M.ContainerProductTitleFilter = schema.new({
    id = id.from(_N, "ContainerProductTitleFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ContainerProductTitleFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "ContainerProductTitleFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ContainerProductVisibilityFilter = schema.new({
    id = id.from(_N, "ContainerProductVisibilityFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ContainerProductVisibilityFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ContainerProductFilters = schema.new({
    id = id.from(_N, "ContainerProductFilters"),
    type = "structure",
    members = {
        EntityId = schema.new({
            id = id.from(_N, "ContainerProductFilters", "EntityId"),
            type = "structure",
            name = "EntityId",
            target_id = id.from(_N, "ContainerProductEntityIdFilter"),
            target = M.ContainerProductEntityIdFilter,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "ContainerProductFilters", "LastModifiedDate"),
            type = "structure",
            name = "LastModifiedDate",
            target_id = id.from(_N, "ContainerProductLastModifiedDateFilter"),
            target = M.ContainerProductLastModifiedDateFilter,
        }),
        ProductTitle = schema.new({
            id = id.from(_N, "ContainerProductFilters", "ProductTitle"),
            type = "structure",
            name = "ProductTitle",
            target_id = id.from(_N, "ContainerProductTitleFilter"),
            target = M.ContainerProductTitleFilter,
        }),
        Visibility = schema.new({
            id = id.from(_N, "ContainerProductFilters", "Visibility"),
            type = "structure",
            name = "Visibility",
            target_id = id.from(_N, "ContainerProductVisibilityFilter"),
            target = M.ContainerProductVisibilityFilter,
        }),
    },
})

M.DataProductEntityIdFilter = schema.new({
    id = id.from(_N, "DataProductEntityIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "DataProductEntityIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DataProductLastModifiedDateFilterDateRange = schema.new({
    id = id.from(_N, "DataProductLastModifiedDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "DataProductLastModifiedDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "DataProductLastModifiedDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.DataProductLastModifiedDateFilter = schema.new({
    id = id.from(_N, "DataProductLastModifiedDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "DataProductLastModifiedDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "DataProductLastModifiedDateFilterDateRange"),
            target = M.DataProductLastModifiedDateFilterDateRange,
        }),
    },
})

M.DataProductTitleFilter = schema.new({
    id = id.from(_N, "DataProductTitleFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "DataProductTitleFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "DataProductTitleFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.DataProductVisibilityFilter = schema.new({
    id = id.from(_N, "DataProductVisibilityFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "DataProductVisibilityFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DataProductFilters = schema.new({
    id = id.from(_N, "DataProductFilters"),
    type = "structure",
    members = {
        EntityId = schema.new({
            id = id.from(_N, "DataProductFilters", "EntityId"),
            type = "structure",
            name = "EntityId",
            target_id = id.from(_N, "DataProductEntityIdFilter"),
            target = M.DataProductEntityIdFilter,
        }),
        ProductTitle = schema.new({
            id = id.from(_N, "DataProductFilters", "ProductTitle"),
            type = "structure",
            name = "ProductTitle",
            target_id = id.from(_N, "DataProductTitleFilter"),
            target = M.DataProductTitleFilter,
        }),
        Visibility = schema.new({
            id = id.from(_N, "DataProductFilters", "Visibility"),
            type = "structure",
            name = "Visibility",
            target_id = id.from(_N, "DataProductVisibilityFilter"),
            target = M.DataProductVisibilityFilter,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "DataProductFilters", "LastModifiedDate"),
            type = "structure",
            name = "LastModifiedDate",
            target_id = id.from(_N, "DataProductLastModifiedDateFilter"),
            target = M.DataProductLastModifiedDateFilter,
        }),
    },
})

M.MachineLearningProductEntityIdFilter = schema.new({
    id = id.from(_N, "MachineLearningProductEntityIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "MachineLearningProductEntityIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.MachineLearningProductLastModifiedDateFilterDateRange = schema.new({
    id = id.from(_N, "MachineLearningProductLastModifiedDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "MachineLearningProductLastModifiedDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "MachineLearningProductLastModifiedDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.MachineLearningProductLastModifiedDateFilter = schema.new({
    id = id.from(_N, "MachineLearningProductLastModifiedDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "MachineLearningProductLastModifiedDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "MachineLearningProductLastModifiedDateFilterDateRange"),
            target = M.MachineLearningProductLastModifiedDateFilterDateRange,
        }),
    },
})

M.MachineLearningProductTitleFilter = schema.new({
    id = id.from(_N, "MachineLearningProductTitleFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "MachineLearningProductTitleFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "MachineLearningProductTitleFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.MachineLearningProductVisibilityFilter = schema.new({
    id = id.from(_N, "MachineLearningProductVisibilityFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "MachineLearningProductVisibilityFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.MachineLearningProductFilters = schema.new({
    id = id.from(_N, "MachineLearningProductFilters"),
    type = "structure",
    members = {
        EntityId = schema.new({
            id = id.from(_N, "MachineLearningProductFilters", "EntityId"),
            type = "structure",
            name = "EntityId",
            target_id = id.from(_N, "MachineLearningProductEntityIdFilter"),
            target = M.MachineLearningProductEntityIdFilter,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "MachineLearningProductFilters", "LastModifiedDate"),
            type = "structure",
            name = "LastModifiedDate",
            target_id = id.from(_N, "MachineLearningProductLastModifiedDateFilter"),
            target = M.MachineLearningProductLastModifiedDateFilter,
        }),
        ProductTitle = schema.new({
            id = id.from(_N, "MachineLearningProductFilters", "ProductTitle"),
            type = "structure",
            name = "ProductTitle",
            target_id = id.from(_N, "MachineLearningProductTitleFilter"),
            target = M.MachineLearningProductTitleFilter,
        }),
        Visibility = schema.new({
            id = id.from(_N, "MachineLearningProductFilters", "Visibility"),
            type = "structure",
            name = "Visibility",
            target_id = id.from(_N, "MachineLearningProductVisibilityFilter"),
            target = M.MachineLearningProductVisibilityFilter,
        }),
    },
})

M.OfferAvailabilityEndDateFilterDateRange = schema.new({
    id = id.from(_N, "OfferAvailabilityEndDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "OfferAvailabilityEndDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "OfferAvailabilityEndDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferAvailabilityEndDateFilter = schema.new({
    id = id.from(_N, "OfferAvailabilityEndDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "OfferAvailabilityEndDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "OfferAvailabilityEndDateFilterDateRange"),
            target = M.OfferAvailabilityEndDateFilterDateRange,
        }),
    },
})

M.OfferBuyerAccountsFilter = schema.new({
    id = id.from(_N, "OfferBuyerAccountsFilter"),
    type = "structure",
    members = {
        WildCardValue = schema.new({
            id = id.from(_N, "OfferBuyerAccountsFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferEntityIdFilter = schema.new({
    id = id.from(_N, "OfferEntityIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferEntityIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OfferLastModifiedDateFilterDateRange = schema.new({
    id = id.from(_N, "OfferLastModifiedDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "OfferLastModifiedDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "OfferLastModifiedDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferLastModifiedDateFilter = schema.new({
    id = id.from(_N, "OfferLastModifiedDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "OfferLastModifiedDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "OfferLastModifiedDateFilterDateRange"),
            target = M.OfferLastModifiedDateFilterDateRange,
        }),
    },
})

M.OfferNameFilter = schema.new({
    id = id.from(_N, "OfferNameFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferNameFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "OfferNameFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferSetIdFilter = schema.new({
    id = id.from(_N, "OfferSetIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferSetIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OfferProductIdFilter = schema.new({
    id = id.from(_N, "OfferProductIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferProductIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OfferReleaseDateFilterDateRange = schema.new({
    id = id.from(_N, "OfferReleaseDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "OfferReleaseDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "OfferReleaseDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferReleaseDateFilter = schema.new({
    id = id.from(_N, "OfferReleaseDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "OfferReleaseDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "OfferReleaseDateFilterDateRange"),
            target = M.OfferReleaseDateFilterDateRange,
        }),
    },
})

M.OfferResaleAuthorizationIdFilter = schema.new({
    id = id.from(_N, "OfferResaleAuthorizationIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferResaleAuthorizationIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OfferStateFilter = schema.new({
    id = id.from(_N, "OfferStateFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferStateFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OfferTargetingFilter = schema.new({
    id = id.from(_N, "OfferTargetingFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferTargetingFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OfferFilters = schema.new({
    id = id.from(_N, "OfferFilters"),
    type = "structure",
    members = {
        EntityId = schema.new({
            id = id.from(_N, "OfferFilters", "EntityId"),
            type = "structure",
            name = "EntityId",
            target_id = id.from(_N, "OfferEntityIdFilter"),
            target = M.OfferEntityIdFilter,
        }),
        Name = schema.new({
            id = id.from(_N, "OfferFilters", "Name"),
            type = "structure",
            name = "Name",
            target_id = id.from(_N, "OfferNameFilter"),
            target = M.OfferNameFilter,
        }),
        ProductId = schema.new({
            id = id.from(_N, "OfferFilters", "ProductId"),
            type = "structure",
            name = "ProductId",
            target_id = id.from(_N, "OfferProductIdFilter"),
            target = M.OfferProductIdFilter,
        }),
        ResaleAuthorizationId = schema.new({
            id = id.from(_N, "OfferFilters", "ResaleAuthorizationId"),
            type = "structure",
            name = "ResaleAuthorizationId",
            target_id = id.from(_N, "OfferResaleAuthorizationIdFilter"),
            target = M.OfferResaleAuthorizationIdFilter,
        }),
        ReleaseDate = schema.new({
            id = id.from(_N, "OfferFilters", "ReleaseDate"),
            type = "structure",
            name = "ReleaseDate",
            target_id = id.from(_N, "OfferReleaseDateFilter"),
            target = M.OfferReleaseDateFilter,
        }),
        AvailabilityEndDate = schema.new({
            id = id.from(_N, "OfferFilters", "AvailabilityEndDate"),
            type = "structure",
            name = "AvailabilityEndDate",
            target_id = id.from(_N, "OfferAvailabilityEndDateFilter"),
            target = M.OfferAvailabilityEndDateFilter,
        }),
        BuyerAccounts = schema.new({
            id = id.from(_N, "OfferFilters", "BuyerAccounts"),
            type = "structure",
            name = "BuyerAccounts",
            target_id = id.from(_N, "OfferBuyerAccountsFilter"),
            target = M.OfferBuyerAccountsFilter,
        }),
        State = schema.new({
            id = id.from(_N, "OfferFilters", "State"),
            type = "structure",
            name = "State",
            target_id = id.from(_N, "OfferStateFilter"),
            target = M.OfferStateFilter,
        }),
        Targeting = schema.new({
            id = id.from(_N, "OfferFilters", "Targeting"),
            type = "structure",
            name = "Targeting",
            target_id = id.from(_N, "OfferTargetingFilter"),
            target = M.OfferTargetingFilter,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "OfferFilters", "LastModifiedDate"),
            type = "structure",
            name = "LastModifiedDate",
            target_id = id.from(_N, "OfferLastModifiedDateFilter"),
            target = M.OfferLastModifiedDateFilter,
        }),
        OfferSetId = schema.new({
            id = id.from(_N, "OfferFilters", "OfferSetId"),
            type = "structure",
            name = "OfferSetId",
            target_id = id.from(_N, "OfferSetIdFilter"),
            target = M.OfferSetIdFilter,
        }),
    },
})

M.OfferSetAssociatedOfferIdsFilter = schema.new({
    id = id.from(_N, "OfferSetAssociatedOfferIdsFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferSetAssociatedOfferIdsFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OfferSetEntityIdFilter = schema.new({
    id = id.from(_N, "OfferSetEntityIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferSetEntityIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OfferSetLastModifiedDateFilterDateRange = schema.new({
    id = id.from(_N, "OfferSetLastModifiedDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "OfferSetLastModifiedDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "OfferSetLastModifiedDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferSetLastModifiedDateFilter = schema.new({
    id = id.from(_N, "OfferSetLastModifiedDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "OfferSetLastModifiedDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "OfferSetLastModifiedDateFilterDateRange"),
            target = M.OfferSetLastModifiedDateFilterDateRange,
        }),
    },
})

M.OfferSetNameFilter = schema.new({
    id = id.from(_N, "OfferSetNameFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferSetNameFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OfferSetReleaseDateFilterDateRange = schema.new({
    id = id.from(_N, "OfferSetReleaseDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "OfferSetReleaseDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "OfferSetReleaseDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferSetReleaseDateFilter = schema.new({
    id = id.from(_N, "OfferSetReleaseDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "OfferSetReleaseDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "OfferSetReleaseDateFilterDateRange"),
            target = M.OfferSetReleaseDateFilterDateRange,
        }),
    },
})

M.OfferSetSolutionIdFilter = schema.new({
    id = id.from(_N, "OfferSetSolutionIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferSetSolutionIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OfferSetStateFilter = schema.new({
    id = id.from(_N, "OfferSetStateFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "OfferSetStateFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OfferSetFilters = schema.new({
    id = id.from(_N, "OfferSetFilters"),
    type = "structure",
    members = {
        EntityId = schema.new({
            id = id.from(_N, "OfferSetFilters", "EntityId"),
            type = "structure",
            name = "EntityId",
            target_id = id.from(_N, "OfferSetEntityIdFilter"),
            target = M.OfferSetEntityIdFilter,
        }),
        Name = schema.new({
            id = id.from(_N, "OfferSetFilters", "Name"),
            type = "structure",
            name = "Name",
            target_id = id.from(_N, "OfferSetNameFilter"),
            target = M.OfferSetNameFilter,
        }),
        State = schema.new({
            id = id.from(_N, "OfferSetFilters", "State"),
            type = "structure",
            name = "State",
            target_id = id.from(_N, "OfferSetStateFilter"),
            target = M.OfferSetStateFilter,
        }),
        ReleaseDate = schema.new({
            id = id.from(_N, "OfferSetFilters", "ReleaseDate"),
            type = "structure",
            name = "ReleaseDate",
            target_id = id.from(_N, "OfferSetReleaseDateFilter"),
            target = M.OfferSetReleaseDateFilter,
        }),
        AssociatedOfferIds = schema.new({
            id = id.from(_N, "OfferSetFilters", "AssociatedOfferIds"),
            type = "structure",
            name = "AssociatedOfferIds",
            target_id = id.from(_N, "OfferSetAssociatedOfferIdsFilter"),
            target = M.OfferSetAssociatedOfferIdsFilter,
        }),
        SolutionId = schema.new({
            id = id.from(_N, "OfferSetFilters", "SolutionId"),
            type = "structure",
            name = "SolutionId",
            target_id = id.from(_N, "OfferSetSolutionIdFilter"),
            target = M.OfferSetSolutionIdFilter,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "OfferSetFilters", "LastModifiedDate"),
            type = "structure",
            name = "LastModifiedDate",
            target_id = id.from(_N, "OfferSetLastModifiedDateFilter"),
            target = M.OfferSetLastModifiedDateFilter,
        }),
    },
})

M.ResaleAuthorizationAvailabilityEndDateFilterDateRange = schema.new({
    id = id.from(_N, "ResaleAuthorizationAvailabilityEndDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationAvailabilityEndDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationAvailabilityEndDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationAvailabilityEndDateFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationAvailabilityEndDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "ResaleAuthorizationAvailabilityEndDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "ResaleAuthorizationAvailabilityEndDateFilterDateRange"),
            target = M.ResaleAuthorizationAvailabilityEndDateFilterDateRange,
        }),
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationAvailabilityEndDateFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ResaleAuthorizationCreatedDateFilterDateRange = schema.new({
    id = id.from(_N, "ResaleAuthorizationCreatedDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationCreatedDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationCreatedDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationCreatedDateFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationCreatedDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "ResaleAuthorizationCreatedDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "ResaleAuthorizationCreatedDateFilterDateRange"),
            target = M.ResaleAuthorizationCreatedDateFilterDateRange,
        }),
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationCreatedDateFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ResaleAuthorizationEntityIdFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationEntityIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationEntityIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ResaleAuthorizationLastModifiedDateFilterDateRange = schema.new({
    id = id.from(_N, "ResaleAuthorizationLastModifiedDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationLastModifiedDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationLastModifiedDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationLastModifiedDateFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationLastModifiedDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "ResaleAuthorizationLastModifiedDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "ResaleAuthorizationLastModifiedDateFilterDateRange"),
            target = M.ResaleAuthorizationLastModifiedDateFilterDateRange,
        }),
    },
})

M.ResaleAuthorizationManufacturerAccountIdFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationManufacturerAccountIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationManufacturerAccountIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationManufacturerAccountIdFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationManufacturerLegalNameFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationManufacturerLegalNameFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationManufacturerLegalNameFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationManufacturerLegalNameFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationNameFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationNameFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationNameFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationNameFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationOfferExtendedStatusFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationOfferExtendedStatusFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationOfferExtendedStatusFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ResaleAuthorizationProductIdFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationProductIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationProductIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationProductIdFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationProductNameFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationProductNameFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationProductNameFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationProductNameFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationResellerAccountIDFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationResellerAccountIDFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationResellerAccountIDFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationResellerAccountIDFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationResellerLegalNameFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationResellerLegalNameFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationResellerLegalNameFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "ResaleAuthorizationResellerLegalNameFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationStatusFilter = schema.new({
    id = id.from(_N, "ResaleAuthorizationStatusFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "ResaleAuthorizationStatusFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ResaleAuthorizationFilters = schema.new({
    id = id.from(_N, "ResaleAuthorizationFilters"),
    type = "structure",
    members = {
        EntityId = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "EntityId"),
            type = "structure",
            name = "EntityId",
            target_id = id.from(_N, "ResaleAuthorizationEntityIdFilter"),
            target = M.ResaleAuthorizationEntityIdFilter,
        }),
        Name = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "Name"),
            type = "structure",
            name = "Name",
            target_id = id.from(_N, "ResaleAuthorizationNameFilter"),
            target = M.ResaleAuthorizationNameFilter,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "ProductId"),
            type = "structure",
            name = "ProductId",
            target_id = id.from(_N, "ResaleAuthorizationProductIdFilter"),
            target = M.ResaleAuthorizationProductIdFilter,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "CreatedDate"),
            type = "structure",
            name = "CreatedDate",
            target_id = id.from(_N, "ResaleAuthorizationCreatedDateFilter"),
            target = M.ResaleAuthorizationCreatedDateFilter,
        }),
        AvailabilityEndDate = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "AvailabilityEndDate"),
            type = "structure",
            name = "AvailabilityEndDate",
            target_id = id.from(_N, "ResaleAuthorizationAvailabilityEndDateFilter"),
            target = M.ResaleAuthorizationAvailabilityEndDateFilter,
        }),
        ManufacturerAccountId = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "ManufacturerAccountId"),
            type = "structure",
            name = "ManufacturerAccountId",
            target_id = id.from(_N, "ResaleAuthorizationManufacturerAccountIdFilter"),
            target = M.ResaleAuthorizationManufacturerAccountIdFilter,
        }),
        ProductName = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "ProductName"),
            type = "structure",
            name = "ProductName",
            target_id = id.from(_N, "ResaleAuthorizationProductNameFilter"),
            target = M.ResaleAuthorizationProductNameFilter,
        }),
        ManufacturerLegalName = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "ManufacturerLegalName"),
            type = "structure",
            name = "ManufacturerLegalName",
            target_id = id.from(_N, "ResaleAuthorizationManufacturerLegalNameFilter"),
            target = M.ResaleAuthorizationManufacturerLegalNameFilter,
        }),
        ResellerAccountID = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "ResellerAccountID"),
            type = "structure",
            name = "ResellerAccountID",
            target_id = id.from(_N, "ResaleAuthorizationResellerAccountIDFilter"),
            target = M.ResaleAuthorizationResellerAccountIDFilter,
        }),
        ResellerLegalName = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "ResellerLegalName"),
            type = "structure",
            name = "ResellerLegalName",
            target_id = id.from(_N, "ResaleAuthorizationResellerLegalNameFilter"),
            target = M.ResaleAuthorizationResellerLegalNameFilter,
        }),
        Status = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "ResaleAuthorizationStatusFilter"),
            target = M.ResaleAuthorizationStatusFilter,
        }),
        OfferExtendedStatus = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "OfferExtendedStatus"),
            type = "structure",
            name = "OfferExtendedStatus",
            target_id = id.from(_N, "ResaleAuthorizationOfferExtendedStatusFilter"),
            target = M.ResaleAuthorizationOfferExtendedStatusFilter,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "ResaleAuthorizationFilters", "LastModifiedDate"),
            type = "structure",
            name = "LastModifiedDate",
            target_id = id.from(_N, "ResaleAuthorizationLastModifiedDateFilter"),
            target = M.ResaleAuthorizationLastModifiedDateFilter,
        }),
    },
})

M.SaaSProductEntityIdFilter = schema.new({
    id = id.from(_N, "SaaSProductEntityIdFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "SaaSProductEntityIdFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SaaSProductLastModifiedDateFilterDateRange = schema.new({
    id = id.from(_N, "SaaSProductLastModifiedDateFilterDateRange"),
    type = "structure",
    members = {
        AfterValue = schema.new({
            id = id.from(_N, "SaaSProductLastModifiedDateFilterDateRange", "AfterValue"),
            type = "string",
            name = "AfterValue",
            target_id = prelude.String.id,
        }),
        BeforeValue = schema.new({
            id = id.from(_N, "SaaSProductLastModifiedDateFilterDateRange", "BeforeValue"),
            type = "string",
            name = "BeforeValue",
            target_id = prelude.String.id,
        }),
    },
})

M.SaaSProductLastModifiedDateFilter = schema.new({
    id = id.from(_N, "SaaSProductLastModifiedDateFilter"),
    type = "structure",
    members = {
        DateRange = schema.new({
            id = id.from(_N, "SaaSProductLastModifiedDateFilter", "DateRange"),
            type = "structure",
            name = "DateRange",
            target_id = id.from(_N, "SaaSProductLastModifiedDateFilterDateRange"),
            target = M.SaaSProductLastModifiedDateFilterDateRange,
        }),
    },
})

M.SaaSProductTitleFilter = schema.new({
    id = id.from(_N, "SaaSProductTitleFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "SaaSProductTitleFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WildCardValue = schema.new({
            id = id.from(_N, "SaaSProductTitleFilter", "WildCardValue"),
            type = "string",
            name = "WildCardValue",
            target_id = prelude.String.id,
        }),
    },
})

M.SaaSProductVisibilityFilter = schema.new({
    id = id.from(_N, "SaaSProductVisibilityFilter"),
    type = "structure",
    members = {
        ValueList = schema.new({
            id = id.from(_N, "SaaSProductVisibilityFilter", "ValueList"),
            type = "list",
            name = "ValueList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SaaSProductFilters = schema.new({
    id = id.from(_N, "SaaSProductFilters"),
    type = "structure",
    members = {
        EntityId = schema.new({
            id = id.from(_N, "SaaSProductFilters", "EntityId"),
            type = "structure",
            name = "EntityId",
            target_id = id.from(_N, "SaaSProductEntityIdFilter"),
            target = M.SaaSProductEntityIdFilter,
        }),
        ProductTitle = schema.new({
            id = id.from(_N, "SaaSProductFilters", "ProductTitle"),
            type = "structure",
            name = "ProductTitle",
            target_id = id.from(_N, "SaaSProductTitleFilter"),
            target = M.SaaSProductTitleFilter,
        }),
        Visibility = schema.new({
            id = id.from(_N, "SaaSProductFilters", "Visibility"),
            type = "structure",
            name = "Visibility",
            target_id = id.from(_N, "SaaSProductVisibilityFilter"),
            target = M.SaaSProductVisibilityFilter,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "SaaSProductFilters", "LastModifiedDate"),
            type = "structure",
            name = "LastModifiedDate",
            target_id = id.from(_N, "SaaSProductLastModifiedDateFilter"),
            target = M.SaaSProductLastModifiedDateFilter,
        }),
    },
})

M.EntityTypeFilters = schema.new({
    id = id.from(_N, "EntityTypeFilters"),
    type = "union",
    members = {
        DataProductFilters = schema.new({
            id = id.from(_N, "EntityTypeFilters", "DataProductFilters"),
            type = "structure",
            name = "DataProductFilters",
            target_id = id.from(_N, "DataProductFilters"),
            target = M.DataProductFilters,
        }),
        SaaSProductFilters = schema.new({
            id = id.from(_N, "EntityTypeFilters", "SaaSProductFilters"),
            type = "structure",
            name = "SaaSProductFilters",
            target_id = id.from(_N, "SaaSProductFilters"),
            target = M.SaaSProductFilters,
        }),
        AmiProductFilters = schema.new({
            id = id.from(_N, "EntityTypeFilters", "AmiProductFilters"),
            type = "structure",
            name = "AmiProductFilters",
            target_id = id.from(_N, "AmiProductFilters"),
            target = M.AmiProductFilters,
        }),
        OfferFilters = schema.new({
            id = id.from(_N, "EntityTypeFilters", "OfferFilters"),
            type = "structure",
            name = "OfferFilters",
            target_id = id.from(_N, "OfferFilters"),
            target = M.OfferFilters,
        }),
        ContainerProductFilters = schema.new({
            id = id.from(_N, "EntityTypeFilters", "ContainerProductFilters"),
            type = "structure",
            name = "ContainerProductFilters",
            target_id = id.from(_N, "ContainerProductFilters"),
            target = M.ContainerProductFilters,
        }),
        ResaleAuthorizationFilters = schema.new({
            id = id.from(_N, "EntityTypeFilters", "ResaleAuthorizationFilters"),
            type = "structure",
            name = "ResaleAuthorizationFilters",
            target_id = id.from(_N, "ResaleAuthorizationFilters"),
            target = M.ResaleAuthorizationFilters,
        }),
        MachineLearningProductFilters = schema.new({
            id = id.from(_N, "EntityTypeFilters", "MachineLearningProductFilters"),
            type = "structure",
            name = "MachineLearningProductFilters",
            target_id = id.from(_N, "MachineLearningProductFilters"),
            target = M.MachineLearningProductFilters,
        }),
        OfferSetFilters = schema.new({
            id = id.from(_N, "EntityTypeFilters", "OfferSetFilters"),
            type = "structure",
            name = "OfferSetFilters",
            target_id = id.from(_N, "OfferSetFilters"),
            target = M.OfferSetFilters,
        }),
    },
})

M.ContainerProductSort = schema.new({
    id = id.from(_N, "ContainerProductSort"),
    type = "structure",
    members = {
        SortBy = schema.new({
            id = id.from(_N, "ContainerProductSort", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "ContainerProductSort", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.DataProductSort = schema.new({
    id = id.from(_N, "DataProductSort"),
    type = "structure",
    members = {
        SortBy = schema.new({
            id = id.from(_N, "DataProductSort", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "DataProductSort", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.MachineLearningProductSort = schema.new({
    id = id.from(_N, "MachineLearningProductSort"),
    type = "structure",
    members = {
        SortBy = schema.new({
            id = id.from(_N, "MachineLearningProductSort", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "MachineLearningProductSort", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferSetSort = schema.new({
    id = id.from(_N, "OfferSetSort"),
    type = "structure",
    members = {
        SortBy = schema.new({
            id = id.from(_N, "OfferSetSort", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "OfferSetSort", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferSort = schema.new({
    id = id.from(_N, "OfferSort"),
    type = "structure",
    members = {
        SortBy = schema.new({
            id = id.from(_N, "OfferSort", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "OfferSort", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationSort = schema.new({
    id = id.from(_N, "ResaleAuthorizationSort"),
    type = "structure",
    members = {
        SortBy = schema.new({
            id = id.from(_N, "ResaleAuthorizationSort", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "ResaleAuthorizationSort", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.SaaSProductSort = schema.new({
    id = id.from(_N, "SaaSProductSort"),
    type = "structure",
    members = {
        SortBy = schema.new({
            id = id.from(_N, "SaaSProductSort", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "SaaSProductSort", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityTypeSort = schema.new({
    id = id.from(_N, "EntityTypeSort"),
    type = "union",
    members = {
        DataProductSort = schema.new({
            id = id.from(_N, "EntityTypeSort", "DataProductSort"),
            type = "structure",
            name = "DataProductSort",
            target_id = id.from(_N, "DataProductSort"),
            target = M.DataProductSort,
        }),
        SaaSProductSort = schema.new({
            id = id.from(_N, "EntityTypeSort", "SaaSProductSort"),
            type = "structure",
            name = "SaaSProductSort",
            target_id = id.from(_N, "SaaSProductSort"),
            target = M.SaaSProductSort,
        }),
        AmiProductSort = schema.new({
            id = id.from(_N, "EntityTypeSort", "AmiProductSort"),
            type = "structure",
            name = "AmiProductSort",
            target_id = id.from(_N, "AmiProductSort"),
            target = M.AmiProductSort,
        }),
        OfferSort = schema.new({
            id = id.from(_N, "EntityTypeSort", "OfferSort"),
            type = "structure",
            name = "OfferSort",
            target_id = id.from(_N, "OfferSort"),
            target = M.OfferSort,
        }),
        ContainerProductSort = schema.new({
            id = id.from(_N, "EntityTypeSort", "ContainerProductSort"),
            type = "structure",
            name = "ContainerProductSort",
            target_id = id.from(_N, "ContainerProductSort"),
            target = M.ContainerProductSort,
        }),
        ResaleAuthorizationSort = schema.new({
            id = id.from(_N, "EntityTypeSort", "ResaleAuthorizationSort"),
            type = "structure",
            name = "ResaleAuthorizationSort",
            target_id = id.from(_N, "ResaleAuthorizationSort"),
            target = M.ResaleAuthorizationSort,
        }),
        MachineLearningProductSort = schema.new({
            id = id.from(_N, "EntityTypeSort", "MachineLearningProductSort"),
            type = "structure",
            name = "MachineLearningProductSort",
            target_id = id.from(_N, "MachineLearningProductSort"),
            target = M.MachineLearningProductSort,
        }),
        OfferSetSort = schema.new({
            id = id.from(_N, "EntityTypeSort", "OfferSetSort"),
            type = "structure",
            name = "OfferSetSort",
            target_id = id.from(_N, "OfferSetSort"),
            target = M.OfferSetSort,
        }),
    },
})

M.ListEntitiesInput = schema.new({
    id = id.from(_N, "ListEntitiesInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "ListEntitiesInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityType = schema.new({
            id = id.from(_N, "ListEntitiesInput", "EntityType"),
            type = "string",
            name = "EntityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FilterList = schema.new({
            id = id.from(_N, "ListEntitiesInput", "FilterList"),
            type = "list",
            name = "FilterList",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        Sort = schema.new({
            id = id.from(_N, "ListEntitiesInput", "Sort"),
            type = "structure",
            name = "Sort",
            target_id = id.from(_N, "Sort"),
            target = M.Sort,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEntitiesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEntitiesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        OwnershipType = schema.new({
            id = id.from(_N, "ListEntitiesInput", "OwnershipType"),
            type = "string",
            name = "OwnershipType",
            target_id = prelude.String.id,
        }),
        EntityTypeFilters = schema.new({
            id = id.from(_N, "ListEntitiesInput", "EntityTypeFilters"),
            type = "union",
            name = "EntityTypeFilters",
            target_id = id.from(_N, "EntityTypeFilters"),
            target = M.EntityTypeFilters,
        }),
        EntityTypeSort = schema.new({
            id = id.from(_N, "ListEntitiesInput", "EntityTypeSort"),
            type = "union",
            name = "EntityTypeSort",
            target_id = id.from(_N, "EntityTypeSort"),
            target = M.EntityTypeSort,
        }),
    },
})

M.ContainerProductSummary = schema.new({
    id = id.from(_N, "ContainerProductSummary"),
    type = "structure",
    members = {
        ProductTitle = schema.new({
            id = id.from(_N, "ContainerProductSummary", "ProductTitle"),
            type = "string",
            name = "ProductTitle",
            target_id = prelude.String.id,
        }),
        Visibility = schema.new({
            id = id.from(_N, "ContainerProductSummary", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
        }),
    },
})

M.DataProductSummary = schema.new({
    id = id.from(_N, "DataProductSummary"),
    type = "structure",
    members = {
        ProductTitle = schema.new({
            id = id.from(_N, "DataProductSummary", "ProductTitle"),
            type = "string",
            name = "ProductTitle",
            target_id = prelude.String.id,
        }),
        Visibility = schema.new({
            id = id.from(_N, "DataProductSummary", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
        }),
    },
})

M.MachineLearningProductSummary = schema.new({
    id = id.from(_N, "MachineLearningProductSummary"),
    type = "structure",
    members = {
        ProductTitle = schema.new({
            id = id.from(_N, "MachineLearningProductSummary", "ProductTitle"),
            type = "string",
            name = "ProductTitle",
            target_id = prelude.String.id,
        }),
        Visibility = schema.new({
            id = id.from(_N, "MachineLearningProductSummary", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferSetSummary = schema.new({
    id = id.from(_N, "OfferSetSummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "OfferSetSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "OfferSetSummary", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        ReleaseDate = schema.new({
            id = id.from(_N, "OfferSetSummary", "ReleaseDate"),
            type = "string",
            name = "ReleaseDate",
            target_id = prelude.String.id,
        }),
        AssociatedOfferIds = schema.new({
            id = id.from(_N, "OfferSetSummary", "AssociatedOfferIds"),
            type = "list",
            name = "AssociatedOfferIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SolutionId = schema.new({
            id = id.from(_N, "OfferSetSummary", "SolutionId"),
            type = "string",
            name = "SolutionId",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferSummary = schema.new({
    id = id.from(_N, "OfferSummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "OfferSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "OfferSummary", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        ResaleAuthorizationId = schema.new({
            id = id.from(_N, "OfferSummary", "ResaleAuthorizationId"),
            type = "string",
            name = "ResaleAuthorizationId",
            target_id = prelude.String.id,
        }),
        ReleaseDate = schema.new({
            id = id.from(_N, "OfferSummary", "ReleaseDate"),
            type = "string",
            name = "ReleaseDate",
            target_id = prelude.String.id,
        }),
        AvailabilityEndDate = schema.new({
            id = id.from(_N, "OfferSummary", "AvailabilityEndDate"),
            type = "string",
            name = "AvailabilityEndDate",
            target_id = prelude.String.id,
        }),
        BuyerAccounts = schema.new({
            id = id.from(_N, "OfferSummary", "BuyerAccounts"),
            type = "list",
            name = "BuyerAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        State = schema.new({
            id = id.from(_N, "OfferSummary", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Targeting = schema.new({
            id = id.from(_N, "OfferSummary", "Targeting"),
            type = "list",
            name = "Targeting",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OfferSetId = schema.new({
            id = id.from(_N, "OfferSummary", "OfferSetId"),
            type = "string",
            name = "OfferSetId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResaleAuthorizationSummary = schema.new({
    id = id.from(_N, "ResaleAuthorizationSummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ResaleAuthorizationSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ResaleAuthorizationSummary", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        ProductName = schema.new({
            id = id.from(_N, "ResaleAuthorizationSummary", "ProductName"),
            type = "string",
            name = "ProductName",
            target_id = prelude.String.id,
        }),
        ManufacturerAccountId = schema.new({
            id = id.from(_N, "ResaleAuthorizationSummary", "ManufacturerAccountId"),
            type = "string",
            name = "ManufacturerAccountId",
            target_id = prelude.String.id,
        }),
        ManufacturerLegalName = schema.new({
            id = id.from(_N, "ResaleAuthorizationSummary", "ManufacturerLegalName"),
            type = "string",
            name = "ManufacturerLegalName",
            target_id = prelude.String.id,
        }),
        ResellerAccountID = schema.new({
            id = id.from(_N, "ResaleAuthorizationSummary", "ResellerAccountID"),
            type = "string",
            name = "ResellerAccountID",
            target_id = prelude.String.id,
        }),
        ResellerLegalName = schema.new({
            id = id.from(_N, "ResaleAuthorizationSummary", "ResellerLegalName"),
            type = "string",
            name = "ResellerLegalName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ResaleAuthorizationSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        OfferExtendedStatus = schema.new({
            id = id.from(_N, "ResaleAuthorizationSummary", "OfferExtendedStatus"),
            type = "string",
            name = "OfferExtendedStatus",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "ResaleAuthorizationSummary", "CreatedDate"),
            type = "string",
            name = "CreatedDate",
            target_id = prelude.String.id,
        }),
        AvailabilityEndDate = schema.new({
            id = id.from(_N, "ResaleAuthorizationSummary", "AvailabilityEndDate"),
            type = "string",
            name = "AvailabilityEndDate",
            target_id = prelude.String.id,
        }),
    },
})

M.SaaSProductSummary = schema.new({
    id = id.from(_N, "SaaSProductSummary"),
    type = "structure",
    members = {
        ProductTitle = schema.new({
            id = id.from(_N, "SaaSProductSummary", "ProductTitle"),
            type = "string",
            name = "ProductTitle",
            target_id = prelude.String.id,
        }),
        Visibility = schema.new({
            id = id.from(_N, "SaaSProductSummary", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
        }),
    },
})

M.EntitySummary = schema.new({
    id = id.from(_N, "EntitySummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "EntitySummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        EntityType = schema.new({
            id = id.from(_N, "EntitySummary", "EntityType"),
            type = "string",
            name = "EntityType",
            target_id = prelude.String.id,
        }),
        EntityId = schema.new({
            id = id.from(_N, "EntitySummary", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
        }),
        EntityArn = schema.new({
            id = id.from(_N, "EntitySummary", "EntityArn"),
            type = "string",
            name = "EntityArn",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "EntitySummary", "LastModifiedDate"),
            type = "string",
            name = "LastModifiedDate",
            target_id = prelude.String.id,
        }),
        Visibility = schema.new({
            id = id.from(_N, "EntitySummary", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
        }),
        AmiProductSummary = schema.new({
            id = id.from(_N, "EntitySummary", "AmiProductSummary"),
            type = "structure",
            name = "AmiProductSummary",
            target_id = id.from(_N, "AmiProductSummary"),
            target = M.AmiProductSummary,
        }),
        ContainerProductSummary = schema.new({
            id = id.from(_N, "EntitySummary", "ContainerProductSummary"),
            type = "structure",
            name = "ContainerProductSummary",
            target_id = id.from(_N, "ContainerProductSummary"),
            target = M.ContainerProductSummary,
        }),
        DataProductSummary = schema.new({
            id = id.from(_N, "EntitySummary", "DataProductSummary"),
            type = "structure",
            name = "DataProductSummary",
            target_id = id.from(_N, "DataProductSummary"),
            target = M.DataProductSummary,
        }),
        SaaSProductSummary = schema.new({
            id = id.from(_N, "EntitySummary", "SaaSProductSummary"),
            type = "structure",
            name = "SaaSProductSummary",
            target_id = id.from(_N, "SaaSProductSummary"),
            target = M.SaaSProductSummary,
        }),
        OfferSummary = schema.new({
            id = id.from(_N, "EntitySummary", "OfferSummary"),
            type = "structure",
            name = "OfferSummary",
            target_id = id.from(_N, "OfferSummary"),
            target = M.OfferSummary,
        }),
        ResaleAuthorizationSummary = schema.new({
            id = id.from(_N, "EntitySummary", "ResaleAuthorizationSummary"),
            type = "structure",
            name = "ResaleAuthorizationSummary",
            target_id = id.from(_N, "ResaleAuthorizationSummary"),
            target = M.ResaleAuthorizationSummary,
        }),
        MachineLearningProductSummary = schema.new({
            id = id.from(_N, "EntitySummary", "MachineLearningProductSummary"),
            type = "structure",
            name = "MachineLearningProductSummary",
            target_id = id.from(_N, "MachineLearningProductSummary"),
            target = M.MachineLearningProductSummary,
        }),
        OfferSetSummary = schema.new({
            id = id.from(_N, "EntitySummary", "OfferSetSummary"),
            type = "structure",
            name = "OfferSetSummary",
            target_id = id.from(_N, "OfferSetSummary"),
            target = M.OfferSetSummary,
        }),
    },
})

M.ListEntitiesOutput = schema.new({
    id = id.from(_N, "ListEntitiesOutput"),
    type = "structure",
    members = {
        EntitySummaryList = schema.new({
            id = id.from(_N, "ListEntitiesOutput", "EntitySummaryList"),
            type = "list",
            name = "EntitySummaryList",
            target_id = prelude.Document.id,
            list_member = M.EntitySummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEntitiesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Policy = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyOutput"),
    type = "structure",
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Change = schema.new({
    id = id.from(_N, "Change"),
    type = "structure",
    members = {
        ChangeType = schema.new({
            id = id.from(_N, "Change", "ChangeType"),
            type = "string",
            name = "ChangeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Entity = schema.new({
            id = id.from(_N, "Change", "Entity"),
            type = "structure",
            name = "Entity",
            target_id = id.from(_N, "Entity"),
            target = M.Entity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityTags = schema.new({
            id = id.from(_N, "Change", "EntityTags"),
            type = "list",
            name = "EntityTags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Details = schema.new({
            id = id.from(_N, "Change", "Details"),
            type = "string",
            name = "Details",
            target_id = prelude.String.id,
        }),
        DetailsDocument = schema.new({
            id = id.from(_N, "Change", "DetailsDocument"),
            type = "document",
            name = "DetailsDocument",
            target_id = prelude.Document.id,
        }),
        ChangeName = schema.new({
            id = id.from(_N, "Change", "ChangeName"),
            type = "string",
            name = "ChangeName",
            target_id = prelude.String.id,
        }),
    },
})

M.StartChangeSetInput = schema.new({
    id = id.from(_N, "StartChangeSetInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "StartChangeSetInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeSet = schema.new({
            id = id.from(_N, "StartChangeSetInput", "ChangeSet"),
            type = "list",
            name = "ChangeSet",
            target_id = prelude.Document.id,
            list_member = M.Change,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeSetName = schema.new({
            id = id.from(_N, "StartChangeSetInput", "ChangeSetName"),
            type = "string",
            name = "ChangeSetName",
            target_id = prelude.String.id,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartChangeSetInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ChangeSetTags = schema.new({
            id = id.from(_N, "StartChangeSetInput", "ChangeSetTags"),
            type = "list",
            name = "ChangeSetTags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Intent = schema.new({
            id = id.from(_N, "StartChangeSetInput", "Intent"),
            type = "string",
            name = "Intent",
            target_id = prelude.String.id,
        }),
    },
})

M.StartChangeSetOutput = schema.new({
    id = id.from(_N, "StartChangeSetOutput"),
    type = "structure",
    members = {
        ChangeSetId = schema.new({
            id = id.from(_N, "StartChangeSetOutput", "ChangeSetId"),
            type = "string",
            name = "ChangeSetId",
            target_id = prelude.String.id,
        }),
        ChangeSetArn = schema.new({
            id = id.from(_N, "StartChangeSetOutput", "ChangeSetArn"),
            type = "string",
            name = "ChangeSetArn",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
