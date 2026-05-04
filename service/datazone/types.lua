local M = {}

M.AcceptChoice = {
    type = "structure",
    id = "AcceptChoice",
    members = {
        predictionTarget = {
            type = "string",
            traits = {
                required = true,
            },
        },
        predictionChoice = {
            type = "integer",
        },
        editedValue = {
            type = "string",
        },
    },
}

M.AcceptedAssetScope = {
    type = "structure",
    id = "AcceptedAssetScope",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterIds = {
            type = "list",
            member = { type = "string" },
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
    id = "AcceptRule",
    members = {
        rule = {
            type = "string",
        },
        threshold = {
            type = "float",
        },
    },
}

M.AcceptPredictionsInput = {
    type = "structure",
    id = "AcceptPredictionsInput",
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
        acceptRule = M.AcceptRule,
        acceptChoices = {
            type = "list",
            member = M.AcceptChoice,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AcceptPredictionsOutput = {
    type = "structure",
    id = "AcceptPredictionsOutput",
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
    id = "AccessDeniedException",
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
    id = "ConflictException",
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
    id = "InternalServerException",
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
    id = "ResourceNotFoundException",
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
    id = "ThrottlingException",
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
    id = "UnauthorizedException",
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
    id = "ValidationException",
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
    id = "Permissions",
    members = {
        s3 = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AssetPermission = {
    type = "structure",
    id = "AssetPermission",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        permissions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Permissions }),
    },
}

M.AcceptSubscriptionRequestInput = {
    type = "structure",
    id = "AcceptSubscriptionRequestInput",
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
            member = M.AcceptedAssetScope,
        },
        assetPermissions = {
            type = "list",
            member = M.AssetPermission,
        },
    },
}

M.FormOutput = {
    type = "structure",
    id = "FormOutput",
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
    id = "AssetScope",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterIds = {
            type = "list",
            member = { type = "string" },
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
    id = "DetailedGlossaryTerm",
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
    id = "SubscribedAssetListing",
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
            member = M.DetailedGlossaryTerm,
        },
        assetScope = M.AssetScope,
        permissions = M.Permissions,
    },
}

M.AssetInDataProductListingItem = {
    type = "structure",
    id = "AssetInDataProductListingItem",
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
    id = "SubscribedProductListing",
    members = {
        entityId = {
            type = "string",
        },
        entityRevision = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member = M.DetailedGlossaryTerm,
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        assetListings = {
            type = "list",
            member = M.AssetInDataProductListingItem,
        },
    },
}

M.SubscribedListingItem = {
    type = "union",
    id = "SubscribedListingItem",
    members = {
        assetListing = M.SubscribedAssetListing,
        productListing = M.SubscribedProductListing,
    },
}

M.SubscribedListing = {
    type = "structure",
    id = "SubscribedListing",
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
        item = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribedListingItem }),
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
    id = "SubscribedGroup",
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
    id = "SubscribedIamPrincipal",
    members = {
        principalArn = {
            type = "string",
        },
    },
}

M.SubscribedProject = {
    type = "structure",
    id = "SubscribedProject",
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
    id = "IamUserProfileDetails",
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
    id = "SsoUserProfileDetails",
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
    id = "UserProfileDetails",
    members = {
        iam = M.IamUserProfileDetails,
        sso = M.SsoUserProfileDetails,
    },
}

M.SubscribedUser = {
    type = "structure",
    id = "SubscribedUser",
    members = {
        id = {
            type = "string",
        },
        details = M.UserProfileDetails,
    },
}

M.SubscribedPrincipal = {
    type = "union",
    id = "SubscribedPrincipal",
    members = {
        project = M.SubscribedProject,
        user = M.SubscribedUser,
        group = M.SubscribedGroup,
        iam = M.SubscribedIamPrincipal,
    },
}

M.AcceptSubscriptionRequestOutput = {
    type = "structure",
    id = "AcceptSubscriptionRequestOutput",
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
            member = M.SubscribedPrincipal,
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member = M.SubscribedListing,
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
            member = M.FormOutput,
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
    },
}

