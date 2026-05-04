local M = {}

M.AcceptChoice = {
    type = "structure",
    members = {
        predictionTarget = {
            type = "string",
            traits = {
                required = true,
            },
        },
        predictionChoice = {
            type = "number",
        },
        editedValue = {
            type = "string",
        },
    },
}

M.AcceptedAssetScope = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptRuleBehavior = {
    ALL = "ALL",
    NONE = "NONE",
}

M.AcceptRule = {
    type = "structure",
    members = {
        rule = {
            type = "string",
        },
        threshold = {
            type = "number",
        },
    },
}

M.AcceptPredictionsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                http_query = "revision",
            },
        },
        acceptRule = {
            type = "structure",
        },
        acceptChoices = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.AcceptPredictionsOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessDeniedException = {
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

M.ConflictException = {
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

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
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

M.ThrottlingException = {
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

M.UnauthorizedException = {
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

M.ValidationException = {
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

M.S3Permission = {
    READ = "READ",
    WRITE = "WRITE",
}

M.Permissions = {
    type = "union",
    members = {
        s3 = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AssetPermission = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        permissions = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptSubscriptionRequestInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        decisionComment = {
            type = "string",
        },
        assetScopes = {
            type = "list",
            member_type = "structure",
        },
        assetPermissions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FormOutput = {
    type = "structure",
    members = {
        formName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeName = {
            type = "string",
        },
        typeRevision = {
            type = "string",
        },
        content = {
            type = "string",
        },
    },
}

M.SubscriptionRequestStatus = {
    PENDING = "PENDING",
    ACCEPTED = "ACCEPTED",
    REJECTED = "REJECTED",
}

M.AssetScope = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.DetailedGlossaryTerm = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        shortDescription = {
            type = "string",
        },
    },
}

M.SubscribedAssetListing = {
    type = "structure",
    members = {
        entityId = {
            type = "string",
        },
        entityRevision = {
            type = "string",
        },
        entityType = {
            type = "string",
        },
        forms = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "structure",
        },
        assetScope = {
            type = "structure",
        },
        permissions = {
            type = "union",
        },
    },
}

M.AssetInDataProductListingItem = {
    type = "structure",
    members = {
        entityId = {
            type = "string",
        },
        entityRevision = {
            type = "string",
        },
        entityType = {
            type = "string",
        },
    },
}

M.SubscribedProductListing = {
    type = "structure",
    members = {
        entityId = {
            type = "string",
        },
        entityRevision = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "structure",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        assetListings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SubscribedListingItem = {
    type = "union",
    members = {
        assetListing = {
            type = "structure",
        },
        productListing = {
            type = "structure",
        },
    },
}

M.SubscribedListing = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        item = {
            type = "union",
            traits = {
                required = true,
            },
        },
        ownerProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerProjectName = {
            type = "string",
        },
    },
}

M.SubscribedGroup = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.SubscribedIamPrincipal = {
    type = "structure",
    members = {
        principalArn = {
            type = "string",
        },
    },
}

M.SubscribedProject = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.IamUserProfileDetails = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        principalId = {
            type = "string",
        },
        sessionName = {
            type = "string",
        },
        groupProfileId = {
            type = "string",
        },
    },
}

M.SsoUserProfileDetails = {
    type = "structure",
    members = {
        username = {
            type = "string",
        },
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
    },
}

M.UserProfileDetails = {
    type = "union",
    members = {
        iam = {
            type = "structure",
        },
        sso = {
            type = "structure",
        },
    },
}

M.SubscribedUser = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        details = {
            type = "union",
        },
    },
}

M.SubscribedPrincipal = {
    type = "union",
    members = {
        project = {
            type = "structure",
        },
        user = {
            type = "structure",
        },
        group = {
            type = "structure",
        },
        iam = {
            type = "structure",
        },
    },
}

M.AcceptSubscriptionRequestOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        requestReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscribedPrincipals = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        reviewerId = {
            type = "string",
        },
        decisionComment = {
            type = "string",
        },
        existingSubscriptionId = {
            type = "string",
        },
        metadataForms = {
            type = "list",
            member_type = "structure",
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
    },
}

M.AccountInfo = {
    type = "structure",
    members = {
        awsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        supportedRegions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountName = {
            type = "string",
        },
    },
}

M.ResolutionStrategy = {
    MANUAL = "MANUAL",
}

M.AccountPoolSummary = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        resolutionStrategy = {
            type = "string",
        },
        domainUnitId = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.CustomAccountPoolHandler = {
    type = "structure",
    members = {
        lambdaFunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lambdaExecutionRoleArn = {
            type = "string",
        },
    },
}

M.AccountSource = {
    type = "union",
    members = {
        accounts = {
            type = "list",
            member_type = "structure",
        },
        customAccountPoolHandler = {
            type = "structure",
        },
    },
}

M.AwsConsoleLinkParameters = {
    type = "structure",
    members = {
        uri = {
            type = "string",
        },
    },
}

M.ActionParameters = {
    type = "union",
    members = {
        awsConsoleLink = {
            type = "structure",
        },
    },
}

M.DataZoneEntityType = {
    DOMAIN_UNIT = "DOMAIN_UNIT",
}

