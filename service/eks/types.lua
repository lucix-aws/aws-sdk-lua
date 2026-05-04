local M = {}

M.AuthenticationMode = {
    API = "API",
    API_AND_CONFIG_MAP = "API_AND_CONFIG_MAP",
    CONFIG_MAP = "CONFIG_MAP",
}

M.AccessConfigResponse = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessEntry = {
    type = "structure",
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
    members = {
        issues = {
            type = "list",
            member = M.AddonIssue,
        },
    },
}

M.MarketplaceInformation = {
    type = "structure",
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
    members = {
        namespace = {
            type = "string",
        },
    },
}

M.AddonPodIdentityAssociations = {
    type = "structure",
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
    members = {
        vpceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ArgoCdConfigResponse = {
    type = "structure",
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
    members = {
        keyArn = {
            type = "string",
        },
    },
}

M.EncryptionConfig = {
    type = "structure",
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
    members = {
        update = M.Update,
    },
}

M.ClientException = {
    type = "structure",
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
        },
    },
}

M.AssociateIdentityProviderConfigOutput = {
    type = "structure",
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
    members = {
        name = {
            type = "string",
        },
    },
}

M.CreateAccessEntryInput = {
    type = "structure",
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
    members = {
        accessEntry = M.AccessEntry,
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
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
    members = {
        addon = M.Addon,
    },
}

M.CapabilityConfigurationRequest = {
    type = "structure",
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
    members = {
        capability = M.Capability,
    },
}

M.CreateAccessConfigRequest = {
    type = "structure",
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
    members = {
        tier = {
            type = "string",
        },
    },
}

M.ElasticLoadBalancing = {
    type = "structure",
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
    members = {
        clusterLogging = {
            type = "list",
            member = M.LogSetup,
        },
    },
}

M.ControlPlanePlacementRequest = {
    type = "structure",
    members = {
        groupName = {
            type = "string",
        },
    },
}

M.OutpostConfigRequest = {
    type = "structure",
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
    members = {
        cidrs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemotePodNetwork = {
    type = "structure",
    members = {
        cidrs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemoteNetworkConfigRequest = {
    type = "structure",
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
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.StorageConfigRequest = {
    type = "structure",
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
    members = {
        supportType = {
            type = "string",
        },
    },
}

M.ZonalShiftConfigRequest = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
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
    members = {
        data = {
            type = "string",
        },
    },
}

M.ComputeConfigResponse = {
    type = "structure",
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
    members = {
        issues = {
            type = "list",
            member = M.ClusterIssue,
        },
    },
}

M.OIDC = {
    type = "structure",
    members = {
        issuer = {
            type = "string",
        },
    },
}

M.Identity = {
    type = "structure",
    members = {
        oidc = M.OIDC,
    },
}

M.KubernetesNetworkConfigResponse = {
    type = "structure",
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
    members = {
        groupName = {
            type = "string",
        },
    },
}

M.OutpostConfigResponse = {
    type = "structure",
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
    members = {
        blockStorage = M.BlockStorage,
    },
}

M.UpgradePolicyResponse = {
    type = "structure",
    members = {
        supportType = {
            type = "string",
        },
    },
}

M.ZonalShiftConfigResponse = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.Cluster = {
    type = "structure",
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
    members = {
        cluster = M.Cluster,
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedAvailabilityZoneException = {
    type = "structure",
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
    members = {
        subscription = M.EksAnywhereSubscription,
    },
}

M.FargateProfileSelector = {
    type = "structure",
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
    members = {
        issues = {
            type = "list",
            member = M.Issue,
        },
    },
}

M.NodegroupResources = {
    type = "structure",
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
    members = {
        nodegroup = M.Nodegroup,
    },
}

M.CreatePodIdentityAssociationInput = {
    type = "structure",
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
    members = {
        association = M.PodIdentityAssociation,
    },
}

M.DeleteAccessEntryInput = {
    type = "structure",
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
}

M.DeleteAddonInput = {
    type = "structure",
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
    members = {
        addon = M.Addon,
    },
}

M.DeleteCapabilityInput = {
    type = "structure",
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
    members = {
        capability = M.Capability,
    },
}

M.DeleteClusterInput = {
    type = "structure",
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
    members = {
        cluster = M.Cluster,
    },
}

M.DeleteEksAnywhereSubscriptionInput = {
    type = "structure",
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
    members = {
        subscription = M.EksAnywhereSubscription,
    },
}

M.DeleteFargateProfileInput = {
    type = "structure",
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
    members = {
        fargateProfile = M.FargateProfile,
    },
}

M.DeleteNodegroupInput = {
    type = "structure",
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
    members = {
        nodegroup = M.Nodegroup,
    },
}

M.DeletePodIdentityAssociationInput = {
    type = "structure",
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
    members = {
        association = M.PodIdentityAssociation,
    },
}

M.DeregisterClusterInput = {
    type = "structure",
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
    members = {
        cluster = M.Cluster,
    },
}

M.DescribeAccessEntryInput = {
    type = "structure",
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
    members = {
        accessEntry = M.AccessEntry,
    },
}

M.DescribeAddonInput = {
    type = "structure",
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
    members = {
        addon = M.Addon,
    },
}

M.DescribeAddonConfigurationInput = {
    type = "structure",
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
    members = {
        capability = M.Capability,
    },
}

M.DescribeClusterInput = {
    type = "structure",
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
    members = {
        subscription = M.EksAnywhereSubscription,
    },
}

M.DescribeFargateProfileInput = {
    type = "structure",
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
    members = {
        fargateProfile = M.FargateProfile,
    },
}

M.IdentityProviderConfig = {
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

M.DescribeIdentityProviderConfigInput = {
    type = "structure",
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
    members = {
        oidc = M.OidcIdentityProviderConfig,
    },
}

M.DescribeIdentityProviderConfigOutput = {
    type = "structure",
    members = {
        identityProviderConfig = M.IdentityProviderConfigResponse,
    },
}

M.DescribeInsightInput = {
    type = "structure",
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
    members = {
        insight = M.Insight,
    },
}

M.DescribeInsightsRefreshInput = {
    type = "structure",
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
    members = {
        nodegroup = M.Nodegroup,
    },
}

M.DescribePodIdentityAssociationInput = {
    type = "structure",
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
    members = {
        association = M.PodIdentityAssociation,
    },
}

M.DescribeUpdateInput = {
    type = "structure",
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
    members = {
        update = M.Update,
    },
}

M.DisassociateAccessPolicyInput = {
    type = "structure",
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
}

M.DisassociateIdentityProviderConfigInput = {
    type = "structure",
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
        },
    },
}

M.DisassociateIdentityProviderConfigOutput = {
    type = "structure",
    members = {
        update = M.Update,
    },
}

M.ListAccessEntriesInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListUpdatesInput = {
    type = "structure",
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
    members = {
        cluster = M.Cluster,
    },
}

M.ResourcePropagationDelayException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartInsightsRefreshInput = {
    type = "structure",
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
}

M.UpdateAccessEntryInput = {
    type = "structure",
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
        },
        username = {
            type = "string",
        },
    },
}

M.UpdateAccessEntryOutput = {
    type = "structure",
    members = {
        accessEntry = M.AccessEntry,
    },
}

M.UpdateAddonInput = {
    type = "structure",
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
    members = {
        update = M.Update,
    },
}

M.UpdateRoleMappings = {
    type = "structure",
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
    members = {
        rbacRoleMappings = M.UpdateRoleMappings,
        networkAccess = M.ArgoCdNetworkAccessConfigRequest,
    },
}

M.UpdateCapabilityConfiguration = {
    type = "structure",
    members = {
        argoCd = M.UpdateArgoCdConfig,
    },
}

M.UpdateCapabilityInput = {
    type = "structure",
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
        },
        deletePropagationPolicy = {
            type = "string",
        },
    },
}

M.UpdateCapabilityOutput = {
    type = "structure",
    members = {
        update = M.Update,
    },
}

M.UpdateAccessConfigRequest = {
    type = "structure",
    members = {
        authenticationMode = {
            type = "string",
        },
    },
}

M.UpdateClusterConfigInput = {
    type = "structure",
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
    members = {
        update = M.Update,
    },
}

M.InvalidStateException = {
    type = "structure",
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
    members = {
        update = M.Update,
    },
}

M.UpdateEksAnywhereSubscriptionInput = {
    type = "structure",
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
        },
    },
}

M.UpdateEksAnywhereSubscriptionOutput = {
    type = "structure",
    members = {
        subscription = M.EksAnywhereSubscription,
    },
}

M.UpdateLabelsPayload = {
    type = "structure",
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
        },
    },
}

M.UpdateNodegroupConfigOutput = {
    type = "structure",
    members = {
        update = M.Update,
    },
}

M.UpdateNodegroupVersionInput = {
    type = "structure",
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
        },
    },
}

M.UpdateNodegroupVersionOutput = {
    type = "structure",
    members = {
        update = M.Update,
    },
}

M.UpdatePodIdentityAssociationInput = {
    type = "structure",
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
    members = {
        association = M.PodIdentityAssociation,
    },
}

return M