M.AccountInfo = {
    type = "structure",
    id = "AccountInfo",
    members = {
        awsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        supportedRegions = {
            type = "list",
            member = { type = "string" },
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
    id = "AccountPoolSummary",
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
    id = "CustomAccountPoolHandler",
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
    id = "AccountSource",
    members = {
        accounts = {
            type = "list",
            member = M.AccountInfo,
        },
        customAccountPoolHandler = M.CustomAccountPoolHandler,
    },
}

M.AwsConsoleLinkParameters = {
    type = "structure",
    id = "AwsConsoleLinkParameters",
    members = {
        uri = {
            type = "string",
        },
    },
}

M.ActionParameters = {
    type = "union",
    id = "ActionParameters",
    members = {
        awsConsoleLink = M.AwsConsoleLinkParameters,
    },
}

M.DataZoneEntityType = {
    DOMAIN_UNIT = "DOMAIN_UNIT",
}

M.OwnerGroupProperties = {
    type = "structure",
    id = "OwnerGroupProperties",
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
    id = "OwnerUserProperties",
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
    id = "OwnerProperties",
    members = {
        user = M.OwnerUserProperties,
        group = M.OwnerGroupProperties,
    },
}

M.AddEntityOwnerInput = {
    type = "structure",
    id = "AddEntityOwnerInput",
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
        owner = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OwnerProperties }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AddEntityOwnerOutput = {
    type = "structure",
    id = "AddEntityOwnerOutput",
}

M.AdditionalAttributes = {
    type = "structure",
    id = "AdditionalAttributes",
    members = {
        formNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AddToProjectMemberPoolPolicyGrantDetail = {
    type = "structure",
    id = "AddToProjectMemberPoolPolicyGrantDetail",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.CreateAssetTypePolicyGrantDetail = {
    type = "structure",
    id = "CreateAssetTypePolicyGrantDetail",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.CreateDomainUnitPolicyGrantDetail = {
    type = "structure",
    id = "CreateDomainUnitPolicyGrantDetail",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.Unit = {
    type = "structure",
    id = "Unit",
}

M.CreateEnvironmentProfilePolicyGrantDetail = {
    type = "structure",
    id = "CreateEnvironmentProfilePolicyGrantDetail",
    members = {
        domainUnitId = {
            type = "string",
        },
    },
}

M.CreateFormTypePolicyGrantDetail = {
    type = "structure",
    id = "CreateFormTypePolicyGrantDetail",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.CreateGlossaryPolicyGrantDetail = {
    type = "structure",
    id = "CreateGlossaryPolicyGrantDetail",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.CreateProjectPolicyGrantDetail = {
    type = "structure",
    id = "CreateProjectPolicyGrantDetail",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.CreateProjectFromProjectProfilePolicyGrantDetail = {
    type = "structure",
    id = "CreateProjectFromProjectProfilePolicyGrantDetail",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
        projectProfiles = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OverrideDomainUnitOwnersPolicyGrantDetail = {
    type = "structure",
    id = "OverrideDomainUnitOwnersPolicyGrantDetail",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.OverrideProjectOwnersPolicyGrantDetail = {
    type = "structure",
    id = "OverrideProjectOwnersPolicyGrantDetail",
    members = {
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.UseAssetTypePolicyGrantDetail = {
    type = "structure",
    id = "UseAssetTypePolicyGrantDetail",
    members = {
        domainUnitId = {
            type = "string",
        },
    },
}

M.PolicyGrantDetail = {
    type = "union",
    id = "PolicyGrantDetail",
    members = {
        createDomainUnit = M.CreateDomainUnitPolicyGrantDetail,
        overrideDomainUnitOwners = M.OverrideDomainUnitOwnersPolicyGrantDetail,
        addToProjectMemberPool = M.AddToProjectMemberPoolPolicyGrantDetail,
        overrideProjectOwners = M.OverrideProjectOwnersPolicyGrantDetail,
        createGlossary = M.CreateGlossaryPolicyGrantDetail,
        createFormType = M.CreateFormTypePolicyGrantDetail,
        createAssetType = M.CreateAssetTypePolicyGrantDetail,
        createProject = M.CreateProjectPolicyGrantDetail,
        createEnvironmentProfile = M.CreateEnvironmentProfilePolicyGrantDetail,
        delegateCreateEnvironmentProfile = M.Unit,
        createEnvironment = M.Unit,
        createEnvironmentFromBlueprint = M.Unit,
        createProjectFromProjectProfile = M.CreateProjectFromProjectProfilePolicyGrantDetail,
        useAssetType = M.UseAssetTypePolicyGrantDetail,
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
    id = "AllDomainUnitsGrantFilter",
}

M.DomainUnitGrantFilter = {
    type = "union",
    id = "DomainUnitGrantFilter",
    members = {
        allDomainUnitsGrantFilter = M.AllDomainUnitsGrantFilter,
    },
}

M.DomainUnitPolicyGrantPrincipal = {
    type = "structure",
    id = "DomainUnitPolicyGrantPrincipal",
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
        domainUnitGrantFilter = M.DomainUnitGrantFilter,
    },
}

M.GroupPolicyGrantPrincipal = {
    type = "union",
    id = "GroupPolicyGrantPrincipal",
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
    id = "DomainUnitFilterForProject",
    members = {
        domainUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includeChildDomainUnits = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ProjectGrantFilter = {
    type = "union",
    id = "ProjectGrantFilter",
    members = {
        domainUnitFilter = M.DomainUnitFilterForProject,
    },
}

M.ProjectPolicyGrantPrincipal = {
    type = "structure",
    id = "ProjectPolicyGrantPrincipal",
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
        projectGrantFilter = M.ProjectGrantFilter,
    },
}

M.AllUsersGrantFilter = {
    type = "structure",
    id = "AllUsersGrantFilter",
}

M.UserPolicyGrantPrincipal = {
    type = "union",
    id = "UserPolicyGrantPrincipal",
    members = {
        userIdentifier = {
            type = "string",
        },
        allUsersGrantFilter = M.AllUsersGrantFilter,
    },
}

M.PolicyGrantPrincipal = {
    type = "union",
    id = "PolicyGrantPrincipal",
    members = {
        user = M.UserPolicyGrantPrincipal,
        group = M.GroupPolicyGrantPrincipal,
        project = M.ProjectPolicyGrantPrincipal,
        domainUnit = M.DomainUnitPolicyGrantPrincipal,
    },
}

M.AddPolicyGrantInput = {
    type = "structure",
    id = "AddPolicyGrantInput",
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
        principal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyGrantPrincipal }),
        detail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyGrantDetail }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AddPolicyGrantOutput = {
    type = "structure",
    id = "AddPolicyGrantOutput",
    members = {
        grantId = {
            type = "string",
        },
    },
}

M.AggregationListItem = {
    type = "structure",
    id = "AggregationListItem",
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
    id = "AggregationOutputItem",
    members = {
        value = {
            type = "string",
        },
        count = {
            type = "integer",
        },
        displayValue = {
            type = "string",
        },
    },
}

M.AggregationOutput = {
    type = "structure",
    id = "AggregationOutput",
    members = {
        attribute = {
            type = "string",
        },
        displayValue = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.AggregationOutputItem,
        },
    },
}

M.AmazonQPropertiesInput = {
    type = "structure",
    id = "AmazonQPropertiesInput",
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
    id = "AmazonQPropertiesOutput",
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
    id = "AmazonQPropertiesPatch",
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
    id = "AssetListingDetails",
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
    id = "FormInput",
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
    id = "BusinessNameGenerationConfiguration",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.PredictionConfiguration = {
    type = "structure",
    id = "PredictionConfiguration",
    members = {
        businessNameGeneration = M.BusinessNameGenerationConfiguration,
    },
}

M.CreateAssetInput = {
    type = "structure",
    id = "CreateAssetInput",
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
            member = { type = "string" },
        },
        formsInput = {
            type = "list",
            member = M.FormInput,
        },
        owningProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        predictionConfiguration = M.PredictionConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.TimeSeriesDataPointSummaryFormOutput = {
    type = "structure",
    id = "TimeSeriesDataPointSummaryFormOutput",
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
    id = "CreateAssetOutput",
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
            member = { type = "string" },
        },
        governedGlossaryTerms = {
            type = "list",
            member = { type = "string" },
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
        listing = M.AssetListingDetails,
        formsOutput = {
            type = "list",
            member = M.FormOutput,
            traits = {
                required = true,
            },
        },
        readOnlyFormsOutput = {
            type = "list",
            member = M.FormOutput,
        },
        latestTimeSeriesDataPointFormsOutput = {
            type = "list",
            member = M.TimeSeriesDataPointSummaryFormOutput,
        },
        predictionConfiguration = M.PredictionConfiguration,
    },
}

M.CreateAssetRevisionInput = {
    type = "structure",
    id = "CreateAssetRevisionInput",
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
            member = { type = "string" },
        },
        formsInput = {
            type = "list",
            member = M.FormInput,
        },
        predictionConfiguration = M.PredictionConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateAssetRevisionOutput = {
    type = "structure",
    id = "CreateAssetRevisionOutput",
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
            member = { type = "string" },
        },
        governedGlossaryTerms = {
            type = "list",
            member = { type = "string" },
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
        listing = M.AssetListingDetails,
        formsOutput = {
            type = "list",
            member = M.FormOutput,
            traits = {
                required = true,
            },
        },
        readOnlyFormsOutput = {
            type = "list",
            member = M.FormOutput,
        },
        latestTimeSeriesDataPointFormsOutput = {
            type = "list",
            member = M.TimeSeriesDataPointSummaryFormOutput,
        },
        predictionConfiguration = M.PredictionConfiguration,
    },
}

M.DeleteAssetInput = {
    type = "structure",
    id = "DeleteAssetInput",
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
    id = "DeleteAssetOutput",
}

M.GetAssetInput = {
    type = "structure",
    id = "GetAssetInput",
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
    id = "GetAssetOutput",
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
            member = { type = "string" },
        },
        governedGlossaryTerms = {
            type = "list",
            member = { type = "string" },
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
        listing = M.AssetListingDetails,
        formsOutput = {
            type = "list",
            member = M.FormOutput,
            traits = {
                required = true,
            },
        },
        readOnlyFormsOutput = {
            type = "list",
            member = M.FormOutput,
        },
        latestTimeSeriesDataPointFormsOutput = {
            type = "list",
            member = M.TimeSeriesDataPointSummaryFormOutput,
        },
    },
}

M.ColumnFilterConfiguration = {
    type = "structure",
    id = "ColumnFilterConfiguration",
    members = {
        includedColumnNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EqualToExpression = {
    type = "structure",
    id = "EqualToExpression",
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
    id = "GreaterThanExpression",
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
    id = "GreaterThanOrEqualToExpression",
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
    id = "InExpression",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.IsNotNullExpression = {
    type = "structure",
    id = "IsNotNullExpression",
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
    id = "IsNullExpression",
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
    id = "LessThanExpression",
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
    id = "LessThanOrEqualToExpression",
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
    id = "LikeExpression",
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
    id = "NotEqualToExpression",
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
    id = "NotInExpression",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.NotLikeExpression = {
    type = "structure",
    id = "NotLikeExpression",
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
    id = "RowFilterExpression",
    members = {
        equalTo = M.EqualToExpression,
        notEqualTo = M.NotEqualToExpression,
        greaterThan = M.GreaterThanExpression,
        lessThan = M.LessThanExpression,
        greaterThanOrEqualTo = M.GreaterThanOrEqualToExpression,
        lessThanOrEqualTo = M.LessThanOrEqualToExpression,
        isNull = M.IsNullExpression,
        isNotNull = M.IsNotNullExpression,
        in = M.InExpression,
        notIn = M.NotInExpression,
        like = M.LikeExpression,
        notLike = M.NotLikeExpression,
    },
}

M.FilterStatus = {
    VALID = "VALID",
    INVALID = "INVALID",
}

M.AssetFilterSummary = {
    type = "structure",
    id = "AssetFilterSummary",
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
            member = { type = "string" },
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
    id = "MatchOffset",
    members = {
        startOffset = {
            type = "integer",
        },
        endOffset = {
            type = "integer",
        },
    },
}

M.TextMatchItem = {
    type = "structure",
    id = "TextMatchItem",
    members = {
        attribute = {
            type = "string",
        },
        text = {
            type = "string",
        },
        matchOffsets = {
            type = "list",
            member = M.MatchOffset,
        },
    },
}

M.MatchRationaleItem = {
    type = "union",
    id = "MatchRationaleItem",
    members = {
        textMatches = {
            type = "list",
            member = M.TextMatchItem,
        },
    },
}

M.AssetItemAdditionalAttributes = {
    type = "structure",
    id = "AssetItemAdditionalAttributes",
    members = {
        formsOutput = {
            type = "list",
            member = M.FormOutput,
        },
        readOnlyFormsOutput = {
            type = "list",
            member = M.FormOutput,
        },
        latestTimeSeriesDataPointFormsOutput = {
            type = "list",
            member = M.TimeSeriesDataPointSummaryFormOutput,
        },
        matchRationale = {
            type = "list",
            member = M.MatchRationaleItem,
        },
    },
}

M.AssetItem = {
    type = "structure",
    id = "AssetItem",
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
            member = { type = "string" },
        },
        owningProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        additionalAttributes = M.AssetItemAdditionalAttributes,
        governedGlossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AssetListing = {
    type = "structure",
    id = "AssetListing",
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
            member = M.TimeSeriesDataPointSummaryFormOutput,
        },
        glossaryTerms = {
            type = "list",
            member = M.DetailedGlossaryTerm,
        },
        governedGlossaryTerms = {
            type = "list",
            member = M.DetailedGlossaryTerm,
        },
        owningProjectId = {
            type = "string",
        },
    },
}

M.AssetListingItemAdditionalAttributes = {
    type = "structure",
    id = "AssetListingItemAdditionalAttributes",
    members = {
        forms = {
            type = "string",
        },
        matchRationale = {
            type = "list",
            member = M.MatchRationaleItem,
        },
        latestTimeSeriesDataPointForms = {
            type = "list",
            member = M.TimeSeriesDataPointSummaryFormOutput,
        },
    },
}

M.AssetListingItem = {
    type = "structure",
    id = "AssetListingItem",
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
            member = M.DetailedGlossaryTerm,
        },
        governedGlossaryTerms = {
            type = "list",
            member = M.DetailedGlossaryTerm,
        },
        owningProjectId = {
            type = "string",
        },
        additionalAttributes = M.AssetListingItemAdditionalAttributes,
    },
}

M.AssetRevision = {
    type = "structure",
    id = "AssetRevision",
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
    id = "AssetTargetNameMap",
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
    id = "FormEntryInput",
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
    id = "CreateAssetTypeInput",
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
            key = { type = "string" },
            value = M.FormEntryInput,
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
    id = "FormEntryOutput",
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
    id = "CreateAssetTypeOutput",
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
            key = { type = "string" },
            value = M.FormEntryOutput,
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
    id = "DeleteAssetTypeInput",
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
    id = "DeleteAssetTypeOutput",
}

M.GetAssetTypeInput = {
    type = "structure",
    id = "GetAssetTypeInput",
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
    id = "GetAssetTypeOutput",
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
            key = { type = "string" },
            value = M.FormEntryOutput,
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
    id = "AssetTypeItem",
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
            key = { type = "string" },
            value = M.FormEntryOutput,
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
    id = "AssetTypesForRule",
    members = {
        selectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specificAssetTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AssociateEnvironmentRoleInput = {
    type = "structure",
    id = "AssociateEnvironmentRoleInput",
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
    id = "AssociateEnvironmentRoleOutput",
}

M.GovernedEntityType = {
    ASSET = "ASSET",
}

M.AssociateGovernedTermsInput = {
    type = "structure",
    id = "AssociateGovernedTermsInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateGovernedTermsOutput = {
    type = "structure",
    id = "AssociateGovernedTermsOutput",
}

M.AthenaPropertiesInput = {
    type = "structure",
    id = "AthenaPropertiesInput",
    members = {
        workgroupName = {
            type = "string",
        },
    },
}

M.AthenaPropertiesOutput = {
    type = "structure",
    id = "AthenaPropertiesOutput",
    members = {
        workgroupName = {
            type = "string",
        },
    },
}

M.AthenaPropertiesPatch = {
    type = "structure",
    id = "AthenaPropertiesPatch",
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
    id = "AttributeError",
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
    id = "AttributeInput",
    members = {
        attributeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forms = {
            type = "list",
            member = M.FormInput,
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
    id = "AuthorizationCodeProperties",
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
    id = "OAuth2ClientApplication",
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
    id = "GlueOAuth2Credentials",
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
    id = "OAuth2Properties",
    members = {
        oAuth2GrantType = {
            type = "string",
        },
        oAuth2ClientApplication = M.OAuth2ClientApplication,
        tokenUrl = {
            type = "string",
        },
        tokenUrlParametersMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        authorizationCodeProperties = M.AuthorizationCodeProperties,
        oAuth2Credentials = M.GlueOAuth2Credentials,
    },
}

M.AuthenticationConfiguration = {
    type = "structure",
    id = "AuthenticationConfiguration",
    members = {
        authenticationType = {
            type = "string",
        },
        secretArn = {
            type = "string",
        },
        oAuth2Properties = M.OAuth2Properties,
    },
}

M.BasicAuthenticationCredentials = {
    type = "structure",
    id = "BasicAuthenticationCredentials",
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
    id = "AuthenticationConfigurationInput",
    members = {
        authenticationType = {
            type = "string",
        },
        oAuth2Properties = M.OAuth2Properties,
        secretArn = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        basicAuthenticationCredentials = M.BasicAuthenticationCredentials,
        customAuthenticationCredentials = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AuthenticationConfigurationPatch = {
    type = "structure",
    id = "AuthenticationConfigurationPatch",
    members = {
        secretArn = {
            type = "string",
        },
        basicAuthenticationCredentials = M.BasicAuthenticationCredentials,
    },
}

M.AuthType = {
    IAM_IDC = "IAM_IDC",
    DISABLED = "DISABLED",
}

M.AwsAccount = {
    type = "union",
    id = "AwsAccount",
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
    id = "AwsLocation",
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
    id = "BatchGetAttributeOutput",
    members = {
        attributeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forms = {
            type = "list",
            member = M.FormOutput,
        },
    },
}

M.BatchGetAttributesMetadataInput = {
    type = "structure",
    id = "BatchGetAttributesMetadataInput",
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
            member = { type = "string" },
            traits = {
                http_query = "attributeIdentifier",
                required = true,
            },
        },
    },
}

M.BatchGetAttributesMetadataOutput = {
    type = "structure",
    id = "BatchGetAttributesMetadataOutput",
    members = {
        attributes = {
            type = "list",
            member = M.BatchGetAttributeOutput,
        },
        errors = {
            type = "list",
            member = M.AttributeError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutAttributeOutput = {
    type = "structure",
    id = "BatchPutAttributeOutput",
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
    id = "BatchPutAttributesMetadataInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        attributes = {
            type = "list",
            member = M.AttributeInput,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutAttributesMetadataOutput = {
    type = "structure",
    id = "BatchPutAttributesMetadataOutput",
    members = {
        errors = {
            type = "list",
            member = M.AttributeError,
        },
        attributes = {
            type = "list",
            member = M.BatchPutAttributeOutput,
        },
    },
}

M.CancelMetadataGenerationRunInput = {
    type = "structure",
    id = "CancelMetadataGenerationRunInput",
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
    id = "CancelMetadataGenerationRunOutput",
}

M.CancelSubscriptionInput = {
    type = "structure",
    id = "CancelSubscriptionInput",
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
    id = "CancelSubscriptionOutput",
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
        subscribedPrincipal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribedPrincipal }),
        subscribedListing = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribedListing }),
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
    id = "CellInformation",
}

M.ChangeAction = {
    PUBLISH = "PUBLISH",
    UNPUBLISH = "UNPUBLISH",
}

M.CloudFormationProperties = {
    type = "structure",
    id = "CloudFormationProperties",
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
    id = "ComputeConfig",
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
    id = "ConfigurableActionParameter",
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
    id = "ConfigurableEnvironmentAction",
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
            member = M.ConfigurableActionParameter,
            traits = {
                required = true,
            },
        },
    },
}

M.Configuration = {
    type = "structure",
    id = "Configuration",
    members = {
        classification = {
            type = "string",
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ConfigurationStatus = {
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ConnectionCredentials = {
    type = "structure",
    id = "ConnectionCredentials",
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
    id = "PhysicalConnectionRequirements",
    members = {
        subnetId = {
            type = "string",
        },
        subnetIdList = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIdList = {
            type = "list",
            member = { type = "string" },
        },
        availabilityZone = {
            type = "string",
        },
    },
}

M.GlueConnectionInput = {
    type = "structure",
    id = "GlueConnectionInput",
    members = {
        connectionProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        physicalConnectionRequirements = M.PhysicalConnectionRequirements,
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
            member = { type = "string" },
        },
        sparkProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        athenaProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        pythonProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        authenticationConfiguration = M.AuthenticationConfigurationInput,
    },
}

M.GluePropertiesInput = {
    type = "structure",
    id = "GluePropertiesInput",
    members = {
        glueConnectionInput = M.GlueConnectionInput,
    },
}

M.HyperPodPropertiesInput = {
    type = "structure",
    id = "HyperPodPropertiesInput",
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
    id = "IamPropertiesInput",
    members = {
        glueLineageSyncEnabled = {
            type = "boolean",
        },
    },
}

M.LakehousePropertiesInput = {
    type = "structure",
    id = "LakehousePropertiesInput",
    members = {
        glueLineageSyncEnabled = {
            type = "boolean",
        },
    },
}

M.MlflowPropertiesInput = {
    type = "structure",
    id = "MlflowPropertiesInput",
    members = {
        trackingServerArn = {
            type = "string",
        },
    },
}

M.UsernamePassword = {
    type = "structure",
    id = "UsernamePassword",
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
    id = "RedshiftCredentials",
    members = {
        secretArn = {
            type = "string",
        },
        usernamePassword = M.UsernamePassword,
    },
}

M.LineageSyncSchedule = {
    type = "structure",
    id = "LineageSyncSchedule",
    members = {
        schedule = {
            type = "string",
        },
    },
}

M.RedshiftLineageSyncConfigurationInput = {
    type = "structure",
    id = "RedshiftLineageSyncConfigurationInput",
    members = {
        enabled = {
            type = "boolean",
        },
        schedule = M.LineageSyncSchedule,
    },
}

M.RedshiftStorageProperties = {
    type = "union",
    id = "RedshiftStorageProperties",
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
    id = "RedshiftPropertiesInput",
    members = {
        storage = M.RedshiftStorageProperties,
        databaseName = {
            type = "string",
        },
        host = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        credentials = M.RedshiftCredentials,
        lineageSync = M.RedshiftLineageSyncConfigurationInput,
    },
}

M.S3PropertiesInput = {
    type = "structure",
    id = "S3PropertiesInput",
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
    id = "SparkEmrPropertiesInput",
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
    id = "SparkGlueArgs",
    members = {
        connection = {
            type = "string",
        },
    },
}

M.SparkGluePropertiesInput = {
    type = "structure",
    id = "SparkGluePropertiesInput",
    members = {
        additionalArgs = M.SparkGlueArgs,
        glueConnectionName = {
            type = "string",
        },
        glueConnectionNames = {
            type = "list",
            member = { type = "string" },
        },
        glueVersion = {
            type = "string",
        },
        idleTimeout = {
            type = "integer",
        },
        javaVirtualEnv = {
            type = "string",
        },
        numberOfWorkers = {
            type = "integer",
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
    id = "WorkflowsMwaaPropertiesInput",
    members = {
        mwaaEnvironmentName = {
            type = "string",
        },
    },
}

M.WorkflowsServerlessPropertiesInput = {
    type = "structure",
    id = "WorkflowsServerlessPropertiesInput",
}

M.ConnectionPropertiesInput = {
    type = "union",
    id = "ConnectionPropertiesInput",
    members = {
        athenaProperties = M.AthenaPropertiesInput,
        glueProperties = M.GluePropertiesInput,
        hyperPodProperties = M.HyperPodPropertiesInput,
        iamProperties = M.IamPropertiesInput,
        redshiftProperties = M.RedshiftPropertiesInput,
        sparkEmrProperties = M.SparkEmrPropertiesInput,
        sparkGlueProperties = M.SparkGluePropertiesInput,
        s3Properties = M.S3PropertiesInput,
        amazonQProperties = M.AmazonQPropertiesInput,
        mlflowProperties = M.MlflowPropertiesInput,
        workflowsMwaaProperties = M.WorkflowsMwaaPropertiesInput,
        workflowsServerlessProperties = M.WorkflowsServerlessPropertiesInput,
        lakehouseProperties = M.LakehousePropertiesInput,
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
    id = "GluePropertiesOutput",
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
    id = "HyperPodPropertiesOutput",
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
    id = "IamPropertiesOutput",
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
    id = "LakehousePropertiesOutput",
    members = {
        glueLineageSyncEnabled = {
            type = "boolean",
        },
    },
}

M.MlflowPropertiesOutput = {
    type = "structure",
    id = "MlflowPropertiesOutput",
    members = {
        trackingServerArn = {
            type = "string",
        },
    },
}

M.RedshiftLineageSyncConfigurationOutput = {
    type = "structure",
    id = "RedshiftLineageSyncConfigurationOutput",
    members = {
        lineageJobId = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        schedule = M.LineageSyncSchedule,
    },
}

M.RedshiftPropertiesOutput = {
    type = "structure",
    id = "RedshiftPropertiesOutput",
    members = {
        storage = M.RedshiftStorageProperties,
        credentials = M.RedshiftCredentials,
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
        lineageSync = M.RedshiftLineageSyncConfigurationOutput,
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
    id = "S3PropertiesOutput",
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
    id = "ManagedEndpointCredentials",
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
    id = "SparkEmrPropertiesOutput",
    members = {
        computeArn = {
            type = "string",
        },
        credentials = M.UsernamePassword,
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
        managedEndpointCredentials = M.ManagedEndpointCredentials,
    },
}

M.SparkGluePropertiesOutput = {
    type = "structure",
    id = "SparkGluePropertiesOutput",
    members = {
        additionalArgs = M.SparkGlueArgs,
        glueConnectionName = {
            type = "string",
        },
        glueConnectionNames = {
            type = "list",
            member = { type = "string" },
        },
        glueVersion = {
            type = "string",
        },
        idleTimeout = {
            type = "integer",
        },
        javaVirtualEnv = {
            type = "string",
        },
        numberOfWorkers = {
            type = "integer",
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
    id = "WorkflowsMwaaPropertiesOutput",
    members = {
        mwaaEnvironmentName = {
            type = "string",
        },
    },
}

M.WorkflowsServerlessPropertiesOutput = {
    type = "structure",
    id = "WorkflowsServerlessPropertiesOutput",
}

M.ConnectionPropertiesOutput = {
    type = "union",
    id = "ConnectionPropertiesOutput",
    members = {
        athenaProperties = M.AthenaPropertiesOutput,
        glueProperties = M.GluePropertiesOutput,
        hyperPodProperties = M.HyperPodPropertiesOutput,
        iamProperties = M.IamPropertiesOutput,
        redshiftProperties = M.RedshiftPropertiesOutput,
        sparkEmrProperties = M.SparkEmrPropertiesOutput,
        sparkGlueProperties = M.SparkGluePropertiesOutput,
        s3Properties = M.S3PropertiesOutput,
        amazonQProperties = M.AmazonQPropertiesOutput,
        mlflowProperties = M.MlflowPropertiesOutput,
        workflowsMwaaProperties = M.WorkflowsMwaaPropertiesOutput,
        workflowsServerlessProperties = M.WorkflowsServerlessPropertiesOutput,
        lakehouseProperties = M.LakehousePropertiesOutput,
    },
}

M.GlueConnectionPatch = {
    type = "structure",
    id = "GlueConnectionPatch",
    members = {
        description = {
            type = "string",
        },
        connectionProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        authenticationConfiguration = M.AuthenticationConfigurationPatch,
    },
}

M.GluePropertiesPatch = {
    type = "structure",
    id = "GluePropertiesPatch",
    members = {
        glueConnectionInput = M.GlueConnectionPatch,
    },
}

M.IamPropertiesPatch = {
    type = "structure",
    id = "IamPropertiesPatch",
    members = {
        glueLineageSyncEnabled = {
            type = "boolean",
        },
    },
}

M.LakehousePropertiesPatch = {
    type = "structure",
    id = "LakehousePropertiesPatch",
    members = {
        glueLineageSyncEnabled = {
            type = "boolean",
        },
    },
}

M.MlflowPropertiesPatch = {
    type = "structure",
    id = "MlflowPropertiesPatch",
    members = {
        trackingServerArn = {
            type = "string",
        },
    },
}

M.RedshiftPropertiesPatch = {
    type = "structure",
    id = "RedshiftPropertiesPatch",
    members = {
        storage = M.RedshiftStorageProperties,
        databaseName = {
            type = "string",
        },
        host = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        credentials = M.RedshiftCredentials,
        lineageSync = M.RedshiftLineageSyncConfigurationInput,
    },
}

M.S3PropertiesPatch = {
    type = "structure",
    id = "S3PropertiesPatch",
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
    id = "SparkEmrPropertiesPatch",
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
    id = "ConnectionPropertiesPatch",
    members = {
        athenaProperties = M.AthenaPropertiesPatch,
        glueProperties = M.GluePropertiesPatch,
        iamProperties = M.IamPropertiesPatch,
        redshiftProperties = M.RedshiftPropertiesPatch,
        sparkEmrProperties = M.SparkEmrPropertiesPatch,
        s3Properties = M.S3PropertiesPatch,
        amazonQProperties = M.AmazonQPropertiesPatch,
        mlflowProperties = M.MlflowPropertiesPatch,
        lakehouseProperties = M.LakehousePropertiesPatch,
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
    id = "GlueConnection",
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
            member = { type = "string" },
        },
        connectionProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        sparkProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        athenaProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        pythonProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        physicalConnectionRequirements = M.PhysicalConnectionRequirements,
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
        authenticationConfiguration = M.AuthenticationConfiguration,
        connectionSchemaVersion = {
            type = "integer",
        },
        compatibleComputeEnvironments = {
            type = "list",
            member = { type = "string" },
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
    id = "PhysicalEndpoint",
    members = {
        awsLocation = M.AwsLocation,
        glueConnectionName = {
            type = "string",
        },
        glueConnectionNames = {
            type = "list",
            member = { type = "string" },
        },
        glueConnection = M.GlueConnection,
        enableTrustedIdentityPropagation = {
            type = "boolean",
        },
        host = {
            type = "string",
        },
        port = {
            type = "integer",
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
    id = "ConnectionSummary",
    members = {
        configurations = {
            type = "list",
            member = M.Configuration,
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
            member = M.PhysicalEndpoint,
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
        props = M.ConnectionPropertiesOutput,
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
    id = "CreateAccountPoolInput",
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
        accountSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountSource }),
    },
}

M.CreateAccountPoolOutput = {
    type = "structure",
    id = "CreateAccountPoolOutput",
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
        accountSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountSource }),
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
    id = "CreateConnectionInput",
    members = {
        awsLocation = M.AwsLocation,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        configurations = {
            type = "list",
            member = M.Configuration,
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
        props = M.ConnectionPropertiesInput,
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
    id = "CreateConnectionOutput",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurations = {
            type = "list",
            member = M.Configuration,
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
            member = M.PhysicalEndpoint,
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
        props = M.ConnectionPropertiesOutput,
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
    id = "DataProductItem",
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
            member = { type = "string" },
        },
    },
}

M.CreateDataProductInput = {
    type = "structure",
    id = "CreateDataProductInput",
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
            member = { type = "string" },
        },
        formsInput = {
            type = "list",
            member = M.FormInput,
        },
        items = {
            type = "list",
            member = M.DataProductItem,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateDataProductOutput",
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
                default = "CREATED",
                required = true,
            },
        },
        description = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
        items = {
            type = "list",
            member = M.DataProductItem,
        },
        formsOutput = {
            type = "list",
            member = M.FormOutput,
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
    id = "CreateDataProductRevisionInput",
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
            member = { type = "string" },
        },
        items = {
            type = "list",
            member = M.DataProductItem,
        },
        formsInput = {
            type = "list",
            member = M.FormInput,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateDataProductRevisionOutput = {
    type = "structure",
    id = "CreateDataProductRevisionOutput",
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
                default = "CREATED",
                required = true,
            },
        },
        description = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
        items = {
            type = "list",
            member = M.DataProductItem,
        },
        formsOutput = {
            type = "list",
            member = M.FormOutput,
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
    id = "FilterExpression",
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
    id = "RelationalFilterConfiguration",
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
            member = M.FilterExpression,
        },
    },
}

M.GlueRunConfigurationInput = {
    type = "structure",
    id = "GlueRunConfigurationInput",
    members = {
        dataAccessRole = {
            type = "string",
        },
        relationalFilterConfigurations = {
            type = "list",
            member = M.RelationalFilterConfiguration,
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
    id = "RedshiftCredentialConfiguration",
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
    id = "RedshiftClusterStorage",
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
    id = "RedshiftServerlessStorage",
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
    id = "RedshiftStorage",
    members = {
        redshiftClusterSource = M.RedshiftClusterStorage,
        redshiftServerlessSource = M.RedshiftServerlessStorage,
    },
}

M.RedshiftRunConfigurationInput = {
    type = "structure",
    id = "RedshiftRunConfigurationInput",
    members = {
        dataAccessRole = {
            type = "string",
        },
        relationalFilterConfigurations = {
            type = "list",
            member = M.RelationalFilterConfiguration,
            traits = {
                required = true,
            },
        },
        redshiftCredentialConfiguration = M.RedshiftCredentialConfiguration,
        redshiftStorage = M.RedshiftStorage,
    },
}

M.SageMakerRunConfigurationInput = {
    type = "structure",
    id = "SageMakerRunConfigurationInput",
    members = {
        trackingAssets = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceConfigurationInput = {
    type = "union",
    id = "DataSourceConfigurationInput",
    members = {
        glueRunConfiguration = M.GlueRunConfigurationInput,
        redshiftRunConfiguration = M.RedshiftRunConfigurationInput,
        sageMakerRunConfiguration = M.SageMakerRunConfigurationInput,
    },
}

M.EnableSetting = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RecommendationConfiguration = {
    type = "structure",
    id = "RecommendationConfiguration",
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
    id = "ScheduleConfiguration",
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
    id = "CreateDataSourceInput",
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
        configuration = M.DataSourceConfigurationInput,
        recommendation = M.RecommendationConfiguration,
        enableSetting = {
            type = "string",
        },
        schedule = M.ScheduleConfiguration,
        publishOnImport = {
            type = "boolean",
        },
        assetFormsInput = {
            type = "list",
            member = M.FormInput,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.GlueRunConfigurationOutput = {
    type = "structure",
    id = "GlueRunConfigurationOutput",
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
            member = M.RelationalFilterConfiguration,
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
    id = "RedshiftRunConfigurationOutput",
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
            member = M.RelationalFilterConfiguration,
            traits = {
                required = true,
            },
        },
        redshiftCredentialConfiguration = M.RedshiftCredentialConfiguration,
        redshiftStorage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RedshiftStorage }),
    },
}

M.SageMakerRunConfigurationOutput = {
    type = "structure",
    id = "SageMakerRunConfigurationOutput",
    members = {
        accountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        trackingAssets = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceConfigurationOutput = {
    type = "union",
    id = "DataSourceConfigurationOutput",
    members = {
        glueRunConfiguration = M.GlueRunConfigurationOutput,
        redshiftRunConfiguration = M.RedshiftRunConfigurationOutput,
        sageMakerRunConfiguration = M.SageMakerRunConfigurationOutput,
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
    id = "DataSourceErrorMessage",
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
    id = "CreateDataSourceOutput",
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
        configuration = M.DataSourceConfigurationOutput,
        recommendation = M.RecommendationConfiguration,
        enableSetting = {
            type = "string",
        },
        publishOnImport = {
            type = "boolean",
        },
        assetFormsOutput = {
            type = "list",
            member = M.FormOutput,
        },
        schedule = M.ScheduleConfiguration,
        lastRunStatus = {
            type = "string",
        },
        lastRunAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastRunErrorMessage = M.DataSourceErrorMessage,
        errorMessage = M.DataSourceErrorMessage,
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
    id = "SingleSignOn",
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
    id = "CreateDomainInput",
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
        singleSignOn = M.SingleSignOn,
        domainExecutionRole = {
            type = "string",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        domainVersion = {
            type = "string",
        },
        serviceRole = {
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
    id = "CreateDomainOutput",
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
        singleSignOn = M.SingleSignOn,
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreateDomainUnitInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DomainUnitGroupProperties = {
    type = "structure",
    id = "DomainUnitGroupProperties",
    members = {
        groupId = {
            type = "string",
        },
    },
}

M.DomainUnitUserProperties = {
    type = "structure",
    id = "DomainUnitUserProperties",
    members = {
        userId = {
            type = "string",
        },
    },
}

M.DomainUnitOwnerProperties = {
    type = "union",
    id = "DomainUnitOwnerProperties",
    members = {
        user = M.DomainUnitUserProperties,
        group = M.DomainUnitGroupProperties,
    },
}

M.CreateDomainUnitOutput = {
    type = "structure",
    id = "CreateDomainUnitOutput",
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
            member = M.DomainUnitOwnerProperties,
            traits = {
                required = true,
            },
        },
        ancestorDomainUnitIds = {
            type = "list",
            member = { type = "string" },
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
    id = "EnvironmentParameter",
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
    id = "CreateEnvironmentInput",
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
            member = M.EnvironmentParameter,
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
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
    id = "DeploymentProperties",
    members = {
        startTimeoutMinutes = {
            type = "integer",
        },
        endTimeoutMinutes = {
            type = "integer",
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
    id = "EnvironmentError",
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
    id = "Deployment",
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
        failureReason = M.EnvironmentError,
        messages = {
            type = "list",
            member = { type = "string" },
        },
        isDeploymentComplete = {
            type = "boolean",
        },
    },
}

M.Resource = {
    type = "structure",
    id = "Resource",
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
    id = "ProvisioningProperties",
    members = {
        cloudFormation = M.CloudFormationProperties,
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
    id = "CustomParameter",
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
    id = "CreateEnvironmentOutput",
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
            traits = {
                default = "",
            },
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
            member = M.Resource,
        },
        status = {
            type = "string",
        },
        environmentActions = {
            type = "list",
            member = M.ConfigurableEnvironmentAction,
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
        userParameters = {
            type = "list",
            member = M.CustomParameter,
        },
        lastDeployment = M.Deployment,
        provisioningProperties = M.ProvisioningProperties,
        deploymentProperties = M.DeploymentProperties,
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
    id = "CreateEnvironmentActionInput",
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
        parameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionParameters }),
        description = {
            type = "string",
        },
    },
}

M.CreateEnvironmentActionOutput = {
    type = "structure",
    id = "CreateEnvironmentActionOutput",
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
        parameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionParameters }),
        description = {
            type = "string",
        },
    },
}

M.CreateEnvironmentBlueprintInput = {
    type = "structure",
    id = "CreateEnvironmentBlueprintInput",
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
        provisioningProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProvisioningProperties }),
        userParameters = {
            type = "list",
            member = M.CustomParameter,
        },
    },
}

M.CreateEnvironmentBlueprintOutput = {
    type = "structure",
    id = "CreateEnvironmentBlueprintOutput",
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
        provisioningProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProvisioningProperties }),
        deploymentProperties = M.DeploymentProperties,
        userParameters = {
            type = "list",
            member = M.CustomParameter,
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
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
    id = "CreateEnvironmentProfileInput",
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
            member = M.EnvironmentParameter,
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
    id = "CreateEnvironmentProfileOutput",
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
            member = M.CustomParameter,
        },
    },
}

M.Model = {
    type = "union",
    id = "Model",
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
    id = "CreateFormTypeInput",
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
        model = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Model }),
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
    id = "CreateFormTypeOutput",
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
    id = "CreateGlossaryInput",
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

M.CreateGlossaryOutput = {
    type = "structure",
    id = "CreateGlossaryOutput",
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
            member = { type = "string" },
        },
    },
}

M.GlossaryTermStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TermRelations = {
    type = "structure",
    id = "TermRelations",
    members = {
        isA = {
            type = "list",
            member = { type = "string" },
        },
        classifies = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateGlossaryTermInput = {
    type = "structure",
    id = "CreateGlossaryTermInput",
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
        termRelations = M.TermRelations,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateGlossaryTermOutput = {
    type = "structure",
    id = "CreateGlossaryTermOutput",
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
        termRelations = M.TermRelations,
        usageRestrictions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateGroupProfileInput = {
    type = "structure",
    id = "CreateGroupProfileInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.GroupProfileStatus = {
    ASSIGNED = "ASSIGNED",
    NOT_ASSIGNED = "NOT_ASSIGNED",
}

M.CreateGroupProfileOutput = {
    type = "structure",
    id = "CreateGroupProfileOutput",
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
    id = "CreateListingChangeSetInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateListingChangeSetOutput = {
    type = "structure",
    id = "CreateListingChangeSetOutput",
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
    id = "Member",
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
    id = "ProjectMembershipAssignment",
    members = {
        member = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Member }),
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
    id = "EnvironmentResolvedAccount",
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
    id = "EnvironmentConfigurationUserParameter",
    members = {
        environmentId = {
            type = "string",
        },
        environmentResolvedAccount = M.EnvironmentResolvedAccount,
        environmentConfigurationName = {
            type = "string",
        },
        environmentParameters = {
            type = "list",
            member = M.EnvironmentParameter,
        },
    },
}

M.CreateProjectInput = {
    type = "structure",
    id = "CreateProjectInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
        domainUnitId = {
            type = "string",
        },
        projectProfileId = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member = M.EnvironmentConfigurationUserParameter,
        },
        projectCategory = {
            type = "string",
        },
        projectExecutionRole = {
            type = "string",
        },
        membershipAssignments = {
            type = "list",
            member = M.ProjectMembershipAssignment,
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
    id = "EnvironmentDeploymentDetails",
    members = {
        overallDeploymentStatus = {
            type = "string",
        },
        environmentFailureReasons = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.ProjectDeletionError = {
    type = "structure",
    id = "ProjectDeletionError",
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
    id = "ResourceTag",
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
    id = "CreateProjectOutput",
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
            member = M.ProjectDeletionError,
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
            member = M.ResourceTag,
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
        domainUnitId = {
            type = "string",
        },
        projectProfileId = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member = M.EnvironmentConfigurationUserParameter,
        },
        environmentDeploymentDetails = M.EnvironmentDeploymentDetails,
        projectCategory = {
            type = "string",
        },
    },
}

M.CreateProjectMembershipInput = {
    type = "structure",
    id = "CreateProjectMembershipInput",
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
        member = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Member }),
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
    id = "CreateProjectMembershipOutput",
}

M.Region = {
    type = "union",
    id = "Region",
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
    id = "EnvironmentConfigurationParameter",
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
    id = "EnvironmentConfigurationParametersDetails",
    members = {
        ssmPath = {
            type = "string",
        },
        parameterOverrides = {
            type = "list",
            member = M.EnvironmentConfigurationParameter,
        },
        resolvedParameters = {
            type = "list",
            member = M.EnvironmentConfigurationParameter,
        },
    },
}

M.DeploymentMode = {
    ON_CREATE = "ON_CREATE",
    ON_DEMAND = "ON_DEMAND",
}

M.EnvironmentConfiguration = {
    type = "structure",
    id = "EnvironmentConfiguration",
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
        configurationParameters = M.EnvironmentConfigurationParametersDetails,
        awsAccount = M.AwsAccount,
        accountPools = {
            type = "list",
            member = { type = "string" },
        },
        awsRegion = M.Region,
        deploymentOrder = {
            type = "integer",
        },
    },
}

M.ResourceTagParameter = {
    type = "structure",
    id = "ResourceTagParameter",
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
    id = "CreateProjectProfileInput",
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
            member = M.ResourceTagParameter,
        },
        allowCustomProjectResourceTags = {
            type = "boolean",
        },
        projectResourceTagsDescription = {
            type = "string",
        },
        environmentConfigurations = {
            type = "list",
            member = M.EnvironmentConfiguration,
        },
        domainUnitIdentifier = {
            type = "string",
        },
    },
}

M.CreateProjectProfileOutput = {
    type = "structure",
    id = "CreateProjectProfileOutput",
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
            member = M.ResourceTagParameter,
        },
        allowCustomProjectResourceTags = {
            type = "boolean",
        },
        projectResourceTagsDescription = {
            type = "string",
        },
        environmentConfigurations = {
            type = "list",
            member = M.EnvironmentConfiguration,
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
    id = "GlossaryTermEnforcementDetail",
    members = {
        requiredGlossaryTermIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MetadataFormReference = {
    type = "structure",
    id = "MetadataFormReference",
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
    id = "MetadataFormEnforcementDetail",
    members = {
        requiredMetadataForms = {
            type = "list",
            member = M.MetadataFormReference,
        },
    },
}

M.RuleDetail = {
    type = "union",
    id = "RuleDetail",
    members = {
        metadataFormEnforcementDetail = M.MetadataFormEnforcementDetail,
        glossaryTermEnforcementDetail = M.GlossaryTermEnforcementDetail,
    },
}

M.ProjectsForRule = {
    type = "structure",
    id = "ProjectsForRule",
    members = {
        selectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specificProjects = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RuleScope = {
    type = "structure",
    id = "RuleScope",
    members = {
        assetType = M.AssetTypesForRule,
        dataProduct = {
            type = "boolean",
        },
        project = M.ProjectsForRule,
    },
}

M.DomainUnitTarget = {
    type = "structure",
    id = "DomainUnitTarget",
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
    id = "RuleTarget",
    members = {
        domainUnitTarget = M.DomainUnitTarget,
    },
}

M.CreateRuleInput = {
    type = "structure",
    id = "CreateRuleInput",
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
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleTarget }),
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleScope }),
        detail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleDetail }),
        description = {
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

M.RuleType = {
    METADATA_FORM_ENFORCEMENT = "METADATA_FORM_ENFORCEMENT",
    GLOSSARY_TERM_ENFORCEMENT = "GLOSSARY_TERM_ENFORCEMENT",
}

M.RuleTargetType = {
    DOMAIN_UNIT = "DOMAIN_UNIT",
}

M.CreateRuleOutput = {
    type = "structure",
    id = "CreateRuleOutput",
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
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleTarget }),
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleScope }),
        detail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleDetail }),
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
    id = "ListingRevisionInput",
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
    id = "GrantedEntityInput",
    members = {
        listing = M.ListingRevisionInput,
    },
}

M.CreateSubscriptionGrantInput = {
    type = "structure",
    id = "CreateSubscriptionGrantInput",
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
        grantedEntity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GrantedEntityInput }),
        assetTargetNames = {
            type = "list",
            member = M.AssetTargetNameMap,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.FailureCause = {
    type = "structure",
    id = "FailureCause",
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
    id = "SubscribedAsset",
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
        failureCause = M.FailureCause,
        grantedTimestamp = {
            type = "timestamp",
        },
        failureTimestamp = {
            type = "timestamp",
        },
        assetScope = M.AssetScope,
        permissions = M.Permissions,
    },
}

M.ListingRevision = {
    type = "structure",
    id = "ListingRevision",
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
    id = "GrantedEntity",
    members = {
        listing = M.ListingRevision,
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
    id = "CreateSubscriptionGrantOutput",
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
        grantedEntity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GrantedEntity }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = {
            type = "list",
            member = M.SubscribedAsset,
        },
        subscriptionId = {
            type = "string",
        },
    },
}

M.SubscribedListingInput = {
    type = "structure",
    id = "SubscribedListingInput",
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
    id = "SubscribedGroupInput",
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.SubscribedIamPrincipalInput = {
    type = "structure",
    id = "SubscribedIamPrincipalInput",
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.SubscribedProjectInput = {
    type = "structure",
    id = "SubscribedProjectInput",
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.SubscribedUserInput = {
    type = "structure",
    id = "SubscribedUserInput",
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.SubscribedPrincipalInput = {
    type = "union",
    id = "SubscribedPrincipalInput",
    members = {
        project = M.SubscribedProjectInput,
        user = M.SubscribedUserInput,
        group = M.SubscribedGroupInput,
        iam = M.SubscribedIamPrincipalInput,
    },
}

M.CreateSubscriptionRequestInput = {
    type = "structure",
    id = "CreateSubscriptionRequestInput",
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
            member = M.SubscribedPrincipalInput,
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member = M.SubscribedListingInput,
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
            traits = {
                idempotency_token = true,
            },
        },
        metadataForms = {
            type = "list",
            member = M.FormInput,
        },
        assetPermissions = {
            type = "list",
            member = M.AssetPermission,
        },
        assetScopes = {
            type = "list",
            member = M.AcceptedAssetScope,
        },
    },
}

M.CreateSubscriptionRequestOutput = {
    type = "structure",
    id = "CreateSubscriptionRequestOutput",
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
            member = M.SubscribedPrincipal,
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member = M.SubscribedListing,
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
            member = M.FormOutput,
        },
    },
}

M.SubscriptionGrantCreationMode = {
    AUTOMATIC = "AUTOMATIC",
    MANUAL = "MANUAL",
}

M.SubscriptionTargetForm = {
    type = "structure",
    id = "SubscriptionTargetForm",
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
    id = "CreateSubscriptionTargetInput",
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
            member = M.SubscriptionTargetForm,
            traits = {
                required = true,
            },
        },
        authorizedPrincipals = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        subscriptionGrantCreationMode = {
            type = "string",
        },
    },
}

M.CreateSubscriptionTargetOutput = {
    type = "structure",
    id = "CreateSubscriptionTargetOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizedPrincipals = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        subscriptionTargetConfig = {
            type = "list",
            member = M.SubscriptionTargetForm,
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
    id = "CreateUserProfileInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateUserProfileOutput",
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
        details = M.UserProfileDetails,
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
    id = "DeleteDataProductInput",
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
    id = "DeleteDataProductOutput",
}

M.GetDataProductInput = {
    type = "structure",
    id = "GetDataProductInput",
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
    id = "GetDataProductOutput",
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
                default = "CREATED",
                required = true,
            },
        },
        description = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
        items = {
            type = "list",
            member = M.DataProductItem,
        },
        formsOutput = {
            type = "list",
            member = M.FormOutput,
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
    id = "DataProductItemAdditionalAttributes",
    members = {
        matchRationale = {
            type = "list",
            member = M.MatchRationaleItem,
        },
    },
}

M.ListingSummary = {
    type = "structure",
    id = "ListingSummary",
    members = {
        listingId = {
            type = "string",
        },
        listingRevision = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member = M.DetailedGlossaryTerm,
        },
    },
}

