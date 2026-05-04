local M = {}

M.AccessPolicyType = {
    data = "data",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAccessPolicyInput = {
    type = "structure",
    id = "CreateAccessPolicyInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AccessPolicyDetail = {
    type = "structure",
    id = "AccessPolicyDetail",
    members = {
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        policyVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        policy = {
            type = "document",
        },
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
    },
}

M.CreateAccessPolicyOutput = {
    type = "structure",
    id = "CreateAccessPolicyOutput",
    members = {
        accessPolicyDetail = M.AccessPolicyDetail,
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAccessPolicyInput = {
    type = "structure",
    id = "DeleteAccessPolicyInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAccessPolicyOutput = {
    type = "structure",
    id = "DeleteAccessPolicyOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetAccessPolicyInput = {
    type = "structure",
    id = "GetAccessPolicyInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAccessPolicyOutput = {
    type = "structure",
    id = "GetAccessPolicyOutput",
    members = {
        accessPolicyDetail = M.AccessPolicyDetail,
    },
}

M.ListAccessPoliciesInput = {
    type = "structure",
    id = "ListAccessPoliciesInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.AccessPolicySummary = {
    type = "structure",
    id = "AccessPolicySummary",
    members = {
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        policyVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
    },
}

M.ListAccessPoliciesOutput = {
    type = "structure",
    id = "ListAccessPoliciesOutput",
    members = {
        accessPolicySummaries = {
            type = "list",
            member = M.AccessPolicySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateAccessPolicyInput = {
    type = "structure",
    id = "UpdateAccessPolicyInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        policy = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateAccessPolicyOutput = {
    type = "structure",
    id = "UpdateAccessPolicyOutput",
    members = {
        accessPolicyDetail = M.AccessPolicyDetail,
    },
}

M.AccessPolicyStats = {
    type = "structure",
    id = "AccessPolicyStats",
    members = {
        DataPolicyCount = {
            type = "long",
        },
    },
}

M.CapacityLimits = {
    type = "structure",
    id = "CapacityLimits",
    members = {
        maxIndexingCapacityInOCU = {
            type = "integer",
        },
        maxSearchCapacityInOCU = {
            type = "integer",
        },
    },
}

M.AccountSettingsDetail = {
    type = "structure",
    id = "AccountSettingsDetail",
    members = {
        capacityLimits = M.CapacityLimits,
    },
}

M.BatchGetCollectionInput = {
    type = "structure",
    id = "BatchGetCollectionInput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
        names = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FipsEndpoints = {
    type = "structure",
    id = "FipsEndpoints",
    members = {
        collectionEndpoint = {
            type = "string",
        },
        dashboardEndpoint = {
            type = "string",
        },
    },
}

M.StandbyReplicas = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CollectionStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.CollectionType = {
    SEARCH = "SEARCH",
    TIMESERIES = "TIMESERIES",
    VECTORSEARCH = "VECTORSEARCH",
}

M.ServerlessVectorAccelerationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ALLOWED = "ALLOWED",
}

M.VectorOptions = {
    type = "structure",
    id = "VectorOptions",
    members = {
        ServerlessVectorAcceleration = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CollectionDetail = {
    type = "structure",
    id = "CollectionDetail",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        description = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        standbyReplicas = {
            type = "string",
        },
        vectorOptions = M.VectorOptions,
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
        collectionEndpoint = {
            type = "string",
        },
        dashboardEndpoint = {
            type = "string",
        },
        fipsEndpoints = M.FipsEndpoints,
        failureCode = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
        collectionGroupName = {
            type = "string",
        },
    },
}

M.CollectionErrorDetail = {
    type = "structure",
    id = "CollectionErrorDetail",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.BatchGetCollectionOutput = {
    type = "structure",
    id = "BatchGetCollectionOutput",
    members = {
        collectionDetails = {
            type = "list",
            member = M.CollectionDetail,
        },
        collectionErrorDetails = {
            type = "list",
            member = M.CollectionErrorDetail,
        },
    },
}

M.BatchGetCollectionGroupInput = {
    type = "structure",
    id = "BatchGetCollectionGroupInput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
        names = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CollectionGroupCapacityLimits = {
    type = "structure",
    id = "CollectionGroupCapacityLimits",
    members = {
        maxIndexingCapacityInOCU = {
            type = "float",
        },
        maxSearchCapacityInOCU = {
            type = "float",
        },
        minIndexingCapacityInOCU = {
            type = "float",
        },
        minSearchCapacityInOCU = {
            type = "float",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CollectionGroupDetail = {
    type = "structure",
    id = "CollectionGroupDetail",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        standbyReplicas = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        createdDate = {
            type = "long",
        },
        capacityLimits = M.CollectionGroupCapacityLimits,
        numberOfCollections = {
            type = "integer",
        },
    },
}

M.CollectionGroupErrorDetail = {
    type = "structure",
    id = "CollectionGroupErrorDetail",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.BatchGetCollectionGroupOutput = {
    type = "structure",
    id = "BatchGetCollectionGroupOutput",
    members = {
        collectionGroupDetails = {
            type = "list",
            member = M.CollectionGroupDetail,
        },
        collectionGroupErrorDetails = {
            type = "list",
            member = M.CollectionGroupErrorDetail,
        },
    },
}

M.LifecyclePolicyType = {
    retention = "retention",
}

M.LifecyclePolicyResourceIdentifier = {
    type = "structure",
    id = "LifecyclePolicyResourceIdentifier",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetEffectiveLifecyclePolicyInput = {
    type = "structure",
    id = "BatchGetEffectiveLifecyclePolicyInput",
    members = {
        resourceIdentifiers = {
            type = "list",
            member = M.LifecyclePolicyResourceIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceType = {
    index = "index",
}

M.EffectiveLifecyclePolicyDetail = {
    type = "structure",
    id = "EffectiveLifecyclePolicyDetail",
    members = {
        type = {
            type = "string",
        },
        resource = {
            type = "string",
        },
        policyName = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        retentionPeriod = {
            type = "string",
        },
        noMinRetentionPeriod = {
            type = "boolean",
        },
    },
}

M.EffectiveLifecyclePolicyErrorDetail = {
    type = "structure",
    id = "EffectiveLifecyclePolicyErrorDetail",
    members = {
        type = {
            type = "string",
        },
        resource = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.BatchGetEffectiveLifecyclePolicyOutput = {
    type = "structure",
    id = "BatchGetEffectiveLifecyclePolicyOutput",
    members = {
        effectiveLifecyclePolicyDetails = {
            type = "list",
            member = M.EffectiveLifecyclePolicyDetail,
        },
        effectiveLifecyclePolicyErrorDetails = {
            type = "list",
            member = M.EffectiveLifecyclePolicyErrorDetail,
        },
    },
}

M.LifecyclePolicyIdentifier = {
    type = "structure",
    id = "LifecyclePolicyIdentifier",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetLifecyclePolicyInput = {
    type = "structure",
    id = "BatchGetLifecyclePolicyInput",
    members = {
        identifiers = {
            type = "list",
            member = M.LifecyclePolicyIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.LifecyclePolicyDetail = {
    type = "structure",
    id = "LifecyclePolicyDetail",
    members = {
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        policyVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        policy = {
            type = "document",
        },
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
    },
}

M.LifecyclePolicyErrorDetail = {
    type = "structure",
    id = "LifecyclePolicyErrorDetail",
    members = {
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.BatchGetLifecyclePolicyOutput = {
    type = "structure",
    id = "BatchGetLifecyclePolicyOutput",
    members = {
        lifecyclePolicyDetails = {
            type = "list",
            member = M.LifecyclePolicyDetail,
        },
        lifecyclePolicyErrorDetails = {
            type = "list",
            member = M.LifecyclePolicyErrorDetail,
        },
    },
}

M.BatchGetVpcEndpointInput = {
    type = "structure",
    id = "BatchGetVpcEndpointInput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.VpcEndpointStatus = {
    PENDING = "PENDING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.VpcEndpointDetail = {
    type = "structure",
    id = "VpcEndpointDetail",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        createdDate = {
            type = "long",
        },
        failureCode = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.VpcEndpointErrorDetail = {
    type = "structure",
    id = "VpcEndpointErrorDetail",
    members = {
        id = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.BatchGetVpcEndpointOutput = {
    type = "structure",
    id = "BatchGetVpcEndpointOutput",
    members = {
        vpcEndpointDetails = {
            type = "list",
            member = M.VpcEndpointDetail,
        },
        vpcEndpointErrorDetails = {
            type = "list",
            member = M.VpcEndpointErrorDetail,
        },
    },
}

M.EncryptionConfig = {
    type = "structure",
    id = "EncryptionConfig",
    members = {
        aWSOwnedKey = {
            type = "boolean",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.CreateCollectionInput = {
    type = "structure",
    id = "CreateCollectionInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        standbyReplicas = {
            type = "string",
        },
        vectorOptions = M.VectorOptions,
        collectionGroupName = {
            type = "string",
        },
        encryptionConfig = M.EncryptionConfig,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateCollectionDetail = {
    type = "structure",
    id = "CreateCollectionDetail",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        description = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        standbyReplicas = {
            type = "string",
        },
        vectorOptions = M.VectorOptions,
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
        collectionGroupName = {
            type = "string",
        },
    },
}

M.CreateCollectionOutput = {
    type = "structure",
    id = "CreateCollectionOutput",
    members = {
        createCollectionDetail = M.CreateCollectionDetail,
    },
}

M.OcuLimitExceededException = {
    type = "structure",
    id = "OcuLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCollectionInput = {
    type = "structure",
    id = "DeleteCollectionInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteCollectionDetail = {
    type = "structure",
    id = "DeleteCollectionDetail",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DeleteCollectionOutput = {
    type = "structure",
    id = "DeleteCollectionOutput",
    members = {
        deleteCollectionDetail = M.DeleteCollectionDetail,
    },
}

M.CollectionFilters = {
    type = "structure",
    id = "CollectionFilters",
    members = {
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        collectionGroupName = {
            type = "string",
        },
    },
}

M.ListCollectionsInput = {
    type = "structure",
    id = "ListCollectionsInput",
    members = {
        collectionFilters = M.CollectionFilters,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.CollectionSummary = {
    type = "structure",
    id = "CollectionSummary",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        collectionGroupName = {
            type = "string",
        },
    },
}

M.ListCollectionsOutput = {
    type = "structure",
    id = "ListCollectionsOutput",
    members = {
        collectionSummaries = {
            type = "list",
            member = M.CollectionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateCollectionInput = {
    type = "structure",
    id = "UpdateCollectionInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        vectorOptions = M.VectorOptions,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateCollectionDetail = {
    type = "structure",
    id = "UpdateCollectionDetail",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        description = {
            type = "string",
        },
        vectorOptions = M.VectorOptions,
        arn = {
            type = "string",
        },
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
    },
}

M.UpdateCollectionOutput = {
    type = "structure",
    id = "UpdateCollectionOutput",
    members = {
        updateCollectionDetail = M.UpdateCollectionDetail,
    },
}

M.CreateCollectionGroupInput = {
    type = "structure",
    id = "CreateCollectionGroupInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        standbyReplicas = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        capacityLimits = M.CollectionGroupCapacityLimits,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateCollectionGroupDetail = {
    type = "structure",
    id = "CreateCollectionGroupDetail",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        standbyReplicas = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        createdDate = {
            type = "long",
        },
        capacityLimits = M.CollectionGroupCapacityLimits,
    },
}

M.CreateCollectionGroupOutput = {
    type = "structure",
    id = "CreateCollectionGroupOutput",
    members = {
        createCollectionGroupDetail = M.CreateCollectionGroupDetail,
    },
}

M.DeleteCollectionGroupInput = {
    type = "structure",
    id = "DeleteCollectionGroupInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteCollectionGroupOutput = {
    type = "structure",
    id = "DeleteCollectionGroupOutput",
}

M.ListCollectionGroupsInput = {
    type = "structure",
    id = "ListCollectionGroupsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.CollectionGroupSummary = {
    type = "structure",
    id = "CollectionGroupSummary",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        numberOfCollections = {
            type = "integer",
        },
        createdDate = {
            type = "long",
        },
        capacityLimits = M.CollectionGroupCapacityLimits,
    },
}

M.ListCollectionGroupsOutput = {
    type = "structure",
    id = "ListCollectionGroupsOutput",
    members = {
        collectionGroupSummaries = {
            type = "list",
            member = M.CollectionGroupSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateCollectionGroupInput = {
    type = "structure",
    id = "UpdateCollectionGroupInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        capacityLimits = M.CollectionGroupCapacityLimits,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateCollectionGroupDetail = {
    type = "structure",
    id = "UpdateCollectionGroupDetail",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        capacityLimits = M.CollectionGroupCapacityLimits,
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
    },
}

M.UpdateCollectionGroupOutput = {
    type = "structure",
    id = "UpdateCollectionGroupOutput",
    members = {
        updateCollectionGroupDetail = M.UpdateCollectionGroupDetail,
    },
}

M.IamIdentityCenterGroupAttribute = {
    GroupId = "GroupId",
    GroupName = "GroupName",
}

M.IamIdentityCenterUserAttribute = {
    UserId = "UserId",
    UserName = "UserName",
    Email = "Email",
}

M.CreateIamIdentityCenterConfigOptions = {
    type = "structure",
    id = "CreateIamIdentityCenterConfigOptions",
    members = {
        instanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userAttribute = {
            type = "string",
        },
        groupAttribute = {
            type = "string",
        },
    },
}

M.CreateIndexInput = {
    type = "structure",
    id = "CreateIndexInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        indexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        indexSchema = {
            type = "document",
        },
    },
}

M.CreateIndexOutput = {
    type = "structure",
    id = "CreateIndexOutput",
}

M.CreateLifecyclePolicyInput = {
    type = "structure",
    id = "CreateLifecyclePolicyInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateLifecyclePolicyOutput = {
    type = "structure",
    id = "CreateLifecyclePolicyOutput",
    members = {
        lifecyclePolicyDetail = M.LifecyclePolicyDetail,
    },
}

M.IamFederationConfigOptions = {
    type = "structure",
    id = "IamFederationConfigOptions",
    members = {
        groupAttribute = {
            type = "string",
        },
        userAttribute = {
            type = "string",
        },
    },
}

M.SamlConfigOptions = {
    type = "structure",
    id = "SamlConfigOptions",
    members = {
        metadata = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userAttribute = {
            type = "string",
        },
        groupAttribute = {
            type = "string",
        },
        openSearchServerlessEntityId = {
            type = "string",
        },
        sessionTimeout = {
            type = "integer",
        },
    },
}

M.SecurityConfigType = {
    saml = "saml",
    iamidentitycenter = "iamidentitycenter",
    iamfederation = "iamfederation",
}

M.CreateSecurityConfigInput = {
    type = "structure",
    id = "CreateSecurityConfigInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        samlOptions = M.SamlConfigOptions,
        iamIdentityCenterOptions = M.CreateIamIdentityCenterConfigOptions,
        iamFederationOptions = M.IamFederationConfigOptions,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.IamIdentityCenterConfigOptions = {
    type = "structure",
    id = "IamIdentityCenterConfigOptions",
    members = {
        instanceArn = {
            type = "string",
        },
        applicationArn = {
            type = "string",
        },
        applicationName = {
            type = "string",
        },
        applicationDescription = {
            type = "string",
        },
        userAttribute = {
            type = "string",
        },
        groupAttribute = {
            type = "string",
        },
    },
}

M.SecurityConfigDetail = {
    type = "structure",
    id = "SecurityConfigDetail",
    members = {
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        configVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        samlOptions = M.SamlConfigOptions,
        iamIdentityCenterOptions = M.IamIdentityCenterConfigOptions,
        iamFederationOptions = M.IamFederationConfigOptions,
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
    },
}

M.CreateSecurityConfigOutput = {
    type = "structure",
    id = "CreateSecurityConfigOutput",
    members = {
        securityConfigDetail = M.SecurityConfigDetail,
    },
}

M.SecurityPolicyType = {
    encryption = "encryption",
    network = "network",
}

M.CreateSecurityPolicyInput = {
    type = "structure",
    id = "CreateSecurityPolicyInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.SecurityPolicyDetail = {
    type = "structure",
    id = "SecurityPolicyDetail",
    members = {
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        policyVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        policy = {
            type = "document",
        },
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
    },
}

M.CreateSecurityPolicyOutput = {
    type = "structure",
    id = "CreateSecurityPolicyOutput",
    members = {
        securityPolicyDetail = M.SecurityPolicyDetail,
    },
}

M.CreateVpcEndpointInput = {
    type = "structure",
    id = "CreateVpcEndpointInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateVpcEndpointDetail = {
    type = "structure",
    id = "CreateVpcEndpointDetail",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.CreateVpcEndpointOutput = {
    type = "structure",
    id = "CreateVpcEndpointOutput",
    members = {
        createVpcEndpointDetail = M.CreateVpcEndpointDetail,
    },
}

M.DeleteIndexInput = {
    type = "structure",
    id = "DeleteIndexInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        indexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIndexOutput = {
    type = "structure",
    id = "DeleteIndexOutput",
}

M.DeleteLifecyclePolicyInput = {
    type = "structure",
    id = "DeleteLifecyclePolicyInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteLifecyclePolicyOutput = {
    type = "structure",
    id = "DeleteLifecyclePolicyOutput",
}

M.DeleteSecurityConfigInput = {
    type = "structure",
    id = "DeleteSecurityConfigInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteSecurityConfigOutput = {
    type = "structure",
    id = "DeleteSecurityConfigOutput",
}

M.DeleteSecurityPolicyInput = {
    type = "structure",
    id = "DeleteSecurityPolicyInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteSecurityPolicyOutput = {
    type = "structure",
    id = "DeleteSecurityPolicyOutput",
}

M.DeleteVpcEndpointInput = {
    type = "structure",
    id = "DeleteVpcEndpointInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteVpcEndpointDetail = {
    type = "structure",
    id = "DeleteVpcEndpointDetail",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DeleteVpcEndpointOutput = {
    type = "structure",
    id = "DeleteVpcEndpointOutput",
    members = {
        deleteVpcEndpointDetail = M.DeleteVpcEndpointDetail,
    },
}

M.GetAccountSettingsInput = {
    type = "structure",
    id = "GetAccountSettingsInput",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    id = "GetAccountSettingsOutput",
    members = {
        accountSettingsDetail = M.AccountSettingsDetail,
    },
}

M.GetIndexInput = {
    type = "structure",
    id = "GetIndexInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        indexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIndexOutput = {
    type = "structure",
    id = "GetIndexOutput",
    members = {
        indexSchema = {
            type = "document",
        },
    },
}

M.GetPoliciesStatsInput = {
    type = "structure",
    id = "GetPoliciesStatsInput",
}

M.LifecyclePolicyStats = {
    type = "structure",
    id = "LifecyclePolicyStats",
    members = {
        RetentionPolicyCount = {
            type = "long",
        },
    },
}

M.SecurityConfigStats = {
    type = "structure",
    id = "SecurityConfigStats",
    members = {
        SamlConfigCount = {
            type = "long",
        },
    },
}

M.SecurityPolicyStats = {
    type = "structure",
    id = "SecurityPolicyStats",
    members = {
        EncryptionPolicyCount = {
            type = "long",
        },
        NetworkPolicyCount = {
            type = "long",
        },
    },
}

M.GetPoliciesStatsOutput = {
    type = "structure",
    id = "GetPoliciesStatsOutput",
    members = {
        AccessPolicyStats = M.AccessPolicyStats,
        SecurityPolicyStats = M.SecurityPolicyStats,
        SecurityConfigStats = M.SecurityConfigStats,
        LifecyclePolicyStats = M.LifecyclePolicyStats,
        TotalPolicyCount = {
            type = "long",
        },
    },
}

M.GetSecurityConfigInput = {
    type = "structure",
    id = "GetSecurityConfigInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSecurityConfigOutput = {
    type = "structure",
    id = "GetSecurityConfigOutput",
    members = {
        securityConfigDetail = M.SecurityConfigDetail,
    },
}

M.GetSecurityPolicyInput = {
    type = "structure",
    id = "GetSecurityPolicyInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSecurityPolicyOutput = {
    type = "structure",
    id = "GetSecurityPolicyOutput",
    members = {
        securityPolicyDetail = M.SecurityPolicyDetail,
    },
}

M.UpdateIndexInput = {
    type = "structure",
    id = "UpdateIndexInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        indexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        indexSchema = {
            type = "document",
        },
    },
}

M.UpdateIndexOutput = {
    type = "structure",
    id = "UpdateIndexOutput",
}

M.ListLifecyclePoliciesInput = {
    type = "structure",
    id = "ListLifecyclePoliciesInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resources = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.LifecyclePolicySummary = {
    type = "structure",
    id = "LifecyclePolicySummary",
    members = {
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        policyVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
    },
}

M.ListLifecyclePoliciesOutput = {
    type = "structure",
    id = "ListLifecyclePoliciesOutput",
    members = {
        lifecyclePolicySummaries = {
            type = "list",
            member = M.LifecyclePolicySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateLifecyclePolicyInput = {
    type = "structure",
    id = "UpdateLifecyclePolicyInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        policy = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateLifecyclePolicyOutput = {
    type = "structure",
    id = "UpdateLifecyclePolicyOutput",
    members = {
        lifecyclePolicyDetail = M.LifecyclePolicyDetail,
    },
}

M.ListSecurityConfigsInput = {
    type = "structure",
    id = "ListSecurityConfigsInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.SecurityConfigSummary = {
    type = "structure",
    id = "SecurityConfigSummary",
    members = {
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        configVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
    },
}

M.ListSecurityConfigsOutput = {
    type = "structure",
    id = "ListSecurityConfigsOutput",
    members = {
        securityConfigSummaries = {
            type = "list",
            member = M.SecurityConfigSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSecurityPoliciesInput = {
    type = "structure",
    id = "ListSecurityPoliciesInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.SecurityPolicySummary = {
    type = "structure",
    id = "SecurityPolicySummary",
    members = {
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        policyVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "long",
        },
        lastModifiedDate = {
            type = "long",
        },
    },
}

M.ListSecurityPoliciesOutput = {
    type = "structure",
    id = "ListSecurityPoliciesOutput",
    members = {
        securityPolicySummaries = {
            type = "list",
            member = M.SecurityPolicySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
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
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.VpcEndpointFilters = {
    type = "structure",
    id = "VpcEndpointFilters",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ListVpcEndpointsInput = {
    type = "structure",
    id = "ListVpcEndpointsInput",
    members = {
        vpcEndpointFilters = M.VpcEndpointFilters,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.VpcEndpointSummary = {
    type = "structure",
    id = "VpcEndpointSummary",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ListVpcEndpointsOutput = {
    type = "structure",
    id = "ListVpcEndpointsOutput",
    members = {
        vpcEndpointSummaries = {
            type = "list",
            member = M.VpcEndpointSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateIamIdentityCenterConfigOptions = {
    type = "structure",
    id = "UpdateIamIdentityCenterConfigOptions",
    members = {
        userAttribute = {
            type = "string",
        },
        groupAttribute = {
            type = "string",
        },
    },
}

M.UpdateSecurityConfigInput = {
    type = "structure",
    id = "UpdateSecurityConfigInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        samlOptions = M.SamlConfigOptions,
        iamIdentityCenterOptionsUpdates = M.UpdateIamIdentityCenterConfigOptions,
        iamFederationOptions = M.IamFederationConfigOptions,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateSecurityConfigOutput = {
    type = "structure",
    id = "UpdateSecurityConfigOutput",
    members = {
        securityConfigDetail = M.SecurityConfigDetail,
    },
}

M.UpdateSecurityPolicyInput = {
    type = "structure",
    id = "UpdateSecurityPolicyInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        policy = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateSecurityPolicyOutput = {
    type = "structure",
    id = "UpdateSecurityPolicyOutput",
    members = {
        securityPolicyDetail = M.SecurityPolicyDetail,
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
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
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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

M.UpdateAccountSettingsInput = {
    type = "structure",
    id = "UpdateAccountSettingsInput",
    members = {
        capacityLimits = M.CapacityLimits,
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    id = "UpdateAccountSettingsOutput",
    members = {
        accountSettingsDetail = M.AccountSettingsDetail,
    },
}

M.UpdateVpcEndpointInput = {
    type = "structure",
    id = "UpdateVpcEndpointInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        addSubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        removeSubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        addSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        removeSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateVpcEndpointDetail = {
    type = "structure",
    id = "UpdateVpcEndpointDetail",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        lastModifiedDate = {
            type = "long",
        },
    },
}

M.UpdateVpcEndpointOutput = {
    type = "structure",
    id = "UpdateVpcEndpointOutput",
    members = {
        UpdateVpcEndpointDetail = M.UpdateVpcEndpointDetail,
    },
}

return M
