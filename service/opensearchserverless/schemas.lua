local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.opensearchserverless"

local M = {}

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAccessPolicyInput = schema.new({
    id = id.from(_N, "CreateAccessPolicyInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "CreateAccessPolicyInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateAccessPolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateAccessPolicyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "CreateAccessPolicyInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAccessPolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.AccessPolicyDetail = schema.new({
    id = id.from(_N, "AccessPolicyDetail"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "AccessPolicyDetail", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AccessPolicyDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        policyVersion = schema.new({
            id = id.from(_N, "AccessPolicyDetail", "policyVersion"),
            type = "string",
            name = "policyVersion",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "AccessPolicyDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "AccessPolicyDetail", "policy"),
            type = "document",
            name = "policy",
            target_id = prelude.Document.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "AccessPolicyDetail", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "AccessPolicyDetail", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
    },
})

M.CreateAccessPolicyOutput = schema.new({
    id = id.from(_N, "CreateAccessPolicyOutput"),
    type = "structure",
    members = {
        accessPolicyDetail = schema.new({
            id = id.from(_N, "CreateAccessPolicyOutput", "accessPolicyDetail"),
            type = "structure",
            name = "accessPolicyDetail",
            target_id = id.from(_N, "AccessPolicyDetail"),
            target = M.AccessPolicyDetail,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        serviceCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
            type = "string",
            name = "quotaCode",
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
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAccessPolicyInput = schema.new({
    id = id.from(_N, "DeleteAccessPolicyInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "DeleteAccessPolicyInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteAccessPolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteAccessPolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteAccessPolicyOutput = schema.new({
    id = id.from(_N, "DeleteAccessPolicyOutput"),
    type = "structure",
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAccessPolicyInput = schema.new({
    id = id.from(_N, "GetAccessPolicyInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "GetAccessPolicyInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetAccessPolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAccessPolicyOutput = schema.new({
    id = id.from(_N, "GetAccessPolicyOutput"),
    type = "structure",
    members = {
        accessPolicyDetail = schema.new({
            id = id.from(_N, "GetAccessPolicyOutput", "accessPolicyDetail"),
            type = "structure",
            name = "accessPolicyDetail",
            target_id = id.from(_N, "AccessPolicyDetail"),
            target = M.AccessPolicyDetail,
        }),
    },
})

M.ListAccessPoliciesInput = schema.new({
    id = id.from(_N, "ListAccessPoliciesInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resource = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "resource"),
            type = "list",
            name = "resource",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AccessPolicySummary = schema.new({
    id = id.from(_N, "AccessPolicySummary"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "AccessPolicySummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AccessPolicySummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        policyVersion = schema.new({
            id = id.from(_N, "AccessPolicySummary", "policyVersion"),
            type = "string",
            name = "policyVersion",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "AccessPolicySummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "AccessPolicySummary", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "AccessPolicySummary", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
    },
})

M.ListAccessPoliciesOutput = schema.new({
    id = id.from(_N, "ListAccessPoliciesOutput"),
    type = "structure",
    members = {
        accessPolicySummaries = schema.new({
            id = id.from(_N, "ListAccessPoliciesOutput", "accessPolicySummaries"),
            type = "list",
            name = "accessPolicySummaries",
            target_id = prelude.Document.id,
            list_member = M.AccessPolicySummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessPoliciesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAccessPolicyInput = schema.new({
    id = id.from(_N, "UpdateAccessPolicyInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "UpdateAccessPolicyInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAccessPolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyVersion = schema.new({
            id = id.from(_N, "UpdateAccessPolicyInput", "policyVersion"),
            type = "string",
            name = "policyVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateAccessPolicyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "UpdateAccessPolicyInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateAccessPolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateAccessPolicyOutput = schema.new({
    id = id.from(_N, "UpdateAccessPolicyOutput"),
    type = "structure",
    members = {
        accessPolicyDetail = schema.new({
            id = id.from(_N, "UpdateAccessPolicyOutput", "accessPolicyDetail"),
            type = "structure",
            name = "accessPolicyDetail",
            target_id = id.from(_N, "AccessPolicyDetail"),
            target = M.AccessPolicyDetail,
        }),
    },
})

M.AccessPolicyStats = schema.new({
    id = id.from(_N, "AccessPolicyStats"),
    type = "structure",
    members = {
        DataPolicyCount = schema.new({
            id = id.from(_N, "AccessPolicyStats", "DataPolicyCount"),
            type = "long",
            name = "DataPolicyCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.CapacityLimits = schema.new({
    id = id.from(_N, "CapacityLimits"),
    type = "structure",
    members = {
        maxIndexingCapacityInOCU = schema.new({
            id = id.from(_N, "CapacityLimits", "maxIndexingCapacityInOCU"),
            type = "integer",
            name = "maxIndexingCapacityInOCU",
            target_id = prelude.Integer.id,
        }),
        maxSearchCapacityInOCU = schema.new({
            id = id.from(_N, "CapacityLimits", "maxSearchCapacityInOCU"),
            type = "integer",
            name = "maxSearchCapacityInOCU",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AccountSettingsDetail = schema.new({
    id = id.from(_N, "AccountSettingsDetail"),
    type = "structure",
    members = {
        capacityLimits = schema.new({
            id = id.from(_N, "AccountSettingsDetail", "capacityLimits"),
            type = "structure",
            name = "capacityLimits",
            target_id = id.from(_N, "CapacityLimits"),
            target = M.CapacityLimits,
        }),
    },
})

M.BatchGetCollectionInput = schema.new({
    id = id.from(_N, "BatchGetCollectionInput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "BatchGetCollectionInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        names = schema.new({
            id = id.from(_N, "BatchGetCollectionInput", "names"),
            type = "list",
            name = "names",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.FipsEndpoints = schema.new({
    id = id.from(_N, "FipsEndpoints"),
    type = "structure",
    members = {
        collectionEndpoint = schema.new({
            id = id.from(_N, "FipsEndpoints", "collectionEndpoint"),
            type = "string",
            name = "collectionEndpoint",
            target_id = prelude.String.id,
        }),
        dashboardEndpoint = schema.new({
            id = id.from(_N, "FipsEndpoints", "dashboardEndpoint"),
            type = "string",
            name = "dashboardEndpoint",
            target_id = prelude.String.id,
        }),
    },
})

M.VectorOptions = schema.new({
    id = id.from(_N, "VectorOptions"),
    type = "structure",
    members = {
        ServerlessVectorAcceleration = schema.new({
            id = id.from(_N, "VectorOptions", "ServerlessVectorAcceleration"),
            type = "string",
            name = "ServerlessVectorAcceleration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CollectionDetail = schema.new({
    id = id.from(_N, "CollectionDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CollectionDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CollectionDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CollectionDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "CollectionDetail", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CollectionDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CollectionDetail", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "CollectionDetail", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        standbyReplicas = schema.new({
            id = id.from(_N, "CollectionDetail", "standbyReplicas"),
            type = "string",
            name = "standbyReplicas",
            target_id = prelude.String.id,
        }),
        vectorOptions = schema.new({
            id = id.from(_N, "CollectionDetail", "vectorOptions"),
            type = "structure",
            name = "vectorOptions",
            target_id = id.from(_N, "VectorOptions"),
            target = M.VectorOptions,
        }),
        createdDate = schema.new({
            id = id.from(_N, "CollectionDetail", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "CollectionDetail", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
        collectionEndpoint = schema.new({
            id = id.from(_N, "CollectionDetail", "collectionEndpoint"),
            type = "string",
            name = "collectionEndpoint",
            target_id = prelude.String.id,
        }),
        dashboardEndpoint = schema.new({
            id = id.from(_N, "CollectionDetail", "dashboardEndpoint"),
            type = "string",
            name = "dashboardEndpoint",
            target_id = prelude.String.id,
        }),
        fipsEndpoints = schema.new({
            id = id.from(_N, "CollectionDetail", "fipsEndpoints"),
            type = "structure",
            name = "fipsEndpoints",
            target_id = id.from(_N, "FipsEndpoints"),
            target = M.FipsEndpoints,
        }),
        failureCode = schema.new({
            id = id.from(_N, "CollectionDetail", "failureCode"),
            type = "string",
            name = "failureCode",
            target_id = prelude.String.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "CollectionDetail", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
        collectionGroupName = schema.new({
            id = id.from(_N, "CollectionDetail", "collectionGroupName"),
            type = "string",
            name = "collectionGroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.CollectionErrorDetail = schema.new({
    id = id.from(_N, "CollectionErrorDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CollectionErrorDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CollectionErrorDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "CollectionErrorDetail", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "CollectionErrorDetail", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetCollectionOutput = schema.new({
    id = id.from(_N, "BatchGetCollectionOutput"),
    type = "structure",
    members = {
        collectionDetails = schema.new({
            id = id.from(_N, "BatchGetCollectionOutput", "collectionDetails"),
            type = "list",
            name = "collectionDetails",
            target_id = prelude.Document.id,
            list_member = M.CollectionDetail,
        }),
        collectionErrorDetails = schema.new({
            id = id.from(_N, "BatchGetCollectionOutput", "collectionErrorDetails"),
            type = "list",
            name = "collectionErrorDetails",
            target_id = prelude.Document.id,
            list_member = M.CollectionErrorDetail,
        }),
    },
})

M.BatchGetCollectionGroupInput = schema.new({
    id = id.from(_N, "BatchGetCollectionGroupInput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "BatchGetCollectionGroupInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        names = schema.new({
            id = id.from(_N, "BatchGetCollectionGroupInput", "names"),
            type = "list",
            name = "names",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CollectionGroupCapacityLimits = schema.new({
    id = id.from(_N, "CollectionGroupCapacityLimits"),
    type = "structure",
    members = {
        maxIndexingCapacityInOCU = schema.new({
            id = id.from(_N, "CollectionGroupCapacityLimits", "maxIndexingCapacityInOCU"),
            type = "float",
            name = "maxIndexingCapacityInOCU",
            target_id = prelude.Float.id,
        }),
        maxSearchCapacityInOCU = schema.new({
            id = id.from(_N, "CollectionGroupCapacityLimits", "maxSearchCapacityInOCU"),
            type = "float",
            name = "maxSearchCapacityInOCU",
            target_id = prelude.Float.id,
        }),
        minIndexingCapacityInOCU = schema.new({
            id = id.from(_N, "CollectionGroupCapacityLimits", "minIndexingCapacityInOCU"),
            type = "float",
            name = "minIndexingCapacityInOCU",
            target_id = prelude.Float.id,
        }),
        minSearchCapacityInOCU = schema.new({
            id = id.from(_N, "CollectionGroupCapacityLimits", "minSearchCapacityInOCU"),
            type = "float",
            name = "minSearchCapacityInOCU",
            target_id = prelude.Float.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Tag", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "Tag", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CollectionGroupDetail = schema.new({
    id = id.from(_N, "CollectionGroupDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CollectionGroupDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CollectionGroupDetail", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CollectionGroupDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        standbyReplicas = schema.new({
            id = id.from(_N, "CollectionGroupDetail", "standbyReplicas"),
            type = "string",
            name = "standbyReplicas",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CollectionGroupDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CollectionGroupDetail", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        createdDate = schema.new({
            id = id.from(_N, "CollectionGroupDetail", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        capacityLimits = schema.new({
            id = id.from(_N, "CollectionGroupDetail", "capacityLimits"),
            type = "structure",
            name = "capacityLimits",
            target_id = id.from(_N, "CollectionGroupCapacityLimits"),
            target = M.CollectionGroupCapacityLimits,
        }),
        numberOfCollections = schema.new({
            id = id.from(_N, "CollectionGroupDetail", "numberOfCollections"),
            type = "integer",
            name = "numberOfCollections",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CollectionGroupErrorDetail = schema.new({
    id = id.from(_N, "CollectionGroupErrorDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CollectionGroupErrorDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CollectionGroupErrorDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "CollectionGroupErrorDetail", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "CollectionGroupErrorDetail", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetCollectionGroupOutput = schema.new({
    id = id.from(_N, "BatchGetCollectionGroupOutput"),
    type = "structure",
    members = {
        collectionGroupDetails = schema.new({
            id = id.from(_N, "BatchGetCollectionGroupOutput", "collectionGroupDetails"),
            type = "list",
            name = "collectionGroupDetails",
            target_id = prelude.Document.id,
            list_member = M.CollectionGroupDetail,
        }),
        collectionGroupErrorDetails = schema.new({
            id = id.from(_N, "BatchGetCollectionGroupOutput", "collectionGroupErrorDetails"),
            type = "list",
            name = "collectionGroupErrorDetails",
            target_id = prelude.Document.id,
            list_member = M.CollectionGroupErrorDetail,
        }),
    },
})

M.LifecyclePolicyResourceIdentifier = schema.new({
    id = id.from(_N, "LifecyclePolicyResourceIdentifier"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "LifecyclePolicyResourceIdentifier", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resource = schema.new({
            id = id.from(_N, "LifecyclePolicyResourceIdentifier", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetEffectiveLifecyclePolicyInput = schema.new({
    id = id.from(_N, "BatchGetEffectiveLifecyclePolicyInput"),
    type = "structure",
    members = {
        resourceIdentifiers = schema.new({
            id = id.from(_N, "BatchGetEffectiveLifecyclePolicyInput", "resourceIdentifiers"),
            type = "list",
            name = "resourceIdentifiers",
            target_id = prelude.Document.id,
            list_member = M.LifecyclePolicyResourceIdentifier,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EffectiveLifecyclePolicyDetail = schema.new({
    id = id.from(_N, "EffectiveLifecyclePolicyDetail"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "EffectiveLifecyclePolicyDetail", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        resource = schema.new({
            id = id.from(_N, "EffectiveLifecyclePolicyDetail", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
        }),
        policyName = schema.new({
            id = id.from(_N, "EffectiveLifecyclePolicyDetail", "policyName"),
            type = "string",
            name = "policyName",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "EffectiveLifecyclePolicyDetail", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        retentionPeriod = schema.new({
            id = id.from(_N, "EffectiveLifecyclePolicyDetail", "retentionPeriod"),
            type = "string",
            name = "retentionPeriod",
            target_id = prelude.String.id,
        }),
        noMinRetentionPeriod = schema.new({
            id = id.from(_N, "EffectiveLifecyclePolicyDetail", "noMinRetentionPeriod"),
            type = "boolean",
            name = "noMinRetentionPeriod",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.EffectiveLifecyclePolicyErrorDetail = schema.new({
    id = id.from(_N, "EffectiveLifecyclePolicyErrorDetail"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "EffectiveLifecyclePolicyErrorDetail", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        resource = schema.new({
            id = id.from(_N, "EffectiveLifecyclePolicyErrorDetail", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "EffectiveLifecyclePolicyErrorDetail", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "EffectiveLifecyclePolicyErrorDetail", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetEffectiveLifecyclePolicyOutput = schema.new({
    id = id.from(_N, "BatchGetEffectiveLifecyclePolicyOutput"),
    type = "structure",
    members = {
        effectiveLifecyclePolicyDetails = schema.new({
            id = id.from(_N, "BatchGetEffectiveLifecyclePolicyOutput", "effectiveLifecyclePolicyDetails"),
            type = "list",
            name = "effectiveLifecyclePolicyDetails",
            target_id = prelude.Document.id,
            list_member = M.EffectiveLifecyclePolicyDetail,
        }),
        effectiveLifecyclePolicyErrorDetails = schema.new({
            id = id.from(_N, "BatchGetEffectiveLifecyclePolicyOutput", "effectiveLifecyclePolicyErrorDetails"),
            type = "list",
            name = "effectiveLifecyclePolicyErrorDetails",
            target_id = prelude.Document.id,
            list_member = M.EffectiveLifecyclePolicyErrorDetail,
        }),
    },
})

M.LifecyclePolicyIdentifier = schema.new({
    id = id.from(_N, "LifecyclePolicyIdentifier"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "LifecyclePolicyIdentifier", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "LifecyclePolicyIdentifier", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetLifecyclePolicyInput = schema.new({
    id = id.from(_N, "BatchGetLifecyclePolicyInput"),
    type = "structure",
    members = {
        identifiers = schema.new({
            id = id.from(_N, "BatchGetLifecyclePolicyInput", "identifiers"),
            type = "list",
            name = "identifiers",
            target_id = prelude.Document.id,
            list_member = M.LifecyclePolicyIdentifier,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LifecyclePolicyDetail = schema.new({
    id = id.from(_N, "LifecyclePolicyDetail"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "LifecyclePolicyDetail", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "LifecyclePolicyDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        policyVersion = schema.new({
            id = id.from(_N, "LifecyclePolicyDetail", "policyVersion"),
            type = "string",
            name = "policyVersion",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "LifecyclePolicyDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "LifecyclePolicyDetail", "policy"),
            type = "document",
            name = "policy",
            target_id = prelude.Document.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "LifecyclePolicyDetail", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "LifecyclePolicyDetail", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
    },
})

M.LifecyclePolicyErrorDetail = schema.new({
    id = id.from(_N, "LifecyclePolicyErrorDetail"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "LifecyclePolicyErrorDetail", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "LifecyclePolicyErrorDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "LifecyclePolicyErrorDetail", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "LifecyclePolicyErrorDetail", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetLifecyclePolicyOutput = schema.new({
    id = id.from(_N, "BatchGetLifecyclePolicyOutput"),
    type = "structure",
    members = {
        lifecyclePolicyDetails = schema.new({
            id = id.from(_N, "BatchGetLifecyclePolicyOutput", "lifecyclePolicyDetails"),
            type = "list",
            name = "lifecyclePolicyDetails",
            target_id = prelude.Document.id,
            list_member = M.LifecyclePolicyDetail,
        }),
        lifecyclePolicyErrorDetails = schema.new({
            id = id.from(_N, "BatchGetLifecyclePolicyOutput", "lifecyclePolicyErrorDetails"),
            type = "list",
            name = "lifecyclePolicyErrorDetails",
            target_id = prelude.Document.id,
            list_member = M.LifecyclePolicyErrorDetail,
        }),
    },
})

M.BatchGetVpcEndpointInput = schema.new({
    id = id.from(_N, "BatchGetVpcEndpointInput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "BatchGetVpcEndpointInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VpcEndpointDetail = schema.new({
    id = id.from(_N, "VpcEndpointDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "VpcEndpointDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "VpcEndpointDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        vpcId = schema.new({
            id = id.from(_N, "VpcEndpointDetail", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
        }),
        subnetIds = schema.new({
            id = id.from(_N, "VpcEndpointDetail", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "VpcEndpointDetail", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "VpcEndpointDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "VpcEndpointDetail", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        failureCode = schema.new({
            id = id.from(_N, "VpcEndpointDetail", "failureCode"),
            type = "string",
            name = "failureCode",
            target_id = prelude.String.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "VpcEndpointDetail", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.VpcEndpointErrorDetail = schema.new({
    id = id.from(_N, "VpcEndpointErrorDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "VpcEndpointErrorDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "VpcEndpointErrorDetail", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "VpcEndpointErrorDetail", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetVpcEndpointOutput = schema.new({
    id = id.from(_N, "BatchGetVpcEndpointOutput"),
    type = "structure",
    members = {
        vpcEndpointDetails = schema.new({
            id = id.from(_N, "BatchGetVpcEndpointOutput", "vpcEndpointDetails"),
            type = "list",
            name = "vpcEndpointDetails",
            target_id = prelude.Document.id,
            list_member = M.VpcEndpointDetail,
        }),
        vpcEndpointErrorDetails = schema.new({
            id = id.from(_N, "BatchGetVpcEndpointOutput", "vpcEndpointErrorDetails"),
            type = "list",
            name = "vpcEndpointErrorDetails",
            target_id = prelude.Document.id,
            list_member = M.VpcEndpointErrorDetail,
        }),
    },
})

M.EncryptionConfig = schema.new({
    id = id.from(_N, "EncryptionConfig"),
    type = "structure",
    members = {
        aWSOwnedKey = schema.new({
            id = id.from(_N, "EncryptionConfig", "aWSOwnedKey"),
            type = "boolean",
            name = "aWSOwnedKey",
            target_id = prelude.Boolean.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "EncryptionConfig", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCollectionInput = schema.new({
    id = id.from(_N, "CreateCollectionInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateCollectionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateCollectionInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateCollectionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateCollectionInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        standbyReplicas = schema.new({
            id = id.from(_N, "CreateCollectionInput", "standbyReplicas"),
            type = "string",
            name = "standbyReplicas",
            target_id = prelude.String.id,
        }),
        vectorOptions = schema.new({
            id = id.from(_N, "CreateCollectionInput", "vectorOptions"),
            type = "structure",
            name = "vectorOptions",
            target_id = id.from(_N, "VectorOptions"),
            target = M.VectorOptions,
        }),
        collectionGroupName = schema.new({
            id = id.from(_N, "CreateCollectionInput", "collectionGroupName"),
            type = "string",
            name = "collectionGroupName",
            target_id = prelude.String.id,
        }),
        encryptionConfig = schema.new({
            id = id.from(_N, "CreateCollectionInput", "encryptionConfig"),
            type = "structure",
            name = "encryptionConfig",
            target_id = id.from(_N, "EncryptionConfig"),
            target = M.EncryptionConfig,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateCollectionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateCollectionDetail = schema.new({
    id = id.from(_N, "CreateCollectionDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        standbyReplicas = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "standbyReplicas"),
            type = "string",
            name = "standbyReplicas",
            target_id = prelude.String.id,
        }),
        vectorOptions = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "vectorOptions"),
            type = "structure",
            name = "vectorOptions",
            target_id = id.from(_N, "VectorOptions"),
            target = M.VectorOptions,
        }),
        createdDate = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
        collectionGroupName = schema.new({
            id = id.from(_N, "CreateCollectionDetail", "collectionGroupName"),
            type = "string",
            name = "collectionGroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCollectionOutput = schema.new({
    id = id.from(_N, "CreateCollectionOutput"),
    type = "structure",
    members = {
        createCollectionDetail = schema.new({
            id = id.from(_N, "CreateCollectionOutput", "createCollectionDetail"),
            type = "structure",
            name = "createCollectionDetail",
            target_id = id.from(_N, "CreateCollectionDetail"),
            target = M.CreateCollectionDetail,
        }),
    },
})

M.OcuLimitExceededException = schema.new({
    id = id.from(_N, "OcuLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OcuLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteCollectionInput = schema.new({
    id = id.from(_N, "DeleteCollectionInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteCollectionInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteCollectionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteCollectionDetail = schema.new({
    id = id.from(_N, "DeleteCollectionDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteCollectionDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "DeleteCollectionDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DeleteCollectionDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCollectionOutput = schema.new({
    id = id.from(_N, "DeleteCollectionOutput"),
    type = "structure",
    members = {
        deleteCollectionDetail = schema.new({
            id = id.from(_N, "DeleteCollectionOutput", "deleteCollectionDetail"),
            type = "structure",
            name = "deleteCollectionDetail",
            target_id = id.from(_N, "DeleteCollectionDetail"),
            target = M.DeleteCollectionDetail,
        }),
    },
})

M.CollectionFilters = schema.new({
    id = id.from(_N, "CollectionFilters"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CollectionFilters", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CollectionFilters", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        collectionGroupName = schema.new({
            id = id.from(_N, "CollectionFilters", "collectionGroupName"),
            type = "string",
            name = "collectionGroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCollectionsInput = schema.new({
    id = id.from(_N, "ListCollectionsInput"),
    type = "structure",
    members = {
        collectionFilters = schema.new({
            id = id.from(_N, "ListCollectionsInput", "collectionFilters"),
            type = "structure",
            name = "collectionFilters",
            target_id = id.from(_N, "CollectionFilters"),
            target = M.CollectionFilters,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCollectionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCollectionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CollectionSummary = schema.new({
    id = id.from(_N, "CollectionSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CollectionSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CollectionSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CollectionSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CollectionSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "CollectionSummary", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        collectionGroupName = schema.new({
            id = id.from(_N, "CollectionSummary", "collectionGroupName"),
            type = "string",
            name = "collectionGroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCollectionsOutput = schema.new({
    id = id.from(_N, "ListCollectionsOutput"),
    type = "structure",
    members = {
        collectionSummaries = schema.new({
            id = id.from(_N, "ListCollectionsOutput", "collectionSummaries"),
            type = "list",
            name = "collectionSummaries",
            target_id = prelude.Document.id,
            list_member = M.CollectionSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCollectionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateCollectionInput = schema.new({
    id = id.from(_N, "UpdateCollectionInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateCollectionInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateCollectionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        vectorOptions = schema.new({
            id = id.from(_N, "UpdateCollectionInput", "vectorOptions"),
            type = "structure",
            name = "vectorOptions",
            target_id = id.from(_N, "VectorOptions"),
            target = M.VectorOptions,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateCollectionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateCollectionDetail = schema.new({
    id = id.from(_N, "UpdateCollectionDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateCollectionDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateCollectionDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateCollectionDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "UpdateCollectionDetail", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateCollectionDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        vectorOptions = schema.new({
            id = id.from(_N, "UpdateCollectionDetail", "vectorOptions"),
            type = "structure",
            name = "vectorOptions",
            target_id = id.from(_N, "VectorOptions"),
            target = M.VectorOptions,
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateCollectionDetail", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "UpdateCollectionDetail", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "UpdateCollectionDetail", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
    },
})

M.UpdateCollectionOutput = schema.new({
    id = id.from(_N, "UpdateCollectionOutput"),
    type = "structure",
    members = {
        updateCollectionDetail = schema.new({
            id = id.from(_N, "UpdateCollectionOutput", "updateCollectionDetail"),
            type = "structure",
            name = "updateCollectionDetail",
            target_id = id.from(_N, "UpdateCollectionDetail"),
            target = M.UpdateCollectionDetail,
        }),
    },
})

M.CreateCollectionGroupInput = schema.new({
    id = id.from(_N, "CreateCollectionGroupInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateCollectionGroupInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        standbyReplicas = schema.new({
            id = id.from(_N, "CreateCollectionGroupInput", "standbyReplicas"),
            type = "string",
            name = "standbyReplicas",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateCollectionGroupInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateCollectionGroupInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        capacityLimits = schema.new({
            id = id.from(_N, "CreateCollectionGroupInput", "capacityLimits"),
            type = "structure",
            name = "capacityLimits",
            target_id = id.from(_N, "CollectionGroupCapacityLimits"),
            target = M.CollectionGroupCapacityLimits,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateCollectionGroupInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateCollectionGroupDetail = schema.new({
    id = id.from(_N, "CreateCollectionGroupDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateCollectionGroupDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CreateCollectionGroupDetail", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateCollectionGroupDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        standbyReplicas = schema.new({
            id = id.from(_N, "CreateCollectionGroupDetail", "standbyReplicas"),
            type = "string",
            name = "standbyReplicas",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateCollectionGroupDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateCollectionGroupDetail", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        createdDate = schema.new({
            id = id.from(_N, "CreateCollectionGroupDetail", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        capacityLimits = schema.new({
            id = id.from(_N, "CreateCollectionGroupDetail", "capacityLimits"),
            type = "structure",
            name = "capacityLimits",
            target_id = id.from(_N, "CollectionGroupCapacityLimits"),
            target = M.CollectionGroupCapacityLimits,
        }),
    },
})

M.CreateCollectionGroupOutput = schema.new({
    id = id.from(_N, "CreateCollectionGroupOutput"),
    type = "structure",
    members = {
        createCollectionGroupDetail = schema.new({
            id = id.from(_N, "CreateCollectionGroupOutput", "createCollectionGroupDetail"),
            type = "structure",
            name = "createCollectionGroupDetail",
            target_id = id.from(_N, "CreateCollectionGroupDetail"),
            target = M.CreateCollectionGroupDetail,
        }),
    },
})

M.DeleteCollectionGroupInput = schema.new({
    id = id.from(_N, "DeleteCollectionGroupInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteCollectionGroupInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteCollectionGroupInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteCollectionGroupOutput = schema.new({
    id = id.from(_N, "DeleteCollectionGroupOutput"),
    type = "structure",
})

M.ListCollectionGroupsInput = schema.new({
    id = id.from(_N, "ListCollectionGroupsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListCollectionGroupsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCollectionGroupsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CollectionGroupSummary = schema.new({
    id = id.from(_N, "CollectionGroupSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CollectionGroupSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CollectionGroupSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CollectionGroupSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        numberOfCollections = schema.new({
            id = id.from(_N, "CollectionGroupSummary", "numberOfCollections"),
            type = "integer",
            name = "numberOfCollections",
            target_id = prelude.Integer.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "CollectionGroupSummary", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        capacityLimits = schema.new({
            id = id.from(_N, "CollectionGroupSummary", "capacityLimits"),
            type = "structure",
            name = "capacityLimits",
            target_id = id.from(_N, "CollectionGroupCapacityLimits"),
            target = M.CollectionGroupCapacityLimits,
        }),
    },
})

M.ListCollectionGroupsOutput = schema.new({
    id = id.from(_N, "ListCollectionGroupsOutput"),
    type = "structure",
    members = {
        collectionGroupSummaries = schema.new({
            id = id.from(_N, "ListCollectionGroupsOutput", "collectionGroupSummaries"),
            type = "list",
            name = "collectionGroupSummaries",
            target_id = prelude.Document.id,
            list_member = M.CollectionGroupSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCollectionGroupsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateCollectionGroupInput = schema.new({
    id = id.from(_N, "UpdateCollectionGroupInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateCollectionGroupInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateCollectionGroupInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        capacityLimits = schema.new({
            id = id.from(_N, "UpdateCollectionGroupInput", "capacityLimits"),
            type = "structure",
            name = "capacityLimits",
            target_id = id.from(_N, "CollectionGroupCapacityLimits"),
            target = M.CollectionGroupCapacityLimits,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateCollectionGroupInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateCollectionGroupDetail = schema.new({
    id = id.from(_N, "UpdateCollectionGroupDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateCollectionGroupDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateCollectionGroupDetail", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateCollectionGroupDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateCollectionGroupDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        capacityLimits = schema.new({
            id = id.from(_N, "UpdateCollectionGroupDetail", "capacityLimits"),
            type = "structure",
            name = "capacityLimits",
            target_id = id.from(_N, "CollectionGroupCapacityLimits"),
            target = M.CollectionGroupCapacityLimits,
        }),
        createdDate = schema.new({
            id = id.from(_N, "UpdateCollectionGroupDetail", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "UpdateCollectionGroupDetail", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
    },
})

M.UpdateCollectionGroupOutput = schema.new({
    id = id.from(_N, "UpdateCollectionGroupOutput"),
    type = "structure",
    members = {
        updateCollectionGroupDetail = schema.new({
            id = id.from(_N, "UpdateCollectionGroupOutput", "updateCollectionGroupDetail"),
            type = "structure",
            name = "updateCollectionGroupDetail",
            target_id = id.from(_N, "UpdateCollectionGroupDetail"),
            target = M.UpdateCollectionGroupDetail,
        }),
    },
})

M.CreateIamIdentityCenterConfigOptions = schema.new({
    id = id.from(_N, "CreateIamIdentityCenterConfigOptions"),
    type = "structure",
    members = {
        instanceArn = schema.new({
            id = id.from(_N, "CreateIamIdentityCenterConfigOptions", "instanceArn"),
            type = "string",
            name = "instanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userAttribute = schema.new({
            id = id.from(_N, "CreateIamIdentityCenterConfigOptions", "userAttribute"),
            type = "string",
            name = "userAttribute",
            target_id = prelude.String.id,
        }),
        groupAttribute = schema.new({
            id = id.from(_N, "CreateIamIdentityCenterConfigOptions", "groupAttribute"),
            type = "string",
            name = "groupAttribute",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateIndexInput = schema.new({
    id = id.from(_N, "CreateIndexInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateIndexInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        indexName = schema.new({
            id = id.from(_N, "CreateIndexInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        indexSchema = schema.new({
            id = id.from(_N, "CreateIndexInput", "indexSchema"),
            type = "document",
            name = "indexSchema",
            target_id = prelude.Document.id,
        }),
    },
})

M.CreateIndexOutput = schema.new({
    id = id.from(_N, "CreateIndexOutput"),
    type = "structure",
})

M.CreateLifecyclePolicyInput = schema.new({
    id = id.from(_N, "CreateLifecyclePolicyInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "CreateLifecyclePolicyInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateLifecyclePolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateLifecyclePolicyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "CreateLifecyclePolicyInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateLifecyclePolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateLifecyclePolicyOutput = schema.new({
    id = id.from(_N, "CreateLifecyclePolicyOutput"),
    type = "structure",
    members = {
        lifecyclePolicyDetail = schema.new({
            id = id.from(_N, "CreateLifecyclePolicyOutput", "lifecyclePolicyDetail"),
            type = "structure",
            name = "lifecyclePolicyDetail",
            target_id = id.from(_N, "LifecyclePolicyDetail"),
            target = M.LifecyclePolicyDetail,
        }),
    },
})

M.IamFederationConfigOptions = schema.new({
    id = id.from(_N, "IamFederationConfigOptions"),
    type = "structure",
    members = {
        groupAttribute = schema.new({
            id = id.from(_N, "IamFederationConfigOptions", "groupAttribute"),
            type = "string",
            name = "groupAttribute",
            target_id = prelude.String.id,
        }),
        userAttribute = schema.new({
            id = id.from(_N, "IamFederationConfigOptions", "userAttribute"),
            type = "string",
            name = "userAttribute",
            target_id = prelude.String.id,
        }),
    },
})

M.SamlConfigOptions = schema.new({
    id = id.from(_N, "SamlConfigOptions"),
    type = "structure",
    members = {
        metadata = schema.new({
            id = id.from(_N, "SamlConfigOptions", "metadata"),
            type = "string",
            name = "metadata",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userAttribute = schema.new({
            id = id.from(_N, "SamlConfigOptions", "userAttribute"),
            type = "string",
            name = "userAttribute",
            target_id = prelude.String.id,
        }),
        groupAttribute = schema.new({
            id = id.from(_N, "SamlConfigOptions", "groupAttribute"),
            type = "string",
            name = "groupAttribute",
            target_id = prelude.String.id,
        }),
        openSearchServerlessEntityId = schema.new({
            id = id.from(_N, "SamlConfigOptions", "openSearchServerlessEntityId"),
            type = "string",
            name = "openSearchServerlessEntityId",
            target_id = prelude.String.id,
        }),
        sessionTimeout = schema.new({
            id = id.from(_N, "SamlConfigOptions", "sessionTimeout"),
            type = "integer",
            name = "sessionTimeout",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateSecurityConfigInput = schema.new({
    id = id.from(_N, "CreateSecurityConfigInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "CreateSecurityConfigInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateSecurityConfigInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateSecurityConfigInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        samlOptions = schema.new({
            id = id.from(_N, "CreateSecurityConfigInput", "samlOptions"),
            type = "structure",
            name = "samlOptions",
            target_id = id.from(_N, "SamlConfigOptions"),
            target = M.SamlConfigOptions,
        }),
        iamIdentityCenterOptions = schema.new({
            id = id.from(_N, "CreateSecurityConfigInput", "iamIdentityCenterOptions"),
            type = "structure",
            name = "iamIdentityCenterOptions",
            target_id = id.from(_N, "CreateIamIdentityCenterConfigOptions"),
            target = M.CreateIamIdentityCenterConfigOptions,
        }),
        iamFederationOptions = schema.new({
            id = id.from(_N, "CreateSecurityConfigInput", "iamFederationOptions"),
            type = "structure",
            name = "iamFederationOptions",
            target_id = id.from(_N, "IamFederationConfigOptions"),
            target = M.IamFederationConfigOptions,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateSecurityConfigInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.IamIdentityCenterConfigOptions = schema.new({
    id = id.from(_N, "IamIdentityCenterConfigOptions"),
    type = "structure",
    members = {
        instanceArn = schema.new({
            id = id.from(_N, "IamIdentityCenterConfigOptions", "instanceArn"),
            type = "string",
            name = "instanceArn",
            target_id = prelude.String.id,
        }),
        applicationArn = schema.new({
            id = id.from(_N, "IamIdentityCenterConfigOptions", "applicationArn"),
            type = "string",
            name = "applicationArn",
            target_id = prelude.String.id,
        }),
        applicationName = schema.new({
            id = id.from(_N, "IamIdentityCenterConfigOptions", "applicationName"),
            type = "string",
            name = "applicationName",
            target_id = prelude.String.id,
        }),
        applicationDescription = schema.new({
            id = id.from(_N, "IamIdentityCenterConfigOptions", "applicationDescription"),
            type = "string",
            name = "applicationDescription",
            target_id = prelude.String.id,
        }),
        userAttribute = schema.new({
            id = id.from(_N, "IamIdentityCenterConfigOptions", "userAttribute"),
            type = "string",
            name = "userAttribute",
            target_id = prelude.String.id,
        }),
        groupAttribute = schema.new({
            id = id.from(_N, "IamIdentityCenterConfigOptions", "groupAttribute"),
            type = "string",
            name = "groupAttribute",
            target_id = prelude.String.id,
        }),
    },
})

M.SecurityConfigDetail = schema.new({
    id = id.from(_N, "SecurityConfigDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "SecurityConfigDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "SecurityConfigDetail", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        configVersion = schema.new({
            id = id.from(_N, "SecurityConfigDetail", "configVersion"),
            type = "string",
            name = "configVersion",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SecurityConfigDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        samlOptions = schema.new({
            id = id.from(_N, "SecurityConfigDetail", "samlOptions"),
            type = "structure",
            name = "samlOptions",
            target_id = id.from(_N, "SamlConfigOptions"),
            target = M.SamlConfigOptions,
        }),
        iamIdentityCenterOptions = schema.new({
            id = id.from(_N, "SecurityConfigDetail", "iamIdentityCenterOptions"),
            type = "structure",
            name = "iamIdentityCenterOptions",
            target_id = id.from(_N, "IamIdentityCenterConfigOptions"),
            target = M.IamIdentityCenterConfigOptions,
        }),
        iamFederationOptions = schema.new({
            id = id.from(_N, "SecurityConfigDetail", "iamFederationOptions"),
            type = "structure",
            name = "iamFederationOptions",
            target_id = id.from(_N, "IamFederationConfigOptions"),
            target = M.IamFederationConfigOptions,
        }),
        createdDate = schema.new({
            id = id.from(_N, "SecurityConfigDetail", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "SecurityConfigDetail", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
    },
})

M.CreateSecurityConfigOutput = schema.new({
    id = id.from(_N, "CreateSecurityConfigOutput"),
    type = "structure",
    members = {
        securityConfigDetail = schema.new({
            id = id.from(_N, "CreateSecurityConfigOutput", "securityConfigDetail"),
            type = "structure",
            name = "securityConfigDetail",
            target_id = id.from(_N, "SecurityConfigDetail"),
            target = M.SecurityConfigDetail,
        }),
    },
})

M.CreateSecurityPolicyInput = schema.new({
    id = id.from(_N, "CreateSecurityPolicyInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "CreateSecurityPolicyInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateSecurityPolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateSecurityPolicyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "CreateSecurityPolicyInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateSecurityPolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.SecurityPolicyDetail = schema.new({
    id = id.from(_N, "SecurityPolicyDetail"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "SecurityPolicyDetail", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "SecurityPolicyDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        policyVersion = schema.new({
            id = id.from(_N, "SecurityPolicyDetail", "policyVersion"),
            type = "string",
            name = "policyVersion",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SecurityPolicyDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "SecurityPolicyDetail", "policy"),
            type = "document",
            name = "policy",
            target_id = prelude.Document.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "SecurityPolicyDetail", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "SecurityPolicyDetail", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
    },
})

M.CreateSecurityPolicyOutput = schema.new({
    id = id.from(_N, "CreateSecurityPolicyOutput"),
    type = "structure",
    members = {
        securityPolicyDetail = schema.new({
            id = id.from(_N, "CreateSecurityPolicyOutput", "securityPolicyDetail"),
            type = "structure",
            name = "securityPolicyDetail",
            target_id = id.from(_N, "SecurityPolicyDetail"),
            target = M.SecurityPolicyDetail,
        }),
    },
})

M.CreateVpcEndpointInput = schema.new({
    id = id.from(_N, "CreateVpcEndpointInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateVpcEndpointInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcId = schema.new({
            id = id.from(_N, "CreateVpcEndpointInput", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnetIds = schema.new({
            id = id.from(_N, "CreateVpcEndpointInput", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "CreateVpcEndpointInput", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateVpcEndpointInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateVpcEndpointDetail = schema.new({
    id = id.from(_N, "CreateVpcEndpointDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateVpcEndpointDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateVpcEndpointDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateVpcEndpointDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateVpcEndpointOutput = schema.new({
    id = id.from(_N, "CreateVpcEndpointOutput"),
    type = "structure",
    members = {
        createVpcEndpointDetail = schema.new({
            id = id.from(_N, "CreateVpcEndpointOutput", "createVpcEndpointDetail"),
            type = "structure",
            name = "createVpcEndpointDetail",
            target_id = id.from(_N, "CreateVpcEndpointDetail"),
            target = M.CreateVpcEndpointDetail,
        }),
    },
})

M.DeleteIndexInput = schema.new({
    id = id.from(_N, "DeleteIndexInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteIndexInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        indexName = schema.new({
            id = id.from(_N, "DeleteIndexInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIndexOutput = schema.new({
    id = id.from(_N, "DeleteIndexOutput"),
    type = "structure",
})

M.DeleteLifecyclePolicyInput = schema.new({
    id = id.from(_N, "DeleteLifecyclePolicyInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "DeleteLifecyclePolicyInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteLifecyclePolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteLifecyclePolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteLifecyclePolicyOutput = schema.new({
    id = id.from(_N, "DeleteLifecyclePolicyOutput"),
    type = "structure",
})

M.DeleteSecurityConfigInput = schema.new({
    id = id.from(_N, "DeleteSecurityConfigInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteSecurityConfigInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteSecurityConfigInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteSecurityConfigOutput = schema.new({
    id = id.from(_N, "DeleteSecurityConfigOutput"),
    type = "structure",
})

M.DeleteSecurityPolicyInput = schema.new({
    id = id.from(_N, "DeleteSecurityPolicyInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "DeleteSecurityPolicyInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteSecurityPolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteSecurityPolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteSecurityPolicyOutput = schema.new({
    id = id.from(_N, "DeleteSecurityPolicyOutput"),
    type = "structure",
})

M.DeleteVpcEndpointInput = schema.new({
    id = id.from(_N, "DeleteVpcEndpointInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteVpcEndpointInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteVpcEndpointInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteVpcEndpointDetail = schema.new({
    id = id.from(_N, "DeleteVpcEndpointDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteVpcEndpointDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "DeleteVpcEndpointDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DeleteVpcEndpointDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteVpcEndpointOutput = schema.new({
    id = id.from(_N, "DeleteVpcEndpointOutput"),
    type = "structure",
    members = {
        deleteVpcEndpointDetail = schema.new({
            id = id.from(_N, "DeleteVpcEndpointOutput", "deleteVpcEndpointDetail"),
            type = "structure",
            name = "deleteVpcEndpointDetail",
            target_id = id.from(_N, "DeleteVpcEndpointDetail"),
            target = M.DeleteVpcEndpointDetail,
        }),
    },
})

M.GetAccountSettingsInput = schema.new({
    id = id.from(_N, "GetAccountSettingsInput"),
    type = "structure",
})

M.GetAccountSettingsOutput = schema.new({
    id = id.from(_N, "GetAccountSettingsOutput"),
    type = "structure",
    members = {
        accountSettingsDetail = schema.new({
            id = id.from(_N, "GetAccountSettingsOutput", "accountSettingsDetail"),
            type = "structure",
            name = "accountSettingsDetail",
            target_id = id.from(_N, "AccountSettingsDetail"),
            target = M.AccountSettingsDetail,
        }),
    },
})

M.GetIndexInput = schema.new({
    id = id.from(_N, "GetIndexInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetIndexInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        indexName = schema.new({
            id = id.from(_N, "GetIndexInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetIndexOutput = schema.new({
    id = id.from(_N, "GetIndexOutput"),
    type = "structure",
    members = {
        indexSchema = schema.new({
            id = id.from(_N, "GetIndexOutput", "indexSchema"),
            type = "document",
            name = "indexSchema",
            target_id = prelude.Document.id,
        }),
    },
})

M.GetPoliciesStatsInput = schema.new({
    id = id.from(_N, "GetPoliciesStatsInput"),
    type = "structure",
})

M.LifecyclePolicyStats = schema.new({
    id = id.from(_N, "LifecyclePolicyStats"),
    type = "structure",
    members = {
        RetentionPolicyCount = schema.new({
            id = id.from(_N, "LifecyclePolicyStats", "RetentionPolicyCount"),
            type = "long",
            name = "RetentionPolicyCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.SecurityConfigStats = schema.new({
    id = id.from(_N, "SecurityConfigStats"),
    type = "structure",
    members = {
        SamlConfigCount = schema.new({
            id = id.from(_N, "SecurityConfigStats", "SamlConfigCount"),
            type = "long",
            name = "SamlConfigCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.SecurityPolicyStats = schema.new({
    id = id.from(_N, "SecurityPolicyStats"),
    type = "structure",
    members = {
        EncryptionPolicyCount = schema.new({
            id = id.from(_N, "SecurityPolicyStats", "EncryptionPolicyCount"),
            type = "long",
            name = "EncryptionPolicyCount",
            target_id = prelude.Long.id,
        }),
        NetworkPolicyCount = schema.new({
            id = id.from(_N, "SecurityPolicyStats", "NetworkPolicyCount"),
            type = "long",
            name = "NetworkPolicyCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.GetPoliciesStatsOutput = schema.new({
    id = id.from(_N, "GetPoliciesStatsOutput"),
    type = "structure",
    members = {
        AccessPolicyStats = schema.new({
            id = id.from(_N, "GetPoliciesStatsOutput", "AccessPolicyStats"),
            type = "structure",
            name = "AccessPolicyStats",
            target_id = id.from(_N, "AccessPolicyStats"),
            target = M.AccessPolicyStats,
        }),
        SecurityPolicyStats = schema.new({
            id = id.from(_N, "GetPoliciesStatsOutput", "SecurityPolicyStats"),
            type = "structure",
            name = "SecurityPolicyStats",
            target_id = id.from(_N, "SecurityPolicyStats"),
            target = M.SecurityPolicyStats,
        }),
        SecurityConfigStats = schema.new({
            id = id.from(_N, "GetPoliciesStatsOutput", "SecurityConfigStats"),
            type = "structure",
            name = "SecurityConfigStats",
            target_id = id.from(_N, "SecurityConfigStats"),
            target = M.SecurityConfigStats,
        }),
        LifecyclePolicyStats = schema.new({
            id = id.from(_N, "GetPoliciesStatsOutput", "LifecyclePolicyStats"),
            type = "structure",
            name = "LifecyclePolicyStats",
            target_id = id.from(_N, "LifecyclePolicyStats"),
            target = M.LifecyclePolicyStats,
        }),
        TotalPolicyCount = schema.new({
            id = id.from(_N, "GetPoliciesStatsOutput", "TotalPolicyCount"),
            type = "long",
            name = "TotalPolicyCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.GetSecurityConfigInput = schema.new({
    id = id.from(_N, "GetSecurityConfigInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetSecurityConfigInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSecurityConfigOutput = schema.new({
    id = id.from(_N, "GetSecurityConfigOutput"),
    type = "structure",
    members = {
        securityConfigDetail = schema.new({
            id = id.from(_N, "GetSecurityConfigOutput", "securityConfigDetail"),
            type = "structure",
            name = "securityConfigDetail",
            target_id = id.from(_N, "SecurityConfigDetail"),
            target = M.SecurityConfigDetail,
        }),
    },
})

M.GetSecurityPolicyInput = schema.new({
    id = id.from(_N, "GetSecurityPolicyInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "GetSecurityPolicyInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetSecurityPolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSecurityPolicyOutput = schema.new({
    id = id.from(_N, "GetSecurityPolicyOutput"),
    type = "structure",
    members = {
        securityPolicyDetail = schema.new({
            id = id.from(_N, "GetSecurityPolicyOutput", "securityPolicyDetail"),
            type = "structure",
            name = "securityPolicyDetail",
            target_id = id.from(_N, "SecurityPolicyDetail"),
            target = M.SecurityPolicyDetail,
        }),
    },
})

M.UpdateIndexInput = schema.new({
    id = id.from(_N, "UpdateIndexInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateIndexInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        indexName = schema.new({
            id = id.from(_N, "UpdateIndexInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        indexSchema = schema.new({
            id = id.from(_N, "UpdateIndexInput", "indexSchema"),
            type = "document",
            name = "indexSchema",
            target_id = prelude.Document.id,
        }),
    },
})

M.UpdateIndexOutput = schema.new({
    id = id.from(_N, "UpdateIndexOutput"),
    type = "structure",
})

M.ListLifecyclePoliciesInput = schema.new({
    id = id.from(_N, "ListLifecyclePoliciesInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ListLifecyclePoliciesInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resources = schema.new({
            id = id.from(_N, "ListLifecyclePoliciesInput", "resources"),
            type = "list",
            name = "resources",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListLifecyclePoliciesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListLifecyclePoliciesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.LifecyclePolicySummary = schema.new({
    id = id.from(_N, "LifecyclePolicySummary"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "LifecyclePolicySummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "LifecyclePolicySummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        policyVersion = schema.new({
            id = id.from(_N, "LifecyclePolicySummary", "policyVersion"),
            type = "string",
            name = "policyVersion",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "LifecyclePolicySummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "LifecyclePolicySummary", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "LifecyclePolicySummary", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
    },
})

M.ListLifecyclePoliciesOutput = schema.new({
    id = id.from(_N, "ListLifecyclePoliciesOutput"),
    type = "structure",
    members = {
        lifecyclePolicySummaries = schema.new({
            id = id.from(_N, "ListLifecyclePoliciesOutput", "lifecyclePolicySummaries"),
            type = "list",
            name = "lifecyclePolicySummaries",
            target_id = prelude.Document.id,
            list_member = M.LifecyclePolicySummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListLifecyclePoliciesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLifecyclePolicyInput = schema.new({
    id = id.from(_N, "UpdateLifecyclePolicyInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "UpdateLifecyclePolicyInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateLifecyclePolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyVersion = schema.new({
            id = id.from(_N, "UpdateLifecyclePolicyInput", "policyVersion"),
            type = "string",
            name = "policyVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateLifecyclePolicyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "UpdateLifecyclePolicyInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateLifecyclePolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateLifecyclePolicyOutput = schema.new({
    id = id.from(_N, "UpdateLifecyclePolicyOutput"),
    type = "structure",
    members = {
        lifecyclePolicyDetail = schema.new({
            id = id.from(_N, "UpdateLifecyclePolicyOutput", "lifecyclePolicyDetail"),
            type = "structure",
            name = "lifecyclePolicyDetail",
            target_id = id.from(_N, "LifecyclePolicyDetail"),
            target = M.LifecyclePolicyDetail,
        }),
    },
})

M.ListSecurityConfigsInput = schema.new({
    id = id.from(_N, "ListSecurityConfigsInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ListSecurityConfigsInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSecurityConfigsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSecurityConfigsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SecurityConfigSummary = schema.new({
    id = id.from(_N, "SecurityConfigSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "SecurityConfigSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "SecurityConfigSummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        configVersion = schema.new({
            id = id.from(_N, "SecurityConfigSummary", "configVersion"),
            type = "string",
            name = "configVersion",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SecurityConfigSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "SecurityConfigSummary", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "SecurityConfigSummary", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
    },
})

M.ListSecurityConfigsOutput = schema.new({
    id = id.from(_N, "ListSecurityConfigsOutput"),
    type = "structure",
    members = {
        securityConfigSummaries = schema.new({
            id = id.from(_N, "ListSecurityConfigsOutput", "securityConfigSummaries"),
            type = "list",
            name = "securityConfigSummaries",
            target_id = prelude.Document.id,
            list_member = M.SecurityConfigSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSecurityConfigsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSecurityPoliciesInput = schema.new({
    id = id.from(_N, "ListSecurityPoliciesInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ListSecurityPoliciesInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resource = schema.new({
            id = id.from(_N, "ListSecurityPoliciesInput", "resource"),
            type = "list",
            name = "resource",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSecurityPoliciesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSecurityPoliciesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SecurityPolicySummary = schema.new({
    id = id.from(_N, "SecurityPolicySummary"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "SecurityPolicySummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "SecurityPolicySummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        policyVersion = schema.new({
            id = id.from(_N, "SecurityPolicySummary", "policyVersion"),
            type = "string",
            name = "policyVersion",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SecurityPolicySummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "SecurityPolicySummary", "createdDate"),
            type = "long",
            name = "createdDate",
            target_id = prelude.Long.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "SecurityPolicySummary", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
    },
})

M.ListSecurityPoliciesOutput = schema.new({
    id = id.from(_N, "ListSecurityPoliciesOutput"),
    type = "structure",
    members = {
        securityPolicySummaries = schema.new({
            id = id.from(_N, "ListSecurityPoliciesOutput", "securityPolicySummaries"),
            type = "list",
            name = "securityPolicySummaries",
            target_id = prelude.Document.id,
            list_member = M.SecurityPolicySummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSecurityPoliciesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
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
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.VpcEndpointFilters = schema.new({
    id = id.from(_N, "VpcEndpointFilters"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "VpcEndpointFilters", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVpcEndpointsInput = schema.new({
    id = id.from(_N, "ListVpcEndpointsInput"),
    type = "structure",
    members = {
        vpcEndpointFilters = schema.new({
            id = id.from(_N, "ListVpcEndpointsInput", "vpcEndpointFilters"),
            type = "structure",
            name = "vpcEndpointFilters",
            target_id = id.from(_N, "VpcEndpointFilters"),
            target = M.VpcEndpointFilters,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVpcEndpointsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListVpcEndpointsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.VpcEndpointSummary = schema.new({
    id = id.from(_N, "VpcEndpointSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "VpcEndpointSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "VpcEndpointSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "VpcEndpointSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVpcEndpointsOutput = schema.new({
    id = id.from(_N, "ListVpcEndpointsOutput"),
    type = "structure",
    members = {
        vpcEndpointSummaries = schema.new({
            id = id.from(_N, "ListVpcEndpointsOutput", "vpcEndpointSummaries"),
            type = "list",
            name = "vpcEndpointSummaries",
            target_id = prelude.Document.id,
            list_member = M.VpcEndpointSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVpcEndpointsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateIamIdentityCenterConfigOptions = schema.new({
    id = id.from(_N, "UpdateIamIdentityCenterConfigOptions"),
    type = "structure",
    members = {
        userAttribute = schema.new({
            id = id.from(_N, "UpdateIamIdentityCenterConfigOptions", "userAttribute"),
            type = "string",
            name = "userAttribute",
            target_id = prelude.String.id,
        }),
        groupAttribute = schema.new({
            id = id.from(_N, "UpdateIamIdentityCenterConfigOptions", "groupAttribute"),
            type = "string",
            name = "groupAttribute",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSecurityConfigInput = schema.new({
    id = id.from(_N, "UpdateSecurityConfigInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateSecurityConfigInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configVersion = schema.new({
            id = id.from(_N, "UpdateSecurityConfigInput", "configVersion"),
            type = "string",
            name = "configVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateSecurityConfigInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        samlOptions = schema.new({
            id = id.from(_N, "UpdateSecurityConfigInput", "samlOptions"),
            type = "structure",
            name = "samlOptions",
            target_id = id.from(_N, "SamlConfigOptions"),
            target = M.SamlConfigOptions,
        }),
        iamIdentityCenterOptionsUpdates = schema.new({
            id = id.from(_N, "UpdateSecurityConfigInput", "iamIdentityCenterOptionsUpdates"),
            type = "structure",
            name = "iamIdentityCenterOptionsUpdates",
            target_id = id.from(_N, "UpdateIamIdentityCenterConfigOptions"),
            target = M.UpdateIamIdentityCenterConfigOptions,
        }),
        iamFederationOptions = schema.new({
            id = id.from(_N, "UpdateSecurityConfigInput", "iamFederationOptions"),
            type = "structure",
            name = "iamFederationOptions",
            target_id = id.from(_N, "IamFederationConfigOptions"),
            target = M.IamFederationConfigOptions,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateSecurityConfigInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateSecurityConfigOutput = schema.new({
    id = id.from(_N, "UpdateSecurityConfigOutput"),
    type = "structure",
    members = {
        securityConfigDetail = schema.new({
            id = id.from(_N, "UpdateSecurityConfigOutput", "securityConfigDetail"),
            type = "structure",
            name = "securityConfigDetail",
            target_id = id.from(_N, "SecurityConfigDetail"),
            target = M.SecurityConfigDetail,
        }),
    },
})

M.UpdateSecurityPolicyInput = schema.new({
    id = id.from(_N, "UpdateSecurityPolicyInput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "UpdateSecurityPolicyInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateSecurityPolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyVersion = schema.new({
            id = id.from(_N, "UpdateSecurityPolicyInput", "policyVersion"),
            type = "string",
            name = "policyVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateSecurityPolicyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "UpdateSecurityPolicyInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateSecurityPolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateSecurityPolicyOutput = schema.new({
    id = id.from(_N, "UpdateSecurityPolicyOutput"),
    type = "structure",
    members = {
        securityPolicyDetail = schema.new({
            id = id.from(_N, "UpdateSecurityPolicyOutput", "securityPolicyDetail"),
            type = "structure",
            name = "securityPolicyDetail",
            target_id = id.from(_N, "SecurityPolicyDetail"),
            target = M.SecurityPolicyDetail,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "list",
            name = "tags",
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
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
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

M.UpdateAccountSettingsInput = schema.new({
    id = id.from(_N, "UpdateAccountSettingsInput"),
    type = "structure",
    members = {
        capacityLimits = schema.new({
            id = id.from(_N, "UpdateAccountSettingsInput", "capacityLimits"),
            type = "structure",
            name = "capacityLimits",
            target_id = id.from(_N, "CapacityLimits"),
            target = M.CapacityLimits,
        }),
    },
})

M.UpdateAccountSettingsOutput = schema.new({
    id = id.from(_N, "UpdateAccountSettingsOutput"),
    type = "structure",
    members = {
        accountSettingsDetail = schema.new({
            id = id.from(_N, "UpdateAccountSettingsOutput", "accountSettingsDetail"),
            type = "structure",
            name = "accountSettingsDetail",
            target_id = id.from(_N, "AccountSettingsDetail"),
            target = M.AccountSettingsDetail,
        }),
    },
})

M.UpdateVpcEndpointInput = schema.new({
    id = id.from(_N, "UpdateVpcEndpointInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateVpcEndpointInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        addSubnetIds = schema.new({
            id = id.from(_N, "UpdateVpcEndpointInput", "addSubnetIds"),
            type = "list",
            name = "addSubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        removeSubnetIds = schema.new({
            id = id.from(_N, "UpdateVpcEndpointInput", "removeSubnetIds"),
            type = "list",
            name = "removeSubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        addSecurityGroupIds = schema.new({
            id = id.from(_N, "UpdateVpcEndpointInput", "addSecurityGroupIds"),
            type = "list",
            name = "addSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        removeSecurityGroupIds = schema.new({
            id = id.from(_N, "UpdateVpcEndpointInput", "removeSecurityGroupIds"),
            type = "list",
            name = "removeSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateVpcEndpointInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateVpcEndpointDetail = schema.new({
    id = id.from(_N, "UpdateVpcEndpointDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateVpcEndpointDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateVpcEndpointDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateVpcEndpointDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        subnetIds = schema.new({
            id = id.from(_N, "UpdateVpcEndpointDetail", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "UpdateVpcEndpointDetail", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "UpdateVpcEndpointDetail", "lastModifiedDate"),
            type = "long",
            name = "lastModifiedDate",
            target_id = prelude.Long.id,
        }),
    },
})

M.UpdateVpcEndpointOutput = schema.new({
    id = id.from(_N, "UpdateVpcEndpointOutput"),
    type = "structure",
    members = {
        UpdateVpcEndpointDetail = schema.new({
            id = id.from(_N, "UpdateVpcEndpointOutput", "UpdateVpcEndpointDetail"),
            type = "structure",
            name = "UpdateVpcEndpointDetail",
            target_id = id.from(_N, "UpdateVpcEndpointDetail"),
            target = M.UpdateVpcEndpointDetail,
        }),
    },
})

return M