M.DataProductListing = {
    type = "structure",
    id = "DataProductListing",
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
            member = M.DetailedGlossaryTerm,
        },
        owningProjectId = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.ListingSummary,
        },
    },
}

M.DataProductListingItemAdditionalAttributes = {
    type = "structure",
    id = "DataProductListingItemAdditionalAttributes",
    members = {
        forms = {
            type = "string",
        },
        matchRationale = {
            type = "list",
            member = M.MatchRationaleItem,
        },
    },
}

M.ListingSummaryItem = {
    type = "structure",
    id = "ListingSummaryItem",
    members = {
        listingId = {
            type = "string",
        },
        listingRevision = {
            type = "string",
        },
        glossaryTerms = {
            type = "list",
            member = M.DetailedGlossaryTerm,
        },
    },
}

M.DataProductListingItem = {
    type = "structure",
    id = "DataProductListingItem",
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
            member = M.DetailedGlossaryTerm,
        },
        owningProjectId = {
            type = "string",
        },
        additionalAttributes = M.DataProductListingItemAdditionalAttributes,
        items = {
            type = "list",
            member = M.ListingSummaryItem,
        },
    },
}

M.DataProductResultItem = {
    type = "structure",
    id = "DataProductResultItem",
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
            member = { type = "string" },
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
        additionalAttributes = M.DataProductItemAdditionalAttributes,
    },
}

