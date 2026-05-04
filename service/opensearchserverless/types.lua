local M = {}

M.AccessPolicyType = {
    data = "data",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAccessPolicyInput = {
    type = "structure",
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
    members = {
        accessPolicyDetail = M.AccessPolicyDetail,
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAccessPolicyInput = {
    type = "structure",
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
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetAccessPolicyInput = {
    type = "structure",
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
    members = {
        accessPolicyDetail = M.AccessPolicyDetail,
    },
}

M.ListAccessPoliciesInput = {
    type = "structure",
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
    members = {
        accessPolicyDetail = M.AccessPolicyDetail,
    },
}

M.AccessPolicyStats = {
    type = "structure",
    members = {
        DataPolicyCount = {
            type = "long",
        },
    },
}

M.CapacityLimits = {
    type = "structure",
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
    members = {
        capacityLimits = M.CapacityLimits,
    },
}

M.BatchGetCollectionInput = {
    type = "structure",
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
    members = {
        createCollectionDetail = M.CreateCollectionDetail,
    },
}

M.OcuLimitExceededException = {
    type = "structure",
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
    members = {
        deleteCollectionDetail = M.DeleteCollectionDetail,
    },
}

M.CollectionFilters = {
    type = "structure",
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
    members = {
        updateCollectionDetail = M.UpdateCollectionDetail,
    },
}

M.CreateCollectionGroupInput = {
    type = "structure",
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
    members = {
        createCollectionGroupDetail = M.CreateCollectionGroupDetail,
    },
}

M.DeleteCollectionGroupInput = {
    type = "structure",
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
}

M.ListCollectionGroupsInput = {
    type = "structure",
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
}

M.CreateLifecyclePolicyInput = {
    type = "structure",
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
    members = {
        lifecyclePolicyDetail = M.LifecyclePolicyDetail,
    },
}

M.IamFederationConfigOptions = {
    type = "structure",
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
    members = {
        securityPolicyDetail = M.SecurityPolicyDetail,
    },
}

M.CreateVpcEndpointInput = {
    type = "structure",
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
    members = {
        createVpcEndpointDetail = M.CreateVpcEndpointDetail,
    },
}

M.DeleteIndexInput = {
    type = "structure",
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
}

M.DeleteLifecyclePolicyInput = {
    type = "structure",
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
}

M.DeleteSecurityConfigInput = {
    type = "structure",
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
}

M.DeleteSecurityPolicyInput = {
    type = "structure",
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
}

M.DeleteVpcEndpointInput = {
    type = "structure",
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
    members = {
        deleteVpcEndpointDetail = M.DeleteVpcEndpointDetail,
    },
}

M.GetAccountSettingsInput = {
    type = "structure",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    members = {
        accountSettingsDetail = M.AccountSettingsDetail,
    },
}

M.GetIndexInput = {
    type = "structure",
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
    members = {
        indexSchema = {
            type = "document",
        },
    },
}

M.GetPoliciesStatsInput = {
    type = "structure",
}

M.LifecyclePolicyStats = {
    type = "structure",
    members = {
        RetentionPolicyCount = {
            type = "long",
        },
    },
}

M.SecurityConfigStats = {
    type = "structure",
    members = {
        SamlConfigCount = {
            type = "long",
        },
    },
}

M.SecurityPolicyStats = {
    type = "structure",
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
    members = {
        securityConfigDetail = M.SecurityConfigDetail,
    },
}

M.GetSecurityPolicyInput = {
    type = "structure",
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
    members = {
        securityPolicyDetail = M.SecurityPolicyDetail,
    },
}

M.UpdateIndexInput = {
    type = "structure",
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
}

M.ListLifecyclePoliciesInput = {
    type = "structure",
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
    members = {
        lifecyclePolicyDetail = M.LifecyclePolicyDetail,
    },
}

M.ListSecurityConfigsInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.VpcEndpointFilters = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ListVpcEndpointsInput = {
    type = "structure",
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
    members = {
        securityConfigDetail = M.SecurityConfigDetail,
    },
}

M.UpdateSecurityPolicyInput = {
    type = "structure",
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
    members = {
        securityPolicyDetail = M.SecurityPolicyDetail,
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateAccountSettingsInput = {
    type = "structure",
    members = {
        capacityLimits = M.CapacityLimits,
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    members = {
        accountSettingsDetail = M.AccountSettingsDetail,
    },
}

M.UpdateVpcEndpointInput = {
    type = "structure",
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
    members = {
        UpdateVpcEndpointDetail = M.UpdateVpcEndpointDetail,
    },
}

return M
