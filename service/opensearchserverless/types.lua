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
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
        },
    },
}

M.CreateAccessPolicyOutput = {
    type = "structure",
    members = {
        accessPolicyDetail = {
            type = "structure",
        },
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
        accessPolicyDetail = {
            type = "structure",
        },
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
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
        },
    },
}

M.ListAccessPoliciesOutput = {
    type = "structure",
    members = {
        accessPolicySummaries = {
            type = "list",
            member_type = "structure",
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
        },
    },
}

M.UpdateAccessPolicyOutput = {
    type = "structure",
    members = {
        accessPolicyDetail = {
            type = "structure",
        },
    },
}

M.AccessPolicyStats = {
    type = "structure",
    members = {
        DataPolicyCount = {
            type = "number",
        },
    },
}

M.CapacityLimits = {
    type = "structure",
    members = {
        maxIndexingCapacityInOCU = {
            type = "number",
        },
        maxSearchCapacityInOCU = {
            type = "number",
        },
    },
}

M.AccountSettingsDetail = {
    type = "structure",
    members = {
        capacityLimits = {
            type = "structure",
        },
    },
}

M.BatchGetCollectionInput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member_type = "string",
        },
        names = {
            type = "list",
            member_type = "string",
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
        vectorOptions = {
            type = "structure",
        },
        createdDate = {
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
        },
        collectionEndpoint = {
            type = "string",
        },
        dashboardEndpoint = {
            type = "string",
        },
        fipsEndpoints = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        collectionErrorDetails = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetCollectionGroupInput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member_type = "string",
        },
        names = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CollectionGroupCapacityLimits = {
    type = "structure",
    members = {
        maxIndexingCapacityInOCU = {
            type = "number",
        },
        maxSearchCapacityInOCU = {
            type = "number",
        },
        minIndexingCapacityInOCU = {
            type = "number",
        },
        minSearchCapacityInOCU = {
            type = "number",
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
            member_type = "structure",
        },
        createdDate = {
            type = "number",
        },
        capacityLimits = {
            type = "structure",
        },
        numberOfCollections = {
            type = "number",
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
            member_type = "structure",
        },
        collectionGroupErrorDetails = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        effectiveLifecyclePolicyErrorDetails = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
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
            member_type = "structure",
        },
        lifecyclePolicyErrorDetails = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetVpcEndpointInput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        status = {
            type = "string",
        },
        createdDate = {
            type = "number",
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
            member_type = "structure",
        },
        vpcEndpointErrorDetails = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        standbyReplicas = {
            type = "string",
        },
        vectorOptions = {
            type = "structure",
        },
        collectionGroupName = {
            type = "string",
        },
        encryptionConfig = {
            type = "structure",
        },
        clientToken = {
            type = "string",
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
        vectorOptions = {
            type = "structure",
        },
        createdDate = {
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
        },
        collectionGroupName = {
            type = "string",
        },
    },
}