M.DataProductRevision = {
    type = "structure",
    id = "DataProductRevision",
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
    id = "DeleteDataSourceInput",
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
                idempotency_token = true,
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
    id = "SelfGrantStatusDetail",
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
    id = "GlueSelfGrantStatusOutput",
    members = {
        selfGrantStatusDetails = {
            type = "list",
            member = M.SelfGrantStatusDetail,
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftSelfGrantStatusOutput = {
    type = "structure",
    id = "RedshiftSelfGrantStatusOutput",
    members = {
        selfGrantStatusDetails = {
            type = "list",
            member = M.SelfGrantStatusDetail,
            traits = {
                required = true,
            },
        },
    },
}

M.SelfGrantStatusOutput = {
    type = "union",
    id = "SelfGrantStatusOutput",
    members = {
        glueSelfGrantStatus = M.GlueSelfGrantStatusOutput,
        redshiftSelfGrantStatus = M.RedshiftSelfGrantStatusOutput,
    },
}

M.DeleteDataSourceOutput = {
    type = "structure",
    id = "DeleteDataSourceOutput",
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
        configuration = M.DataSourceConfigurationOutput,
        enableSetting = {
            type = "string",
        },
        publishOnImport = {
            type = "boolean",
        },
        assetFormsOutput = {
            type = "list",
            member = M.FormOutput,
        },
        schedule = M.ScheduleConfiguration,
        lastRunStatus = {
            type = "string",
        },
        lastRunAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastRunErrorMessage = M.DataSourceErrorMessage,
        errorMessage = M.DataSourceErrorMessage,
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
        selfGrantStatus = M.SelfGrantStatusOutput,
        retainPermissionsOnRevokeFailure = {
            type = "boolean",
        },
    },
}

M.GetDataSourceInput = {
    type = "structure",
    id = "GetDataSourceInput",
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
    id = "GetDataSourceOutput",
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
        configuration = M.DataSourceConfigurationOutput,
        recommendation = M.RecommendationConfiguration,
        enableSetting = {
            type = "string",
        },
        publishOnImport = {
            type = "boolean",
        },
        assetFormsOutput = {
            type = "list",
            member = M.FormOutput,
        },
        schedule = M.ScheduleConfiguration,
        lastRunStatus = {
            type = "string",
        },
        lastRunAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastRunErrorMessage = M.DataSourceErrorMessage,
        lastRunAssetCount = {
            type = "integer",
        },
        errorMessage = M.DataSourceErrorMessage,
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
        selfGrantStatus = M.SelfGrantStatusOutput,
    },
}

M.ListDataSourcesInput = {
    type = "structure",
    id = "ListDataSourcesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataSourceSummary = {
    type = "structure",
    id = "DataSourceSummary",
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
        schedule = M.ScheduleConfiguration,
        lastRunStatus = {
            type = "string",
        },
        lastRunAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastRunErrorMessage = M.DataSourceErrorMessage,
        lastRunAssetCount = {
            type = "integer",
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
        description = {
            type = "string",
        },
    },
}

M.ListDataSourcesOutput = {
    type = "structure",
    id = "ListDataSourcesOutput",
    members = {
        items = {
            type = "list",
            member = M.DataSourceSummary,
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
    id = "UpdateDataSourceInput",
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
            member = M.FormInput,
        },
        schedule = M.ScheduleConfiguration,
        configuration = M.DataSourceConfigurationInput,
        recommendation = M.RecommendationConfiguration,
        retainPermissionsOnRevokeFailure = {
            type = "boolean",
        },
    },
}

M.UpdateDataSourceOutput = {
    type = "structure",
    id = "UpdateDataSourceOutput",
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
        configuration = M.DataSourceConfigurationOutput,
        recommendation = M.RecommendationConfiguration,
        enableSetting = {
            type = "string",
        },
        publishOnImport = {
            type = "boolean",
        },
        assetFormsOutput = {
            type = "list",
            member = M.FormOutput,
        },
        schedule = M.ScheduleConfiguration,
        lastRunStatus = {
            type = "string",
        },
        lastRunAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastRunErrorMessage = M.DataSourceErrorMessage,
        errorMessage = M.DataSourceErrorMessage,
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
        selfGrantStatus = M.SelfGrantStatusOutput,
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
    id = "DataSourceRunLineageSummary",
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
    id = "GetDataSourceRunInput",
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
    id = "RunStatisticsForAssets",
    members = {
        added = {
            type = "integer",
        },
        updated = {
            type = "integer",
        },
        unchanged = {
            type = "integer",
        },
        skipped = {
            type = "integer",
        },
        failed = {
            type = "integer",
        },
    },
}

M.GetDataSourceRunOutput = {
    type = "structure",
    id = "GetDataSourceRunOutput",
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
        runStatisticsForAssets = M.RunStatisticsForAssets,
        lineageSummary = M.DataSourceRunLineageSummary,
        errorMessage = M.DataSourceErrorMessage,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        stoppedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListDataSourceRunsInput = {
    type = "structure",
    id = "ListDataSourceRunsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataSourceRunSummary = {
    type = "structure",
    id = "DataSourceRunSummary",
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
        runStatisticsForAssets = M.RunStatisticsForAssets,
        errorMessage = M.DataSourceErrorMessage,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        stoppedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lineageSummary = M.DataSourceRunLineageSummary,
    },
}

M.ListDataSourceRunsOutput = {
    type = "structure",
    id = "ListDataSourceRunsOutput",
    members = {
        items = {
            type = "list",
            member = M.DataSourceRunSummary,
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
    id = "StartDataSourceRunInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartDataSourceRunOutput = {
    type = "structure",
    id = "StartDataSourceRunOutput",
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
        runStatisticsForAssets = M.RunStatisticsForAssets,
        errorMessage = M.DataSourceErrorMessage,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        stoppedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "LineageInfo",
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
    id = "DataSourceRunActivity",
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
        errorMessage = M.DataSourceErrorMessage,
        lineageSummary = M.LineageInfo,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteAccountPoolInput = {
    type = "structure",
    id = "DeleteAccountPoolInput",
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
    id = "DeleteAccountPoolOutput",
}

M.DeleteAssetFilterInput = {
    type = "structure",
    id = "DeleteAssetFilterInput",
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
    id = "DeleteAssetFilterOutput",
}

M.DeleteConnectionInput = {
    type = "structure",
    id = "DeleteConnectionInput",
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
    id = "DeleteConnectionOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

M.DeleteDataExportConfigurationInput = {
    type = "structure",
    id = "DeleteDataExportConfigurationInput",
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
    id = "DeleteDataExportConfigurationOutput",
}

M.DeleteEnvironmentInput = {
    type = "structure",
    id = "DeleteEnvironmentInput",
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
    id = "DeleteEnvironmentOutput",
}

M.DeleteEnvironmentActionInput = {
    type = "structure",
    id = "DeleteEnvironmentActionInput",
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
    id = "DeleteEnvironmentActionOutput",
}

M.DeleteEnvironmentBlueprintInput = {
    type = "structure",
    id = "DeleteEnvironmentBlueprintInput",
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
    id = "DeleteEnvironmentBlueprintOutput",
}

M.DeleteEnvironmentProfileInput = {
    type = "structure",
    id = "DeleteEnvironmentProfileInput",
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
    id = "DeleteEnvironmentProfileOutput",
}

M.DeleteProjectInput = {
    type = "structure",
    id = "DeleteProjectInput",
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
    id = "DeleteProjectOutput",
}

M.DeleteProjectMembershipInput = {
    type = "structure",
    id = "DeleteProjectMembershipInput",
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
        member = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Member }),
    },
}

M.DeleteProjectMembershipOutput = {
    type = "structure",
    id = "DeleteProjectMembershipOutput",
}

M.DeleteProjectProfileInput = {
    type = "structure",
    id = "DeleteProjectProfileInput",
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
    id = "DeleteProjectProfileOutput",
}

M.DeleteSubscriptionGrantInput = {
    type = "structure",
    id = "DeleteSubscriptionGrantInput",
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
    id = "DeleteSubscriptionGrantOutput",
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
        grantedEntity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GrantedEntity }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = {
            type = "list",
            member = M.SubscribedAsset,
        },
        subscriptionId = {
            type = "string",
        },
    },
}

