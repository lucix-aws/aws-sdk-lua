local M = {}

M.AuthenticationMode = {
    API = "API",
    API_AND_CONFIG_MAP = "API_AND_CONFIG_MAP",
    CONFIG_MAP = "CONFIG_MAP",
}

M.AccessConfigResponse = {
    type = "structure",
    id = "AccessConfigResponse",
    members = {
        bootstrapClusterCreatorAdminPermissions = {
            type = "boolean",
        },
        authenticationMode = {
            type = "string",
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
        },
    },
}

M.AccessEntry = {
    type = "structure",
    id = "AccessEntry",
    members = {
        clusterName = {
            type = "string",
        },
        principalArn = {
            type = "string",
        },
        kubernetesGroups = {
            type = "list",
            member = { type = "string" },
        },
        accessEntryArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        username = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.AccessPolicy = {
    type = "structure",
    id = "AccessPolicy",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.AccessScopeType = {
    cluster = "cluster",
    namespace = "namespace",
}

M.AccessScope = {
    type = "structure",
    id = "AccessScope",
    members = {
        type = {
            type = "string",
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AddonIssueCode = {
    ACCESS_DENIED = "AccessDenied",
    INTERNAL_FAILURE = "InternalFailure",
    CLUSTER_UNREACHABLE = "ClusterUnreachable",
    INSUFFICIENT_NUMBER_OF_REPLICAS = "InsufficientNumberOfReplicas",
    CONFIGURATION_CONFLICT = "ConfigurationConflict",
    ADMISSION_REQUEST_DENIED = "AdmissionRequestDenied",
    UNSUPPORTED_ADDON_MODIFICATION = "UnsupportedAddonModification",
    K8S_RESOURCE_NOT_FOUND = "K8sResourceNotFound",
    ADDON_SUBSCRIPTION_NEEDED = "AddonSubscriptionNeeded",
    ADDON_PERMISSION_FAILURE = "AddonPermissionFailure",
}

M.AddonIssue = {
    type = "structure",
    id = "AddonIssue",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
        resourceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AddonHealth = {
    type = "structure",
    id = "AddonHealth",
    members = {
        issues = {
            type = "list",
            member = M.AddonIssue,
        },
    },
}

M.MarketplaceInformation = {
    type = "structure",
    id = "MarketplaceInformation",
    members = {
        productId = {
            type = "string",
        },
        productUrl = {
            type = "string",
        },
    },
}

M.AddonNamespaceConfigResponse = {
    type = "structure",
    id = "AddonNamespaceConfigResponse",
    members = {
        namespace = {
            type = "string",
        },
    },
}

M.AddonStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    DEGRADED = "DEGRADED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.Addon = {
    type = "structure",
    id = "Addon",
    members = {
        addonName = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        addonVersion = {
            type = "string",
        },
        health = M.AddonHealth,
        addonArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        serviceAccountRoleArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        publisher = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        marketplaceInformation = M.MarketplaceInformation,
        configurationValues = {
            type = "string",
        },
        podIdentityAssociations = {
            type = "list",
            member = { type = "string" },
        },
        namespaceConfig = M.AddonNamespaceConfigResponse,
    },
}

M.AddonCompatibilityDetail = {
    type = "structure",
    id = "AddonCompatibilityDetail",
    members = {
        name = {
            type = "string",
        },
        compatibleVersions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Compatibility = {
    type = "structure",
    id = "Compatibility",
    members = {
        clusterVersion = {
            type = "string",
        },
        platformVersions = {
            type = "list",
            member = { type = "string" },
        },
        defaultVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AddonVersionInfo = {
    type = "structure",
    id = "AddonVersionInfo",
    members = {
        addonVersion = {
            type = "string",
        },
        architecture = {
            type = "list",
            member = { type = "string" },
        },
        computeTypes = {
            type = "list",
            member = { type = "string" },
        },
        compatibilities = {
            type = "list",
            member = M.Compatibility,
        },
        requiresConfiguration = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        requiresIamPermissions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AddonInfo = {
    type = "structure",
    id = "AddonInfo",
    members = {
        addonName = {
            type = "string",
        },
        type = {
            type = "string",
        },
        addonVersions = {
            type = "list",
            member = M.AddonVersionInfo,
        },
        publisher = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        marketplaceInformation = M.MarketplaceInformation,
        defaultNamespace = {
            type = "string",
        },
    },
}

M.AddonNamespaceConfigRequest = {
    type = "structure",
    id = "AddonNamespaceConfigRequest",
    members = {
        namespace = {
            type = "string",
        },
    },
}

M.AddonPodIdentityAssociations = {
    type = "structure",
    id = "AddonPodIdentityAssociations",
    members = {
        serviceAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddonPodIdentityConfiguration = {
    type = "structure",
    id = "AddonPodIdentityConfiguration",
    members = {
        serviceAccount = {
            type = "string",
        },
        recommendedManagedPolicies = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AMITypes = {
    AL2_x86_64 = "AL2_x86_64",
    AL2_x86_64_GPU = "AL2_x86_64_GPU",
    AL2_ARM_64 = "AL2_ARM_64",
    CUSTOM = "CUSTOM",
    BOTTLEROCKET_ARM_64 = "BOTTLEROCKET_ARM_64",
    BOTTLEROCKET_x86_64 = "BOTTLEROCKET_x86_64",
    BOTTLEROCKET_ARM_64_FIPS = "BOTTLEROCKET_ARM_64_FIPS",
    BOTTLEROCKET_x86_64_FIPS = "BOTTLEROCKET_x86_64_FIPS",
    BOTTLEROCKET_ARM_64_NVIDIA = "BOTTLEROCKET_ARM_64_NVIDIA",
    BOTTLEROCKET_x86_64_NVIDIA = "BOTTLEROCKET_x86_64_NVIDIA",
    BOTTLEROCKET_ARM_64_NVIDIA_FIPS = "BOTTLEROCKET_ARM_64_NVIDIA_FIPS",
    BOTTLEROCKET_x86_64_NVIDIA_FIPS = "BOTTLEROCKET_x86_64_NVIDIA_FIPS",
    WINDOWS_CORE_2019_x86_64 = "WINDOWS_CORE_2019_x86_64",
    WINDOWS_FULL_2019_x86_64 = "WINDOWS_FULL_2019_x86_64",
    WINDOWS_CORE_2022_x86_64 = "WINDOWS_CORE_2022_x86_64",
    WINDOWS_FULL_2022_x86_64 = "WINDOWS_FULL_2022_x86_64",
    WINDOWS_CORE_2025_x86_64 = "WINDOWS_CORE_2025_x86_64",
    WINDOWS_FULL_2025_x86_64 = "WINDOWS_FULL_2025_x86_64",
    AL2023_x86_64_STANDARD = "AL2023_x86_64_STANDARD",
    AL2023_ARM_64_STANDARD = "AL2023_ARM_64_STANDARD",
    AL2023_x86_64_NEURON = "AL2023_x86_64_NEURON",
    AL2023_x86_64_NVIDIA = "AL2023_x86_64_NVIDIA",
    AL2023_ARM_64_NVIDIA = "AL2023_ARM_64_NVIDIA",
}

M.ArgoCdAwsIdcConfigRequest = {
    type = "structure",
    id = "ArgoCdAwsIdcConfigRequest",
    members = {
        idcInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcRegion = {
            type = "string",
        },
    },
}

M.ArgoCdAwsIdcConfigResponse = {
    type = "structure",
    id = "ArgoCdAwsIdcConfigResponse",
    members = {
        idcInstanceArn = {
            type = "string",
        },
        idcRegion = {
            type = "string",
        },
        idcManagedApplicationArn = {
            type = "string",
        },
    },
}

M.ArgoCdNetworkAccessConfigRequest = {
    type = "structure",
    id = "ArgoCdNetworkAccessConfigRequest",
    members = {
        vpceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SsoIdentityType = {
    SSO_USER = "SSO_USER",
    SSO_GROUP = "SSO_GROUP",
}

M.SsoIdentity = {
    type = "structure",
    id = "SsoIdentity",
    members = {
        id = {
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

M.ArgoCdRole = {
    ADMIN = "ADMIN",
    EDITOR = "EDITOR",
    VIEWER = "VIEWER",
}

M.ArgoCdRoleMapping = {
    type = "structure",
    id = "ArgoCdRoleMapping",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identities = {
            type = "list",
            member = M.SsoIdentity,
            traits = {
                required = true,
            },
        },
    },
}

M.ArgoCdConfigRequest = {
    type = "structure",
    id = "ArgoCdConfigRequest",
    members = {
        namespace = {
            type = "string",
        },
        awsIdc = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArgoCdAwsIdcConfigRequest }),
        rbacRoleMappings = {
            type = "list",
            member = M.ArgoCdRoleMapping,
        },
        networkAccess = M.ArgoCdNetworkAccessConfigRequest,
    },
}

M.ArgoCdNetworkAccessConfigResponse = {
    type = "structure",
    id = "ArgoCdNetworkAccessConfigResponse",
    members = {
        vpceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ArgoCdConfigResponse = {
    type = "structure",
    id = "ArgoCdConfigResponse",
    members = {
        namespace = {
            type = "string",
        },
        awsIdc = M.ArgoCdAwsIdcConfigResponse,
        rbacRoleMappings = {
            type = "list",
            member = M.ArgoCdRoleMapping,
        },
        networkAccess = M.ArgoCdNetworkAccessConfigResponse,
        serverUrl = {
            type = "string",
        },
    },
}

M.AssociateAccessPolicyInput = {
    type = "structure",
    id = "AssociateAccessPolicyInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessScope = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccessScope }),
    },
}

M.AssociatedAccessPolicy = {
    type = "structure",
    id = "AssociatedAccessPolicy",
    members = {
        policyArn = {
            type = "string",
        },
        accessScope = M.AccessScope,
        associatedAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
    },
}

M.AssociateAccessPolicyOutput = {
    type = "structure",
    id = "AssociateAccessPolicyOutput",
    members = {
        clusterName = {
            type = "string",
        },
        principalArn = {
            type = "string",
        },
        associatedAccessPolicy = M.AssociatedAccessPolicy,
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        clusterName = {
            type = "string",
        },
        nodegroupName = {
            type = "string",
        },
        fargateProfileName = {
            type = "string",
        },
        addonName = {
            type = "string",
        },
        subscriptionId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        clusterName = {
            type = "string",
        },
        nodegroupName = {
            type = "string",
        },
        addonName = {
            type = "string",
        },
        subscriptionId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        clusterName = {
            type = "string",
        },
        nodegroupName = {
            type = "string",
        },
        fargateProfileName = {
            type = "string",
        },
        addonName = {
            type = "string",
        },
        subscriptionId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ServerException = {
    type = "structure",
    id = "ServerException",
    error = "server",
    members = {
        clusterName = {
            type = "string",
        },
        nodegroupName = {
            type = "string",
        },
        addonName = {
            type = "string",
        },
        subscriptionId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.Provider = {
    type = "structure",
    id = "Provider",
    members = {
        keyArn = {
            type = "string",
        },
    },
}

M.EncryptionConfig = {
    type = "structure",
    id = "EncryptionConfig",
    members = {
        resources = {
            type = "list",
            member = { type = "string" },
        },
        provider = M.Provider,
    },
}

M.AssociateEncryptionConfigInput = {
    type = "structure",
    id = "AssociateEncryptionConfigInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        encryptionConfig = {
            type = "list",
            member = M.EncryptionConfig,
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.ErrorCode = {
    SUBNET_NOT_FOUND = "SubnetNotFound",
    SECURITY_GROUP_NOT_FOUND = "SecurityGroupNotFound",
    ENI_LIMIT_REACHED = "EniLimitReached",
    IP_NOT_AVAILABLE = "IpNotAvailable",
    ACCESS_DENIED = "AccessDenied",
    OPERATION_NOT_PERMITTED = "OperationNotPermitted",
    VPC_ID_NOT_FOUND = "VpcIdNotFound",
    UNKNOWN = "Unknown",
    NODE_CREATION_FAILURE = "NodeCreationFailure",
    POD_EVICTION_FAILURE = "PodEvictionFailure",
    INSUFFICIENT_FREE_ADDRESSES = "InsufficientFreeAddresses",
    CLUSTER_UNREACHABLE = "ClusterUnreachable",
    INSUFFICIENT_NUMBER_OF_REPLICAS = "InsufficientNumberOfReplicas",
    CONFIGURATION_CONFLICT = "ConfigurationConflict",
    ADMISSION_REQUEST_DENIED = "AdmissionRequestDenied",
    UNSUPPORTED_ADDON_MODIFICATION = "UnsupportedAddonModification",
    K8S_RESOURCE_NOT_FOUND = "K8sResourceNotFound",
}

M.ErrorDetail = {
    type = "structure",
    id = "ErrorDetail",
    members = {
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        resourceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateParamType = {
    VERSION = "Version",
    PLATFORM_VERSION = "PlatformVersion",
    ENDPOINT_PRIVATE_ACCESS = "EndpointPrivateAccess",
    ENDPOINT_PUBLIC_ACCESS = "EndpointPublicAccess",
    CLUSTER_LOGGING = "ClusterLogging",
    DESIRED_SIZE = "DesiredSize",
    LABELS_TO_ADD = "LabelsToAdd",
    LABELS_TO_REMOVE = "LabelsToRemove",
    TAINTS_TO_ADD = "TaintsToAdd",
    TAINTS_TO_REMOVE = "TaintsToRemove",
    MAX_SIZE = "MaxSize",
    MIN_SIZE = "MinSize",
    RELEASE_VERSION = "ReleaseVersion",
    PUBLIC_ACCESS_CIDRS = "PublicAccessCidrs",
    LAUNCH_TEMPLATE_NAME = "LaunchTemplateName",
    LAUNCH_TEMPLATE_VERSION = "LaunchTemplateVersion",
    IDENTITY_PROVIDER_CONFIG = "IdentityProviderConfig",
    ENCRYPTION_CONFIG = "EncryptionConfig",
    ADDON_VERSION = "AddonVersion",
    SERVICE_ACCOUNT_ROLE_ARN = "ServiceAccountRoleArn",
    RESOLVE_CONFLICTS = "ResolveConflicts",
    MAX_UNAVAILABLE = "MaxUnavailable",
    MAX_UNAVAILABLE_PERCENTAGE = "MaxUnavailablePercentage",
    NODE_REPAIR_ENABLED = "NodeRepairEnabled",
    UPDATE_STRATEGY = "UpdateStrategy",
    CONFIGURATION_VALUES = "ConfigurationValues",
    SECURITY_GROUPS = "SecurityGroups",
    SUBNETS = "Subnets",
    AUTHENTICATION_MODE = "AuthenticationMode",
    POD_IDENTITY_ASSOCIATIONS = "PodIdentityAssociations",
    UPGRADE_POLICY = "UpgradePolicy",
    ZONAL_SHIFT_CONFIG = "ZonalShiftConfig",
    COMPUTE_CONFIG = "ComputeConfig",
    STORAGE_CONFIG = "StorageConfig",
    KUBERNETES_NETWORK_CONFIG = "KubernetesNetworkConfig",
    REMOTE_NETWORK_CONFIG = "RemoteNetworkConfig",
    DELETION_PROTECTION = "DeletionProtection",
    NODE_REPAIR_CONFIG = "NodeRepairConfig",
    VENDED_LOGS = "VendedLogs",
    UPDATED_TIER = "UpdatedTier",
    PREVIOUS_TIER = "PreviousTier",
    WARM_POOL_ENABLED = "WarmPoolEnabled",
    WARM_POOL_MAX_GROUP_PREPARED_CAPACITY = "WarmPoolMaxGroupPreparedCapacity",
    WARM_POOL_MIN_SIZE = "WarmPoolMinSize",
    WARM_POOL_STATE = "WarmPoolState",
    WARM_POOL_REUSE_ON_SCALE_IN = "WarmPoolReuseOnScaleIn",
}

M.UpdateParam = {
    type = "structure",
    id = "UpdateParam",
    members = {
        type = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.UpdateStatus = {
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    CANCELLED = "Cancelled",
    SUCCESSFUL = "Successful",
}

M.UpdateType = {
    VERSION_UPDATE = "VersionUpdate",
    ENDPOINT_ACCESS_UPDATE = "EndpointAccessUpdate",
    LOGGING_UPDATE = "LoggingUpdate",
    CONFIG_UPDATE = "ConfigUpdate",
    ASSOCIATE_IDENTITY_PROVIDER_CONFIG = "AssociateIdentityProviderConfig",
    DISASSOCIATE_IDENTITY_PROVIDER_CONFIG = "DisassociateIdentityProviderConfig",
    ASSOCIATE_ENCRYPTION_CONFIG = "AssociateEncryptionConfig",
    ADDON_UPDATE = "AddonUpdate",
    VPC_CONFIG_UPDATE = "VpcConfigUpdate",
    ACCESS_CONFIG_UPDATE = "AccessConfigUpdate",
    UPGRADE_POLICY_UPDATE = "UpgradePolicyUpdate",
    ZONAL_SHIFT_CONFIG_UPDATE = "ZonalShiftConfigUpdate",
    AUTO_MODE_UPDATE = "AutoModeUpdate",
    REMOTE_NETWORK_CONFIG_UPDATE = "RemoteNetworkConfigUpdate",
    DELETION_PROTECTION_UPDATE = "DeletionProtectionUpdate",
    CONTROL_PLANE_SCALING_CONFIG_UPDATE = "ControlPlaneScalingConfigUpdate",
    VENDED_LOGS_UPDATE = "VendedLogsUpdate",
}

M.Update = {
    type = "structure",
    id = "Update",
    members = {
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        params = {
            type = "list",
            member = M.UpdateParam,
        },
        createdAt = {
            type = "timestamp",
        },
        errors = {
            type = "list",
            member = M.ErrorDetail,
        },
    },
}

M.AssociateEncryptionConfigOutput = {
    type = "structure",
    id = "AssociateEncryptionConfigOutput",
    members = {
        update = M.Update,
    },
}

M.ClientException = {
    type = "structure",
    id = "ClientException",
    error = "client",
    members = {
        clusterName = {
            type = "string",
        },
        nodegroupName = {
            type = "string",
        },
        addonName = {
            type = "string",
        },
        subscriptionId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        clusterName = {
            type = "string",
        },
        nodegroupName = {
            type = "string",
        },
        addonName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        clusterName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.OidcIdentityProviderConfigRequest = {
    type = "structure",
    id = "OidcIdentityProviderConfigRequest",
    members = {
        identityProviderConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        issuerUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usernameClaim = {
            type = "string",
        },
        usernamePrefix = {
            type = "string",
        },
        groupsClaim = {
            type = "string",
        },
        groupsPrefix = {
            type = "string",
        },
        requiredClaims = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AssociateIdentityProviderConfigInput = {
    type = "structure",
    id = "AssociateIdentityProviderConfigInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        oidc = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OidcIdentityProviderConfigRequest }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateIdentityProviderConfigOutput = {
    type = "structure",
    id = "AssociateIdentityProviderConfigOutput",
    members = {
        update = M.Update,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AutoScalingGroup = {
    type = "structure",
    id = "AutoScalingGroup",
    members = {
        name = {
            type = "string",
        },
    },
}

M.CreateAccessEntryInput = {
    type = "structure",
    id = "CreateAccessEntryInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kubernetesGroups = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        username = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.CreateAccessEntryOutput = {
    type = "structure",
    id = "CreateAccessEntryOutput",
    members = {
        accessEntry = M.AccessEntry,
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    id = "ResourceLimitExceededException",
    error = "client",
    members = {
        clusterName = {
            type = "string",
        },
        nodegroupName = {
            type = "string",
        },
        subscriptionId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ResolveConflicts = {
    OVERWRITE = "OVERWRITE",
    NONE = "NONE",
    PRESERVE = "PRESERVE",
}

M.CreateAddonInput = {
    type = "structure",
    id = "CreateAddonInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        addonName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        addonVersion = {
            type = "string",
        },
        serviceAccountRoleArn = {
            type = "string",
        },
        resolveConflicts = {
            type = "string",
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        configurationValues = {
            type = "string",
        },
        podIdentityAssociations = {
            type = "list",
            member = M.AddonPodIdentityAssociations,
        },
        namespaceConfig = M.AddonNamespaceConfigRequest,
    },
}

M.CreateAddonOutput = {
    type = "structure",
    id = "CreateAddonOutput",
    members = {
        addon = M.Addon,
    },
}

M.CapabilityConfigurationRequest = {
    type = "structure",
    id = "CapabilityConfigurationRequest",
    members = {
        argoCd = M.ArgoCdConfigRequest,
    },
}

M.CapabilityDeletePropagationPolicy = {
    RETAIN = "RETAIN",
}

M.CapabilityType = {
    ACK = "ACK",
    KRO = "KRO",
    ARGOCD = "ARGOCD",
}

M.CreateCapabilityInput = {
    type = "structure",
    id = "CreateCapabilityInput",
    members = {
        capabilityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = M.CapabilityConfigurationRequest,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        deletePropagationPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CapabilityConfigurationResponse = {
    type = "structure",
    id = "CapabilityConfigurationResponse",
    members = {
        argoCd = M.ArgoCdConfigResponse,
    },
}

M.CapabilityIssueCode = {
    ACCESS_DENIED = "AccessDenied",
    CLUSTER_UNREACHABLE = "ClusterUnreachable",
}

M.CapabilityIssue = {
    type = "structure",
    id = "CapabilityIssue",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.CapabilityHealth = {
    type = "structure",
    id = "CapabilityHealth",
    members = {
        issues = {
            type = "list",
            member = M.CapabilityIssue,
        },
    },
}

M.CapabilityStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    ACTIVE = "ACTIVE",
    DEGRADED = "DEGRADED",
}

M.Capability = {
    type = "structure",
    id = "Capability",
    members = {
        capabilityName = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        type = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        version = {
            type = "string",
        },
        configuration = M.CapabilityConfigurationResponse,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        health = M.CapabilityHealth,
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        deletePropagationPolicy = {
            type = "string",
        },
    },
}

M.CreateCapabilityOutput = {
    type = "structure",
    id = "CreateCapabilityOutput",
    members = {
        capability = M.Capability,
    },
}

M.CreateAccessConfigRequest = {
    type = "structure",
    id = "CreateAccessConfigRequest",
    members = {
        bootstrapClusterCreatorAdminPermissions = {
            type = "boolean",
        },
        authenticationMode = {
            type = "string",
        },
    },
}

M.ComputeConfigRequest = {
    type = "structure",
    id = "ComputeConfigRequest",
    members = {
        enabled = {
            type = "boolean",
        },
        nodePools = {
            type = "list",
            member = { type = "string" },
        },
        nodeRoleArn = {
            type = "string",
        },
    },
}

M.ProvisionedControlPlaneTier = {
    STANDARD = "standard",
    TIER_XL = "tier-xl",
    TIER_2XL = "tier-2xl",
    TIER_4XL = "tier-4xl",
    TIER_8XL = "tier-8xl",
}

M.ControlPlaneScalingConfig = {
    type = "structure",
    id = "ControlPlaneScalingConfig",
    members = {
        tier = {
            type = "string",
        },
    },
}

M.ElasticLoadBalancing = {
    type = "structure",
    id = "ElasticLoadBalancing",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.IpFamily = {
    IPV4 = "ipv4",
    IPV6 = "ipv6",
}

M.KubernetesNetworkConfigRequest = {
    type = "structure",
    id = "KubernetesNetworkConfigRequest",
    members = {
        serviceIpv4Cidr = {
            type = "string",
        },
        ipFamily = {
            type = "string",
        },
        elasticLoadBalancing = M.ElasticLoadBalancing,
    },
}

M.LogType = {
    API = "api",
    AUDIT = "audit",
    AUTHENTICATOR = "authenticator",
    CONTROLLER_MANAGER = "controllerManager",
    SCHEDULER = "scheduler",
}

M.LogSetup = {
    type = "structure",
    id = "LogSetup",
    members = {
        types = {
            type = "list",
            member = { type = "string" },
        },
        enabled = {
            type = "boolean",
        },
    },
}

M.Logging = {
    type = "structure",
    id = "Logging",
    members = {
        clusterLogging = {
            type = "list",
            member = M.LogSetup,
        },
    },
}

M.ControlPlanePlacementRequest = {
    type = "structure",
    id = "ControlPlanePlacementRequest",
    members = {
        groupName = {
            type = "string",
        },
    },
}

M.OutpostConfigRequest = {
    type = "structure",
    id = "OutpostConfigRequest",
    members = {
        outpostArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        controlPlaneInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        controlPlanePlacement = M.ControlPlanePlacementRequest,
    },
}

M.RemoteNodeNetwork = {
    type = "structure",
    id = "RemoteNodeNetwork",
    members = {
        cidrs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemotePodNetwork = {
    type = "structure",
    id = "RemotePodNetwork",
    members = {
        cidrs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemoteNetworkConfigRequest = {
    type = "structure",
    id = "RemoteNetworkConfigRequest",
    members = {
        remoteNodeNetworks = {
            type = "list",
            member = M.RemoteNodeNetwork,
        },
        remotePodNetworks = {
            type = "list",
            member = M.RemotePodNetwork,
        },
    },
}

M.VpcConfigRequest = {
    type = "structure",
    id = "VpcConfigRequest",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        endpointPublicAccess = {
            type = "boolean",
        },
        endpointPrivateAccess = {
            type = "boolean",
        },
        publicAccessCidrs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BlockStorage = {
    type = "structure",
    id = "BlockStorage",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.StorageConfigRequest = {
    type = "structure",
    id = "StorageConfigRequest",
    members = {
        blockStorage = M.BlockStorage,
    },
}

M.SupportType = {
    STANDARD = "STANDARD",
    EXTENDED = "EXTENDED",
}

M.UpgradePolicyRequest = {
    type = "structure",
    id = "UpgradePolicyRequest",
    members = {
        supportType = {
            type = "string",
        },
    },
}

M.ZonalShiftConfigRequest = {
    type = "structure",
    id = "ZonalShiftConfigRequest",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
    id = "CreateClusterInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourcesVpcConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcConfigRequest }),
        kubernetesNetworkConfig = M.KubernetesNetworkConfigRequest,
        logging = M.Logging,
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        encryptionConfig = {
            type = "list",
            member = M.EncryptionConfig,
        },
        outpostConfig = M.OutpostConfigRequest,
        accessConfig = M.CreateAccessConfigRequest,
        bootstrapSelfManagedAddons = {
            type = "boolean",
        },
        upgradePolicy = M.UpgradePolicyRequest,
        zonalShiftConfig = M.ZonalShiftConfigRequest,
        remoteNetworkConfig = M.RemoteNetworkConfigRequest,
        computeConfig = M.ComputeConfigRequest,
        storageConfig = M.StorageConfigRequest,
        deletionProtection = {
            type = "boolean",
        },
        controlPlaneScalingConfig = M.ControlPlaneScalingConfig,
    },
}

M.Certificate = {
    type = "structure",
    id = "Certificate",
    members = {
        data = {
            type = "string",
        },
    },
}

M.ComputeConfigResponse = {
    type = "structure",
    id = "ComputeConfigResponse",
    members = {
        enabled = {
            type = "boolean",
        },
        nodePools = {
            type = "list",
            member = { type = "string" },
        },
        nodeRoleArn = {
            type = "string",
        },
    },
}

M.ConnectorConfigResponse = {
    type = "structure",
    id = "ConnectorConfigResponse",
    members = {
        activationId = {
            type = "string",
        },
        activationCode = {
            type = "string",
        },
        activationExpiry = {
            type = "timestamp",
        },
        provider = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.ClusterIssueCode = {
    ACCESS_DENIED = "AccessDenied",
    CLUSTER_UNREACHABLE = "ClusterUnreachable",
    CONFIGURATION_CONFLICT = "ConfigurationConflict",
    INTERNAL_FAILURE = "InternalFailure",
    RESOURCE_LIMIT_EXCEEDED = "ResourceLimitExceeded",
    RESOURCE_NOT_FOUND = "ResourceNotFound",
    IAM_ROLE_NOT_FOUND = "IamRoleNotFound",
    VPC_NOT_FOUND = "VpcNotFound",
    INSUFFICIENT_FREE_ADDRESSES = "InsufficientFreeAddresses",
    EC2_SERVICE_NOT_SUBSCRIBED = "Ec2ServiceNotSubscribed",
    EC2_SUBNET_NOT_FOUND = "Ec2SubnetNotFound",
    EC2_SECURITY_GROUP_NOT_FOUND = "Ec2SecurityGroupNotFound",
    KMS_GRANT_REVOKED = "KmsGrantRevoked",
    KMS_KEY_NOT_FOUND = "KmsKeyNotFound",
    KMS_KEY_MARKED_FOR_DELETION = "KmsKeyMarkedForDeletion",
    KMS_KEY_DISABLED = "KmsKeyDisabled",
    STS_REGIONAL_ENDPOINT_DISABLED = "StsRegionalEndpointDisabled",
    UNSUPPORTED_VERSION = "UnsupportedVersion",
    OTHER = "Other",
}

M.ClusterIssue = {
    type = "structure",
    id = "ClusterIssue",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
        resourceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ClusterHealth = {
    type = "structure",
    id = "ClusterHealth",
    members = {
        issues = {
            type = "list",
            member = M.ClusterIssue,
        },
    },
}

M.OIDC = {
    type = "structure",
    id = "OIDC",
    members = {
        issuer = {
            type = "string",
        },
    },
}

M.Identity = {
    type = "structure",
    id = "Identity",
    members = {
        oidc = M.OIDC,
    },
}

M.KubernetesNetworkConfigResponse = {
    type = "structure",
    id = "KubernetesNetworkConfigResponse",
    members = {
        serviceIpv4Cidr = {
            type = "string",
        },
        serviceIpv6Cidr = {
            type = "string",
        },
        ipFamily = {
            type = "string",
        },
        elasticLoadBalancing = M.ElasticLoadBalancing,
    },
}

M.ControlPlanePlacementResponse = {
    type = "structure",
    id = "ControlPlanePlacementResponse",
    members = {
        groupName = {
            type = "string",
        },
    },
}

M.OutpostConfigResponse = {
    type = "structure",
    id = "OutpostConfigResponse",
    members = {
        outpostArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        controlPlaneInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        controlPlanePlacement = M.ControlPlanePlacementResponse,
    },
}

M.RemoteNetworkConfigResponse = {
    type = "structure",
    id = "RemoteNetworkConfigResponse",
    members = {
        remoteNodeNetworks = {
            type = "list",
            member = M.RemoteNodeNetwork,
        },
        remotePodNetworks = {
            type = "list",
            member = M.RemotePodNetwork,
        },
    },
}

M.VpcConfigResponse = {
    type = "structure",
    id = "VpcConfigResponse",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        clusterSecurityGroupId = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        endpointPublicAccess = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        endpointPrivateAccess = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        publicAccessCidrs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ClusterStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
    PENDING = "PENDING",
}

M.StorageConfigResponse = {
    type = "structure",
    id = "StorageConfigResponse",
    members = {
        blockStorage = M.BlockStorage,
    },
}

M.UpgradePolicyResponse = {
    type = "structure",
    id = "UpgradePolicyResponse",
    members = {
        supportType = {
            type = "string",
        },
    },
}

M.ZonalShiftConfigResponse = {
    type = "structure",
    id = "ZonalShiftConfigResponse",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.Cluster = {
    type = "structure",
    id = "Cluster",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        resourcesVpcConfig = M.VpcConfigResponse,
        kubernetesNetworkConfig = M.KubernetesNetworkConfigResponse,
        logging = M.Logging,
        identity = M.Identity,
        status = {
            type = "string",
        },
        certificateAuthority = M.Certificate,
        clientRequestToken = {
            type = "string",
        },
        platformVersion = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        encryptionConfig = {
            type = "list",
            member = M.EncryptionConfig,
        },
        connectorConfig = M.ConnectorConfigResponse,
        id = {
            type = "string",
        },
        health = M.ClusterHealth,
        outpostConfig = M.OutpostConfigResponse,
        accessConfig = M.AccessConfigResponse,
        upgradePolicy = M.UpgradePolicyResponse,
        zonalShiftConfig = M.ZonalShiftConfigResponse,
        remoteNetworkConfig = M.RemoteNetworkConfigResponse,
        computeConfig = M.ComputeConfigResponse,
        storageConfig = M.StorageConfigResponse,
        deletionProtection = {
            type = "boolean",
        },
        controlPlaneScalingConfig = M.ControlPlaneScalingConfig,
    },
}

M.CreateClusterOutput = {
    type = "structure",
    id = "CreateClusterOutput",
    members = {
        cluster = M.Cluster,
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedAvailabilityZoneException = {
    type = "structure",
    id = "UnsupportedAvailabilityZoneException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        nodegroupName = {
            type = "string",
        },
        validZones = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EksAnywhereSubscriptionLicenseType = {
    Cluster = "Cluster",
}

M.EksAnywhereSubscriptionTermUnit = {
    MONTHS = "MONTHS",
}

M.EksAnywhereSubscriptionTerm = {
    type = "structure",
    id = "EksAnywhereSubscriptionTerm",
    members = {
        duration = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        unit = {
            type = "string",
        },
    },
}

M.CreateEksAnywhereSubscriptionInput = {
    type = "structure",
    id = "CreateEksAnywhereSubscriptionInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        term = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EksAnywhereSubscriptionTerm }),
        licenseQuantity = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        licenseType = {
            type = "string",
        },
        autoRenew = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.License = {
    type = "structure",
    id = "License",
    members = {
        id = {
            type = "string",
        },
        token = {
            type = "string",
        },
    },
}

M.EksAnywhereSubscription = {
    type = "structure",
    id = "EksAnywhereSubscription",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        effectiveDate = {
            type = "timestamp",
        },
        expirationDate = {
            type = "timestamp",
        },
        licenseQuantity = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        licenseType = {
            type = "string",
        },
        term = M.EksAnywhereSubscriptionTerm,
        status = {
            type = "string",
        },
        autoRenew = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        licenseArns = {
            type = "list",
            member = { type = "string" },
        },
        licenses = {
            type = "list",
            member = M.License,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateEksAnywhereSubscriptionOutput = {
    type = "structure",
    id = "CreateEksAnywhereSubscriptionOutput",
    members = {
        subscription = M.EksAnywhereSubscription,
    },
}

M.FargateProfileSelector = {
    type = "structure",
    id = "FargateProfileSelector",
    members = {
        namespace = {
            type = "string",
        },
        labels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateFargateProfileInput = {
    type = "structure",
    id = "CreateFargateProfileInput",
    members = {
        fargateProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        podExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnets = {
            type = "list",
            member = { type = "string" },
        },
        selectors = {
            type = "list",
            member = M.FargateProfileSelector,
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.FargateProfileIssueCode = {
    POD_EXECUTION_ROLE_ALREADY_IN_USE = "PodExecutionRoleAlreadyInUse",
    ACCESS_DENIED = "AccessDenied",
    CLUSTER_UNREACHABLE = "ClusterUnreachable",
    INTERNAL_FAILURE = "InternalFailure",
}

M.FargateProfileIssue = {
    type = "structure",
    id = "FargateProfileIssue",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
        resourceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FargateProfileHealth = {
    type = "structure",
    id = "FargateProfileHealth",
    members = {
        issues = {
            type = "list",
            member = M.FargateProfileIssue,
        },
    },
}

M.FargateProfileStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.FargateProfile = {
    type = "structure",
    id = "FargateProfile",
    members = {
        fargateProfileName = {
            type = "string",
        },
        fargateProfileArn = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        podExecutionRoleArn = {
            type = "string",
        },
        subnets = {
            type = "list",
            member = { type = "string" },
        },
        selectors = {
            type = "list",
            member = M.FargateProfileSelector,
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        health = M.FargateProfileHealth,
    },
}

M.CreateFargateProfileOutput = {
    type = "structure",
    id = "CreateFargateProfileOutput",
    members = {
        fargateProfile = M.FargateProfile,
    },
}

M.CapacityTypes = {
    ON_DEMAND = "ON_DEMAND",
    SPOT = "SPOT",
    CAPACITY_BLOCK = "CAPACITY_BLOCK",
}

M.LaunchTemplateSpecification = {
    type = "structure",
    id = "LaunchTemplateSpecification",
    members = {
        name = {
            type = "string",
        },
        version = {
            type = "string",
        },
        id = {
            type = "string",
        },
    },
}

M.RepairAction = {
    Replace = "Replace",
    Reboot = "Reboot",
    NoAction = "NoAction",
}

M.NodeRepairConfigOverrides = {
    type = "structure",
    id = "NodeRepairConfigOverrides",
    members = {
        nodeMonitoringCondition = {
            type = "string",
        },
        nodeUnhealthyReason = {
            type = "string",
        },
        minRepairWaitTimeMins = {
            type = "integer",
        },
        repairAction = {
            type = "string",
        },
    },
}

M.NodeRepairConfig = {
    type = "structure",
    id = "NodeRepairConfig",
    members = {
        enabled = {
            type = "boolean",
        },
        maxUnhealthyNodeThresholdCount = {
            type = "integer",
        },
        maxUnhealthyNodeThresholdPercentage = {
            type = "integer",
        },
        maxParallelNodesRepairedCount = {
            type = "integer",
        },
        maxParallelNodesRepairedPercentage = {
            type = "integer",
        },
        nodeRepairConfigOverrides = {
            type = "list",
            member = M.NodeRepairConfigOverrides,
        },
    },
}

M.RemoteAccessConfig = {
    type = "structure",
    id = "RemoteAccessConfig",
    members = {
        ec2SshKey = {
            type = "string",
        },
        sourceSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.NodegroupScalingConfig = {
    type = "structure",
    id = "NodegroupScalingConfig",
    members = {
        minSize = {
            type = "integer",
        },
        maxSize = {
            type = "integer",
        },
        desiredSize = {
            type = "integer",
        },
    },
}

M.TaintEffect = {
    NO_SCHEDULE = "NO_SCHEDULE",
    NO_EXECUTE = "NO_EXECUTE",
    PREFER_NO_SCHEDULE = "PREFER_NO_SCHEDULE",
}

M.Taint = {
    type = "structure",
    id = "Taint",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
        effect = {
            type = "string",
        },
    },
}

M.NodegroupUpdateStrategies = {
    DEFAULT = "DEFAULT",
    MINIMAL = "MINIMAL",
}

M.NodegroupUpdateConfig = {
    type = "structure",
    id = "NodegroupUpdateConfig",
    members = {
        maxUnavailable = {
            type = "integer",
        },
        maxUnavailablePercentage = {
            type = "integer",
        },
        updateStrategy = {
            type = "string",
        },
    },
}

M.WarmPoolState = {
    STOPPED = "STOPPED",
    RUNNING = "RUNNING",
    HIBERNATED = "HIBERNATED",
}

M.WarmPoolConfig = {
    type = "structure",
    id = "WarmPoolConfig",
    members = {
        enabled = {
            type = "boolean",
        },
        minSize = {
            type = "integer",
        },
        maxGroupPreparedCapacity = {
            type = "integer",
        },
        poolState = {
            type = "string",
        },
        reuseOnScaleIn = {
            type = "boolean",
        },
    },
}

M.CreateNodegroupInput = {
    type = "structure",
    id = "CreateNodegroupInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nodegroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scalingConfig = M.NodegroupScalingConfig,
        diskSize = {
            type = "integer",
        },
        subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        instanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        amiType = {
            type = "string",
        },
        remoteAccess = M.RemoteAccessConfig,
        nodeRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        labels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        taints = {
            type = "list",
            member = M.Taint,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        launchTemplate = M.LaunchTemplateSpecification,
        updateConfig = M.NodegroupUpdateConfig,
        nodeRepairConfig = M.NodeRepairConfig,
        capacityType = {
            type = "string",
        },
        version = {
            type = "string",
        },
        releaseVersion = {
            type = "string",
        },
        warmPoolConfig = M.WarmPoolConfig,
    },
}

M.NodegroupIssueCode = {
    AUTO_SCALING_GROUP_NOT_FOUND = "AutoScalingGroupNotFound",
    AUTO_SCALING_GROUP_INVALID_CONFIGURATION = "AutoScalingGroupInvalidConfiguration",
    EC2_SECURITY_GROUP_NOT_FOUND = "Ec2SecurityGroupNotFound",
    EC2_SECURITY_GROUP_DELETION_FAILURE = "Ec2SecurityGroupDeletionFailure",
    EC2_LAUNCH_TEMPLATE_NOT_FOUND = "Ec2LaunchTemplateNotFound",
    EC2_LAUNCH_TEMPLATE_VERSION_MISMATCH = "Ec2LaunchTemplateVersionMismatch",
    EC2_SUBNET_NOT_FOUND = "Ec2SubnetNotFound",
    EC2_SUBNET_INVALID_CONFIGURATION = "Ec2SubnetInvalidConfiguration",
    IAM_INSTANCE_PROFILE_NOT_FOUND = "IamInstanceProfileNotFound",
    EC2_SUBNET_MISSING_IPV6_ASSIGNMENT = "Ec2SubnetMissingIpv6Assignment",
    IAM_LIMIT_EXCEEDED = "IamLimitExceeded",
    IAM_NODE_ROLE_NOT_FOUND = "IamNodeRoleNotFound",
    NODE_CREATION_FAILURE = "NodeCreationFailure",
    ASG_INSTANCE_LAUNCH_FAILURES = "AsgInstanceLaunchFailures",
    INSTANCE_LIMIT_EXCEEDED = "InstanceLimitExceeded",
    INSUFFICIENT_FREE_ADDRESSES = "InsufficientFreeAddresses",
    ACCESS_DENIED = "AccessDenied",
    INTERNAL_FAILURE = "InternalFailure",
    CLUSTER_UNREACHABLE = "ClusterUnreachable",
    AMI_ID_NOT_FOUND = "AmiIdNotFound",
    AUTO_SCALING_GROUP_OPT_IN_REQUIRED = "AutoScalingGroupOptInRequired",
    AUTO_SCALING_GROUP_RATE_LIMIT_EXCEEDED = "AutoScalingGroupRateLimitExceeded",
    EC2_LAUNCH_TEMPLATE_DELETION_FAILURE = "Ec2LaunchTemplateDeletionFailure",
    EC2_LAUNCH_TEMPLATE_INVALID_CONFIGURATION = "Ec2LaunchTemplateInvalidConfiguration",
    EC2_LAUNCH_TEMPLATE_MAX_LIMIT_EXCEEDED = "Ec2LaunchTemplateMaxLimitExceeded",
    EC2_SUBNET_LIST_TOO_LONG = "Ec2SubnetListTooLong",
    IAM_THROTTLING = "IamThrottling",
    NODE_TERMINATION_FAILURE = "NodeTerminationFailure",
    POD_EVICTION_FAILURE = "PodEvictionFailure",
    SOURCE_EC2_LAUNCH_TEMPLATE_NOT_FOUND = "SourceEc2LaunchTemplateNotFound",
    LIMIT_EXCEEDED = "LimitExceeded",
    UNKNOWN = "Unknown",
    AUTO_SCALING_GROUP_INSTANCE_REFRESH_ACTIVE = "AutoScalingGroupInstanceRefreshActive",
    KUBERNETES_LABEL_INVALID = "KubernetesLabelInvalid",
    EC2_LAUNCH_TEMPLATE_VERSION_MAX_LIMIT_EXCEEDED = "Ec2LaunchTemplateVersionMaxLimitExceeded",
    EC2_INSTANCE_TYPE_DOES_NOT_EXIST = "Ec2InstanceTypeDoesNotExist",
}

M.Issue = {
    type = "structure",
    id = "Issue",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
        resourceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.NodegroupHealth = {
    type = "structure",
    id = "NodegroupHealth",
    members = {
        issues = {
            type = "list",
            member = M.Issue,
        },
    },
}

M.NodegroupResources = {
    type = "structure",
    id = "NodegroupResources",
    members = {
        autoScalingGroups = {
            type = "list",
            member = M.AutoScalingGroup,
        },
        remoteAccessSecurityGroup = {
            type = "string",
        },
    },
}

M.NodegroupStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
    DEGRADED = "DEGRADED",
}

M.Nodegroup = {
    type = "structure",
    id = "Nodegroup",
    members = {
        nodegroupName = {
            type = "string",
        },
        nodegroupArn = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        version = {
            type = "string",
        },
        releaseVersion = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        capacityType = {
            type = "string",
        },
        scalingConfig = M.NodegroupScalingConfig,
        instanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        subnets = {
            type = "list",
            member = { type = "string" },
        },
        remoteAccess = M.RemoteAccessConfig,
        amiType = {
            type = "string",
        },
        nodeRole = {
            type = "string",
        },
        labels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        taints = {
            type = "list",
            member = M.Taint,
        },
        resources = M.NodegroupResources,
        diskSize = {
            type = "integer",
        },
        health = M.NodegroupHealth,
        updateConfig = M.NodegroupUpdateConfig,
        nodeRepairConfig = M.NodeRepairConfig,
        launchTemplate = M.LaunchTemplateSpecification,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        warmPoolConfig = M.WarmPoolConfig,
    },
}

M.CreateNodegroupOutput = {
    type = "structure",
    id = "CreateNodegroupOutput",
    members = {
        nodegroup = M.Nodegroup,
    },
}

M.CreatePodIdentityAssociationInput = {
    type = "structure",
    id = "CreatePodIdentityAssociationInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        disableSessionTags = {
            type = "boolean",
        },
        targetRoleArn = {
            type = "string",
        },
        policy = {
            type = "string",
        },
    },
}

M.PodIdentityAssociation = {
    type = "structure",
    id = "PodIdentityAssociation",
    members = {
        clusterName = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        serviceAccount = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        associationArn = {
            type = "string",
        },
        associationId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        ownerArn = {
            type = "string",
        },
        disableSessionTags = {
            type = "boolean",
        },
        targetRoleArn = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        policy = {
            type = "string",
        },
    },
}

M.CreatePodIdentityAssociationOutput = {
    type = "structure",
    id = "CreatePodIdentityAssociationOutput",
    members = {
        association = M.PodIdentityAssociation,
    },
}

M.DeleteAccessEntryInput = {
    type = "structure",
    id = "DeleteAccessEntryInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessEntryOutput = {
    type = "structure",
    id = "DeleteAccessEntryOutput",
}

M.DeleteAddonInput = {
    type = "structure",
    id = "DeleteAddonInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        addonName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        preserve = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "preserve",
            },
        },
    },
}

M.DeleteAddonOutput = {
    type = "structure",
    id = "DeleteAddonOutput",
    members = {
        addon = M.Addon,
    },
}

M.DeleteCapabilityInput = {
    type = "structure",
    id = "DeleteCapabilityInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        capabilityName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCapabilityOutput = {
    type = "structure",
    id = "DeleteCapabilityOutput",
    members = {
        capability = M.Capability,
    },
}

M.DeleteClusterInput = {
    type = "structure",
    id = "DeleteClusterInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteClusterOutput = {
    type = "structure",
    id = "DeleteClusterOutput",
    members = {
        cluster = M.Cluster,
    },
}

M.DeleteEksAnywhereSubscriptionInput = {
    type = "structure",
    id = "DeleteEksAnywhereSubscriptionInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEksAnywhereSubscriptionOutput = {
    type = "structure",
    id = "DeleteEksAnywhereSubscriptionOutput",
    members = {
        subscription = M.EksAnywhereSubscription,
    },
}

M.DeleteFargateProfileInput = {
    type = "structure",
    id = "DeleteFargateProfileInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fargateProfileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFargateProfileOutput = {
    type = "structure",
    id = "DeleteFargateProfileOutput",
    members = {
        fargateProfile = M.FargateProfile,
    },
}

M.DeleteNodegroupInput = {
    type = "structure",
    id = "DeleteNodegroupInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nodegroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNodegroupOutput = {
    type = "structure",
    id = "DeleteNodegroupOutput",
    members = {
        nodegroup = M.Nodegroup,
    },
}

M.DeletePodIdentityAssociationInput = {
    type = "structure",
    id = "DeletePodIdentityAssociationInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePodIdentityAssociationOutput = {
    type = "structure",
    id = "DeletePodIdentityAssociationOutput",
    members = {
        association = M.PodIdentityAssociation,
    },
}

M.DeregisterClusterInput = {
    type = "structure",
    id = "DeregisterClusterInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeregisterClusterOutput = {
    type = "structure",
    id = "DeregisterClusterOutput",
    members = {
        cluster = M.Cluster,
    },
}

M.DescribeAccessEntryInput = {
    type = "structure",
    id = "DescribeAccessEntryInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAccessEntryOutput = {
    type = "structure",
    id = "DescribeAccessEntryOutput",
    members = {
        accessEntry = M.AccessEntry,
    },
}

M.DescribeAddonInput = {
    type = "structure",
    id = "DescribeAddonInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        addonName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAddonOutput = {
    type = "structure",
    id = "DescribeAddonOutput",
    members = {
        addon = M.Addon,
    },
}

M.DescribeAddonConfigurationInput = {
    type = "structure",
    id = "DescribeAddonConfigurationInput",
    members = {
        addonName = {
            type = "string",
            traits = {
                http_query = "addonName",
                required = true,
            },
        },
        addonVersion = {
            type = "string",
            traits = {
                http_query = "addonVersion",
                required = true,
            },
        },
    },
}

M.DescribeAddonConfigurationOutput = {
    type = "structure",
    id = "DescribeAddonConfigurationOutput",
    members = {
        addonName = {
            type = "string",
        },
        addonVersion = {
            type = "string",
        },
        configurationSchema = {
            type = "string",
        },
        podIdentityConfiguration = {
            type = "list",
            member = M.AddonPodIdentityConfiguration,
        },
    },
}

M.DescribeAddonVersionsInput = {
    type = "structure",
    id = "DescribeAddonVersionsInput",
    members = {
        kubernetesVersion = {
            type = "string",
            traits = {
                http_query = "kubernetesVersion",
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
        addonName = {
            type = "string",
            traits = {
                http_query = "addonName",
            },
        },
        types = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "types",
            },
        },
        publishers = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "publishers",
            },
        },
        owners = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "owners",
            },
        },
    },
}

M.DescribeAddonVersionsOutput = {
    type = "structure",
    id = "DescribeAddonVersionsOutput",
    members = {
        addons = {
            type = "list",
            member = M.AddonInfo,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeCapabilityInput = {
    type = "structure",
    id = "DescribeCapabilityInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        capabilityName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeCapabilityOutput = {
    type = "structure",
    id = "DescribeCapabilityOutput",
    members = {
        capability = M.Capability,
    },
}

M.DescribeClusterInput = {
    type = "structure",
    id = "DescribeClusterInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeClusterOutput = {
    type = "structure",
    id = "DescribeClusterOutput",
    members = {
        cluster = M.Cluster,
    },
}

M.ClusterVersionStatus = {
    unsupported = "unsupported",
    standard_support = "standard-support",
    extended_support = "extended-support",
}

M.VersionStatus = {
    UNSUPPORTED = "UNSUPPORTED",
    STANDARD_SUPPORT = "STANDARD_SUPPORT",
    EXTENDED_SUPPORT = "EXTENDED_SUPPORT",
}

M.DescribeClusterVersionsInput = {
    type = "structure",
    id = "DescribeClusterVersionsInput",
    members = {
        clusterType = {
            type = "string",
            traits = {
                http_query = "clusterType",
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
        defaultOnly = {
            type = "boolean",
            traits = {
                http_query = "defaultOnly",
            },
        },
        includeAll = {
            type = "boolean",
            traits = {
                http_query = "includeAll",
            },
        },
        clusterVersions = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "clusterVersions",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        versionStatus = {
            type = "string",
            traits = {
                http_query = "versionStatus",
            },
        },
    },
}

M.ClusterVersionInformation = {
    type = "structure",
    id = "ClusterVersionInformation",
    members = {
        clusterVersion = {
            type = "string",
        },
        clusterType = {
            type = "string",
        },
        defaultPlatformVersion = {
            type = "string",
        },
        defaultVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        releaseDate = {
            type = "timestamp",
        },
        endOfStandardSupportDate = {
            type = "timestamp",
        },
        endOfExtendedSupportDate = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        versionStatus = {
            type = "string",
        },
        kubernetesPatchVersion = {
            type = "string",
        },
    },
}

M.DescribeClusterVersionsOutput = {
    type = "structure",
    id = "DescribeClusterVersionsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        clusterVersions = {
            type = "list",
            member = M.ClusterVersionInformation,
        },
    },
}

M.DescribeEksAnywhereSubscriptionInput = {
    type = "structure",
    id = "DescribeEksAnywhereSubscriptionInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeEksAnywhereSubscriptionOutput = {
    type = "structure",
    id = "DescribeEksAnywhereSubscriptionOutput",
    members = {
        subscription = M.EksAnywhereSubscription,
    },
}

M.DescribeFargateProfileInput = {
    type = "structure",
    id = "DescribeFargateProfileInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fargateProfileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeFargateProfileOutput = {
    type = "structure",
    id = "DescribeFargateProfileOutput",
    members = {
        fargateProfile = M.FargateProfile,
    },
}

M.IdentityProviderConfig = {
    type = "structure",
    id = "IdentityProviderConfig",
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

M.DescribeIdentityProviderConfigInput = {
    type = "structure",
    id = "DescribeIdentityProviderConfigInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identityProviderConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProviderConfig }),
    },
}

M.configStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
}

M.OidcIdentityProviderConfig = {
    type = "structure",
    id = "OidcIdentityProviderConfig",
    members = {
        identityProviderConfigName = {
            type = "string",
        },
        identityProviderConfigArn = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        issuerUrl = {
            type = "string",
        },
        clientId = {
            type = "string",
        },
        usernameClaim = {
            type = "string",
        },
        usernamePrefix = {
            type = "string",
        },
        groupsClaim = {
            type = "string",
        },
        groupsPrefix = {
            type = "string",
        },
        requiredClaims = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
        },
    },
}

M.IdentityProviderConfigResponse = {
    type = "structure",
    id = "IdentityProviderConfigResponse",
    members = {
        oidc = M.OidcIdentityProviderConfig,
    },
}

M.DescribeIdentityProviderConfigOutput = {
    type = "structure",
    id = "DescribeIdentityProviderConfigOutput",
    members = {
        identityProviderConfig = M.IdentityProviderConfigResponse,
    },
}

M.DescribeInsightInput = {
    type = "structure",
    id = "DescribeInsightInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Category = {
    UPGRADE_READINESS = "UPGRADE_READINESS",
    MISCONFIGURATION = "MISCONFIGURATION",
}

M.ClientStat = {
    type = "structure",
    id = "ClientStat",
    members = {
        userAgent = {
            type = "string",
        },
        numberOfRequestsLast30Days = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        lastRequestTime = {
            type = "timestamp",
        },
    },
}

M.DeprecationDetail = {
    type = "structure",
    id = "DeprecationDetail",
    members = {
        usage = {
            type = "string",
        },
        replacedWith = {
            type = "string",
        },
        stopServingVersion = {
            type = "string",
        },
        startServingReplacementVersion = {
            type = "string",
        },
        clientStats = {
            type = "list",
            member = M.ClientStat,
        },
    },
}

M.InsightCategorySpecificSummary = {
    type = "structure",
    id = "InsightCategorySpecificSummary",
    members = {
        deprecationDetails = {
            type = "list",
            member = M.DeprecationDetail,
        },
        addonCompatibilityDetails = {
            type = "list",
            member = M.AddonCompatibilityDetail,
        },
    },
}

M.InsightStatusValue = {
    PASSING = "PASSING",
    WARNING = "WARNING",
    ERROR = "ERROR",
    UNKNOWN = "UNKNOWN",
}

M.InsightStatus = {
    type = "structure",
    id = "InsightStatus",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.InsightResourceDetail = {
    type = "structure",
    id = "InsightResourceDetail",
    members = {
        insightStatus = M.InsightStatus,
        kubernetesResourceUri = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.Insight = {
    type = "structure",
    id = "Insight",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        category = {
            type = "string",
        },
        kubernetesVersion = {
            type = "string",
        },
        lastRefreshTime = {
            type = "timestamp",
        },
        lastTransitionTime = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        insightStatus = M.InsightStatus,
        recommendation = {
            type = "string",
        },
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        resources = {
            type = "list",
            member = M.InsightResourceDetail,
        },
        categorySpecificSummary = M.InsightCategorySpecificSummary,
    },
}

M.DescribeInsightOutput = {
    type = "structure",
    id = "DescribeInsightOutput",
    members = {
        insight = M.Insight,
    },
}

M.DescribeInsightsRefreshInput = {
    type = "structure",
    id = "DescribeInsightsRefreshInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InsightsRefreshStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.DescribeInsightsRefreshOutput = {
    type = "structure",
    id = "DescribeInsightsRefreshOutput",
    members = {
        message = {
            type = "string",
        },
        status = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeNodegroupInput = {
    type = "structure",
    id = "DescribeNodegroupInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nodegroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeNodegroupOutput = {
    type = "structure",
    id = "DescribeNodegroupOutput",
    members = {
        nodegroup = M.Nodegroup,
    },
}

M.DescribePodIdentityAssociationInput = {
    type = "structure",
    id = "DescribePodIdentityAssociationInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribePodIdentityAssociationOutput = {
    type = "structure",
    id = "DescribePodIdentityAssociationOutput",
    members = {
        association = M.PodIdentityAssociation,
    },
}

M.DescribeUpdateInput = {
    type = "structure",
    id = "DescribeUpdateInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        updateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nodegroupName = {
            type = "string",
            traits = {
                http_query = "nodegroupName",
            },
        },
        addonName = {
            type = "string",
            traits = {
                http_query = "addonName",
            },
        },
        capabilityName = {
            type = "string",
            traits = {
                http_query = "capabilityName",
            },
        },
    },
}

M.DescribeUpdateOutput = {
    type = "structure",
    id = "DescribeUpdateOutput",
    members = {
        update = M.Update,
    },
}

M.DisassociateAccessPolicyInput = {
    type = "structure",
    id = "DisassociateAccessPolicyInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateAccessPolicyOutput = {
    type = "structure",
    id = "DisassociateAccessPolicyOutput",
}

M.DisassociateIdentityProviderConfigInput = {
    type = "structure",
    id = "DisassociateIdentityProviderConfigInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identityProviderConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProviderConfig }),
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateIdentityProviderConfigOutput = {
    type = "structure",
    id = "DisassociateIdentityProviderConfigOutput",
    members = {
        update = M.Update,
    },
}

M.ListAccessEntriesInput = {
    type = "structure",
    id = "ListAccessEntriesInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associatedPolicyArn = {
            type = "string",
            traits = {
                http_query = "associatedPolicyArn",
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

M.ListAccessEntriesOutput = {
    type = "structure",
    id = "ListAccessEntriesOutput",
    members = {
        accessEntries = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAccessPoliciesInput = {
    type = "structure",
    id = "ListAccessPoliciesInput",
    members = {
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

M.ListAccessPoliciesOutput = {
    type = "structure",
    id = "ListAccessPoliciesOutput",
    members = {
        accessPolicies = {
            type = "list",
            member = M.AccessPolicy,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAddonsInput = {
    type = "structure",
    id = "ListAddonsInput",
    members = {
        clusterName = {
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

M.ListAddonsOutput = {
    type = "structure",
    id = "ListAddonsOutput",
    members = {
        addons = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssociatedAccessPoliciesInput = {
    type = "structure",
    id = "ListAssociatedAccessPoliciesInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalArn = {
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

M.ListAssociatedAccessPoliciesOutput = {
    type = "structure",
    id = "ListAssociatedAccessPoliciesOutput",
    members = {
        clusterName = {
            type = "string",
        },
        principalArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        associatedAccessPolicies = {
            type = "list",
            member = M.AssociatedAccessPolicy,
        },
    },
}

M.ListCapabilitiesInput = {
    type = "structure",
    id = "ListCapabilitiesInput",
    members = {
        clusterName = {
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

M.CapabilitySummary = {
    type = "structure",
    id = "CapabilitySummary",
    members = {
        capabilityName = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        version = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
    },
}

M.ListCapabilitiesOutput = {
    type = "structure",
    id = "ListCapabilitiesOutput",
    members = {
        capabilities = {
            type = "list",
            member = M.CapabilitySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListClustersInput = {
    type = "structure",
    id = "ListClustersInput",
    members = {
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
        include = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "include",
            },
        },
    },
}

M.ListClustersOutput = {
    type = "structure",
    id = "ListClustersOutput",
    members = {
        clusters = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.EksAnywhereSubscriptionStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    EXPIRING = "EXPIRING",
    EXPIRED = "EXPIRED",
    DELETING = "DELETING",
}

M.ListEksAnywhereSubscriptionsInput = {
    type = "structure",
    id = "ListEksAnywhereSubscriptionsInput",
    members = {
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
        includeStatus = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "includeStatus",
            },
        },
    },
}

M.ListEksAnywhereSubscriptionsOutput = {
    type = "structure",
    id = "ListEksAnywhereSubscriptionsOutput",
    members = {
        subscriptions = {
            type = "list",
            member = M.EksAnywhereSubscription,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFargateProfilesInput = {
    type = "structure",
    id = "ListFargateProfilesInput",
    members = {
        clusterName = {
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

M.ListFargateProfilesOutput = {
    type = "structure",
    id = "ListFargateProfilesOutput",
    members = {
        fargateProfileNames = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIdentityProviderConfigsInput = {
    type = "structure",
    id = "ListIdentityProviderConfigsInput",
    members = {
        clusterName = {
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

M.ListIdentityProviderConfigsOutput = {
    type = "structure",
    id = "ListIdentityProviderConfigsOutput",
    members = {
        identityProviderConfigs = {
            type = "list",
            member = M.IdentityProviderConfig,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InsightsFilter = {
    type = "structure",
    id = "InsightsFilter",
    members = {
        categories = {
            type = "list",
            member = { type = "string" },
        },
        kubernetesVersions = {
            type = "list",
            member = { type = "string" },
        },
        statuses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListInsightsInput = {
    type = "structure",
    id = "ListInsightsInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filter = M.InsightsFilter,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InsightSummary = {
    type = "structure",
    id = "InsightSummary",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        category = {
            type = "string",
        },
        kubernetesVersion = {
            type = "string",
        },
        lastRefreshTime = {
            type = "timestamp",
        },
        lastTransitionTime = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        insightStatus = M.InsightStatus,
    },
}

M.ListInsightsOutput = {
    type = "structure",
    id = "ListInsightsOutput",
    members = {
        insights = {
            type = "list",
            member = M.InsightSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNodegroupsInput = {
    type = "structure",
    id = "ListNodegroupsInput",
    members = {
        clusterName = {
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

M.ListNodegroupsOutput = {
    type = "structure",
    id = "ListNodegroupsOutput",
    members = {
        nodegroups = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPodIdentityAssociationsInput = {
    type = "structure",
    id = "ListPodIdentityAssociationsInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        serviceAccount = {
            type = "string",
            traits = {
                http_query = "serviceAccount",
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

M.PodIdentityAssociationSummary = {
    type = "structure",
    id = "PodIdentityAssociationSummary",
    members = {
        clusterName = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        serviceAccount = {
            type = "string",
        },
        associationArn = {
            type = "string",
        },
        associationId = {
            type = "string",
        },
        ownerArn = {
            type = "string",
        },
    },
}

M.ListPodIdentityAssociationsOutput = {
    type = "structure",
    id = "ListPodIdentityAssociationsOutput",
    members = {
        associations = {
            type = "list",
            member = M.PodIdentityAssociationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        message = {
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

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListUpdatesInput = {
    type = "structure",
    id = "ListUpdatesInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nodegroupName = {
            type = "string",
            traits = {
                http_query = "nodegroupName",
            },
        },
        addonName = {
            type = "string",
            traits = {
                http_query = "addonName",
            },
        },
        capabilityName = {
            type = "string",
            traits = {
                http_query = "capabilityName",
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

M.ListUpdatesOutput = {
    type = "structure",
    id = "ListUpdatesOutput",
    members = {
        updateIds = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ConnectorConfigProvider = {
    EKS_ANYWHERE = "EKS_ANYWHERE",
    ANTHOS = "ANTHOS",
    GKE = "GKE",
    AKS = "AKS",
    OPENSHIFT = "OPENSHIFT",
    TANZU = "TANZU",
    RANCHER = "RANCHER",
    EC2 = "EC2",
    OTHER = "OTHER",
}

M.ConnectorConfigRequest = {
    type = "structure",
    id = "ConnectorConfigRequest",
    members = {
        roleArn = {
            type = "string",
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
    },
}

M.RegisterClusterInput = {
    type = "structure",
    id = "RegisterClusterInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectorConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectorConfigRequest }),
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RegisterClusterOutput = {
    type = "structure",
    id = "RegisterClusterOutput",
    members = {
        cluster = M.Cluster,
    },
}

M.ResourcePropagationDelayException = {
    type = "structure",
    id = "ResourcePropagationDelayException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartInsightsRefreshInput = {
    type = "structure",
    id = "StartInsightsRefreshInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartInsightsRefreshOutput = {
    type = "structure",
    id = "StartInsightsRefreshOutput",
    members = {
        message = {
            type = "string",
        },
        status = {
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

M.UpdateAccessEntryInput = {
    type = "structure",
    id = "UpdateAccessEntryInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        kubernetesGroups = {
            type = "list",
            member = { type = "string" },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        username = {
            type = "string",
        },
    },
}

M.UpdateAccessEntryOutput = {
    type = "structure",
    id = "UpdateAccessEntryOutput",
    members = {
        accessEntry = M.AccessEntry,
    },
}

M.UpdateAddonInput = {
    type = "structure",
    id = "UpdateAddonInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        addonName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        addonVersion = {
            type = "string",
        },
        serviceAccountRoleArn = {
            type = "string",
        },
        resolveConflicts = {
            type = "string",
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        configurationValues = {
            type = "string",
        },
        podIdentityAssociations = {
            type = "list",
            member = M.AddonPodIdentityAssociations,
        },
    },
}

M.UpdateAddonOutput = {
    type = "structure",
    id = "UpdateAddonOutput",
    members = {
        update = M.Update,
    },
}

M.UpdateRoleMappings = {
    type = "structure",
    id = "UpdateRoleMappings",
    members = {
        addOrUpdateRoleMappings = {
            type = "list",
            member = M.ArgoCdRoleMapping,
        },
        removeRoleMappings = {
            type = "list",
            member = M.ArgoCdRoleMapping,
        },
    },
}

M.UpdateArgoCdConfig = {
    type = "structure",
    id = "UpdateArgoCdConfig",
    members = {
        rbacRoleMappings = M.UpdateRoleMappings,
        networkAccess = M.ArgoCdNetworkAccessConfigRequest,
    },
}

M.UpdateCapabilityConfiguration = {
    type = "structure",
    id = "UpdateCapabilityConfiguration",
    members = {
        argoCd = M.UpdateArgoCdConfig,
    },
}

M.UpdateCapabilityInput = {
    type = "structure",
    id = "UpdateCapabilityInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        capabilityName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        configuration = M.UpdateCapabilityConfiguration,
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        deletePropagationPolicy = {
            type = "string",
        },
    },
}

M.UpdateCapabilityOutput = {
    type = "structure",
    id = "UpdateCapabilityOutput",
    members = {
        update = M.Update,
    },
}

M.UpdateAccessConfigRequest = {
    type = "structure",
    id = "UpdateAccessConfigRequest",
    members = {
        authenticationMode = {
            type = "string",
        },
    },
}

M.UpdateClusterConfigInput = {
    type = "structure",
    id = "UpdateClusterConfigInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourcesVpcConfig = M.VpcConfigRequest,
        logging = M.Logging,
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        accessConfig = M.UpdateAccessConfigRequest,
        upgradePolicy = M.UpgradePolicyRequest,
        zonalShiftConfig = M.ZonalShiftConfigRequest,
        computeConfig = M.ComputeConfigRequest,
        kubernetesNetworkConfig = M.KubernetesNetworkConfigRequest,
        storageConfig = M.StorageConfigRequest,
        remoteNetworkConfig = M.RemoteNetworkConfigRequest,
        deletionProtection = {
            type = "boolean",
        },
        controlPlaneScalingConfig = M.ControlPlaneScalingConfig,
    },
}

M.UpdateClusterConfigOutput = {
    type = "structure",
    id = "UpdateClusterConfigOutput",
    members = {
        update = M.Update,
    },
}

M.InvalidStateException = {
    type = "structure",
    id = "InvalidStateException",
    error = "client",
    members = {
        clusterName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.UpdateClusterVersionInput = {
    type = "structure",
    id = "UpdateClusterVersionInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateClusterVersionOutput = {
    type = "structure",
    id = "UpdateClusterVersionOutput",
    members = {
        update = M.Update,
    },
}

M.UpdateEksAnywhereSubscriptionInput = {
    type = "structure",
    id = "UpdateEksAnywhereSubscriptionInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        autoRenew = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateEksAnywhereSubscriptionOutput = {
    type = "structure",
    id = "UpdateEksAnywhereSubscriptionOutput",
    members = {
        subscription = M.EksAnywhereSubscription,
    },
}

M.UpdateLabelsPayload = {
    type = "structure",
    id = "UpdateLabelsPayload",
    members = {
        addOrUpdateLabels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        removeLabels = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateTaintsPayload = {
    type = "structure",
    id = "UpdateTaintsPayload",
    members = {
        addOrUpdateTaints = {
            type = "list",
            member = M.Taint,
        },
        removeTaints = {
            type = "list",
            member = M.Taint,
        },
    },
}

M.UpdateNodegroupConfigInput = {
    type = "structure",
    id = "UpdateNodegroupConfigInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nodegroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        labels = M.UpdateLabelsPayload,
        taints = M.UpdateTaintsPayload,
        scalingConfig = M.NodegroupScalingConfig,
        updateConfig = M.NodegroupUpdateConfig,
        nodeRepairConfig = M.NodeRepairConfig,
        warmPoolConfig = M.WarmPoolConfig,
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateNodegroupConfigOutput = {
    type = "structure",
    id = "UpdateNodegroupConfigOutput",
    members = {
        update = M.Update,
    },
}

M.UpdateNodegroupVersionInput = {
    type = "structure",
    id = "UpdateNodegroupVersionInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nodegroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        version = {
            type = "string",
        },
        releaseVersion = {
            type = "string",
        },
        launchTemplate = M.LaunchTemplateSpecification,
        force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateNodegroupVersionOutput = {
    type = "structure",
    id = "UpdateNodegroupVersionOutput",
    members = {
        update = M.Update,
    },
}

M.UpdatePodIdentityAssociationInput = {
    type = "structure",
    id = "UpdatePodIdentityAssociationInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        disableSessionTags = {
            type = "boolean",
        },
        targetRoleArn = {
            type = "string",
        },
        policy = {
            type = "string",
        },
    },
}

M.UpdatePodIdentityAssociationOutput = {
    type = "structure",
    id = "UpdatePodIdentityAssociationOutput",
    members = {
        association = M.PodIdentityAssociation,
    },
}

return M