M.CreateCollectionOutput = {
    type = "structure",
    members = {
        createCollectionDetail = {
            type = "structure",
        },
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
        deleteCollectionDetail = {
            type = "structure",
        },
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
        collectionFilters = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
        vectorOptions = {
            type = "structure",
        },
        clientToken = {
            type = "string",
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
        vectorOptions = {
            type = "structure",
        },
        arn = {
            type = "string",
        },
        createdDate = {
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
        },
    },
}

M.UpdateCollectionOutput = {
    type = "structure",
    members = {
        updateCollectionDetail = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        capacityLimits = {
            type = "structure",
        },
        clientToken = {
            type = "string",
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
            member_type = "structure",
        },
        createdDate = {
            type = "number",
        },
        capacityLimits = {
            type = "structure",
        },
    },
}

M.CreateCollectionGroupOutput = {
    type = "structure",
    members = {
        createCollectionGroupDetail = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        createdDate = {
            type = "number",
        },
        capacityLimits = {
            type = "structure",
        },
    },
}

M.ListCollectionGroupsOutput = {
    type = "structure",
    members = {
        collectionGroupSummaries = {
            type = "list",
            member_type = "structure",
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
        capacityLimits = {
            type = "structure",
        },
        clientToken = {
            type = "string",
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
        capacityLimits = {
            type = "structure",
        },
        createdDate = {
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
        },
    },
}

M.UpdateCollectionGroupOutput = {
    type = "structure",
    members = {
        updateCollectionGroupDetail = {
            type = "structure",
        },
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
        },
    },
}

M.CreateLifecyclePolicyOutput = {
    type = "structure",
    members = {
        lifecyclePolicyDetail = {
            type = "structure",
        },
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
            type = "number",
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
        samlOptions = {
            type = "structure",
        },
        iamIdentityCenterOptions = {
            type = "structure",
        },
        iamFederationOptions = {
            type = "structure",
        },
        clientToken = {
            type = "string",
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
        samlOptions = {
            type = "structure",
        },
        iamIdentityCenterOptions = {
            type = "structure",
        },
        iamFederationOptions = {
            type = "structure",
        },
        createdDate = {
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
        },
    },
}

M.CreateSecurityConfigOutput = {
    type = "structure",
    members = {
        securityConfigDetail = {
            type = "structure",
        },
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
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
        },
    },
}

M.CreateSecurityPolicyOutput = {
    type = "structure",
    members = {
        securityPolicyDetail = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        clientToken = {
            type = "string",
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
        createVpcEndpointDetail = {
            type = "structure",
        },
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
        deleteVpcEndpointDetail = {
            type = "structure",
        },
    },
}

M.GetAccountSettingsInput = {
    type = "structure",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    members = {
        accountSettingsDetail = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.SecurityConfigStats = {
    type = "structure",
    members = {
        SamlConfigCount = {
            type = "number",
        },
    },
}

M.SecurityPolicyStats = {
    type = "structure",
    members = {
        EncryptionPolicyCount = {
            type = "number",
        },
        NetworkPolicyCount = {
            type = "number",
        },
    },
}

M.GetPoliciesStatsOutput = {
    type = "structure",
    members = {
        AccessPolicyStats = {
            type = "structure",
        },
        SecurityPolicyStats = {
            type = "structure",
        },
        SecurityConfigStats = {
            type = "structure",
        },
        LifecyclePolicyStats = {
            type = "structure",
        },
        TotalPolicyCount = {
            type = "number",
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
        securityConfigDetail = {
            type = "structure",
        },
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
        securityPolicyDetail = {
            type = "structure",
        },
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
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
        },
    },
}

M.ListLifecyclePoliciesOutput = {
    type = "structure",
    members = {
        lifecyclePolicySummaries = {
            type = "list",
            member_type = "structure",
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
        },
    },
}

M.UpdateLifecyclePolicyOutput = {
    type = "structure",
    members = {
        lifecyclePolicyDetail = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
        },
    },
}

M.ListSecurityConfigsOutput = {
    type = "structure",
    members = {
        securityConfigSummaries = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            type = "number",
        },
        lastModifiedDate = {
            type = "number",
        },
    },
}

M.ListSecurityPoliciesOutput = {
    type = "structure",
    members = {
        securityPolicySummaries = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        vpcEndpointFilters = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
        samlOptions = {
            type = "structure",
        },
        iamIdentityCenterOptionsUpdates = {
            type = "structure",
        },
        iamFederationOptions = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateSecurityConfigOutput = {
    type = "structure",
    members = {
        securityConfigDetail = {
            type = "structure",
        },
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
        },
    },
}

M.UpdateSecurityPolicyOutput = {
    type = "structure",
    members = {
        securityPolicyDetail = {
            type = "structure",
        },
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
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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

M.UpdateAccountSettingsInput = {
    type = "structure",
    members = {
        capacityLimits = {
            type = "structure",
        },
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    members = {
        accountSettingsDetail = {
            type = "structure",
        },
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
            member_type = "string",
        },
        removeSubnetIds = {
            type = "list",
            member_type = "string",
        },
        addSecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        removeSecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        clientToken = {
            type = "string",
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
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        lastModifiedDate = {
            type = "number",
        },
    },
}

M.UpdateVpcEndpointOutput = {
    type = "structure",
    members = {
        UpdateVpcEndpointDetail = {
            type = "structure",
        },
    },
}

return M