M.DeleteSubscriptionRequestInput = {
    type = "structure",
    id = "DeleteSubscriptionRequestInput",
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
    id = "DeleteSubscriptionRequestOutput",
}

M.DeleteSubscriptionTargetInput = {
    type = "structure",
    id = "DeleteSubscriptionTargetInput",
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
    id = "DeleteSubscriptionTargetOutput",
}

M.TimeSeriesEntityType = {
    ASSET = "ASSET",
    LISTING = "LISTING",
}

M.DeleteTimeSeriesDataPointsInput = {
    type = "structure",
    id = "DeleteTimeSeriesDataPointsInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteTimeSeriesDataPointsOutput = {
    type = "structure",
    id = "DeleteTimeSeriesDataPointsOutput",
}

M.DisassociateEnvironmentRoleInput = {
    type = "structure",
    id = "DisassociateEnvironmentRoleInput",
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
    id = "DisassociateEnvironmentRoleOutput",
}

M.DisassociateGovernedTermsInput = {
    type = "structure",
    id = "DisassociateGovernedTermsInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateGovernedTermsOutput = {
    type = "structure",
    id = "DisassociateGovernedTermsOutput",
}

M.DeleteDomainInput = {
    type = "structure",
    id = "DeleteDomainInput",
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
                idempotency_token = true,
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
    id = "DeleteDomainOutput",
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
    id = "GetDomainInput",
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
    id = "GetDomainOutput",
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
        singleSignOn = M.SingleSignOn,
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "ListDomainsInput",
    members = {
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        maxResults = {
            type = "integer",
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
    id = "DomainSummary",
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
    id = "ListDomainsOutput",
    members = {
        items = {
            type = "list",
            member = M.DomainSummary,
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
    id = "UpdateDomainInput",
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
        singleSignOn = M.SingleSignOn,
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
                idempotency_token = true,
            },
        },
    },
}

M.UpdateDomainOutput = {
    type = "structure",
    id = "UpdateDomainOutput",
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
        singleSignOn = M.SingleSignOn,
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
    id = "DeleteDomainUnitInput",
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
    id = "DeleteDomainUnitOutput",
}

M.GetDomainUnitInput = {
    type = "structure",
    id = "GetDomainUnitInput",
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
    id = "GetDomainUnitOutput",
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
            member = M.DomainUnitOwnerProperties,
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
    id = "ListDomainUnitsForParentInput",
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
            type = "integer",
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
    id = "DomainUnitSummary",
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
    id = "ListDomainUnitsForParentOutput",
    members = {
        items = {
            type = "list",
            member = M.DomainUnitSummary,
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
    id = "UpdateDomainUnitInput",
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
    id = "UpdateDomainUnitOutput",
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
            member = M.DomainUnitOwnerProperties,
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
    id = "DeleteEnvironmentBlueprintConfigurationInput",
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
    id = "DeleteEnvironmentBlueprintConfigurationOutput",
}

M.GetEnvironmentBlueprintConfigurationInput = {
    type = "structure",
    id = "GetEnvironmentBlueprintConfigurationInput",
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
    id = "LakeFormationConfiguration",
    members = {
        locationRegistrationRole = {
            type = "string",
        },
        locationRegistrationExcludeS3Locations = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ProvisioningConfiguration = {
    type = "union",
    id = "ProvisioningConfiguration",
    members = {
        lakeFormationConfiguration = M.LakeFormationConfiguration,
    },
}

M.GetEnvironmentBlueprintConfigurationOutput = {
    type = "structure",
    id = "GetEnvironmentBlueprintConfigurationOutput",
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
            member = { type = "string" },
        },
        regionalParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
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
            member = M.ProvisioningConfiguration,
        },
    },
}

M.ListEnvironmentBlueprintConfigurationsInput = {
    type = "structure",
    id = "ListEnvironmentBlueprintConfigurationsInput",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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
    id = "EnvironmentBlueprintConfigurationItem",
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
            member = { type = "string" },
        },
        regionalParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
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
            member = M.ProvisioningConfiguration,
        },
    },
}