M.OwnerGroupProperties = {
    type = "structure",
    members = {
        groupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OwnerUserProperties = {
    type = "structure",
    members = {
        userIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OwnerProperties = {
    type = "union",
    members = {
        user = {
            type = "structure",
        },
        group = {
            type = "structure",
        },
    },
}

M.AddEntityOwnerInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        owner = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.AddEntityOwnerOutput = {
    type = "structure",
}

M.AdditionalAttributes = {
    type = "structure",
    members = {
        formNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AddToProjectMemberPoolPolicyGrantDetail = {
    type = "structure",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.CreateAssetTypePolicyGrantDetail = {
    type = "structure",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.CreateDomainUnitPolicyGrantDetail = {
    type = "structure",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.Unit = {
    type = "structure",
}

M.CreateEnvironmentProfilePolicyGrantDetail = {
    type = "structure",
    members = {
        domainUnitId = {
            type = "string",
        },
    },
}

M.CreateFormTypePolicyGrantDetail = {
    type = "structure",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.CreateGlossaryPolicyGrantDetail = {
    type = "structure",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.CreateProjectPolicyGrantDetail = {
    type = "structure",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.CreateProjectFromProjectProfilePolicyGrantDetail = {
    type = "structure",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
        projectProfiles = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OverrideDomainUnitOwnersPolicyGrantDetail = {
    type = "structure",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.OverrideProjectOwnersPolicyGrantDetail = {
    type = "structure",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.UseAssetTypePolicyGrantDetail = {
    type = "structure",
    members = {
        domainUnitId = {
            type = "string",
        },
    },
}

M.PolicyGrantDetail = {
    type = "union",
    members = {
        createDomainUnit = {
            type = "structure",
        },
        overrideDomainUnitOwners = {
            type = "structure",
        },
        addToProjectMemberPool = {
            type = "structure",
        },
        overrideProjectOwners = {
            type = "structure",
        },
        createGlossary = {
            type = "structure",
        },
        createFormType = {
            type = "structure",
        },
        createAssetType = {
            type = "structure",
        },
        createProject = {
            type = "structure",
        },
        createEnvironmentProfile = {
            type = "structure",
        },
        delegateCreateEnvironmentProfile = {
            type = "structure",
        },
        createEnvironment = {
            type = "structure",
        },
        createEnvironmentFromBlueprint = {
            type = "structure",
        },
        createProjectFromProjectProfile = {
            type = "structure",
        },
        useAssetType = {
            type = "structure",
        },
    },
}

M.TargetEntityType = {
    DOMAIN_UNIT = "DOMAIN_UNIT",
    ENVIRONMENT_BLUEPRINT_CONFIGURATION = "ENVIRONMENT_BLUEPRINT_CONFIGURATION",
    ENVIRONMENT_PROFILE = "ENVIRONMENT_PROFILE",
    ASSET_TYPE = "ASSET_TYPE",
}

M.ManagedPolicyType = {
    CREATE_DOMAIN_UNIT = "CREATE_DOMAIN_UNIT",
    OVERRIDE_DOMAIN_UNIT_OWNERS = "OVERRIDE_DOMAIN_UNIT_OWNERS",
    ADD_TO_PROJECT_MEMBER_POOL = "ADD_TO_PROJECT_MEMBER_POOL",
    OVERRIDE_PROJECT_OWNERS = "OVERRIDE_PROJECT_OWNERS",
    CREATE_GLOSSARY = "CREATE_GLOSSARY",
    CREATE_FORM_TYPE = "CREATE_FORM_TYPE",
    CREATE_ASSET_TYPE = "CREATE_ASSET_TYPE",
    CREATE_PROJECT = "CREATE_PROJECT",
    CREATE_ENVIRONMENT_PROFILE = "CREATE_ENVIRONMENT_PROFILE",
    DELEGATE_CREATE_ENVIRONMENT_PROFILE = "DELEGATE_CREATE_ENVIRONMENT_PROFILE",
    CREATE_ENVIRONMENT = "CREATE_ENVIRONMENT",
    CREATE_ENVIRONMENT_FROM_BLUEPRINT = "CREATE_ENVIRONMENT_FROM_BLUEPRINT",
    CREATE_PROJECT_FROM_PROJECT_PROFILE = "CREATE_PROJECT_FROM_PROJECT_PROFILE",
    USE_ASSET_TYPE = "USE_ASSET_TYPE",
}

M.DomainUnitDesignation = {
    OWNER = "OWNER",
}

M.AllDomainUnitsGrantFilter = {
    type = "structure",
}

M.DomainUnitGrantFilter = {
    type = "union",
    members = {
        allDomainUnitsGrantFilter = {
            type = "structure",
        },
    },
}

M.DomainUnitPolicyGrantPrincipal = {
    type = "structure",
    members = {
        domainUnitDesignation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainUnitIdentifier = {
            type = "string",
        },
        domainUnitGrantFilter = {
            type = "union",
        },
    },
}

M.GroupPolicyGrantPrincipal = {
    type = "union",
    members = {
        groupIdentifier = {
            type = "string",
        },
    },
}

M.ProjectDesignation = {
    OWNER = "OWNER",
    CONTRIBUTOR = "CONTRIBUTOR",
    PROJECT_CATALOG_STEWARD = "PROJECT_CATALOG_STEWARD",
}

M.DomainUnitFilterForProject = {
    type = "structure",
    members = {
        domainUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.ProjectGrantFilter = {
    type = "union",
    members = {
        domainUnitFilter = {
            type = "structure",
        },
    },
}

M.ProjectPolicyGrantPrincipal = {
    type = "structure",
    members = {
        projectDesignation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectIdentifier = {
            type = "string",
        },
        projectGrantFilter = {
            type = "union",
        },
    },
}

M.AllUsersGrantFilter = {
    type = "structure",
}

M.UserPolicyGrantPrincipal = {
    type = "union",
    members = {
        userIdentifier = {
            type = "string",
        },
        allUsersGrantFilter = {
            type = "structure",
        },
    },
}

M.PolicyGrantPrincipal = {
    type = "union",
    members = {
        user = {
            type = "union",
        },
        group = {
            type = "union",
        },
        project = {
            type = "structure",
        },
        domainUnit = {
            type = "structure",
        },
    },
}

M.AddPolicyGrantInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = {
            type = "union",
            traits = {
                required = true,
            },
        },
        detail = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.AddPolicyGrantOutput = {
    type = "structure",
    members = {
        grantId = {
            type = "string",
        },
    },
}

M.AggregationListItem = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayValue = {
            type = "string",
        },
    },
}

M.AggregationOutputItem = {
    type = "structure",
    members = {
        value = {
            type = "string",
        },
        count = {
            type = "number",
        },
        displayValue = {
            type = "string",
        },
    },
}

M.AggregationOutput = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
        },
        displayValue = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AmazonQPropertiesInput = {
    type = "structure",
    members = {
        isEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        profileArn = {
            type = "string",
        },
        authMode = {
            type = "string",
        },
    },
}

M.AmazonQPropertiesOutput = {
    type = "structure",
    members = {
        isEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        profileArn = {
            type = "string",
        },
        authMode = {
            type = "string",
        },
    },
}

M.AmazonQPropertiesPatch = {
    type = "structure",
    members = {
        isEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        profileArn = {
            type = "string",
        },
        authMode = {
            type = "string",
        },
    },
}

M.ListingStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.AssetListingDetails = {
    type = "structure",
    members = {
        listingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        listingStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FormInput = {
    type = "structure",
    members = {
        formName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeIdentifier = {
            type = "string",
        },
        typeRevision = {
            type = "string",
        },
        content = {
            type = "string",
        },
    },
}

M.BusinessNameGenerationConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.PredictionConfiguration = {
    type = "structure",
    members = {
        businessNameGeneration = {
            type = "structure",
        },
    },
}

M.CreateAssetInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        externalIdentifier = {
            type = "string",
        },
        typeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
        },
        description = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        formsInput = {
            type = "list",
            member_type = "structure",
        },
        owningProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        predictionConfiguration = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.TimeSeriesDataPointSummaryFormOutput = {
    type = "structure",
    members = {
        formName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        contentSummary = {
            type = "string",
        },
        id = {
            type = "string",
        },
    },
}

M.CreateAssetOutput = {
    type = "structure",
    members = {
        id = {
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
        typeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalIdentifier = {
            type = "string",
        },
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        firstRevisionCreatedAt = {
            type = "timestamp",
        },
        firstRevisionCreatedBy = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        governedGlossaryTerms = {
            type = "list",
            member_type = "string",
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        listing = {
            type = "structure",
        },
        formsOutput = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        readOnlyFormsOutput = {
            type = "list",
            member_type = "structure",
        },
        latestTimeSeriesDataPointFormsOutput = {
            type = "list",
            member_type = "structure",
        },
        predictionConfiguration = {
            type = "structure",
        },
    },
}

M.CreateAssetRevisionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        typeRevision = {
            type = "string",
        },
        description = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        formsInput = {
            type = "list",
            member_type = "structure",
        },
        predictionConfiguration = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateAssetRevisionOutput = {
    type = "structure",
    members = {
        id = {
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
        typeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalIdentifier = {
            type = "string",
        },
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        firstRevisionCreatedAt = {
            type = "timestamp",
        },
        firstRevisionCreatedBy = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        governedGlossaryTerms = {
            type = "list",
            member_type = "string",
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        listing = {
            type = "structure",
        },
        formsOutput = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        readOnlyFormsOutput = {
            type = "list",
            member_type = "structure",
        },
        latestTimeSeriesDataPointFormsOutput = {
            type = "list",
            member_type = "structure",
        },
        predictionConfiguration = {
            type = "structure",
        },
    },
}

M.DeleteAssetInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAssetOutput = {
    type = "structure",
}

M.GetAssetInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                http_query = "revision",
            },
        },
    },
}

M.GetAssetOutput = {
    type = "structure",
    members = {
        id = {
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
        typeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalIdentifier = {
            type = "string",
        },
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        firstRevisionCreatedAt = {
            type = "timestamp",
        },
        firstRevisionCreatedBy = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        governedGlossaryTerms = {
            type = "list",
            member_type = "string",
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        listing = {
            type = "structure",
        },
        formsOutput = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        readOnlyFormsOutput = {
            type = "list",
            member_type = "structure",
        },
        latestTimeSeriesDataPointFormsOutput = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ColumnFilterConfiguration = {
    type = "structure",
    members = {
        includedColumnNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EqualToExpression = {
    type = "structure",
    members = {
        columnName = {
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

M.GreaterThanExpression = {
    type = "structure",
    members = {
        columnName = {
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

M.GreaterThanOrEqualToExpression = {
    type = "structure",
    members = {
        columnName = {
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

M.InExpression = {
    type = "structure",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IsNotNullExpression = {
    type = "structure",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IsNullExpression = {
    type = "structure",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LessThanExpression = {
    type = "structure",
    members = {
        columnName = {
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

M.LessThanOrEqualToExpression = {
    type = "structure",
    members = {
        columnName = {
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

M.LikeExpression = {
    type = "structure",
    members = {
        columnName = {
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

M.NotEqualToExpression = {
    type = "structure",
    members = {
        columnName = {
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

M.NotInExpression = {
    type = "structure",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotLikeExpression = {
    type = "structure",
    members = {
        columnName = {
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

M.RowFilterExpression = {
    type = "union",
    members = {
        equalTo = {
            type = "structure",
        },
        notEqualTo = {
            type = "structure",
        },
        greaterThan = {
            type = "structure",
        },
        lessThan = {
            type = "structure",
        },
        greaterThanOrEqualTo = {
            type = "structure",
        },
        lessThanOrEqualTo = {
            type = "structure",
        },
        isNull = {
            type = "structure",
        },
        isNotNull = {
            type = "structure",
        },
        in = {
            type = "structure",
        },
        notIn = {
            type = "structure",
        },
        like = {
            type = "structure",
        },
        notLike = {
            type = "structure",
        },
    },
}

M.FilterStatus = {
    VALID = "VALID",
    INVALID = "INVALID",
}

M.AssetFilterSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetId = {
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
        status = {
            type = "string",
        },
        effectiveColumnNames = {
            type = "list",
            member_type = "string",
        },
        effectiveRowFilter = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.MatchOffset = {
    type = "structure",
    members = {
        startOffset = {
            type = "number",
        },
        endOffset = {
            type = "number",
        },
    },
}

M.TextMatchItem = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
        },
        text = {
            type = "string",
        },
        matchOffsets = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MatchRationaleItem = {
    type = "union",
    members = {
        textMatches = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetItemAdditionalAttributes = {
    type = "structure",
    members = {
        formsOutput = {
            type = "list",
            member_type = "structure",
        },
        readOnlyFormsOutput = {
            type = "list",
            member_type = "structure",
        },
        latestTimeSeriesDataPointFormsOutput = {
            type = "list",
            member_type = "structure",
        },
        matchRationale = {
            type = "list",
            member_type = "union",
        },
    },
}

M.AssetItem = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
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
        typeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalIdentifier = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        firstRevisionCreatedAt = {
            type = "timestamp",
        },
        firstRevisionCreatedBy = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        additionalAttributes = {
            type = "structure",
        },
        governedGlossaryTerms = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AssetListing = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
        },
        assetRevision = {
            type = "string",
        },
        assetType = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        forms = {
            type = "string",
        },
        latestTimeSeriesDataPointForms = {
            type = "list",
            member_type = "structure",
        },
        glossaryTerms = {
            type = "list",
            member_type = "structure",
        },
        governedGlossaryTerms = {
            type = "list",
            member_type = "structure",
        },
        owningProjectId = {
            type = "string",
        },
    },
}

M.AssetListingItemAdditionalAttributes = {
    type = "structure",
    members = {
        forms = {
            type = "string",
        },
        matchRationale = {
            type = "list",
            member_type = "union",
        },
        latestTimeSeriesDataPointForms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetListingItem = {
    type = "structure",
    members = {
        listingId = {
            type = "string",
        },
        listingRevision = {
            type = "string",
        },
        name = {
            type = "string",
        },
        entityId = {
            type = "string",
        },
        entityRevision = {
            type = "string",
        },
        entityType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        listingCreatedBy = {
            type = "string",
        },
        listingUpdatedBy = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "structure",
        },
        governedGlossaryTerms = {
            type = "list",
            member_type = "structure",
        },
        owningProjectId = {
            type = "string",
        },
        additionalAttributes = {
            type = "structure",
        },
    },
}

M.AssetRevision = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.AssetTargetNameMap = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FormEntryInput = {
    type = "structure",
    members = {
        typeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        required = {
            type = "boolean",
        },
    },
}

M.CreateAssetTypeInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
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
        formsInput = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        owningProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FormEntryOutput = {
    type = "structure",
    members = {
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        required = {
            type = "boolean",
        },
    },
}

M.CreateAssetTypeOutput = {
    type = "structure",
    members = {
        domainId = {
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
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        formsOutput = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
            type = "string",
        },
        originDomainId = {
            type = "string",
        },
        originProjectId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.DeleteAssetTypeInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAssetTypeOutput = {
    type = "structure",
}

M.GetAssetTypeInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                http_query = "revision",
            },
        },
    },
}

M.GetAssetTypeOutput = {
    type = "structure",
    members = {
        domainId = {
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
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        formsOutput = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        originDomainId = {
            type = "string",
        },
        originProjectId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.AssetTypeItem = {
    type = "structure",
    members = {
        domainId = {
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
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        formsOutput = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        originDomainId = {
            type = "string",
        },
        originProjectId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.RuleScopeSelectionMode = {
    ALL = "ALL",
    SPECIFIC = "SPECIFIC",
}

M.AssetTypesForRule = {
    type = "structure",
    members = {
        selectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specificAssetTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AssociateEnvironmentRoleInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentRoleArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AssociateEnvironmentRoleOutput = {
    type = "structure",
}

M.GovernedEntityType = {
    ASSET = "ASSET",
}

M.AssociateGovernedTermsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        governedGlossaryTerms = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateGovernedTermsOutput = {
    type = "structure",
}

M.AthenaPropertiesInput = {
    type = "structure",
    members = {
        workgroupName = {
            type = "string",
        },
    },
}

M.AthenaPropertiesOutput = {
    type = "structure",
    members = {
        workgroupName = {
            type = "string",
        },
    },
}

M.AthenaPropertiesPatch = {
    type = "structure",
    members = {
        workgroupName = {
            type = "string",
        },
    },
}

M.AttributeEntityType = {
    ASSET = "ASSET",
    LISTING = "LISTING",
}

M.AttributeError = {
    type = "structure",
    members = {
        attributeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttributeInput = {
    type = "structure",
    members = {
        attributeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forms = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthenticationType = {
    BASIC = "BASIC",
    OAUTH2 = "OAUTH2",
    CUSTOM = "CUSTOM",
}

M.AuthorizationCodeProperties = {
    type = "structure",
    members = {
        authorizationCode = {
            type = "string",
        },
        redirectUri = {
            type = "string",
        },
    },
}

M.OAuth2ClientApplication = {
    type = "structure",
    members = {
        userManagedClientApplicationClientId = {
            type = "string",
        },
        aWSManagedClientApplicationReference = {
            type = "string",
        },
    },
}

M.GlueOAuth2Credentials = {
    type = "structure",
    members = {
        userManagedClientApplicationClientSecret = {
            type = "string",
        },
        accessToken = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        jwtToken = {
            type = "string",
        },
    },
}

M.OAuth2GrantType = {
    AUTHORIZATION_CODE = "AUTHORIZATION_CODE",
    CLIENT_CREDENTIALS = "CLIENT_CREDENTIALS",
    JWT_BEARER = "JWT_BEARER",
}

M.OAuth2Properties = {
    type = "structure",
    members = {
        oAuth2GrantType = {
            type = "string",
        },
        oAuth2ClientApplication = {
            type = "structure",
        },
        tokenUrl = {
            type = "string",
        },
        tokenUrlParametersMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        authorizationCodeProperties = {
            type = "structure",
        },
        oAuth2Credentials = {
            type = "structure",
        },
    },
}

M.AuthenticationConfiguration = {
    type = "structure",
    members = {
        authenticationType = {
            type = "string",
        },
        secretArn = {
            type = "string",
        },
        oAuth2Properties = {
            type = "structure",
        },
    },
}

M.BasicAuthenticationCredentials = {
    type = "structure",
    members = {
        userName = {
            type = "string",
        },
        password = {
            type = "string",
        },
    },
}

M.AuthenticationConfigurationInput = {
    type = "structure",
    members = {
        authenticationType = {
            type = "string",
        },
        oAuth2Properties = {
            type = "structure",
        },
        secretArn = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        basicAuthenticationCredentials = {
            type = "structure",
        },
        customAuthenticationCredentials = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AuthenticationConfigurationPatch = {
    type = "structure",
    members = {
        secretArn = {
            type = "string",
        },
        basicAuthenticationCredentials = {
            type = "structure",
        },
    },
}

M.AuthType = {
    IAM_IDC = "IAM_IDC",
    DISABLED = "DISABLED",
}

M.AwsAccount = {
    type = "union",
    members = {
        awsAccountId = {
            type = "string",
        },
        awsAccountIdPath = {
            type = "string",
        },
    },
}

M.AwsLocation = {
    type = "structure",
    members = {
        accessRole = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        awsRegion = {
            type = "string",
        },
        iamConnectionId = {
            type = "string",
        },
    },
}

M.BatchGetAttributeOutput = {
    type = "structure",
    members = {
        attributeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetAttributesMetadataInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityRevision = {
            type = "string",
            traits = {
                http_query = "entityRevision",
            },
        },
        attributeIdentifiers = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "attributeIdentifier",
                required = true,
            },
        },
    },
}

M.BatchGetAttributesMetadataOutput = {
    type = "structure",
    members = {
        attributes = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutAttributeOutput = {
    type = "structure",
    members = {
        attributeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutAttributesMetadataInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutAttributesMetadataOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CancelMetadataGenerationRunInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelMetadataGenerationRunOutput = {
    type = "structure",
}

M.CancelSubscriptionInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SubscriptionStatus = {
    APPROVED = "APPROVED",
    REVOKED = "REVOKED",
    CANCELLED = "CANCELLED",
}

M.CancelSubscriptionOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        subscribedPrincipal = {
            type = "union",
            traits = {
                required = true,
            },
        },
        subscribedListing = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        subscriptionRequestId = {
            type = "string",
        },
        retainPermissions = {
            type = "boolean",
        },
    },
}

M.CellInformation = {
    type = "structure",
}

M.ChangeAction = {
    PUBLISH = "PUBLISH",
    UNPUBLISH = "UNPUBLISH",
}

M.CloudFormationProperties = {
    type = "structure",
    members = {
        templateUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComputeConfig = {
    type = "structure",
    members = {
        instanceType = {
            type = "string",
        },
        environmentVersion = {
            type = "string",
        },
    },
}

M.ComputeEnvironments = {
    SPARK = "SPARK",
    ATHENA = "ATHENA",
    PYTHON = "PYTHON",
}

M.ConfigurableActionParameter = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.ConfigurableActionTypeAuthorization = {
    IAM = "IAM",
    HTTPS = "HTTPS",
}

M.ConfigurableEnvironmentAction = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        auth = {
            type = "string",
        },
        parameters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Configuration = {
    type = "structure",
    members = {
        classification = {
            type = "string",
        },
        properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ConfigurationStatus = {
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ConnectionCredentials = {
    type = "structure",
    members = {
        accessKeyId = {
            type = "string",
        },
        secretAccessKey = {
            type = "string",
        },
        sessionToken = {
            type = "string",
        },
        expiration = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GlueConnectionType = {
    SNOWFLAKE = "SNOWFLAKE",
    BIGQUERY = "BIGQUERY",
    DOCUMENTDB = "DOCUMENTDB",
    DYNAMODB = "DYNAMODB",
    MYSQL = "MYSQL",
    OPENSEARCH = "OPENSEARCH",
    ORACLE = "ORACLE",
    POSTGRESQL = "POSTGRESQL",
    REDSHIFT = "REDSHIFT",
    SAPHANA = "SAPHANA",
    SQLSERVER = "SQLSERVER",
    TERADATA = "TERADATA",
    VERTICA = "VERTICA",
}

M.PhysicalConnectionRequirements = {
    type = "structure",
    members = {
        subnetId = {
            type = "string",
        },
        subnetIdList = {
            type = "list",
            member_type = "string",
        },
        securityGroupIdList = {
            type = "list",
            member_type = "string",
        },
        availabilityZone = {
            type = "string",
        },
    },
}

M.GlueConnectionInput = {
    type = "structure",
    members = {
        connectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        physicalConnectionRequirements = {
            type = "structure",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        connectionType = {
            type = "string",
        },
        matchCriteria = {
            type = "string",
        },
        validateCredentials = {
            type = "boolean",
        },
        validateForComputeEnvironments = {
            type = "list",
            member_type = "string",
        },
        sparkProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        athenaProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        pythonProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        authenticationConfiguration = {
            type = "structure",
        },
    },
}

M.GluePropertiesInput = {
    type = "structure",
    members = {
        glueConnectionInput = {
            type = "structure",
        },
    },
}

M.HyperPodPropertiesInput = {
    type = "structure",
    members = {
        clusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IamPropertiesInput = {
    type = "structure",
    members = {
        glueLineageSyncEnabled = {
            type = "boolean",
        },
    },
}

M.LakehousePropertiesInput = {
    type = "structure",
    members = {
        glueLineageSyncEnabled = {
            type = "boolean",
        },
    },
}

M.MlflowPropertiesInput = {
    type = "structure",
    members = {
        trackingServerArn = {
            type = "string",
        },
    },
}

M.UsernamePassword = {
    type = "structure",
    members = {
        password = {
            type = "string",
            traits = {
                required = true,
            },
        },
        username = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftCredentials = {
    type = "union",
    members = {
        secretArn = {
            type = "string",
        },
        usernamePassword = {
            type = "structure",
        },
    },
}

M.LineageSyncSchedule = {
    type = "structure",
    members = {
        schedule = {
            type = "string",
        },
    },
}

M.RedshiftLineageSyncConfigurationInput = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
        schedule = {
            type = "structure",
        },
    },
}

M.RedshiftStorageProperties = {
    type = "union",
    members = {
        clusterName = {
            type = "string",
        },
        workgroupName = {
            type = "string",
        },
    },
}

M.RedshiftPropertiesInput = {
    type = "structure",
    members = {
        storage = {
            type = "union",
        },
        databaseName = {
            type = "string",
        },
        host = {
            type = "string",
        },
        port = {
            type = "number",
        },
        credentials = {
            type = "union",
        },
        lineageSync = {
            type = "structure",
        },
    },
}

M.S3PropertiesInput = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3AccessGrantLocationId = {
            type = "string",
        },
        registerS3AccessGrantLocation = {
            type = "boolean",
        },
    },
}

M.SparkEmrPropertiesInput = {
    type = "structure",
    members = {
        computeArn = {
            type = "string",
        },
        instanceProfileArn = {
            type = "string",
        },
        javaVirtualEnv = {
            type = "string",
        },
        logUri = {
            type = "string",
        },
        pythonVirtualEnv = {
            type = "string",
        },
        runtimeRole = {
            type = "string",
        },
        trustedCertificatesS3Uri = {
            type = "string",
        },
        managedEndpointArn = {
            type = "string",
        },
    },
}

M.SparkGlueArgs = {
    type = "structure",
    members = {
        connection = {
            type = "string",
        },
    },
}

M.SparkGluePropertiesInput = {
    type = "structure",
    members = {
        additionalArgs = {
            type = "structure",
        },
        glueConnectionName = {
            type = "string",
        },
        glueConnectionNames = {
            type = "list",
            member_type = "string",
        },
        glueVersion = {
            type = "string",
        },
        idleTimeout = {
            type = "number",
        },
        javaVirtualEnv = {
            type = "string",
        },
        numberOfWorkers = {
            type = "number",
        },
        pythonVirtualEnv = {
            type = "string",
        },
        workerType = {
            type = "string",
        },
    },
}

M.WorkflowsMwaaPropertiesInput = {
    type = "structure",
    members = {
        mwaaEnvironmentName = {
            type = "string",
        },
    },
}

M.WorkflowsServerlessPropertiesInput = {
    type = "structure",
}

M.ConnectionPropertiesInput = {
    type = "union",
    members = {
        athenaProperties = {
            type = "structure",
        },
        glueProperties = {
            type = "structure",
        },
        hyperPodProperties = {
            type = "structure",
        },
        iamProperties = {
            type = "structure",
        },
        redshiftProperties = {
            type = "structure",
        },
        sparkEmrProperties = {
            type = "structure",
        },
        sparkGlueProperties = {
            type = "structure",
        },
        s3Properties = {
            type = "structure",
        },
        amazonQProperties = {
            type = "structure",
        },
        mlflowProperties = {
            type = "structure",
        },
        workflowsMwaaProperties = {
            type = "structure",
        },
        workflowsServerlessProperties = {
            type = "structure",
        },
        lakehouseProperties = {
            type = "structure",
        },
    },
}

M.ConnectionStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    READY = "READY",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETED = "DELETED",
}

M.GluePropertiesOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.HyperPodOrchestrator = {
    EKS = "EKS",
    SLURM = "SLURM",
}

M.HyperPodPropertiesOutput = {
    type = "structure",
    members = {
        clusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterArn = {
            type = "string",
        },
        orchestrator = {
            type = "string",
        },
    },
}

M.IamPropertiesOutput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        glueLineageSyncEnabled = {
            type = "boolean",
        },
    },
}

M.LakehousePropertiesOutput = {
    type = "structure",
    members = {
        glueLineageSyncEnabled = {
            type = "boolean",
        },
    },
}

M.MlflowPropertiesOutput = {
    type = "structure",
    members = {
        trackingServerArn = {
            type = "string",
        },
    },
}

M.RedshiftLineageSyncConfigurationOutput = {
    type = "structure",
    members = {
        lineageJobId = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        schedule = {
            type = "structure",
        },
    },
}

M.RedshiftPropertiesOutput = {
    type = "structure",
    members = {
        storage = {
            type = "union",
        },
        credentials = {
            type = "union",
        },
        isProvisionedSecret = {
            type = "boolean",
        },
        jdbcIamUrl = {
            type = "string",
        },
        jdbcUrl = {
            type = "string",
        },
        redshiftTempDir = {
            type = "string",
        },
        lineageSync = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        databaseName = {
            type = "string",
        },
    },
}

M.S3PropertiesOutput = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3AccessGrantLocationId = {
            type = "string",
        },
        registerS3AccessGrantLocation = {
            type = "boolean",
        },
        status = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.GovernanceType = {
    AWS_MANAGED = "AWS_MANAGED",
    USER_MANAGED = "USER_MANAGED",
}

M.ManagedEndpointCredentials = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        token = {
            type = "string",
        },
    },
}

M.SparkEmrPropertiesOutput = {
    type = "structure",
    members = {
        computeArn = {
            type = "string",
        },
        credentials = {
            type = "structure",
        },
        credentialsExpiration = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        governanceType = {
            type = "string",
        },
        instanceProfileArn = {
            type = "string",
        },
        javaVirtualEnv = {
            type = "string",
        },
        livyEndpoint = {
            type = "string",
        },
        logUri = {
            type = "string",
        },
        pythonVirtualEnv = {
            type = "string",
        },
        runtimeRole = {
            type = "string",
        },
        trustedCertificatesS3Uri = {
            type = "string",
        },
        certificateData = {
            type = "string",
        },
        managedEndpointArn = {
            type = "string",
        },
        managedEndpointCredentials = {
            type = "structure",
        },
    },
}

M.SparkGluePropertiesOutput = {
    type = "structure",
    members = {
        additionalArgs = {
            type = "structure",
        },
        glueConnectionName = {
            type = "string",
        },
        glueConnectionNames = {
            type = "list",
            member_type = "string",
        },
        glueVersion = {
            type = "string",
        },
        idleTimeout = {
            type = "number",
        },
        javaVirtualEnv = {
            type = "string",
        },
        numberOfWorkers = {
            type = "number",
        },
        pythonVirtualEnv = {
            type = "string",
        },
        workerType = {
            type = "string",
        },
    },
}

M.WorkflowsMwaaPropertiesOutput = {
    type = "structure",
    members = {
        mwaaEnvironmentName = {
            type = "string",
        },
    },
}

M.WorkflowsServerlessPropertiesOutput = {
    type = "structure",
}

M.ConnectionPropertiesOutput = {
    type = "union",
    members = {
        athenaProperties = {
            type = "structure",
        },
        glueProperties = {
            type = "structure",
        },
        hyperPodProperties = {
            type = "structure",
        },
        iamProperties = {
            type = "structure",
        },
        redshiftProperties = {
            type = "structure",
        },
        sparkEmrProperties = {
            type = "structure",
        },
        sparkGlueProperties = {
            type = "structure",
        },
        s3Properties = {
            type = "structure",
        },
        amazonQProperties = {
            type = "structure",
        },
        mlflowProperties = {
            type = "structure",
        },
        workflowsMwaaProperties = {
            type = "structure",
        },
        workflowsServerlessProperties = {
            type = "structure",
        },
        lakehouseProperties = {
            type = "structure",
        },
    },
}

M.GlueConnectionPatch = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        connectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        authenticationConfiguration = {
            type = "structure",
        },
    },
}

M.GluePropertiesPatch = {
    type = "structure",
    members = {
        glueConnectionInput = {
            type = "structure",
        },
    },
}

M.IamPropertiesPatch = {
    type = "structure",
    members = {
        glueLineageSyncEnabled = {
            type = "boolean",
        },
    },
}

M.LakehousePropertiesPatch = {
    type = "structure",
    members = {
        glueLineageSyncEnabled = {
            type = "boolean",
        },
    },
}

M.MlflowPropertiesPatch = {
    type = "structure",
    members = {
        trackingServerArn = {
            type = "string",
        },
    },
}

M.RedshiftPropertiesPatch = {
    type = "structure",
    members = {
        storage = {
            type = "union",
        },
        databaseName = {
            type = "string",
        },
        host = {
            type = "string",
        },
        port = {
            type = "number",
        },
        credentials = {
            type = "union",
        },
        lineageSync = {
            type = "structure",
        },
    },
}

M.S3PropertiesPatch = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3AccessGrantLocationId = {
            type = "string",
        },
        registerS3AccessGrantLocation = {
            type = "boolean",
        },
    },
}

M.SparkEmrPropertiesPatch = {
    type = "structure",
    members = {
        computeArn = {
            type = "string",
        },
        instanceProfileArn = {
            type = "string",
        },
        javaVirtualEnv = {
            type = "string",
        },
        logUri = {
            type = "string",
        },
        pythonVirtualEnv = {
            type = "string",
        },
        runtimeRole = {
            type = "string",
        },
        trustedCertificatesS3Uri = {
            type = "string",
        },
        managedEndpointArn = {
            type = "string",
        },
    },
}

M.ConnectionPropertiesPatch = {
    type = "union",
    members = {
        athenaProperties = {
            type = "structure",
        },
        glueProperties = {
            type = "structure",
        },
        iamProperties = {
            type = "structure",
        },
        redshiftProperties = {
            type = "structure",
        },
        sparkEmrProperties = {
            type = "structure",
        },
        s3Properties = {
            type = "structure",
        },
        amazonQProperties = {
            type = "structure",
        },
        mlflowProperties = {
            type = "structure",
        },
        lakehouseProperties = {
            type = "structure",
        },
    },
}

M.ConnectionScope = {
    DOMAIN = "DOMAIN",
    PROJECT = "PROJECT",
}

M.ConnectionType = {
    ATHENA = "ATHENA",
    BIGQUERY = "BIGQUERY",
    DATABRICKS = "DATABRICKS",
    DOCUMENTDB = "DOCUMENTDB",
    DYNAMODB = "DYNAMODB",
    HYPERPOD = "HYPERPOD",
    IAM = "IAM",
    MYSQL = "MYSQL",
    OPENSEARCH = "OPENSEARCH",
    ORACLE = "ORACLE",
    POSTGRESQL = "POSTGRESQL",
    REDSHIFT = "REDSHIFT",
    S3 = "S3",
    SAPHANA = "SAPHANA",
    SNOWFLAKE = "SNOWFLAKE",
    SPARK = "SPARK",
    SQLSERVER = "SQLSERVER",
    TERADATA = "TERADATA",
    VERTICA = "VERTICA",
    WORKFLOWS_MWAA = "WORKFLOWS_MWAA",
    AMAZON_Q = "AMAZON_Q",
    MLFLOW = "MLFLOW",
}

M.GlueConnection = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        connectionType = {
            type = "string",
        },
        matchCriteria = {
            type = "list",
            member_type = "string",
        },
        connectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        sparkProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        athenaProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        pythonProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        physicalConnectionRequirements = {
            type = "structure",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        lastUpdatedBy = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        lastConnectionValidationTime = {
            type = "timestamp",
        },
        authenticationConfiguration = {
            type = "structure",
        },
        connectionSchemaVersion = {
            type = "number",
        },
        compatibleComputeEnvironments = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Protocol = {
    ATHENA = "ATHENA",
    GLUE_INTERACTIVE_SESSION = "GLUE_INTERACTIVE_SESSION",
    HTTPS = "HTTPS",
    JDBC = "JDBC",
    LIVY = "LIVY",
    ODBC = "ODBC",
    PRISM = "PRISM",
}

M.PhysicalEndpoint = {
    type = "structure",
    members = {
        awsLocation = {
            type = "structure",
        },
        glueConnectionName = {
            type = "string",
        },
        glueConnectionNames = {
            type = "list",
            member_type = "string",
        },
        glueConnection = {
            type = "structure",
        },
        enableTrustedIdentityPropagation = {
            type = "boolean",
        },
        host = {
            type = "string",
        },
        port = {
            type = "number",
        },
        protocol = {
            type = "string",
        },
        stage = {
            type = "string",
        },
    },
}

M.ConnectionSummary = {
    type = "structure",
    members = {
        configurations = {
            type = "list",
            member_type = "structure",
        },
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainUnitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        physicalEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
        props = {
            type = "union",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "string",
        },
    },
}

M.CreateAccountPoolInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
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
        resolutionStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountSource = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAccountPoolOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        resolutionStrategy = {
            type = "string",
        },
        accountSource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        domainUnitId = {
            type = "string",
        },
    },
}

M.CreateConnectionInput = {
    type = "structure",
    members = {
        awsLocation = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
        configurations = {
            type = "list",
            member_type = "structure",
        },
        description = {
            type = "string",
        },
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        props = {
            type = "union",
        },
        enableTrustedIdentityPropagation = {
            type = "boolean",
        },
        scope = {
            type = "string",
        },
    },
}

M.CreateConnectionOutput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurations = {
            type = "list",
            member_type = "structure",
        },
        description = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainUnitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        physicalEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
        props = {
            type = "union",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "string",
        },
    },
}

M.DataProductItemType = {
    ASSET = "ASSET",
}

M.DataProductItem = {
    type = "structure",
    members = {
        itemType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateDataProductInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owningProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        formsInput = {
            type = "list",
            member_type = "structure",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DataProductStatus = {
    CREATED = "CREATED",
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
}

M.CreateDataProductOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
        formsOutput = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        firstRevisionCreatedAt = {
            type = "timestamp",
        },
        firstRevisionCreatedBy = {
            type = "string",
        },
    },
}

M.CreateDataProductRevisionInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
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
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
        formsInput = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateDataProductRevisionOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
        formsOutput = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        firstRevisionCreatedAt = {
            type = "timestamp",
        },
        firstRevisionCreatedBy = {
            type = "string",
        },
    },
}

M.FilterExpressionType = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.FilterExpression = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RelationalFilterConfiguration = {
    type = "structure",
    members = {
        databaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaName = {
            type = "string",
        },
        filterExpressions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GlueRunConfigurationInput = {
    type = "structure",
    members = {
        dataAccessRole = {
            type = "string",
        },
        relationalFilterConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        autoImportDataQualityResult = {
            type = "boolean",
        },
        catalogName = {
            type = "string",
        },
    },
}

M.RedshiftCredentialConfiguration = {
    type = "structure",
    members = {
        secretManagerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftClusterStorage = {
    type = "structure",
    members = {
        clusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftServerlessStorage = {
    type = "structure",
    members = {
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftStorage = {
    type = "union",
    members = {
        redshiftClusterSource = {
            type = "structure",
        },
        redshiftServerlessSource = {
            type = "structure",
        },
    },
}

M.RedshiftRunConfigurationInput = {
    type = "structure",
    members = {
        dataAccessRole = {
            type = "string",
        },
        relationalFilterConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        redshiftCredentialConfiguration = {
            type = "structure",
        },
        redshiftStorage = {
            type = "union",
        },
    },
}

M.SageMakerRunConfigurationInput = {
    type = "structure",
    members = {
        trackingAssets = {
            type = "map",
            key_type = "string",
            value_type = "list",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceConfigurationInput = {
    type = "union",
    members = {
        glueRunConfiguration = {
            type = "structure",
        },
        redshiftRunConfiguration = {
            type = "structure",
        },
        sageMakerRunConfiguration = {
            type = "structure",
        },
    },
}

M.EnableSetting = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RecommendationConfiguration = {
    type = "structure",
    members = {
        enableBusinessNameGeneration = {
            type = "boolean",
        },
    },
}

M.Timezone = {
    UTC = "UTC",
    AFRICA_JOHANNESBURG = "AFRICA_JOHANNESBURG",
    AMERICA_MONTREAL = "AMERICA_MONTREAL",
    AMERICA_SAO_PAULO = "AMERICA_SAO_PAULO",
    ASIA_BAHRAIN = "ASIA_BAHRAIN",
    ASIA_BANGKOK = "ASIA_BANGKOK",
    ASIA_CALCUTTA = "ASIA_CALCUTTA",
    ASIA_DUBAI = "ASIA_DUBAI",
    ASIA_HONG_KONG = "ASIA_HONG_KONG",
    ASIA_JAKARTA = "ASIA_JAKARTA",
    ASIA_KUALA_LUMPUR = "ASIA_KUALA_LUMPUR",
    ASIA_SEOUL = "ASIA_SEOUL",
    ASIA_SHANGHAI = "ASIA_SHANGHAI",
    ASIA_SINGAPORE = "ASIA_SINGAPORE",
    ASIA_TAIPEI = "ASIA_TAIPEI",
    ASIA_TOKYO = "ASIA_TOKYO",
    AUSTRALIA_MELBOURNE = "AUSTRALIA_MELBOURNE",
    AUSTRALIA_SYDNEY = "AUSTRALIA_SYDNEY",
    CANADA_CENTRAL = "CANADA_CENTRAL",
    CET = "CET",
    CST6CDT = "CST6CDT",
    ETC_GMT = "ETC_GMT",
    ETC_GMT0 = "ETC_GMT0",
    ETC_GMT_ADD_0 = "ETC_GMT_ADD_0",
    ETC_GMT_ADD_1 = "ETC_GMT_ADD_1",
    ETC_GMT_ADD_10 = "ETC_GMT_ADD_10",
    ETC_GMT_ADD_11 = "ETC_GMT_ADD_11",
    ETC_GMT_ADD_12 = "ETC_GMT_ADD_12",
    ETC_GMT_ADD_2 = "ETC_GMT_ADD_2",
    ETC_GMT_ADD_3 = "ETC_GMT_ADD_3",
    ETC_GMT_ADD_4 = "ETC_GMT_ADD_4",
    ETC_GMT_ADD_5 = "ETC_GMT_ADD_5",
    ETC_GMT_ADD_6 = "ETC_GMT_ADD_6",
    ETC_GMT_ADD_7 = "ETC_GMT_ADD_7",
    ETC_GMT_ADD_8 = "ETC_GMT_ADD_8",
    ETC_GMT_ADD_9 = "ETC_GMT_ADD_9",
    ETC_GMT_NEG_0 = "ETC_GMT_NEG_0",
    ETC_GMT_NEG_1 = "ETC_GMT_NEG_1",
    ETC_GMT_NEG_10 = "ETC_GMT_NEG_10",
    ETC_GMT_NEG_11 = "ETC_GMT_NEG_11",
    ETC_GMT_NEG_12 = "ETC_GMT_NEG_12",
    ETC_GMT_NEG_13 = "ETC_GMT_NEG_13",
    ETC_GMT_NEG_14 = "ETC_GMT_NEG_14",
    ETC_GMT_NEG_2 = "ETC_GMT_NEG_2",
    ETC_GMT_NEG_3 = "ETC_GMT_NEG_3",
    ETC_GMT_NEG_4 = "ETC_GMT_NEG_4",
    ETC_GMT_NEG_5 = "ETC_GMT_NEG_5",
    ETC_GMT_NEG_6 = "ETC_GMT_NEG_6",
    ETC_GMT_NEG_7 = "ETC_GMT_NEG_7",
    ETC_GMT_NEG_8 = "ETC_GMT_NEG_8",
    ETC_GMT_NEG_9 = "ETC_GMT_NEG_9",
    EUROPE_DUBLIN = "EUROPE_DUBLIN",
    EUROPE_LONDON = "EUROPE_LONDON",
    EUROPE_PARIS = "EUROPE_PARIS",
    EUROPE_STOCKHOLM = "EUROPE_STOCKHOLM",
    EUROPE_ZURICH = "EUROPE_ZURICH",
    ISRAEL = "ISRAEL",
    MEXICO_GENERAL = "MEXICO_GENERAL",
    MST7MDT = "MST7MDT",
    PACIFIC_AUCKLAND = "PACIFIC_AUCKLAND",
    US_CENTRAL = "US_CENTRAL",
    US_EASTERN = "US_EASTERN",
    US_MOUNTAIN = "US_MOUNTAIN",
    US_PACIFIC = "US_PACIFIC",
}

M.ScheduleConfiguration = {
    type = "structure",
    members = {
        timezone = {
            type = "string",
        },
        schedule = {
            type = "string",
        },
    },
}

M.CreateDataSourceInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
        },
        connectionIdentifier = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "union",
        },
        recommendation = {
            type = "structure",
        },
        enableSetting = {
            type = "string",
        },
        schedule = {
            type = "structure",
        },
        publishOnImport = {
            type = "boolean",
        },
        assetFormsInput = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.GlueRunConfigurationOutput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        dataAccessRole = {
            type = "string",
        },
        relationalFilterConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        autoImportDataQualityResult = {
            type = "boolean",
        },
        catalogName = {
            type = "string",
        },
    },
}

M.RedshiftRunConfigurationOutput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        dataAccessRole = {
            type = "string",
        },
        relationalFilterConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        redshiftCredentialConfiguration = {
            type = "structure",
        },
        redshiftStorage = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.SageMakerRunConfigurationOutput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        trackingAssets = {
            type = "map",
            key_type = "string",
            value_type = "list",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceConfigurationOutput = {
    type = "union",
    members = {
        glueRunConfiguration = {
            type = "structure",
        },
        redshiftRunConfiguration = {
            type = "structure",
        },
        sageMakerRunConfiguration = {
            type = "structure",
        },
    },
}

M.DataSourceErrorType = {
    ACCESS_DENIED_EXCEPTION = "ACCESS_DENIED_EXCEPTION",
    CONFLICT_EXCEPTION = "CONFLICT_EXCEPTION",
    INTERNAL_SERVER_EXCEPTION = "INTERNAL_SERVER_EXCEPTION",
    RESOURCE_NOT_FOUND_EXCEPTION = "RESOURCE_NOT_FOUND_EXCEPTION",
    SERVICE_QUOTA_EXCEEDED_EXCEPTION = "SERVICE_QUOTA_EXCEEDED_EXCEPTION",
    THROTTLING_EXCEPTION = "THROTTLING_EXCEPTION",
    VALIDATION_EXCEPTION = "VALIDATION_EXCEPTION",
}

M.DataSourceErrorMessage = {
    type = "structure",
    members = {
        errorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorDetail = {
            type = "string",
        },
    },
}

M.DataSourceRunStatus = {
    REQUESTED = "REQUESTED",
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    PARTIALLY_SUCCEEDED = "PARTIALLY_SUCCEEDED",
    SUCCESS = "SUCCESS",
}

M.DataSourceStatus = {
    CREATING = "CREATING",
    FAILED_CREATION = "FAILED_CREATION",
    READY = "READY",
    UPDATING = "UPDATING",
    FAILED_UPDATE = "FAILED_UPDATE",
    RUNNING = "RUNNING",
    DELETING = "DELETING",
    FAILED_DELETION = "FAILED_DELETION",
}

M.CreateDataSourceOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
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
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        configuration = {
            type = "union",
        },
        recommendation = {
            type = "structure",
        },
        enableSetting = {
            type = "string",
        },
        publishOnImport = {
            type = "boolean",
        },
        assetFormsOutput = {
            type = "list",
            member_type = "structure",
        },
        schedule = {
            type = "structure",
        },
        lastRunStatus = {
            type = "string",
        },
        lastRunAt = {
            type = "timestamp",
        },
        lastRunErrorMessage = {
            type = "structure",
        },
        errorMessage = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.DomainVersion = {
    V1 = "V1",
    V2 = "V2",
}

M.UserAssignment = {
    AUTOMATIC = "AUTOMATIC",
    MANUAL = "MANUAL",
}

M.SingleSignOn = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        userAssignment = {
            type = "string",
        },
        idcInstanceArn = {
            type = "string",
        },
    },
}

M.CreateDomainInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        singleSignOn = {
            type = "structure",
        },
        domainExecutionRole = {
            type = "string",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        domainVersion = {
            type = "string",
        },
        serviceRole = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DomainStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    CREATION_FAILED = "CREATION_FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    DELETION_FAILED = "DELETION_FAILED",
}

M.CreateDomainOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rootDomainUnitId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        singleSignOn = {
            type = "structure",
        },
        domainExecutionRole = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        status = {
            type = "string",
        },
        portalUrl = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        domainVersion = {
            type = "string",
        },
        serviceRole = {
            type = "string",
        },
    },
}

M.CreateDomainUnitInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parentDomainUnitIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DomainUnitGroupProperties = {
    type = "structure",
    members = {
        groupId = {
            type = "string",
        },
    },
}

M.DomainUnitUserProperties = {
    type = "structure",
    members = {
        userId = {
            type = "string",
        },
    },
}

M.DomainUnitOwnerProperties = {
    type = "union",
    members = {
        user = {
            type = "structure",
        },
        group = {
            type = "structure",
        },
    },
}

M.CreateDomainUnitOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
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
        parentDomainUnitId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        owners = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        ancestorDomainUnitIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
    },
}

M.EnvironmentParameter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.CreateEnvironmentInput = {
    type = "structure",
    members = {
        projectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentProfileIdentifier = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        environmentAccountIdentifier = {
            type = "string",
        },
        environmentAccountRegion = {
            type = "string",
        },
        environmentBlueprintIdentifier = {
            type = "string",
        },
        deploymentOrder = {
            type = "number",
        },
        environmentConfigurationId = {
            type = "string",
        },
        environmentConfigurationName = {
            type = "string",
        },
    },
}

M.DeploymentProperties = {
    type = "structure",
    members = {
        startTimeoutMinutes = {
            type = "number",
        },
        endTimeoutMinutes = {
            type = "number",
        },
    },
}

M.DeploymentStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESSFUL = "SUCCESSFUL",
    FAILED = "FAILED",
    PENDING_DEPLOYMENT = "PENDING_DEPLOYMENT",
}

M.DeploymentType = {
    CREATE = "CREATE",
    UPDATE = "UPDATE",
    DELETE = "DELETE",
}

M.EnvironmentError = {
    type = "structure",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Deployment = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        deploymentType = {
            type = "string",
        },
        deploymentStatus = {
            type = "string",
        },
        failureReason = {
            type = "structure",
        },
        messages = {
            type = "list",
            member_type = "string",
        },
        isDeploymentComplete = {
            type = "boolean",
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        provider = {
            type = "string",
        },
        name = {
            type = "string",
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProvisioningProperties = {
    type = "union",
    members = {
        cloudFormation = {
            type = "structure",
        },
    },
}

M.EnvironmentStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
    VALIDATION_FAILED = "VALIDATION_FAILED",
    SUSPENDED = "SUSPENDED",
    DISABLED = "DISABLED",
    EXPIRED = "EXPIRED",
    DELETED = "DELETED",
    INACCESSIBLE = "INACCESSIBLE",
}

M.CustomParameter = {
    type = "structure",
    members = {
        keyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        fieldType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultValue = {
            type = "string",
        },
        isEditable = {
            type = "boolean",
        },
        isOptional = {
            type = "boolean",
        },
        isUpdateSupported = {
            type = "boolean",
        },
    },
}

M.CreateEnvironmentOutput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
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
        environmentProfileId = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        awsAccountRegion = {
            type = "string",
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisionedResources = {
            type = "list",
            member_type = "structure",
        },
        status = {
            type = "string",
        },
        environmentActions = {
            type = "list",
            member_type = "structure",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        lastDeployment = {
            type = "structure",
        },
        provisioningProperties = {
            type = "union",
        },
        deploymentProperties = {
            type = "structure",
        },
        environmentBlueprintId = {
            type = "string",
        },
        environmentConfigurationId = {
            type = "string",
        },
        environmentConfigurationName = {
            type = "string",
        },
    },
}

M.CreateEnvironmentActionInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "union",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.CreateEnvironmentActionOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        parameters = {
            type = "union",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.CreateEnvironmentBlueprintInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
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
        provisioningProperties = {
            type = "union",
            traits = {
                required = true,
            },
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateEnvironmentBlueprintOutput = {
    type = "structure",
    members = {
        id = {
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
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisioningProperties = {
            type = "union",
            traits = {
                required = true,
            },
        },
        deploymentProperties = {
            type = "structure",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateEnvironmentProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
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
        environmentBlueprintIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        awsAccountId = {
            type = "string",
        },
        awsAccountRegion = {
            type = "string",
        },
    },
}

M.CreateEnvironmentProfileOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountId = {
            type = "string",
        },
        awsAccountRegion = {
            type = "string",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
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
        environmentBlueprintId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Model = {
    type = "union",
    members = {
        smithy = {
            type = "string",
        },
    },
}

M.FormTypeStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateFormTypeInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        model = {
            type = "union",
            traits = {
                required = true,
            },
        },
        owningProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.CreateFormTypeOutput = {
    type = "structure",
    members = {
        domainId = {
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
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        owningProjectId = {
            type = "string",
        },
        originDomainId = {
            type = "string",
        },
        originProjectId = {
            type = "string",
        },
    },
}

M.GlossaryStatus = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.GlossaryUsageRestriction = {
    ASSET_GOVERNED_TERMS = "ASSET_GOVERNED_TERMS",
}

M.CreateGlossaryInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owningProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        usageRestrictions = {
            type = "list",
            member_type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateGlossaryOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        usageRestrictions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GlossaryTermStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TermRelations = {
    type = "structure",
    members = {
        isA = {
            type = "list",
            member_type = "string",
        },
        classifies = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateGlossaryTermInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        glossaryIdentifier = {
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
        status = {
            type = "string",
        },
        shortDescription = {
            type = "string",
        },
        longDescription = {
            type = "string",
        },
        termRelations = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateGlossaryTermOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        glossaryId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shortDescription = {
            type = "string",
        },
        longDescription = {
            type = "string",
        },
        termRelations = {
            type = "structure",
        },
        usageRestrictions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateGroupProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        groupIdentifier = {
            type = "string",
        },
        rolePrincipalArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.GroupProfileStatus = {
    ASSIGNED = "ASSIGNED",
    NOT_ASSIGNED = "NOT_ASSIGNED",
}

M.CreateGroupProfileOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        groupName = {
            type = "string",
        },
        rolePrincipalArn = {
            type = "string",
        },
        rolePrincipalId = {
            type = "string",
        },
    },
}

M.EntityType = {
    ASSET = "ASSET",
    DATA_PRODUCT = "DATA_PRODUCT",
}

M.CreateListingChangeSetInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityRevision = {
            type = "string",
        },
        action = {
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

M.CreateListingChangeSetOutput = {
    type = "structure",
    members = {
        listingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        listingRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserDesignation = {
    PROJECT_OWNER = "PROJECT_OWNER",
    PROJECT_CONTRIBUTOR = "PROJECT_CONTRIBUTOR",
    PROJECT_CATALOG_VIEWER = "PROJECT_CATALOG_VIEWER",
    PROJECT_CATALOG_CONSUMER = "PROJECT_CATALOG_CONSUMER",
    PROJECT_CATALOG_STEWARD = "PROJECT_CATALOG_STEWARD",
}

M.Member = {
    type = "union",
    members = {
        userIdentifier = {
            type = "string",
        },
        groupIdentifier = {
            type = "string",
        },
    },
}

M.ProjectMembershipAssignment = {
    type = "structure",
    members = {
        member = {
            type = "union",
            traits = {
                required = true,
            },
        },
        designation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentResolvedAccount = {
    type = "structure",
    members = {
        awsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceAccountPoolId = {
            type = "string",
        },
    },
}

M.EnvironmentConfigurationUserParameter = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        environmentResolvedAccount = {
            type = "structure",
        },
        environmentConfigurationName = {
            type = "string",
        },
        environmentParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProjectInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
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
        resourceTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        domainUnitId = {
            type = "string",
        },
        projectProfileId = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        projectCategory = {
            type = "string",
        },
        projectExecutionRole = {
            type = "string",
        },
        membershipAssignments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.OverallDeploymentStatus = {
    PENDING_DEPLOYMENT = "PENDING_DEPLOYMENT",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESSFUL = "SUCCESSFUL",
    FAILED_VALIDATION = "FAILED_VALIDATION",
    FAILED_DEPLOYMENT = "FAILED_DEPLOYMENT",
}

M.EnvironmentDeploymentDetails = {
    type = "structure",
    members = {
        overallDeploymentStatus = {
            type = "string",
        },
        environmentFailureReasons = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.ProjectDeletionError = {
    type = "structure",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ProjectStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    MOVING = "MOVING",
}

M.ResourceTagSource = {
    PROJECT = "PROJECT",
    PROJECT_PROFILE = "PROJECT_PROFILE",
}

M.ResourceTag = {
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
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateProjectOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        projectStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "structure",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        domainUnitId = {
            type = "string",
        },
        projectProfileId = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        environmentDeploymentDetails = {
            type = "structure",
        },
        projectCategory = {
            type = "string",
        },
    },
}

M.CreateProjectMembershipInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        member = {
            type = "union",
            traits = {
                required = true,
            },
        },
        designation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateProjectMembershipOutput = {
    type = "structure",
}

M.Region = {
    type = "union",
    members = {
        regionName = {
            type = "string",
        },
        regionNamePath = {
            type = "string",
        },
    },
}

M.EnvironmentConfigurationParameter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
        isEditable = {
            type = "boolean",
        },
    },
}

M.EnvironmentConfigurationParametersDetails = {
    type = "structure",
    members = {
        ssmPath = {
            type = "string",
        },
        parameterOverrides = {
            type = "list",
            member_type = "structure",
        },
        resolvedParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeploymentMode = {
    ON_CREATE = "ON_CREATE",
    ON_DEMAND = "ON_DEMAND",
}

M.EnvironmentConfiguration = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
        },
        environmentBlueprintId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        deploymentMode = {
            type = "string",
        },
        configurationParameters = {
            type = "structure",
        },
        awsAccount = {
            type = "union",
        },
        accountPools = {
            type = "list",
            member_type = "string",
        },
        awsRegion = {
            type = "union",
        },
        deploymentOrder = {
            type = "number",
        },
    },
}

M.ResourceTagParameter = {
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
        isValueEditable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.Status = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateProjectProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
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
        status = {
            type = "string",
        },
        projectResourceTags = {
            type = "list",
            member_type = "structure",
        },
        allowCustomProjectResourceTags = {
            type = "boolean",
        },
        projectResourceTagsDescription = {
            type = "string",
        },
        environmentConfigurations = {
            type = "list",
            member_type = "structure",
        },
        domainUnitIdentifier = {
            type = "string",
        },
    },
}

M.CreateProjectProfileOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        status = {
            type = "string",
        },
        projectResourceTags = {
            type = "list",
            member_type = "structure",
        },
        allowCustomProjectResourceTags = {
            type = "boolean",
        },
        projectResourceTagsDescription = {
            type = "string",
        },
        environmentConfigurations = {
            type = "list",
            member_type = "structure",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        domainUnitId = {
            type = "string",
        },
    },
}

M.RuleAction = {
    CREATE_LISTING_CHANGE_SET = "CREATE_LISTING_CHANGE_SET",
    CREATE_SUBSCRIPTION_REQUEST = "CREATE_SUBSCRIPTION_REQUEST",
}

M.GlossaryTermEnforcementDetail = {
    type = "structure",
    members = {
        requiredGlossaryTermIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MetadataFormReference = {
    type = "structure",
    members = {
        typeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetadataFormEnforcementDetail = {
    type = "structure",
    members = {
        requiredMetadataForms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RuleDetail = {
    type = "union",
    members = {
        metadataFormEnforcementDetail = {
            type = "structure",
        },
        glossaryTermEnforcementDetail = {
            type = "structure",
        },
    },
}

M.ProjectsForRule = {
    type = "structure",
    members = {
        selectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specificProjects = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RuleScope = {
    type = "structure",
    members = {
        assetType = {
            type = "structure",
        },
        dataProduct = {
            type = "boolean",
        },
        project = {
            type = "structure",
        },
    },
}

M.DomainUnitTarget = {
    type = "structure",
    members = {
        domainUnitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.RuleTarget = {
    type = "union",
    members = {
        domainUnitTarget = {
            type = "structure",
        },
    },
}

M.CreateRuleInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "union",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        detail = {
            type = "union",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.RuleType = {
    METADATA_FORM_ENFORCEMENT = "METADATA_FORM_ENFORCEMENT",
    GLOSSARY_TERM_ENFORCEMENT = "GLOSSARY_TERM_ENFORCEMENT",
}

M.RuleTargetType = {
    DOMAIN_UNIT = "DOMAIN_UNIT",
}

M.CreateRuleOutput = {
    type = "structure",
    members = {
        identifier = {
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
        ruleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "union",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        detail = {
            type = "union",
            traits = {
                required = true,
            },
        },
        targetType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListingRevisionInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GrantedEntityInput = {
    type = "union",
    members = {
        listing = {
            type = "structure",
        },
    },
}

M.CreateSubscriptionGrantInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionTargetIdentifier = {
            type = "string",
        },
        grantedEntity = {
            type = "union",
            traits = {
                required = true,
            },
        },
        assetTargetNames = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.FailureCause = {
    type = "structure",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionGrantStatus = {
    GRANT_PENDING = "GRANT_PENDING",
    REVOKE_PENDING = "REVOKE_PENDING",
    GRANT_IN_PROGRESS = "GRANT_IN_PROGRESS",
    REVOKE_IN_PROGRESS = "REVOKE_IN_PROGRESS",
    GRANTED = "GRANTED",
    REVOKED = "REVOKED",
    GRANT_FAILED = "GRANT_FAILED",
    REVOKE_FAILED = "REVOKE_FAILED",
}

M.SubscribedAsset = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetName = {
            type = "string",
        },
        failureCause = {
            type = "structure",
        },
        grantedTimestamp = {
            type = "timestamp",
        },
        failureTimestamp = {
            type = "timestamp",
        },
        assetScope = {
            type = "structure",
        },
        permissions = {
            type = "union",
        },
    },
}

M.ListingRevision = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GrantedEntity = {
    type = "union",
    members = {
        listing = {
            type = "structure",
        },
    },
}

M.SubscriptionGrantOverallStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    GRANT_FAILED = "GRANT_FAILED",
    REVOKE_FAILED = "REVOKE_FAILED",
    GRANT_AND_REVOKE_FAILED = "GRANT_AND_REVOKE_FAILED",
    COMPLETED = "COMPLETED",
    INACCESSIBLE = "INACCESSIBLE",
}

M.CreateSubscriptionGrantOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        subscriptionTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grantedEntity = {
            type = "union",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = {
            type = "list",
            member_type = "structure",
        },
        subscriptionId = {
            type = "string",
        },
    },
}

M.SubscribedListingInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubscribedGroupInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.SubscribedIamPrincipalInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.SubscribedProjectInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.SubscribedUserInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.SubscribedPrincipalInput = {
    type = "union",
    members = {
        project = {
            type = "structure",
        },
        user = {
            type = "structure",
        },
        group = {
            type = "structure",
        },
        iam = {
            type = "structure",
        },
    },
}

M.CreateSubscriptionRequestInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscribedPrincipals = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        requestReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        metadataForms = {
            type = "list",
            member_type = "structure",
        },
        assetPermissions = {
            type = "list",
            member_type = "structure",
        },
        assetScopes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateSubscriptionRequestOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        requestReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscribedPrincipals = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        reviewerId = {
            type = "string",
        },
        decisionComment = {
            type = "string",
        },
        existingSubscriptionId = {
            type = "string",
        },
        metadataForms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SubscriptionGrantCreationMode = {
    AUTOMATIC = "AUTOMATIC",
    MANUAL = "MANUAL",
}

M.SubscriptionTargetForm = {
    type = "structure",
    members = {
        formName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSubscriptionTargetInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionTargetConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        authorizedPrincipals = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        manageAccessRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicableAssetTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        subscriptionGrantCreationMode = {
            type = "string",
        },
    },
}

M.CreateSubscriptionTargetOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizedPrincipals = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        manageAccessRole = {
            type = "string",
        },
        applicableAssetTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionTargetConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionGrantCreationMode = {
            type = "string",
        },
    },
}

M.UserType = {
    IAM_USER = "IAM_USER",
    IAM_ROLE = "IAM_ROLE",
    SSO_USER = "SSO_USER",
    IAM_ROLE_SESSION = "IAM_ROLE_SESSION",
}

M.CreateUserProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userType = {
            type = "string",
        },
        sessionName = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UserProfileStatus = {
    ASSIGNED = "ASSIGNED",
    NOT_ASSIGNED = "NOT_ASSIGNED",
    ACTIVATED = "ACTIVATED",
    DEACTIVATED = "DEACTIVATED",
}

M.UserProfileType = {
    IAM = "IAM",
    SSO = "SSO",
}

M.CreateUserProfileOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        details = {
            type = "union",
        },
    },
}

M.DataAssetActivityStatus = {
    FAILED = "FAILED",
    PUBLISHING_FAILED = "PUBLISHING_FAILED",
    SUCCEEDED_CREATED = "SUCCEEDED_CREATED",
    SUCCEEDED_UPDATED = "SUCCEEDED_UPDATED",
    SKIPPED_ALREADY_IMPORTED = "SKIPPED_ALREADY_IMPORTED",
    SKIPPED_ARCHIVED = "SKIPPED_ARCHIVED",
    SKIPPED_NO_ACCESS = "SKIPPED_NO_ACCESS",
    UNCHANGED = "UNCHANGED",
}

M.DeleteDataProductInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataProductOutput = {
    type = "structure",
}

M.GetDataProductInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                http_query = "revision",
            },
        },
    },
}

M.GetDataProductOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
        formsOutput = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        firstRevisionCreatedAt = {
            type = "timestamp",
        },
        firstRevisionCreatedBy = {
            type = "string",
        },
    },
}

M.DataProductItemAdditionalAttributes = {
    type = "structure",
    members = {
        matchRationale = {
            type = "list",
            member_type = "union",
        },
    },
}

M.ListingSummary = {
    type = "structure",
    members = {
        listingId = {
            type = "string",
        },
        listingRevision = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DataProductListing = {
    type = "structure",
    members = {
        dataProductId = {
            type = "string",
        },
        dataProductRevision = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        forms = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "structure",
        },
        owningProjectId = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DataProductListingItemAdditionalAttributes = {
    type = "structure",
    members = {
        forms = {
            type = "string",
        },
        matchRationale = {
            type = "list",
            member_type = "union",
        },
    },
}

M.ListingSummaryItem = {
    type = "structure",
    members = {
        listingId = {
            type = "string",
        },
        listingRevision = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DataProductListingItem = {
    type = "structure",
    members = {
        listingId = {
            type = "string",
        },
        listingRevision = {
            type = "string",
        },
        name = {
            type = "string",
        },
        entityId = {
            type = "string",
        },
        entityRevision = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        listingCreatedBy = {
            type = "string",
        },
        listingUpdatedBy = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "structure",
        },
        owningProjectId = {
            type = "string",
        },
        additionalAttributes = {
            type = "structure",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DataProductResultItem = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        firstRevisionCreatedAt = {
            type = "timestamp",
        },
        firstRevisionCreatedBy = {
            type = "string",
        },
        additionalAttributes = {
            type = "structure",
        },
    },
}

M.DataProductRevision = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
    },
}

M.DeleteDataSourceInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
        retainPermissionsOnRevokeFailure = {
            type = "boolean",
            traits = {
                http_query = "retainPermissionsOnRevokeFailure",
            },
        },
    },
}

M.SelfGrantStatus = {
    GRANT_PENDING = "GRANT_PENDING",
    REVOKE_PENDING = "REVOKE_PENDING",
    GRANT_IN_PROGRESS = "GRANT_IN_PROGRESS",
    REVOKE_IN_PROGRESS = "REVOKE_IN_PROGRESS",
    GRANTED = "GRANTED",
    GRANT_FAILED = "GRANT_FAILED",
    REVOKE_FAILED = "REVOKE_FAILED",
}

M.SelfGrantStatusDetail = {
    type = "structure",
    members = {
        databaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaName = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureCause = {
            type = "string",
        },
    },
}

M.GlueSelfGrantStatusOutput = {
    type = "structure",
    members = {
        selfGrantStatusDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftSelfGrantStatusOutput = {
    type = "structure",
    members = {
        selfGrantStatusDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SelfGrantStatusOutput = {
    type = "union",
    members = {
        glueSelfGrantStatus = {
            type = "structure",
        },
        redshiftSelfGrantStatus = {
            type = "structure",
        },
    },
}

M.DeleteDataSourceOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
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
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        configuration = {
            type = "union",
        },
        enableSetting = {
            type = "string",
        },
        publishOnImport = {
            type = "boolean",
        },
        assetFormsOutput = {
            type = "list",
            member_type = "structure",
        },
        schedule = {
            type = "structure",
        },
        lastRunStatus = {
            type = "string",
        },
        lastRunAt = {
            type = "timestamp",
        },
        lastRunErrorMessage = {
            type = "structure",
        },
        errorMessage = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        selfGrantStatus = {
            type = "union",
        },
        retainPermissionsOnRevokeFailure = {
            type = "boolean",
        },
    },
}

M.GetDataSourceInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDataSourceOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
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
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        configuration = {
            type = "union",
        },
        recommendation = {
            type = "structure",
        },
        enableSetting = {
            type = "string",
        },
        publishOnImport = {
            type = "boolean",
        },
        assetFormsOutput = {
            type = "list",
            member_type = "structure",
        },
        schedule = {
            type = "structure",
        },
        lastRunStatus = {
            type = "string",
        },
        lastRunAt = {
            type = "timestamp",
        },
        lastRunErrorMessage = {
            type = "structure",
        },
        lastRunAssetCount = {
            type = "number",
        },
        errorMessage = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        selfGrantStatus = {
            type = "union",
        },
    },
}

M.ListDataSourcesInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectIdentifier = {
            type = "string",
            traits = {
                http_query = "projectIdentifier",
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_query = "environmentIdentifier",
            },
        },
        connectionIdentifier = {
            type = "string",
            traits = {
                http_query = "connectionIdentifier",
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataSourceSummary = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        dataSourceId = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enableSetting = {
            type = "string",
        },
        schedule = {
            type = "structure",
        },
        lastRunStatus = {
            type = "string",
        },
        lastRunAt = {
            type = "timestamp",
        },
        lastRunErrorMessage = {
            type = "structure",
        },
        lastRunAssetCount = {
            type = "number",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
    },
}

M.ListDataSourcesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataSourceInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        enableSetting = {
            type = "string",
        },
        publishOnImport = {
            type = "boolean",
        },
        assetFormsInput = {
            type = "list",
            member_type = "structure",
        },
        schedule = {
            type = "structure",
        },
        configuration = {
            type = "union",
        },
        recommendation = {
            type = "structure",
        },
        retainPermissionsOnRevokeFailure = {
            type = "boolean",
        },
    },
}

M.UpdateDataSourceOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
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
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        configuration = {
            type = "union",
        },
        recommendation = {
            type = "structure",
        },
        enableSetting = {
            type = "string",
        },
        publishOnImport = {
            type = "boolean",
        },
        assetFormsOutput = {
            type = "list",
            member_type = "structure",
        },
        schedule = {
            type = "structure",
        },
        lastRunStatus = {
            type = "string",
        },
        lastRunAt = {
            type = "timestamp",
        },
        lastRunErrorMessage = {
            type = "structure",
        },
        errorMessage = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        selfGrantStatus = {
            type = "union",
        },
        retainPermissionsOnRevokeFailure = {
            type = "boolean",
        },
    },
}

M.LineageImportStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    PARTIALLY_SUCCEEDED = "PARTIALLY_SUCCEEDED",
}

M.DataSourceRunLineageSummary = {
    type = "structure",
    members = {
        importStatus = {
            type = "string",
        },
    },
}

M.DataSourceRunType = {
    PRIORITIZED = "PRIORITIZED",
    SCHEDULED = "SCHEDULED",
}

M.GetDataSourceRunInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RunStatisticsForAssets = {
    type = "structure",
    members = {
        added = {
            type = "number",
        },
        updated = {
            type = "number",
        },
        unchanged = {
            type = "number",
        },
        skipped = {
            type = "number",
        },
        failed = {
            type = "number",
        },
    },
}

M.GetDataSourceRunOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceConfigurationSnapshot = {
            type = "string",
        },
        runStatisticsForAssets = {
            type = "structure",
        },
        lineageSummary = {
            type = "structure",
        },
        errorMessage = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
        },
        stoppedAt = {
            type = "timestamp",
        },
    },
}

M.ListDataSourceRunsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataSourceRunSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runStatisticsForAssets = {
            type = "structure",
        },
        errorMessage = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
        },
        stoppedAt = {
            type = "timestamp",
        },
        lineageSummary = {
            type = "structure",
        },
    },
}

M.ListDataSourceRunsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartDataSourceRunInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StartDataSourceRunOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceConfigurationSnapshot = {
            type = "string",
        },
        runStatisticsForAssets = {
            type = "structure",
        },
        errorMessage = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
        },
        stoppedAt = {
            type = "timestamp",
        },
    },
}

M.LineageEventProcessingStatus = {
    REQUESTED = "REQUESTED",
    PROCESSING = "PROCESSING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.LineageInfo = {
    type = "structure",
    members = {
        eventId = {
            type = "string",
        },
        eventStatus = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.DataSourceRunActivity = {
    type = "structure",
    members = {
        database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        technicalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataAssetStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataAssetId = {
            type = "string",
        },
        technicalDescription = {
            type = "string",
        },
        errorMessage = {
            type = "structure",
        },
        lineageSummary = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAccountPoolInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccountPoolOutput = {
    type = "structure",
}

M.DeleteAssetFilterInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAssetFilterOutput = {
    type = "structure",
}

M.DeleteConnectionInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConnectionOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.DeleteDataExportConfigurationInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataExportConfigurationOutput = {
    type = "structure",
}

M.DeleteEnvironmentInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentOutput = {
    type = "structure",
}

M.DeleteEnvironmentActionInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentActionOutput = {
    type = "structure",
}

M.DeleteEnvironmentBlueprintInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentBlueprintOutput = {
    type = "structure",
}

M.DeleteEnvironmentProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentProfileOutput = {
    type = "structure",
}

M.DeleteProjectInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        skipDeletionCheck = {
            type = "boolean",
            traits = {
                http_query = "skipDeletionCheck",
            },
        },
    },
}

M.DeleteProjectOutput = {
    type = "structure",
}

M.DeleteProjectMembershipInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        member = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProjectMembershipOutput = {
    type = "structure",
}

M.DeleteProjectProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProjectProfileOutput = {
    type = "structure",
}

M.DeleteSubscriptionGrantInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSubscriptionGrantOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        subscriptionTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grantedEntity = {
            type = "union",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = {
            type = "list",
            member_type = "structure",
        },
        subscriptionId = {
            type = "string",
        },
    },
}

M.DeleteSubscriptionRequestInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSubscriptionRequestOutput = {
    type = "structure",
}

M.DeleteSubscriptionTargetInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSubscriptionTargetOutput = {
    type = "structure",
}

M.TimeSeriesEntityType = {
    ASSET = "ASSET",
    LISTING = "LISTING",
}

M.DeleteTimeSeriesDataPointsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        formName = {
            type = "string",
            traits = {
                http_query = "formName",
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteTimeSeriesDataPointsOutput = {
    type = "structure",
}

M.DisassociateEnvironmentRoleInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentRoleArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateEnvironmentRoleOutput = {
    type = "structure",
}

M.DisassociateGovernedTermsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        governedGlossaryTerms = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateGovernedTermsOutput = {
    type = "structure",
}

M.DeleteDomainInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
        skipDeletionCheck = {
            type = "boolean",
            traits = {
                http_query = "skipDeletionCheck",
            },
        },
    },
}

M.DeleteDomainOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDomainInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDomainOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rootDomainUnitId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        singleSignOn = {
            type = "structure",
        },
        domainExecutionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalUrl = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        domainVersion = {
            type = "string",
        },
        serviceRole = {
            type = "string",
        },
    },
}

M.ListDomainsInput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.DomainSummary = {
    type = "structure",
    members = {
        id = {
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managedAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalUrl = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        domainVersion = {
            type = "string",
        },
    },
}

M.ListDomainsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDomainInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        singleSignOn = {
            type = "structure",
        },
        domainExecutionRole = {
            type = "string",
        },
        serviceRole = {
            type = "string",
        },
        name = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.UpdateDomainOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rootDomainUnitId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        singleSignOn = {
            type = "structure",
        },
        domainExecutionRole = {
            type = "string",
        },
        serviceRole = {
            type = "string",
        },
        name = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.DeleteDomainUnitInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainUnitOutput = {
    type = "structure",
}

M.GetDomainUnitInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDomainUnitOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
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
        parentDomainUnitId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        owners = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        lastUpdatedBy = {
            type = "string",
        },
    },
}

M.ListDomainUnitsForParentInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        parentDomainUnitIdentifier = {
            type = "string",
            traits = {
                http_query = "parentDomainUnitIdentifier",
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.DomainUnitSummary = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDomainUnitsForParentOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDomainUnitInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.UpdateDomainUnitOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
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
        owners = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        parentDomainUnitId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        lastUpdatedBy = {
            type = "string",
        },
    },
}

M.DeleteEnvironmentBlueprintConfigurationInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentBlueprintIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentBlueprintConfigurationOutput = {
    type = "structure",
}

M.GetEnvironmentBlueprintConfigurationInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentBlueprintIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LakeFormationConfiguration = {
    type = "structure",
    members = {
        locationRegistrationRole = {
            type = "string",
        },
        locationRegistrationExcludeS3Locations = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ProvisioningConfiguration = {
    type = "union",
    members = {
        lakeFormationConfiguration = {
            type = "structure",
        },
    },
}

M.GetEnvironmentBlueprintConfigurationOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentBlueprintId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisioningRoleArn = {
            type = "string",
        },
        environmentRolePermissionBoundary = {
            type = "string",
        },
        manageAccessRoleArn = {
            type = "string",
        },
        enabledRegions = {
            type = "list",
            member_type = "string",
        },
        regionalParameters = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        provisioningConfigurations = {
            type = "list",
            member_type = "union",
        },
    },
}

M.ListEnvironmentBlueprintConfigurationsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.EnvironmentBlueprintConfigurationItem = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentBlueprintId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisioningRoleArn = {
            type = "string",
        },
        environmentRolePermissionBoundary = {
            type = "string",
        },
        manageAccessRoleArn = {
            type = "string",
        },
        enabledRegions = {
            type = "list",
            member_type = "string",
        },
        regionalParameters = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        provisioningConfigurations = {
            type = "list",
            member_type = "union",
        },
    },
}

M.ListEnvironmentBlueprintConfigurationsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutEnvironmentBlueprintConfigurationInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentBlueprintIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        provisioningRoleArn = {
            type = "string",
        },
        manageAccessRoleArn = {
            type = "string",
        },
        environmentRolePermissionBoundary = {
            type = "string",
        },
        enabledRegions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        regionalParameters = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
        globalParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        provisioningConfigurations = {
            type = "list",
            member_type = "union",
        },
    },
}

M.PutEnvironmentBlueprintConfigurationOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentBlueprintId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisioningRoleArn = {
            type = "string",
        },
        environmentRolePermissionBoundary = {
            type = "string",
        },
        manageAccessRoleArn = {
            type = "string",
        },
        enabledRegions = {
            type = "list",
            member_type = "string",
        },
        regionalParameters = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        provisioningConfigurations = {
            type = "list",
            member_type = "union",
        },
    },
}

M.DeleteFormTypeInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        formTypeIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFormTypeOutput = {
    type = "structure",
}

M.GetFormTypeInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        formTypeIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                http_query = "revision",
            },
        },
    },
}

M.Import = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFormTypeOutput = {
    type = "structure",
    members = {
        domainId = {
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
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        model = {
            type = "union",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
            type = "string",
        },
        originDomainId = {
            type = "string",
        },
        originProjectId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        description = {
            type = "string",
        },
        imports = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetAccountPoolInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccountPoolOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        resolutionStrategy = {
            type = "string",
        },
        accountSource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        domainUnitId = {
            type = "string",
        },
    },
}

M.GetAssetFilterInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConnectionInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        withSecret = {
            type = "boolean",
            traits = {
                http_query = "withSecret",
            },
        },
    },
}

M.GetConnectionOutput = {
    type = "structure",
    members = {
        connectionCredentials = {
            type = "structure",
        },
        configurations = {
            type = "list",
            member_type = "structure",
        },
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainUnitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        environmentUserRole = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        physicalEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
        props = {
            type = "union",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "string",
        },
    },
}

M.GetDataExportConfigurationInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        kmsKeyArn = {
            type = "string",
        },
        sseAlgorithm = {
            type = "string",
        },
    },
}

M.GetDataExportConfigurationOutput = {
    type = "structure",
    members = {
        isExportEnabled = {
            type = "boolean",
        },
        status = {
            type = "string",
        },
        encryptionConfiguration = {
            type = "structure",
        },
        s3TableBucketArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.GetEnvironmentInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEnvironmentOutput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
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
        environmentProfileId = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        awsAccountRegion = {
            type = "string",
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisionedResources = {
            type = "list",
            member_type = "structure",
        },
        status = {
            type = "string",
        },
        environmentActions = {
            type = "list",
            member_type = "structure",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        lastDeployment = {
            type = "structure",
        },
        provisioningProperties = {
            type = "union",
        },
        deploymentProperties = {
            type = "structure",
        },
        environmentBlueprintId = {
            type = "string",
        },
        environmentConfigurationId = {
            type = "string",
        },
        environmentConfigurationName = {
            type = "string",
        },
    },
}

M.GetEnvironmentActionInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEnvironmentActionOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        parameters = {
            type = "union",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.GetEnvironmentBlueprintInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEnvironmentBlueprintOutput = {
    type = "structure",
    members = {
        id = {
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
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisioningProperties = {
            type = "union",
            traits = {
                required = true,
            },
        },
        deploymentProperties = {
            type = "structure",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetEnvironmentCredentialsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEnvironmentCredentialsOutput = {
    type = "structure",
    members = {
        accessKeyId = {
            type = "string",
        },
        secretAccessKey = {
            type = "string",
        },
        sessionToken = {
            type = "string",
        },
        expiration = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetEnvironmentProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEnvironmentProfileOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountId = {
            type = "string",
        },
        awsAccountRegion = {
            type = "string",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
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
        environmentBlueprintId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetGroupProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        groupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGroupProfileOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        groupName = {
            type = "string",
        },
        rolePrincipalArn = {
            type = "string",
        },
        rolePrincipalId = {
            type = "string",
        },
    },
}

M.GetIamPortalLoginUrlInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetIamPortalLoginUrlOutput = {
    type = "structure",
    members = {
        authCodeUrl = {
            type = "string",
        },
        userProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetJobRunInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LineageSqlQueryRunDetails = {
    type = "structure",
    members = {
        queryStartTime = {
            type = "timestamp",
        },
        queryEndTime = {
            type = "timestamp",
        },
        totalQueriesProcessed = {
            type = "number",
        },
        numQueriesFailed = {
            type = "number",
        },
        errorMessages = {
            type = "list",
            member_type = "string",
        },
    },
}

M.LineageRunDetails = {
    type = "structure",
    members = {
        sqlQueryRunDetails = {
            type = "structure",
        },
    },
}

M.JobRunDetails = {
    type = "union",
    members = {
        lineageRunDetails = {
            type = "structure",
        },
    },
}

M.JobRunError = {
    type = "structure",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobType = {
    LINEAGE = "LINEAGE",
}

M.JobRunMode = {
    SCHEDULED = "SCHEDULED",
    ON_DEMAND = "ON_DEMAND",
}

M.JobRunStatus = {
    SCHEDULED = "SCHEDULED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    PARTIALLY_SUCCEEDED = "PARTIALLY_SUCCEEDED",
    FAILED = "FAILED",
    ABORTED = "ABORTED",
    TIMED_OUT = "TIMED_OUT",
    CANCELED = "CANCELED",
}

M.GetJobRunOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
        jobType = {
            type = "string",
        },
        runMode = {
            type = "string",
        },
        details = {
            type = "union",
        },
        status = {
            type = "string",
        },
        error = {
            type = "structure",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.GetLineageEventInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetLineageEventOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_header = "Domain-Id",
            },
        },
        id = {
            type = "string",
            traits = {
                http_header = "Id",
            },
        },
        event = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                http_header = "Created-By",
            },
        },
        processingStatus = {
            type = "string",
            traits = {
                http_header = "Processing-Status",
            },
        },
        eventTime = {
            type = "timestamp",
            traits = {
                http_header = "Event-Time",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                http_header = "Created-At",
            },
        },
    },
}

M.GetLineageNodeInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        eventTimestamp = {
            type = "timestamp",
            traits = {
                http_query = "timestamp",
            },
        },
    },
}

M.LineageNodeReference = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        eventTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetLineageNodeOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
        },
        sourceIdentifier = {
            type = "string",
        },
        eventTimestamp = {
            type = "timestamp",
        },
        formsOutput = {
            type = "list",
            member_type = "structure",
        },
        upstreamNodes = {
            type = "list",
            member_type = "structure",
        },
        downstreamNodes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetProjectInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProjectOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        projectStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "structure",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        domainUnitId = {
            type = "string",
        },
        projectProfileId = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        environmentDeploymentDetails = {
            type = "structure",
        },
        projectCategory = {
            type = "string",
        },
    },
}

M.GetProjectProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProjectProfileOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        status = {
            type = "string",
        },
        projectResourceTags = {
            type = "list",
            member_type = "structure",
        },
        allowCustomProjectResourceTags = {
            type = "boolean",
        },
        projectResourceTagsDescription = {
            type = "string",
        },
        environmentConfigurations = {
            type = "list",
            member_type = "structure",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        domainUnitId = {
            type = "string",
        },
    },
}

M.GetSubscriptionInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSubscriptionOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        subscribedPrincipal = {
            type = "union",
            traits = {
                required = true,
            },
        },
        subscribedListing = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        subscriptionRequestId = {
            type = "string",
        },
        retainPermissions = {
            type = "boolean",
        },
    },
}

M.GetSubscriptionGrantInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSubscriptionGrantOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        subscriptionTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grantedEntity = {
            type = "union",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = {
            type = "list",
            member_type = "structure",
        },
        subscriptionId = {
            type = "string",
        },
    },
}

M.GetSubscriptionRequestDetailsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSubscriptionRequestDetailsOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        requestReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscribedPrincipals = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        reviewerId = {
            type = "string",
        },
        decisionComment = {
            type = "string",
        },
        existingSubscriptionId = {
            type = "string",
        },
        metadataForms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetSubscriptionTargetInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSubscriptionTargetOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizedPrincipals = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        manageAccessRole = {
            type = "string",
        },
        applicableAssetTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionTargetConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionGrantCreationMode = {
            type = "string",
        },
    },
}

M.GetTimeSeriesDataPointInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        formName = {
            type = "string",
            traits = {
                http_query = "formName",
                required = true,
            },
        },
    },
}

M.TimeSeriesDataPointFormOutput = {
    type = "structure",
    members = {
        formName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        content = {
            type = "string",
        },
        id = {
            type = "string",
        },
    },
}

M.GetTimeSeriesDataPointOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        entityId = {
            type = "string",
        },
        entityType = {
            type = "string",
        },
        formName = {
            type = "string",
        },
        form = {
            type = "structure",
        },
    },
}

M.GetUserProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        sessionName = {
            type = "string",
            traits = {
                http_query = "sessionName",
            },
        },
    },
}

M.GetUserProfileOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        details = {
            type = "union",
        },
    },
}

M.DeleteGlossaryInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGlossaryOutput = {
    type = "structure",
}

M.GetGlossaryInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGlossaryOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        usageRestrictions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateGlossaryInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateGlossaryOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        usageRestrictions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DeleteGlossaryTermInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGlossaryTermOutput = {
    type = "structure",
}

M.GetGlossaryTermInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGlossaryTermOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        glossaryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        shortDescription = {
            type = "string",
        },
        longDescription = {
            type = "string",
        },
        termRelations = {
            type = "structure",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        usageRestrictions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateGlossaryTermInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        glossaryIdentifier = {
            type = "string",
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        shortDescription = {
            type = "string",
        },
        longDescription = {
            type = "string",
        },
        termRelations = {
            type = "structure",
        },
        status = {
            type = "string",
        },
    },
}

M.UpdateGlossaryTermOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        glossaryId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shortDescription = {
            type = "string",
        },
        longDescription = {
            type = "string",
        },
        termRelations = {
            type = "structure",
        },
        usageRestrictions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SortFieldAccountPool = {
    NAME = "NAME",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ListAccountPoolsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        sortBy = {
            type = "string",
            traits = {
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAccountPoolsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAccountsInAccountPoolInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAccountsInAccountPoolOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssetFiltersInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssetFiltersOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssetRevisionsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssetRevisionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SortFieldConnection = {
    NAME = "NAME",
}

M.ListConnectionsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        sortBy = {
            type = "string",
            traits = {
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_query = "environmentIdentifier",
            },
        },
        projectIdentifier = {
            type = "string",
            traits = {
                http_query = "projectIdentifier",
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        scope = {
            type = "string",
            traits = {
                http_query = "scope",
            },
        },
    },
}

M.ListConnectionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataProductRevisionsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListDataProductRevisionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataSourceRunActivitiesInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListDataSourceRunActivitiesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEntityOwnersInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.OwnerGroupPropertiesOutput = {
    type = "structure",
    members = {
        groupId = {
            type = "string",
        },
    },
}

M.OwnerUserPropertiesOutput = {
    type = "structure",
    members = {
        userId = {
            type = "string",
        },
    },
}

M.OwnerPropertiesOutput = {
    type = "union",
    members = {
        user = {
            type = "structure",
        },
        group = {
            type = "structure",
        },
    },
}

M.ListEntityOwnersOutput = {
    type = "structure",
    members = {
        owners = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEnvironmentActionsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.EnvironmentActionSummary = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        parameters = {
            type = "union",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ListEnvironmentActionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEnvironmentBlueprintsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        managed = {
            type = "boolean",
            traits = {
                http_query = "managed",
            },
        },
    },
}

M.EnvironmentBlueprintSummary = {
    type = "structure",
    members = {
        id = {
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
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisioningProperties = {
            type = "union",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListEnvironmentBlueprintsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEnvironmentProfilesInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        awsAccountId = {
            type = "string",
            traits = {
                http_query = "awsAccountId",
            },
        },
        awsAccountRegion = {
            type = "string",
            traits = {
                http_query = "awsAccountRegion",
            },
        },
        environmentBlueprintIdentifier = {
            type = "string",
            traits = {
                http_query = "environmentBlueprintIdentifier",
            },
        },
        projectIdentifier = {
            type = "string",
            traits = {
                http_query = "projectIdentifier",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.EnvironmentProfileSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountId = {
            type = "string",
        },
        awsAccountRegion = {
            type = "string",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
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
        environmentBlueprintId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
    },
}

M.ListEnvironmentProfilesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        awsAccountId = {
            type = "string",
            traits = {
                http_query = "awsAccountId",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        awsAccountRegion = {
            type = "string",
            traits = {
                http_query = "awsAccountRegion",
            },
        },
        projectIdentifier = {
            type = "string",
            traits = {
                http_query = "projectIdentifier",
                required = true,
            },
        },
        environmentProfileIdentifier = {
            type = "string",
            traits = {
                http_query = "environmentProfileIdentifier",
            },
        },
        environmentBlueprintIdentifier = {
            type = "string",
            traits = {
                http_query = "environmentBlueprintIdentifier",
            },
        },
        provider = {
            type = "string",
            traits = {
                http_query = "provider",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.EnvironmentSummary = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
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
        environmentProfileId = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        awsAccountRegion = {
            type = "string",
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        environmentConfigurationId = {
            type = "string",
        },
        environmentConfigurationName = {
            type = "string",
        },
    },
}

M.ListEnvironmentsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeleteListingInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteListingOutput = {
    type = "structure",
}

M.GetListingInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        listingRevision = {
            type = "string",
            traits = {
                http_query = "listingRevision",
            },
        },
    },
}

M.ListingItem = {
    type = "union",
    members = {
        assetListing = {
            type = "structure",
        },
        dataProductListing = {
            type = "structure",
        },
    },
}

M.GetListingOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        listingRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedBy = {
            type = "string",
        },
        item = {
            type = "union",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ListJobRunsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.JobRunSummary = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
        jobType = {
            type = "string",
        },
        runId = {
            type = "string",
        },
        runMode = {
            type = "string",
        },
        status = {
            type = "string",
        },
        error = {
            type = "structure",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.ListJobRunsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListLineageEventsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        timestampAfter = {
            type = "timestamp",
            traits = {
                http_query = "timestampAfter",
            },
        },
        timestampBefore = {
            type = "timestamp",
            traits = {
                http_query = "timestampBefore",
            },
        },
        processingStatus = {
            type = "string",
            traits = {
                http_query = "processingStatus",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.OpenLineageRunState = {
    START = "START",
    RUNNING = "RUNNING",
    COMPLETE = "COMPLETE",
    ABORT = "ABORT",
    FAIL = "FAIL",
    OTHER = "OTHER",
}

M.NameIdentifier = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
    },
}

M.OpenLineageRunEventSummary = {
    type = "structure",
    members = {
        eventType = {
            type = "string",
        },
        runId = {
            type = "string",
        },
        job = {
            type = "structure",
        },
        inputs = {
            type = "list",
            member_type = "structure",
        },
        outputs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EventSummary = {
    type = "union",
    members = {
        openLineageRunEventSummary = {
            type = "structure",
        },
    },
}

M.LineageEventSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        domainId = {
            type = "string",
        },
        processingStatus = {
            type = "string",
        },
        eventTime = {
            type = "timestamp",
        },
        eventSummary = {
            type = "union",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.ListLineageEventsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.EdgeDirection = {
    UPSTREAM = "UPSTREAM",
    DOWNSTREAM = "DOWNSTREAM",
}

M.ListLineageNodeHistoryInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        direction = {
            type = "string",
            traits = {
                http_query = "direction",
            },
        },
        eventTimestampGTE = {
            type = "timestamp",
            traits = {
                http_query = "timestampGTE",
            },
        },
        eventTimestampLTE = {
            type = "timestamp",
            traits = {
                http_query = "timestampLTE",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
    },
}

M.LineageNodeSummary = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
        },
        sourceIdentifier = {
            type = "string",
        },
        eventTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListLineageNodeHistoryOutput = {
    type = "structure",
    members = {
        nodes = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TaskStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.NotificationType = {
    TASK = "TASK",
    EVENT = "EVENT",
}

M.ListNotificationsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
                required = true,
            },
        },
        afterTimestamp = {
            type = "timestamp",
            traits = {
                http_query = "afterTimestamp",
            },
        },
        beforeTimestamp = {
            type = "timestamp",
            traits = {
                http_query = "beforeTimestamp",
            },
        },
        subjects = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "subjects",
            },
        },
        taskStatus = {
            type = "string",
            traits = {
                http_query = "taskStatus",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.NotificationResourceType = {
    PROJECT = "PROJECT",
}

M.NotificationResource = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
    },
}

M.NotificationRole = {
    PROJECT_OWNER = "PROJECT_OWNER",
    PROJECT_CONTRIBUTOR = "PROJECT_CONTRIBUTOR",
    PROJECT_VIEWER = "PROJECT_VIEWER",
    DOMAIN_OWNER = "DOMAIN_OWNER",
    PROJECT_SUBSCRIBER = "PROJECT_SUBSCRIBER",
}

M.Topic = {
    type = "structure",
    members = {
        subject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationOutput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        topic = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        actionLink = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListNotificationsOutput = {
    type = "structure",
    members = {
        notifications = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPolicyGrantsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                http_query = "policyType",
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.PolicyGrantMember = {
    type = "structure",
    members = {
        principal = {
            type = "union",
        },
        detail = {
            type = "union",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        grantId = {
            type = "string",
        },
    },
}

M.ListPolicyGrantsOutput = {
    type = "structure",
    members = {
        grantList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SortFieldProject = {
    NAME = "NAME",
}

M.ListProjectMembershipsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sortBy = {
            type = "string",
            traits = {
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GroupDetails = {
    type = "structure",
    members = {
        groupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserDetails = {
    type = "structure",
    members = {
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MemberDetails = {
    type = "union",
    members = {
        user = {
            type = "structure",
        },
        group = {
            type = "structure",
        },
    },
}

M.ProjectMember = {
    type = "structure",
    members = {
        memberDetails = {
            type = "union",
            traits = {
                required = true,
            },
        },
        designation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListProjectMembershipsOutput = {
    type = "structure",
    members = {
        members = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProjectProfilesInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        sortBy = {
            type = "string",
            traits = {
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ProjectProfileSummary = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        status = {
            type = "string",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        domainUnitId = {
            type = "string",
        },
    },
}

M.ListProjectProfilesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProjectsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userIdentifier = {
            type = "string",
            traits = {
                http_query = "userIdentifier",
            },
        },
        groupIdentifier = {
            type = "string",
            traits = {
                http_query = "groupIdentifier",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        projectCategory = {
            type = "string",
            traits = {
                http_query = "projectCategory",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ProjectSummary = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        projectStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "structure",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        domainUnitId = {
            type = "string",
        },
        projectCategory = {
            type = "string",
        },
    },
}

M.ListProjectsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SortKey = {
    CREATED_AT = "CREATED_AT",
    UPDATED_AT = "UPDATED_AT",
}

M.ListSubscriptionGrantsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                http_query = "environmentId",
            },
        },
        subscriptionTargetId = {
            type = "string",
            traits = {
                http_query = "subscriptionTargetId",
            },
        },
        subscribedListingId = {
            type = "string",
            traits = {
                http_query = "subscribedListingId",
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_query = "subscriptionId",
            },
        },
        owningProjectId = {
            type = "string",
            traits = {
                http_query = "owningProjectId",
            },
        },
        owningIamPrincipalArn = {
            type = "string",
            traits = {
                http_query = "owningIamPrincipalArn",
            },
        },
        owningUserId = {
            type = "string",
            traits = {
                http_query = "owningUserId",
            },
        },
        owningGroupId = {
            type = "string",
            traits = {
                http_query = "owningGroupId",
            },
        },
        sortBy = {
            type = "string",
            traits = {
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.SubscriptionGrantSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        subscriptionTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grantedEntity = {
            type = "union",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = {
            type = "list",
            member_type = "structure",
        },
        subscriptionId = {
            type = "string",
        },
    },
}

M.ListSubscriptionGrantsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSubscriptionRequestsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        subscribedListingId = {
            type = "string",
            traits = {
                http_query = "subscribedListingId",
            },
        },
        owningProjectId = {
            type = "string",
            traits = {
                http_query = "owningProjectId",
            },
        },
        owningIamPrincipalArn = {
            type = "string",
            traits = {
                http_query = "owningIamPrincipalArn",
            },
        },
        approverProjectId = {
            type = "string",
            traits = {
                http_query = "approverProjectId",
            },
        },
        owningUserId = {
            type = "string",
            traits = {
                http_query = "owningUserId",
            },
        },
        owningGroupId = {
            type = "string",
            traits = {
                http_query = "owningGroupId",
            },
        },
        sortBy = {
            type = "string",
            traits = {
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.MetadataFormSummary = {
    type = "structure",
    members = {
        formName = {
            type = "string",
        },
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubscriptionRequestSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        requestReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscribedPrincipals = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        reviewerId = {
            type = "string",
        },
        decisionComment = {
            type = "string",
        },
        existingSubscriptionId = {
            type = "string",
        },
        metadataFormsSummary = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListSubscriptionRequestsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSubscriptionsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriptionRequestIdentifier = {
            type = "string",
            traits = {
                http_query = "subscriptionRequestIdentifier",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        subscribedListingId = {
            type = "string",
            traits = {
                http_query = "subscribedListingId",
            },
        },
        owningProjectId = {
            type = "string",
            traits = {
                http_query = "owningProjectId",
            },
        },
        owningIamPrincipalArn = {
            type = "string",
            traits = {
                http_query = "owningIamPrincipalArn",
            },
        },
        owningUserId = {
            type = "string",
            traits = {
                http_query = "owningUserId",
            },
        },
        owningGroupId = {
            type = "string",
            traits = {
                http_query = "owningGroupId",
            },
        },
        approverProjectId = {
            type = "string",
            traits = {
                http_query = "approverProjectId",
            },
        },
        sortBy = {
            type = "string",
            traits = {
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.SubscriptionSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        subscribedPrincipal = {
            type = "union",
            traits = {
                required = true,
            },
        },
        subscribedListing = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        subscriptionRequestId = {
            type = "string",
        },
        retainPermissions = {
            type = "boolean",
        },
    },
}

M.ListSubscriptionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSubscriptionTargetsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sortBy = {
            type = "string",
            traits = {
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.SubscriptionTargetSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizedPrincipals = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        manageAccessRole = {
            type = "string",
        },
        applicableAssetTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionTargetConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionGrantCreationMode = {
            type = "string",
        },
    },
}

M.ListSubscriptionTargetsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
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
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListTimeSeriesDataPointsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        formName = {
            type = "string",
            traits = {
                http_query = "formName",
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                http_query = "startedAt",
            },
        },
        endedAt = {
            type = "timestamp",
            traits = {
                http_query = "endedAt",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListTimeSeriesDataPointsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.MetadataGenerationRunType = {
    BUSINESS_DESCRIPTIONS = "BUSINESS_DESCRIPTIONS",
    BUSINESS_NAMES = "BUSINESS_NAMES",
    BUSINESS_GLOSSARY_ASSOCIATIONS = "BUSINESS_GLOSSARY_ASSOCIATIONS",
}

M.GetMetadataGenerationRunInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
    },
}

M.MetadataGenerationRunStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    CANCELED = "CANCELED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    PARTIALLY_SUCCEEDED = "PARTIALLY_SUCCEEDED",
}

M.MetadataGenerationTargetType = {
    ASSET = "ASSET",
}

M.MetadataGenerationRunTarget = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
        },
    },
}

M.MetadataGenerationRunTypeStat = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.GetMetadataGenerationRunOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        types = {
            type = "list",
            member_type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeStats = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListMetadataGenerationRunsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        targetIdentifier = {
            type = "string",
            traits = {
                http_query = "targetIdentifier",
            },
        },
    },
}

M.MetadataGenerationRunItem = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        types = {
            type = "list",
            member_type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMetadataGenerationRunsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartMetadataGenerationRunInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
        },
        types = {
            type = "list",
            member_type = "string",
        },
        target = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        owningProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMetadataGenerationRunOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        types = {
            type = "list",
            member_type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        owningProjectId = {
            type = "string",
        },
    },
}

M.PackageManager = {
    UV = "UV",
}

M.PackageConfig = {
    type = "structure",
    members = {
        packageManager = {
            type = "string",
            traits = {
                required = true,
            },
        },
        packageSpecification = {
            type = "string",
        },
    },
}

M.EnvironmentConfig = {
    type = "structure",
    members = {
        imageVersion = {
            type = "string",
        },
        packageConfig = {
            type = "structure",
        },
    },
}

M.GetNotebookRunInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NotebookRunError = {
    type = "structure",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkAccessType = {
    PUBLIC_INTERNET_ONLY = "PUBLIC_INTERNET_ONLY",
    VPC_ONLY = "VPC_ONLY",
}

M.NetworkConfig = {
    type = "structure",
    members = {
        networkAccessType = {
            type = "string",
            traits = {
                required = true,
            },
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
    },
}

M.NotebookRunStatus = {
    QUEUED = "QUEUED",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.StorageConfig = {
    type = "structure",
    members = {
        projectS3Path = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.TimeoutConfig = {
    type = "structure",
    members = {
        runTimeoutInMinutes = {
            type = "number",
        },
    },
}

M.TriggerSourceType = {
    MANUAL = "MANUAL",
    SCHEDULED = "SCHEDULED",
    WORKFLOW = "WORKFLOW",
}

M.TriggerSource = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.GetNotebookRunOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notebookId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduleId = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cellOrder = {
            type = "list",
            member_type = "structure",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        computeConfiguration = {
            type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        timeoutConfiguration = {
            type = "structure",
        },
        environmentConfiguration = {
            type = "structure",
        },
        storageConfiguration = {
            type = "structure",
        },
        triggerSource = {
            type = "structure",
        },
        error = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        completedAt = {
            type = "timestamp",
        },
    },
}

M.ListNotebookRunsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        owningProjectIdentifier = {
            type = "string",
            traits = {
                http_query = "owningProjectIdentifier",
                required = true,
            },
        },
        notebookIdentifier = {
            type = "string",
            traits = {
                http_query = "notebookIdentifier",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        scheduleIdentifier = {
            type = "string",
            traits = {
                http_query = "scheduleIdentifier",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.NotebookRunSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notebookId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduleId = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        triggerSource = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        completedAt = {
            type = "timestamp",
        },
    },
}

M.ListNotebookRunsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartNotebookRunInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        owningProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notebookIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduleIdentifier = {
            type = "string",
        },
        computeConfiguration = {
            type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        timeoutConfiguration = {
            type = "structure",
        },
        triggerSource = {
            type = "structure",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StartNotebookRunOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notebookId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduleId = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cellOrder = {
            type = "list",
            member_type = "structure",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        computeConfiguration = {
            type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        timeoutConfiguration = {
            type = "structure",
        },
        environmentConfiguration = {
            type = "structure",
        },
        storageConfiguration = {
            type = "structure",
        },
        triggerSource = {
            type = "structure",
        },
        error = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        completedAt = {
            type = "timestamp",
        },
    },
}

M.StopNotebookRunInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StopNotebookRunOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PostLineageEventInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        event = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "Client-Token",
            },
        },
    },
}

M.PostLineageEventOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        domainId = {
            type = "string",
        },
    },
}

M.TimeSeriesDataPointFormInput = {
    type = "structure",
    members = {
        formName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        content = {
            type = "string",
        },
    },
}

M.PostTimeSeriesDataPointsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        forms = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.PostTimeSeriesDataPointsOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        entityId = {
            type = "string",
        },
        entityType = {
            type = "string",
        },
        forms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutDataExportConfigurationInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        enableExport = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.PutDataExportConfigurationOutput = {
    type = "structure",
}

M.GraphEntityType = {
    LINEAGE_NODE = "LINEAGE_NODE",
}

M.FilterOperator = {
    EQ = "EQ",
    LE = "LE",
    LT = "LT",
    GE = "GE",
    GT = "GT",
    TEXT_SEARCH = "TEXT_SEARCH",
}

M.Filter = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
        intValue = {
            type = "number",
        },
        operator = {
            type = "string",
        },
    },
}

M.RelationDirection = {
    IN = "IN",
    OUT = "OUT",
}

M.RelationType = {
    LINEAGE = "LINEAGE",
}

M.RelationPattern = {
    type = "structure",
    members = {
        relationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relationDirection = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxPathLength = {
            type = "number",
        },
    },
}

M.LineageNodeItem = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeRevision = {
            type = "string",
        },
        sourceIdentifier = {
            type = "string",
        },
        eventTimestamp = {
            type = "timestamp",
        },
        formsOutput = {
            type = "list",
            member_type = "structure",
        },
        upstreamLineageNodeIds = {
            type = "list",
            member_type = "string",
        },
        downstreamLineageNodeIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ResultItem = {
    type = "union",
    members = {
        lineageNode = {
            type = "structure",
        },
    },
}

M.QueryGraphOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "union",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RejectChoice = {
    type = "structure",
    members = {
        predictionTarget = {
            type = "string",
            traits = {
                required = true,
            },
        },
        predictionChoices = {
            type = "list",
            member_type = "number",
        },
    },
}

M.RejectRuleBehavior = {
    ALL = "ALL",
    NONE = "NONE",
}

M.RejectRule = {
    type = "structure",
    members = {
        rule = {
            type = "string",
        },
        threshold = {
            type = "number",
        },
    },
}

M.RejectPredictionsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                http_query = "revision",
            },
        },
        rejectRule = {
            type = "structure",
        },
        rejectChoices = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.RejectPredictionsOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetRevision = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectSubscriptionRequestInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        decisionComment = {
            type = "string",
        },
    },
}

M.RejectSubscriptionRequestOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        requestReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscribedPrincipals = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        reviewerId = {
            type = "string",
        },
        decisionComment = {
            type = "string",
        },
        existingSubscriptionId = {
            type = "string",
        },
        metadataForms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RemoveEntityOwnerInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        owner = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.RemoveEntityOwnerOutput = {
    type = "structure",
}

M.RemovePolicyGrantInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = {
            type = "union",
            traits = {
                required = true,
            },
        },
        grantIdentifier = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.RemovePolicyGrantOutput = {
    type = "structure",
}

M.RevokeSubscriptionInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        retainPermissions = {
            type = "boolean",
        },
    },
}

M.RevokeSubscriptionOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        subscribedPrincipal = {
            type = "union",
            traits = {
                required = true,
            },
        },
        subscribedListing = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        subscriptionRequestId = {
            type = "string",
        },
        retainPermissions = {
            type = "boolean",
        },
    },
}

M.DeleteRuleInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRuleOutput = {
    type = "structure",
}

M.GetRuleInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        revision = {
            type = "string",
            traits = {
                http_query = "revision",
            },
        },
    },
}

M.GetRuleOutput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
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
        ruleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "union",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        detail = {
            type = "union",
            traits = {
                required = true,
            },
        },
        targetType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRulesInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ruleType = {
            type = "string",
            traits = {
                http_query = "ruleType",
            },
        },
        action = {
            type = "string",
            traits = {
                http_query = "ruleAction",
            },
        },
        projectIds = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "projectIds",
            },
        },
        assetTypes = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "assetTypes",
            },
        },
        dataProduct = {
            type = "boolean",
            traits = {
                http_query = "dataProduct",
            },
        },
        includeCascaded = {
            type = "boolean",
            traits = {
                http_query = "includeCascaded",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.RuleSummary = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        ruleType = {
            type = "string",
        },
        name = {
            type = "string",
        },
        targetType = {
            type = "string",
        },
        target = {
            type = "union",
        },
        action = {
            type = "string",
        },
        scope = {
            type = "structure",
        },
        updatedAt = {
            type = "timestamp",
        },
        lastUpdatedBy = {
            type = "string",
        },
    },
}

M.ListRulesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateRuleInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        scope = {
            type = "structure",
        },
        detail = {
            type = "union",
        },
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.UpdateRuleOutput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
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
        ruleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "union",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        detail = {
            type = "union",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchOutputAdditionalAttribute = {
    FORMS = "FORMS",
    TIME_SERIES_DATA_POINT_FORMS = "TIME_SERIES_DATA_POINT_FORMS",
    TEXT_MATCH_RATIONALE = "TEXT_MATCH_RATIONALE",
}

M.SearchInItem = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InventorySearchScope = {
    ASSET = "ASSET",
    GLOSSARY = "GLOSSARY",
    GLOSSARY_TERM = "GLOSSARY_TERM",
    DATA_PRODUCT = "DATA_PRODUCT",
}

M.SearchSort = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
        },
    },
}

M.GlossaryItemAdditionalAttributes = {
    type = "structure",
    members = {
        matchRationale = {
            type = "list",
            member_type = "union",
        },
    },
}

M.GlossaryItem = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageRestrictions = {
            type = "list",
            member_type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        additionalAttributes = {
            type = "structure",
        },
    },
}

M.GlossaryTermItemAdditionalAttributes = {
    type = "structure",
    members = {
        matchRationale = {
            type = "list",
            member_type = "union",
        },
    },
}

M.GlossaryTermItem = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        glossaryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        shortDescription = {
            type = "string",
        },
        usageRestrictions = {
            type = "list",
            member_type = "string",
        },
        longDescription = {
            type = "string",
        },
        termRelations = {
            type = "structure",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        additionalAttributes = {
            type = "structure",
        },
    },
}

M.SearchInventoryResultItem = {
    type = "union",
    members = {
        glossaryItem = {
            type = "structure",
        },
        glossaryTermItem = {
            type = "structure",
        },
        assetItem = {
            type = "structure",
        },
        dataProductItem = {
            type = "structure",
        },
    },
}

M.SearchOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "union",
        },
        nextToken = {
            type = "string",
        },
        totalMatchCount = {
            type = "number",
        },
    },
}

M.GroupSearchType = {
    SSO_GROUP = "SSO_GROUP",
    DATAZONE_SSO_GROUP = "DATAZONE_SSO_GROUP",
    IAM_ROLE_SESSION_GROUP = "IAM_ROLE_SESSION_GROUP",
}

M.SearchGroupProfilesInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        groupType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        searchText = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GroupProfileSummary = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        groupName = {
            type = "string",
        },
        rolePrincipalArn = {
            type = "string",
        },
        rolePrincipalId = {
            type = "string",
        },
    },
}

M.SearchGroupProfilesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SearchResultItem = {
    type = "union",
    members = {
        assetListing = {
            type = "structure",
        },
        dataProductListing = {
            type = "structure",
        },
    },
}

M.SearchListingsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "union",
        },
        nextToken = {
            type = "string",
        },
        totalMatchCount = {
            type = "number",
        },
        aggregates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TypesSearchScope = {
    ASSET_TYPE = "ASSET_TYPE",
    FORM_TYPE = "FORM_TYPE",
    LINEAGE_NODE_TYPE = "LINEAGE_NODE_TYPE",
}

M.FormTypeData = {
    type = "structure",
    members = {
        domainId = {
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
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        model = {
            type = "union",
        },
        status = {
            type = "string",
        },
        owningProjectId = {
            type = "string",
        },
        originDomainId = {
            type = "string",
        },
        originProjectId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        description = {
            type = "string",
        },
        imports = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LineageNodeTypeItem = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        formsOutput = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchTypesResultItem = {
    type = "union",
    members = {
        assetTypeItem = {
            type = "structure",
        },
        formTypeItem = {
            type = "structure",
        },
        lineageNodeTypeItem = {
            type = "structure",
        },
    },
}

M.SearchTypesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "union",
        },
        nextToken = {
            type = "string",
        },
        totalMatchCount = {
            type = "number",
        },
    },
}

M.UserSearchType = {
    SSO_USER = "SSO_USER",
    DATAZONE_USER = "DATAZONE_USER",
    DATAZONE_SSO_USER = "DATAZONE_SSO_USER",
    DATAZONE_IAM_USER = "DATAZONE_IAM_USER",
}

M.SearchUserProfilesInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        searchText = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UserProfileSummary = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        details = {
            type = "union",
        },
    },
}

M.SearchUserProfilesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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

M.UpdateAccountPoolInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        resolutionStrategy = {
            type = "string",
        },
        accountSource = {
            type = "union",
        },
    },
}

M.UpdateAccountPoolOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        resolutionStrategy = {
            type = "string",
        },
        accountSource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        domainUnitId = {
            type = "string",
        },
    },
}

M.UpdateConnectionInput = {
    type = "structure",
    members = {
        configurations = {
            type = "list",
            member_type = "structure",
        },
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        awsLocation = {
            type = "structure",
        },
        props = {
            type = "union",
        },
    },
}

M.UpdateConnectionOutput = {
    type = "structure",
    members = {
        configurations = {
            type = "list",
            member_type = "structure",
        },
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainUnitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        physicalEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
        props = {
            type = "union",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        blueprintVersion = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        environmentConfigurationName = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentOutput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
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
        environmentProfileId = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        awsAccountRegion = {
            type = "string",
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisionedResources = {
            type = "list",
            member_type = "structure",
        },
        status = {
            type = "string",
        },
        environmentActions = {
            type = "list",
            member_type = "structure",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        lastDeployment = {
            type = "structure",
        },
        provisioningProperties = {
            type = "union",
        },
        deploymentProperties = {
            type = "structure",
        },
        environmentBlueprintId = {
            type = "string",
        },
        environmentConfigurationId = {
            type = "string",
        },
        environmentConfigurationName = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentActionInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        parameters = {
            type = "union",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentActionOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        parameters = {
            type = "union",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentBlueprintInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        provisioningProperties = {
            type = "union",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateEnvironmentBlueprintOutput = {
    type = "structure",
    members = {
        id = {
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
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisioningProperties = {
            type = "union",
            traits = {
                required = true,
            },
        },
        deploymentProperties = {
            type = "structure",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateEnvironmentProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        awsAccountId = {
            type = "string",
        },
        awsAccountRegion = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentProfileOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountId = {
            type = "string",
        },
        awsAccountRegion = {
            type = "string",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
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
        environmentBlueprintId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateGroupProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        groupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGroupProfileOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        groupName = {
            type = "string",
        },
        rolePrincipalArn = {
            type = "string",
        },
        rolePrincipalId = {
            type = "string",
        },
    },
}

M.UpdateProjectInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        resourceTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        domainUnitId = {
            type = "string",
        },
        environmentDeploymentDetails = {
            type = "structure",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        projectProfileVersion = {
            type = "string",
        },
    },
}

M.UpdateProjectOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        projectStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "structure",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
        glossaryTerms = {
            type = "list",
            member_type = "string",
        },
        domainUnitId = {
            type = "string",
        },
        projectProfileId = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member_type = "structure",
        },
        environmentDeploymentDetails = {
            type = "structure",
        },
        projectCategory = {
            type = "string",
        },
    },
}

M.UpdateProjectProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        projectResourceTags = {
            type = "list",
            member_type = "structure",
        },
        allowCustomProjectResourceTags = {
            type = "boolean",
        },
        projectResourceTagsDescription = {
            type = "string",
        },
        environmentConfigurations = {
            type = "list",
            member_type = "structure",
        },
        domainUnitIdentifier = {
            type = "string",
        },
    },
}

M.UpdateProjectProfileOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        status = {
            type = "string",
        },
        projectResourceTags = {
            type = "list",
            member_type = "structure",
        },
        allowCustomProjectResourceTags = {
            type = "boolean",
        },
        projectResourceTagsDescription = {
            type = "string",
        },
        environmentConfigurations = {
            type = "list",
            member_type = "structure",
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        domainUnitId = {
            type = "string",
        },
    },
}

M.UpdateRootDomainUnitOwnerInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        currentOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newOwner = {
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

M.UpdateRootDomainUnitOwnerOutput = {
    type = "structure",
}

M.UpdateSubscriptionGrantStatusInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureCause = {
            type = "structure",
        },
        targetName = {
            type = "string",
        },
    },
}

M.UpdateSubscriptionGrantStatusOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        subscriptionTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grantedEntity = {
            type = "union",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = {
            type = "list",
            member_type = "structure",
        },
        subscriptionId = {
            type = "string",
        },
    },
}

M.UpdateSubscriptionRequestInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        requestReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSubscriptionRequestOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        requestReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscribedPrincipals = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        reviewerId = {
            type = "string",
        },
        decisionComment = {
            type = "string",
        },
        existingSubscriptionId = {
            type = "string",
        },
        metadataForms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateSubscriptionTargetInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        authorizedPrincipals = {
            type = "list",
            member_type = "string",
        },
        applicableAssetTypes = {
            type = "list",
            member_type = "string",
        },
        subscriptionTargetConfig = {
            type = "list",
            member_type = "structure",
        },
        manageAccessRole = {
            type = "string",
        },
        provider = {
            type = "string",
        },
        subscriptionGrantCreationMode = {
            type = "string",
        },
    },
}

M.UpdateSubscriptionTargetOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizedPrincipals = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        manageAccessRole = {
            type = "string",
        },
        applicableAssetTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionTargetConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionGrantCreationMode = {
            type = "string",
        },
    },
}

M.UpdateUserProfileInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionName = {
            type = "string",
        },
    },
}

M.UpdateUserProfileOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        details = {
            type = "union",
        },
    },
}

M.FilterClause = {
    type = "union",
    members = {
        filter = {
            type = "structure",
        },
        and = {
            type = "list",
            member_type = "union",
        },
        or = {
            type = "list",
            member_type = "union",
        },
    },
}

M.RowFilter = {
    type = "union",
    members = {
        expression = {
            type = "union",
        },
        and = {
            type = "list",
            member_type = "union",
        },
        or = {
            type = "list",
            member_type = "union",
        },
    },
}

M.EntityPattern = {
    type = "structure",
    members = {
        entityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "union",
        },
    },
}

M.RowFilterConfiguration = {
    type = "structure",
    members = {
        rowFilter = {
            type = "union",
            traits = {
                required = true,
            },
        },
        sensitive = {
            type = "boolean",
        },
    },
}

M.SearchInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        owningProjectIdentifier = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        searchScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        searchText = {
            type = "string",
        },
        searchIn = {
            type = "list",
            member_type = "structure",
        },
        filters = {
            type = "union",
        },
        sort = {
            type = "structure",
        },
        additionalAttributes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SearchListingsInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        searchText = {
            type = "string",
        },
        searchIn = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "union",
        },
        aggregations = {
            type = "list",
            member_type = "structure",
        },
        sort = {
            type = "structure",
        },
        additionalAttributes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SearchTypesInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        searchScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        searchText = {
            type = "string",
        },
        searchIn = {
            type = "list",
            member_type = "structure",
        },
        filters = {
            type = "union",
        },
        sort = {
            type = "structure",
        },
        managed = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetFilterConfiguration = {
    type = "union",
    members = {
        columnConfiguration = {
            type = "structure",
        },
        rowConfiguration = {
            type = "structure",
        },
    },
}

M.MatchClause = {
    type = "union",
    members = {
        relationPattern = {
            type = "structure",
        },
        entityPattern = {
            type = "structure",
        },
    },
}

M.CreateAssetFilterInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetIdentifier = {
            type = "string",
            traits = {
                http_label = true,
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
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateAssetFilterOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetId = {
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
        status = {
            type = "string",
        },
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        errorMessage = {
            type = "string",
        },
        effectiveColumnNames = {
            type = "list",
            member_type = "string",
        },
        effectiveRowFilter = {
            type = "string",
        },
    },
}

M.GetAssetFilterOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetId = {
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
        status = {
            type = "string",
        },
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        errorMessage = {
            type = "string",
        },
        effectiveColumnNames = {
            type = "list",
            member_type = "string",
        },
        effectiveRowFilter = {
            type = "string",
        },
    },
}

M.UpdateAssetFilterInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        configuration = {
            type = "union",
        },
    },
}

M.UpdateAssetFilterOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetId = {
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
        status = {
            type = "string",
        },
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        errorMessage = {
            type = "string",
        },
        effectiveColumnNames = {
            type = "list",
            member_type = "string",
        },
        effectiveRowFilter = {
            type = "string",
        },
    },
}

M.QueryGraphInput = {
    type = "structure",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        match = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        additionalAttributes = {
            type = "structure",
        },
    },
}

return M