M.ListEnvironmentBlueprintConfigurationsOutput = {
    type = "structure",
    id = "ListEnvironmentBlueprintConfigurationsOutput",
    members = {
        items = {
            type = "list",
            member = M.EnvironmentBlueprintConfigurationItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutEnvironmentBlueprintConfigurationInput = {
    type = "structure",
    id = "PutEnvironmentBlueprintConfigurationInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        regionalParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
        globalParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        provisioningConfigurations = {
            type = "list",
            member = M.ProvisioningConfiguration,
        },
    },
}

M.PutEnvironmentBlueprintConfigurationOutput = {
    type = "structure",
    id = "PutEnvironmentBlueprintConfigurationOutput",
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
            member = { type = "string" },
        },
        regionalParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
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
            member = M.ProvisioningConfiguration,
        },
    },
}

M.DeleteFormTypeInput = {
    type = "structure",
    id = "DeleteFormTypeInput",
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
    id = "DeleteFormTypeOutput",
}

M.GetFormTypeInput = {
    type = "structure",
    id = "GetFormTypeInput",
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
    id = "Import",
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
    id = "GetFormTypeOutput",
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
        model = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Model }),
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
            member = M.Import,
        },
    },
}

M.GetAccountPoolInput = {
    type = "structure",
    id = "GetAccountPoolInput",
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
    id = "GetAccountPoolOutput",
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
        accountSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountSource }),
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
    id = "GetAssetFilterInput",
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
    id = "GetConnectionInput",
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
    id = "GetConnectionOutput",
    members = {
        connectionCredentials = M.ConnectionCredentials,
        configurations = {
            type = "list",
            member = M.Configuration,
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
            member = M.PhysicalEndpoint,
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
        props = M.ConnectionPropertiesOutput,
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
    id = "GetDataExportConfigurationInput",
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
    id = "EncryptionConfiguration",
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
    id = "GetDataExportConfigurationOutput",
    members = {
        isExportEnabled = {
            type = "boolean",
        },
        status = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfiguration,
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
    id = "GetEnvironmentInput",
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
    id = "GetEnvironmentOutput",
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
            traits = {
                default = "",
            },
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
            member = M.Resource,
        },
        status = {
            type = "string",
        },
        environmentActions = {
            type = "list",
            member = M.ConfigurableEnvironmentAction,
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
        userParameters = {
            type = "list",
            member = M.CustomParameter,
        },
        lastDeployment = M.Deployment,
        provisioningProperties = M.ProvisioningProperties,
        deploymentProperties = M.DeploymentProperties,
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
    id = "GetEnvironmentActionInput",
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
    id = "GetEnvironmentActionOutput",
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
        parameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionParameters }),
        description = {
            type = "string",
        },
    },
}

M.GetEnvironmentBlueprintInput = {
    type = "structure",
    id = "GetEnvironmentBlueprintInput",
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
    id = "GetEnvironmentBlueprintOutput",
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
        provisioningProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProvisioningProperties }),
        deploymentProperties = M.DeploymentProperties,
        userParameters = {
            type = "list",
            member = M.CustomParameter,
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
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
    id = "GetEnvironmentCredentialsInput",
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
    id = "GetEnvironmentCredentialsOutput",
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
    id = "GetEnvironmentProfileInput",
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
    id = "GetEnvironmentProfileOutput",
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
            member = M.CustomParameter,
        },
    },
}

M.GetGroupProfileInput = {
    type = "structure",
    id = "GetGroupProfileInput",
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
    id = "GetGroupProfileOutput",
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
    id = "GetIamPortalLoginUrlInput",
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
    id = "GetIamPortalLoginUrlOutput",
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
    id = "GetJobRunInput",
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
    id = "LineageSqlQueryRunDetails",
    members = {
        queryStartTime = {
            type = "timestamp",
        },
        queryEndTime = {
            type = "timestamp",
        },
        totalQueriesProcessed = {
            type = "integer",
        },
        numQueriesFailed = {
            type = "integer",
        },
        errorMessages = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LineageRunDetails = {
    type = "structure",
    id = "LineageRunDetails",
    members = {
        sqlQueryRunDetails = M.LineageSqlQueryRunDetails,
    },
}

M.JobRunDetails = {
    type = "union",
    id = "JobRunDetails",
    members = {
        lineageRunDetails = M.LineageRunDetails,
    },
}

M.JobRunError = {
    type = "structure",
    id = "JobRunError",
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
    id = "GetJobRunOutput",
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
        details = M.JobRunDetails,
        status = {
            type = "string",
        },
        error = M.JobRunError,
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
    id = "GetLineageEventInput",
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
    id = "GetLineageEventOutput",
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
    id = "GetLineageNodeInput",
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
    id = "LineageNodeReference",
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
    id = "GetLineageNodeOutput",
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
            member = M.FormOutput,
        },
        upstreamNodes = {
            type = "list",
            member = M.LineageNodeReference,
        },
        downstreamNodes = {
            type = "list",
            member = M.LineageNodeReference,
        },
    },
}

M.GetProjectInput = {
    type = "structure",
    id = "GetProjectInput",
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
    id = "GetProjectOutput",
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
            member = M.ProjectDeletionError,
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
            member = M.ResourceTag,
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
        domainUnitId = {
            type = "string",
        },
        projectProfileId = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member = M.EnvironmentConfigurationUserParameter,
        },
        environmentDeploymentDetails = M.EnvironmentDeploymentDetails,
        projectCategory = {
            type = "string",
        },
    },
}

M.GetProjectProfileInput = {
    type = "structure",
    id = "GetProjectProfileInput",
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
    id = "GetProjectProfileOutput",
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
            member = M.ResourceTagParameter,
        },
        allowCustomProjectResourceTags = {
            type = "boolean",
        },
        projectResourceTagsDescription = {
            type = "string",
        },
        environmentConfigurations = {
            type = "list",
            member = M.EnvironmentConfiguration,
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
    id = "GetSubscriptionInput",
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
    id = "GetSubscriptionOutput",
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
        subscribedPrincipal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribedPrincipal }),
        subscribedListing = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribedListing }),
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
    id = "GetSubscriptionGrantInput",
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
    id = "GetSubscriptionGrantOutput",
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
        grantedEntity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GrantedEntity }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = {
            type = "list",
            member = M.SubscribedAsset,
        },
        subscriptionId = {
            type = "string",
        },
    },
}

M.GetSubscriptionRequestDetailsInput = {
    type = "structure",
    id = "GetSubscriptionRequestDetailsInput",
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
    id = "GetSubscriptionRequestDetailsOutput",
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
            member = M.SubscribedPrincipal,
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member = M.SubscribedListing,
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
            member = M.FormOutput,
        },
    },
}

M.GetSubscriptionTargetInput = {
    type = "structure",
    id = "GetSubscriptionTargetInput",
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
    id = "GetSubscriptionTargetOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizedPrincipals = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        subscriptionTargetConfig = {
            type = "list",
            member = M.SubscriptionTargetForm,
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
    id = "GetTimeSeriesDataPointInput",
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
    id = "TimeSeriesDataPointFormOutput",
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
    id = "GetTimeSeriesDataPointOutput",
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
        form = M.TimeSeriesDataPointFormOutput,
    },
}

M.GetUserProfileInput = {
    type = "structure",
    id = "GetUserProfileInput",
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
    id = "GetUserProfileOutput",
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
        details = M.UserProfileDetails,
    },
}

M.DeleteGlossaryInput = {
    type = "structure",
    id = "DeleteGlossaryInput",
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
    id = "DeleteGlossaryOutput",
}

M.GetGlossaryInput = {
    type = "structure",
    id = "GetGlossaryInput",
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
    id = "GetGlossaryOutput",
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
            member = { type = "string" },
        },
    },
}

M.UpdateGlossaryInput = {
    type = "structure",
    id = "UpdateGlossaryInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateGlossaryOutput = {
    type = "structure",
    id = "UpdateGlossaryOutput",
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
            member = { type = "string" },
        },
    },
}

M.DeleteGlossaryTermInput = {
    type = "structure",
    id = "DeleteGlossaryTermInput",
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
    id = "DeleteGlossaryTermOutput",
}

M.GetGlossaryTermInput = {
    type = "structure",
    id = "GetGlossaryTermInput",
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
    id = "GetGlossaryTermOutput",
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
        termRelations = M.TermRelations,
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
            member = { type = "string" },
        },
    },
}

M.UpdateGlossaryTermInput = {
    type = "structure",
    id = "UpdateGlossaryTermInput",
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
        termRelations = M.TermRelations,
        status = {
            type = "string",
        },
    },
}

M.UpdateGlossaryTermOutput = {
    type = "structure",
    id = "UpdateGlossaryTermOutput",
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
        termRelations = M.TermRelations,
        usageRestrictions = {
            type = "list",
            member = { type = "string" },
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
    id = "ListAccountPoolsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAccountPoolsOutput = {
    type = "structure",
    id = "ListAccountPoolsOutput",
    members = {
        items = {
            type = "list",
            member = M.AccountPoolSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAccountsInAccountPoolInput = {
    type = "structure",
    id = "ListAccountsInAccountPoolInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAccountsInAccountPoolOutput = {
    type = "structure",
    id = "ListAccountsInAccountPoolOutput",
    members = {
        items = {
            type = "list",
            member = M.AccountInfo,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssetFiltersInput = {
    type = "structure",
    id = "ListAssetFiltersInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssetFiltersOutput = {
    type = "structure",
    id = "ListAssetFiltersOutput",
    members = {
        items = {
            type = "list",
            member = M.AssetFilterSummary,
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
    id = "ListAssetRevisionsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssetRevisionsOutput = {
    type = "structure",
    id = "ListAssetRevisionsOutput",
    members = {
        items = {
            type = "list",
            member = M.AssetRevision,
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
    id = "ListConnectionsInput",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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
    id = "ListConnectionsOutput",
    members = {
        items = {
            type = "list",
            member = M.ConnectionSummary,
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
    id = "ListDataProductRevisionsInput",
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
            type = "integer",
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
    id = "ListDataProductRevisionsOutput",
    members = {
        items = {
            type = "list",
            member = M.DataProductRevision,
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
    id = "ListDataSourceRunActivitiesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListDataSourceRunActivitiesOutput = {
    type = "structure",
    id = "ListDataSourceRunActivitiesOutput",
    members = {
        items = {
            type = "list",
            member = M.DataSourceRunActivity,
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
    id = "ListEntityOwnersInput",
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
            type = "integer",
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
    id = "OwnerGroupPropertiesOutput",
    members = {
        groupId = {
            type = "string",
        },
    },
}

M.OwnerUserPropertiesOutput = {
    type = "structure",
    id = "OwnerUserPropertiesOutput",
    members = {
        userId = {
            type = "string",
        },
    },
}

M.OwnerPropertiesOutput = {
    type = "union",
    id = "OwnerPropertiesOutput",
    members = {
        user = M.OwnerUserPropertiesOutput,
        group = M.OwnerGroupPropertiesOutput,
    },
}

M.ListEntityOwnersOutput = {
    type = "structure",
    id = "ListEntityOwnersOutput",
    members = {
        owners = {
            type = "list",
            member = M.OwnerPropertiesOutput,
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
    id = "ListEnvironmentActionsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.EnvironmentActionSummary = {
    type = "structure",
    id = "EnvironmentActionSummary",
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
        parameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionParameters }),
        description = {
            type = "string",
        },
    },
}

M.ListEnvironmentActionsOutput = {
    type = "structure",
    id = "ListEnvironmentActionsOutput",
    members = {
        items = {
            type = "list",
            member = M.EnvironmentActionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEnvironmentBlueprintsInput = {
    type = "structure",
    id = "ListEnvironmentBlueprintsInput",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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
    id = "EnvironmentBlueprintSummary",
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
        provisioningProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProvisioningProperties }),
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
    id = "ListEnvironmentBlueprintsOutput",
    members = {
        items = {
            type = "list",
            member = M.EnvironmentBlueprintSummary,
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
    id = "ListEnvironmentProfilesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.EnvironmentProfileSummary = {
    type = "structure",
    id = "EnvironmentProfileSummary",
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
    id = "ListEnvironmentProfilesOutput",
    members = {
        items = {
            type = "list",
            member = M.EnvironmentProfileSummary,
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
    id = "ListEnvironmentsInput",
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
            type = "integer",
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
    id = "EnvironmentSummary",
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
            traits = {
                default = "",
            },
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
    id = "ListEnvironmentsOutput",
    members = {
        items = {
            type = "list",
            member = M.EnvironmentSummary,
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
    id = "DeleteListingInput",
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
    id = "DeleteListingOutput",
}

M.GetListingInput = {
    type = "structure",
    id = "GetListingInput",
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
                default = "latest",
                http_query = "listingRevision",
            },
        },
    },
}

M.ListingItem = {
    type = "union",
    id = "ListingItem",
    members = {
        assetListing = M.AssetListing,
        dataProductListing = M.DataProductListing,
    },
}

M.GetListingOutput = {
    type = "structure",
    id = "GetListingOutput",
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
        item = M.ListingItem,
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
    id = "ListJobRunsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.JobRunSummary = {
    type = "structure",
    id = "JobRunSummary",
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
        error = M.JobRunError,
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
    id = "ListJobRunsOutput",
    members = {
        items = {
            type = "list",
            member = M.JobRunSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListLineageEventsInput = {
    type = "structure",
    id = "ListLineageEventsInput",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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
    id = "NameIdentifier",
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
    id = "OpenLineageRunEventSummary",
    members = {
        eventType = {
            type = "string",
        },
        runId = {
            type = "string",
        },
        job = M.NameIdentifier,
        inputs = {
            type = "list",
            member = M.NameIdentifier,
        },
        outputs = {
            type = "list",
            member = M.NameIdentifier,
        },
    },
}

M.EventSummary = {
    type = "union",
    id = "EventSummary",
    members = {
        openLineageRunEventSummary = M.OpenLineageRunEventSummary,
    },
}

M.LineageEventSummary = {
    type = "structure",
    id = "LineageEventSummary",
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
        eventSummary = M.EventSummary,
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
    id = "ListLineageEventsOutput",
    members = {
        items = {
            type = "list",
            member = M.LineageEventSummary,
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
    id = "ListLineageNodeHistoryInput",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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
    id = "LineageNodeSummary",
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
    id = "ListLineageNodeHistoryOutput",
    members = {
        nodes = {
            type = "list",
            member = M.LineageNodeSummary,
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
    id = "ListNotificationsInput",
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
            member = { type = "string" },
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
            type = "integer",
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
    id = "NotificationResource",
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
    id = "Topic",
    members = {
        subject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationResource }),
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
    id = "NotificationOutput",
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
        topic = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Topic }),
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListNotificationsOutput = {
    type = "structure",
    id = "ListNotificationsOutput",
    members = {
        notifications = {
            type = "list",
            member = M.NotificationOutput,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPolicyGrantsInput = {
    type = "structure",
    id = "ListPolicyGrantsInput",
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
            type = "integer",
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
    id = "PolicyGrantMember",
    members = {
        principal = M.PolicyGrantPrincipal,
        detail = M.PolicyGrantDetail,
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
    id = "ListPolicyGrantsOutput",
    members = {
        grantList = {
            type = "list",
            member = M.PolicyGrantMember,
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
    id = "ListProjectMembershipsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GroupDetails = {
    type = "structure",
    id = "GroupDetails",
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
    id = "UserDetails",
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
    id = "MemberDetails",
    members = {
        user = M.UserDetails,
        group = M.GroupDetails,
    },
}

M.ProjectMember = {
    type = "structure",
    id = "ProjectMember",
    members = {
        memberDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemberDetails }),
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
    id = "ListProjectMembershipsOutput",
    members = {
        members = {
            type = "list",
            member = M.ProjectMember,
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
    id = "ListProjectProfilesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ProjectProfileSummary = {
    type = "structure",
    id = "ProjectProfileSummary",
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
    id = "ListProjectProfilesOutput",
    members = {
        items = {
            type = "list",
            member = M.ProjectProfileSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProjectsInput = {
    type = "structure",
    id = "ListProjectsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ProjectSummary = {
    type = "structure",
    id = "ProjectSummary",
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
            member = M.ProjectDeletionError,
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
    id = "ListProjectsOutput",
    members = {
        items = {
            type = "list",
            member = M.ProjectSummary,
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
    id = "ListSubscriptionGrantsInput",
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
            type = "integer",
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
    id = "SubscriptionGrantSummary",
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
        grantedEntity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GrantedEntity }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = {
            type = "list",
            member = M.SubscribedAsset,
        },
        subscriptionId = {
            type = "string",
        },
    },
}

M.ListSubscriptionGrantsOutput = {
    type = "structure",
    id = "ListSubscriptionGrantsOutput",
    members = {
        items = {
            type = "list",
            member = M.SubscriptionGrantSummary,
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
    id = "ListSubscriptionRequestsInput",
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
            type = "integer",
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
    id = "MetadataFormSummary",
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
    id = "SubscriptionRequestSummary",
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
            member = M.SubscribedPrincipal,
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member = M.SubscribedListing,
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
            member = M.MetadataFormSummary,
        },
    },
}

M.ListSubscriptionRequestsOutput = {
    type = "structure",
    id = "ListSubscriptionRequestsOutput",
    members = {
        items = {
            type = "list",
            member = M.SubscriptionRequestSummary,
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
    id = "ListSubscriptionsInput",
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
            type = "integer",
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
    id = "SubscriptionSummary",
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
        subscribedPrincipal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribedPrincipal }),
        subscribedListing = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribedListing }),
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
    id = "ListSubscriptionsOutput",
    members = {
        items = {
            type = "list",
            member = M.SubscriptionSummary,
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
    id = "ListSubscriptionTargetsInput",
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
            type = "integer",
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
    id = "SubscriptionTargetSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizedPrincipals = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        subscriptionTargetConfig = {
            type = "list",
            member = M.SubscriptionTargetForm,
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
    id = "ListSubscriptionTargetsOutput",
    members = {
        items = {
            type = "list",
            member = M.SubscriptionTargetSummary,
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTimeSeriesDataPointsInput = {
    type = "structure",
    id = "ListTimeSeriesDataPointsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListTimeSeriesDataPointsOutput = {
    type = "structure",
    id = "ListTimeSeriesDataPointsOutput",
    members = {
        items = {
            type = "list",
            member = M.TimeSeriesDataPointSummaryFormOutput,
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
    id = "GetMetadataGenerationRunInput",
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
    id = "MetadataGenerationRunTarget",
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
    id = "MetadataGenerationRunTypeStat",
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
    id = "GetMetadataGenerationRunOutput",
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
        target = M.MetadataGenerationRunTarget,
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        types = {
            type = "list",
            member = { type = "string" },
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
            member = M.MetadataGenerationRunTypeStat,
        },
    },
}

M.ListMetadataGenerationRunsInput = {
    type = "structure",
    id = "ListMetadataGenerationRunsInput",
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
            type = "integer",
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
    id = "MetadataGenerationRunItem",
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
        target = M.MetadataGenerationRunTarget,
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        types = {
            type = "list",
            member = { type = "string" },
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
    id = "ListMetadataGenerationRunsOutput",
    members = {
        items = {
            type = "list",
            member = M.MetadataGenerationRunItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartMetadataGenerationRunInput = {
    type = "structure",
    id = "StartMetadataGenerationRunInput",
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
            member = { type = "string" },
        },
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataGenerationRunTarget }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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

M.StartMetadataGenerationRunOutput = {
    type = "structure",
    id = "StartMetadataGenerationRunOutput",
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
            member = { type = "string" },
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
    id = "PackageConfig",
    members = {
        packageManager = {
            type = "string",
            traits = {
                default = "UV",
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
    id = "EnvironmentConfig",
    members = {
        imageVersion = {
            type = "string",
        },
        packageConfig = M.PackageConfig,
    },
}

M.GetNotebookRunInput = {
    type = "structure",
    id = "GetNotebookRunInput",
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
    id = "NotebookRunError",
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
    id = "NetworkConfig",
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
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
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
    id = "StorageConfig",
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
    id = "TimeoutConfig",
    members = {
        runTimeoutInMinutes = {
            type = "integer",
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
    id = "TriggerSource",
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
    id = "GetNotebookRunOutput",
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
            member = M.CellInformation,
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        computeConfiguration = M.ComputeConfig,
        networkConfiguration = M.NetworkConfig,
        timeoutConfiguration = M.TimeoutConfig,
        environmentConfiguration = M.EnvironmentConfig,
        storageConfiguration = M.StorageConfig,
        triggerSource = M.TriggerSource,
        error = M.NotebookRunError,
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
    id = "ListNotebookRunsInput",
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
            type = "integer",
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
    id = "NotebookRunSummary",
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
        triggerSource = M.TriggerSource,
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
    id = "ListNotebookRunsOutput",
    members = {
        items = {
            type = "list",
            member = M.NotebookRunSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartNotebookRunInput = {
    type = "structure",
    id = "StartNotebookRunInput",
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
        computeConfiguration = M.ComputeConfig,
        networkConfiguration = M.NetworkConfig,
        timeoutConfiguration = M.TimeoutConfig,
        triggerSource = M.TriggerSource,
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartNotebookRunOutput = {
    type = "structure",
    id = "StartNotebookRunOutput",
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
            member = M.CellInformation,
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        computeConfiguration = M.ComputeConfig,
        networkConfiguration = M.NetworkConfig,
        timeoutConfiguration = M.TimeoutConfig,
        environmentConfiguration = M.EnvironmentConfig,
        storageConfiguration = M.StorageConfig,
        triggerSource = M.TriggerSource,
        error = M.NotebookRunError,
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
    id = "StopNotebookRunInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.StopNotebookRunOutput = {
    type = "structure",
    id = "StopNotebookRunOutput",
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
    id = "PostLineageEventInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.PostLineageEventOutput = {
    type = "structure",
    id = "PostLineageEventOutput",
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
    id = "TimeSeriesDataPointFormInput",
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
    id = "PostTimeSeriesDataPointsInput",
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
            member = M.TimeSeriesDataPointFormInput,
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

M.PostTimeSeriesDataPointsOutput = {
    type = "structure",
    id = "PostTimeSeriesDataPointsOutput",
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
            member = M.TimeSeriesDataPointFormOutput,
        },
    },
}

M.PutDataExportConfigurationInput = {
    type = "structure",
    id = "PutDataExportConfigurationInput",
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
        encryptionConfiguration = M.EncryptionConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.PutDataExportConfigurationOutput = {
    type = "structure",
    id = "PutDataExportConfigurationOutput",
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
    id = "Filter",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                default = "",
            },
        },
        intValue = {
            type = "long",
        },
        operator = {
            type = "string",
            traits = {
                default = "EQ",
            },
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
    id = "RelationPattern",
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
            type = "integer",
        },
    },
}

M.LineageNodeItem = {
    type = "structure",
    id = "LineageNodeItem",
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
            member = M.FormOutput,
        },
        upstreamLineageNodeIds = {
            type = "list",
            member = { type = "string" },
        },
        downstreamLineageNodeIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResultItem = {
    type = "union",
    id = "ResultItem",
    members = {
        lineageNode = M.LineageNodeItem,
    },
}

M.QueryGraphOutput = {
    type = "structure",
    id = "QueryGraphOutput",
    members = {
        items = {
            type = "list",
            member = M.ResultItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RejectChoice = {
    type = "structure",
    id = "RejectChoice",
    members = {
        predictionTarget = {
            type = "string",
            traits = {
                required = true,
            },
        },
        predictionChoices = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.RejectRuleBehavior = {
    ALL = "ALL",
    NONE = "NONE",
}

M.RejectRule = {
    type = "structure",
    id = "RejectRule",
    members = {
        rule = {
            type = "string",
        },
        threshold = {
            type = "float",
        },
    },
}

M.RejectPredictionsInput = {
    type = "structure",
    id = "RejectPredictionsInput",
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
        rejectRule = M.RejectRule,
        rejectChoices = {
            type = "list",
            member = M.RejectChoice,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.RejectPredictionsOutput = {
    type = "structure",
    id = "RejectPredictionsOutput",
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
    id = "RejectSubscriptionRequestInput",
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
    id = "RejectSubscriptionRequestOutput",
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
            member = M.SubscribedPrincipal,
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member = M.SubscribedListing,
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
            member = M.FormOutput,
        },
    },
}

M.RemoveEntityOwnerInput = {
    type = "structure",
    id = "RemoveEntityOwnerInput",
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
        owner = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OwnerProperties }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.RemoveEntityOwnerOutput = {
    type = "structure",
    id = "RemoveEntityOwnerOutput",
}

M.RemovePolicyGrantInput = {
    type = "structure",
    id = "RemovePolicyGrantInput",
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
        principal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyGrantPrincipal }),
        grantIdentifier = {
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

M.RemovePolicyGrantOutput = {
    type = "structure",
    id = "RemovePolicyGrantOutput",
}

M.RevokeSubscriptionInput = {
    type = "structure",
    id = "RevokeSubscriptionInput",
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
    id = "RevokeSubscriptionOutput",
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
        subscribedPrincipal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribedPrincipal }),
        subscribedListing = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribedListing }),
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
    id = "DeleteRuleInput",
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
    id = "DeleteRuleOutput",
}

M.GetRuleInput = {
    type = "structure",
    id = "GetRuleInput",
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
    id = "GetRuleOutput",
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
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleTarget }),
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleScope }),
        detail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleDetail }),
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
    id = "ListRulesInput",
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
            member = { type = "string" },
            traits = {
                http_query = "projectIds",
            },
        },
        assetTypes = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
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
    id = "RuleSummary",
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
        target = M.RuleTarget,
        action = {
            type = "string",
        },
        scope = M.RuleScope,
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
    id = "ListRulesOutput",
    members = {
        items = {
            type = "list",
            member = M.RuleSummary,
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
    id = "UpdateRuleInput",
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
        scope = M.RuleScope,
        detail = M.RuleDetail,
        includeChildDomainUnits = {
            type = "boolean",
        },
    },
}

M.UpdateRuleOutput = {
    type = "structure",
    id = "UpdateRuleOutput",
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
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleTarget }),
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleScope }),
        detail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleDetail }),
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
    id = "SearchInItem",
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
    id = "SearchSort",
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
    id = "GlossaryItemAdditionalAttributes",
    members = {
        matchRationale = {
            type = "list",
            member = M.MatchRationaleItem,
        },
    },
}

M.GlossaryItem = {
    type = "structure",
    id = "GlossaryItem",
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
            member = { type = "string" },
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
        additionalAttributes = M.GlossaryItemAdditionalAttributes,
    },
}

M.GlossaryTermItemAdditionalAttributes = {
    type = "structure",
    id = "GlossaryTermItemAdditionalAttributes",
    members = {
        matchRationale = {
            type = "list",
            member = M.MatchRationaleItem,
        },
    },
}

M.GlossaryTermItem = {
    type = "structure",
    id = "GlossaryTermItem",
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
            member = { type = "string" },
        },
        longDescription = {
            type = "string",
        },
        termRelations = M.TermRelations,
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
        additionalAttributes = M.GlossaryTermItemAdditionalAttributes,
    },
}

M.SearchInventoryResultItem = {
    type = "union",
    id = "SearchInventoryResultItem",
    members = {
        glossaryItem = M.GlossaryItem,
        glossaryTermItem = M.GlossaryTermItem,
        assetItem = M.AssetItem,
        dataProductItem = M.DataProductResultItem,
    },
}

M.SearchOutput = {
    type = "structure",
    id = "SearchOutput",
    members = {
        items = {
            type = "list",
            member = M.SearchInventoryResultItem,
        },
        nextToken = {
            type = "string",
        },
        totalMatchCount = {
            type = "integer",
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
    id = "SearchGroupProfilesInput",
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GroupProfileSummary = {
    type = "structure",
    id = "GroupProfileSummary",
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
    id = "SearchGroupProfilesOutput",
    members = {
        items = {
            type = "list",
            member = M.GroupProfileSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SearchResultItem = {
    type = "union",
    id = "SearchResultItem",
    members = {
        assetListing = M.AssetListingItem,
        dataProductListing = M.DataProductListingItem,
    },
}

M.SearchListingsOutput = {
    type = "structure",
    id = "SearchListingsOutput",
    members = {
        items = {
            type = "list",
            member = M.SearchResultItem,
        },
        nextToken = {
            type = "string",
        },
        totalMatchCount = {
            type = "integer",
        },
        aggregates = {
            type = "list",
            member = M.AggregationOutput,
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
    id = "FormTypeData",
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
        model = M.Model,
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
            member = M.Import,
        },
    },
}

M.LineageNodeTypeItem = {
    type = "structure",
    id = "LineageNodeTypeItem",
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
            key = { type = "string" },
            value = M.FormEntryOutput,
            traits = {
                required = true,
            },
        },
    },
}

M.SearchTypesResultItem = {
    type = "union",
    id = "SearchTypesResultItem",
    members = {
        assetTypeItem = M.AssetTypeItem,
        formTypeItem = M.FormTypeData,
        lineageNodeTypeItem = M.LineageNodeTypeItem,
    },
}

M.SearchTypesOutput = {
    type = "structure",
    id = "SearchTypesOutput",
    members = {
        items = {
            type = "list",
            member = M.SearchTypesResultItem,
        },
        nextToken = {
            type = "string",
        },
        totalMatchCount = {
            type = "integer",
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
    id = "SearchUserProfilesInput",
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UserProfileSummary = {
    type = "structure",
    id = "UserProfileSummary",
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
        details = M.UserProfileDetails,
    },
}

M.SearchUserProfilesOutput = {
    type = "structure",
    id = "SearchUserProfilesOutput",
    members = {
        items = {
            type = "list",
            member = M.UserProfileSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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

M.UpdateAccountPoolInput = {
    type = "structure",
    id = "UpdateAccountPoolInput",
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
        accountSource = M.AccountSource,
    },
}

M.UpdateAccountPoolOutput = {
    type = "structure",
    id = "UpdateAccountPoolOutput",
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
        accountSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountSource }),
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
    id = "UpdateConnectionInput",
    members = {
        configurations = {
            type = "list",
            member = M.Configuration,
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
        awsLocation = M.AwsLocation,
        props = M.ConnectionPropertiesPatch,
    },
}

M.UpdateConnectionOutput = {
    type = "structure",
    id = "UpdateConnectionOutput",
    members = {
        configurations = {
            type = "list",
            member = M.Configuration,
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
            member = M.PhysicalEndpoint,
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
        },
        props = M.ConnectionPropertiesOutput,
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
    id = "UpdateEnvironmentInput",
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
            member = { type = "string" },
        },
        blueprintVersion = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member = M.EnvironmentParameter,
        },
        environmentConfigurationName = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentOutput = {
    type = "structure",
    id = "UpdateEnvironmentOutput",
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
            traits = {
                default = "",
            },
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
            member = M.Resource,
        },
        status = {
            type = "string",
        },
        environmentActions = {
            type = "list",
            member = M.ConfigurableEnvironmentAction,
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
        userParameters = {
            type = "list",
            member = M.CustomParameter,
        },
        lastDeployment = M.Deployment,
        provisioningProperties = M.ProvisioningProperties,
        deploymentProperties = M.DeploymentProperties,
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
    id = "UpdateEnvironmentActionInput",
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
        parameters = M.ActionParameters,
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
    id = "UpdateEnvironmentActionOutput",
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
        parameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionParameters }),
        description = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentBlueprintInput = {
    type = "structure",
    id = "UpdateEnvironmentBlueprintInput",
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
        provisioningProperties = M.ProvisioningProperties,
        userParameters = {
            type = "list",
            member = M.CustomParameter,
        },
    },
}

M.UpdateEnvironmentBlueprintOutput = {
    type = "structure",
    id = "UpdateEnvironmentBlueprintOutput",
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
        provisioningProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProvisioningProperties }),
        deploymentProperties = M.DeploymentProperties,
        userParameters = {
            type = "list",
            member = M.CustomParameter,
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
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
    id = "UpdateEnvironmentProfileInput",
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
            member = M.EnvironmentParameter,
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
    id = "UpdateEnvironmentProfileOutput",
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
            member = M.CustomParameter,
        },
    },
}

M.UpdateGroupProfileInput = {
    type = "structure",
    id = "UpdateGroupProfileInput",
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
    id = "UpdateGroupProfileOutput",
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
    id = "UpdateProjectInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
        domainUnitId = {
            type = "string",
        },
        environmentDeploymentDetails = M.EnvironmentDeploymentDetails,
        userParameters = {
            type = "list",
            member = M.EnvironmentConfigurationUserParameter,
        },
        projectProfileVersion = {
            type = "string",
        },
    },
}

M.UpdateProjectOutput = {
    type = "structure",
    id = "UpdateProjectOutput",
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
            member = M.ProjectDeletionError,
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
            member = M.ResourceTag,
        },
        glossaryTerms = {
            type = "list",
            member = { type = "string" },
        },
        domainUnitId = {
            type = "string",
        },
        projectProfileId = {
            type = "string",
        },
        userParameters = {
            type = "list",
            member = M.EnvironmentConfigurationUserParameter,
        },
        environmentDeploymentDetails = M.EnvironmentDeploymentDetails,
        projectCategory = {
            type = "string",
        },
    },
}

M.UpdateProjectProfileInput = {
    type = "structure",
    id = "UpdateProjectProfileInput",
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
            member = M.ResourceTagParameter,
        },
        allowCustomProjectResourceTags = {
            type = "boolean",
        },
        projectResourceTagsDescription = {
            type = "string",
        },
        environmentConfigurations = {
            type = "list",
            member = M.EnvironmentConfiguration,
        },
        domainUnitIdentifier = {
            type = "string",
        },
    },
}

M.UpdateProjectProfileOutput = {
    type = "structure",
    id = "UpdateProjectProfileOutput",
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
            member = M.ResourceTagParameter,
        },
        allowCustomProjectResourceTags = {
            type = "boolean",
        },
        projectResourceTagsDescription = {
            type = "string",
        },
        environmentConfigurations = {
            type = "list",
            member = M.EnvironmentConfiguration,
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
    id = "UpdateRootDomainUnitOwnerInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateRootDomainUnitOwnerOutput = {
    type = "structure",
    id = "UpdateRootDomainUnitOwnerOutput",
}

M.UpdateSubscriptionGrantStatusInput = {
    type = "structure",
    id = "UpdateSubscriptionGrantStatusInput",
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
        failureCause = M.FailureCause,
        targetName = {
            type = "string",
        },
    },
}

M.UpdateSubscriptionGrantStatusOutput = {
    type = "structure",
    id = "UpdateSubscriptionGrantStatusOutput",
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
        grantedEntity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GrantedEntity }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = {
            type = "list",
            member = M.SubscribedAsset,
        },
        subscriptionId = {
            type = "string",
        },
    },
}

M.UpdateSubscriptionRequestInput = {
    type = "structure",
    id = "UpdateSubscriptionRequestInput",
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
    id = "UpdateSubscriptionRequestOutput",
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
            member = M.SubscribedPrincipal,
            traits = {
                required = true,
            },
        },
        subscribedListings = {
            type = "list",
            member = M.SubscribedListing,
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
            member = M.FormOutput,
        },
    },
}

M.UpdateSubscriptionTargetInput = {
    type = "structure",
    id = "UpdateSubscriptionTargetInput",
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
            member = { type = "string" },
        },
        applicableAssetTypes = {
            type = "list",
            member = { type = "string" },
        },
        subscriptionTargetConfig = {
            type = "list",
            member = M.SubscriptionTargetForm,
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
    id = "UpdateSubscriptionTargetOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizedPrincipals = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        subscriptionTargetConfig = {
            type = "list",
            member = M.SubscriptionTargetForm,
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
    id = "UpdateUserProfileInput",
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
    id = "UpdateUserProfileOutput",
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
        details = M.UserProfileDetails,
    },
}

M.FilterClause = {
    type = "union",
    id = "FilterClause",
    members = {
        filter = M.Filter,
        and = {
            type = "list",
            member = M.FilterClause,
        },
        or = {
            type = "list",
            member = M.FilterClause,
        },
    },
}

M.RowFilter = {
    type = "union",
    id = "RowFilter",
    members = {
        expression = M.RowFilterExpression,
        and = {
            type = "list",
            member = M.RowFilter,
        },
        or = {
            type = "list",
            member = M.RowFilter,
        },
    },
}

M.EntityPattern = {
    type = "structure",
    id = "EntityPattern",
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
        filters = M.FilterClause,
    },
}

M.RowFilterConfiguration = {
    type = "structure",
    id = "RowFilterConfiguration",
    members = {
        rowFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RowFilter }),
        sensitive = {
            type = "boolean",
            traits = {
                default = true,
            },
        },
    },
}

M.SearchInput = {
    type = "structure",
    id = "SearchInput",
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
            type = "integer",
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
            member = M.SearchInItem,
        },
        filters = M.FilterClause,
        sort = M.SearchSort,
        additionalAttributes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchListingsInput = {
    type = "structure",
    id = "SearchListingsInput",
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
            member = M.SearchInItem,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        filters = M.FilterClause,
        aggregations = {
            type = "list",
            member = M.AggregationListItem,
        },
        sort = M.SearchSort,
        additionalAttributes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchTypesInput = {
    type = "structure",
    id = "SearchTypesInput",
    members = {
        domainIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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
            member = M.SearchInItem,
        },
        filters = M.FilterClause,
        sort = M.SearchSort,
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
    id = "AssetFilterConfiguration",
    members = {
        columnConfiguration = M.ColumnFilterConfiguration,
        rowConfiguration = M.RowFilterConfiguration,
    },
}

M.MatchClause = {
    type = "union",
    id = "MatchClause",
    members = {
        relationPattern = M.RelationPattern,
        entityPattern = M.EntityPattern,
    },
}

M.CreateAssetFilterInput = {
    type = "structure",
    id = "CreateAssetFilterInput",
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
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetFilterConfiguration }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateAssetFilterOutput = {
    type = "structure",
    id = "CreateAssetFilterOutput",
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
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetFilterConfiguration }),
        createdAt = {
            type = "timestamp",
        },
        errorMessage = {
            type = "string",
        },
        effectiveColumnNames = {
            type = "list",
            member = { type = "string" },
        },
        effectiveRowFilter = {
            type = "string",
        },
    },
}

M.GetAssetFilterOutput = {
    type = "structure",
    id = "GetAssetFilterOutput",
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
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetFilterConfiguration }),
        createdAt = {
            type = "timestamp",
        },
        errorMessage = {
            type = "string",
        },
        effectiveColumnNames = {
            type = "list",
            member = { type = "string" },
        },
        effectiveRowFilter = {
            type = "string",
        },
    },
}

M.UpdateAssetFilterInput = {
    type = "structure",
    id = "UpdateAssetFilterInput",
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
        configuration = M.AssetFilterConfiguration,
    },
}

M.UpdateAssetFilterOutput = {
    type = "structure",
    id = "UpdateAssetFilterOutput",
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
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetFilterConfiguration }),
        createdAt = {
            type = "timestamp",
        },
        errorMessage = {
            type = "string",
        },
        effectiveColumnNames = {
            type = "list",
            member = { type = "string" },
        },
        effectiveRowFilter = {
            type = "string",
        },
    },
}

M.QueryGraphInput = {
    type = "structure",
    id = "QueryGraphInput",
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
            member = M.MatchClause,
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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
        additionalAttributes = M.AdditionalAttributes,
    },
}

return M
