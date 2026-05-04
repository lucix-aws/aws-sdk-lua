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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            member_type = "string",
        },
    },
}

M.AddonHealth = {
    type = "structure",
    members = {
        issues = {
            type = "list",
            member_type = "structure",
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
        health = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        publisher = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        marketplaceInformation = {
            type = "structure",
        },
        configurationValues = {
            type = "string",
        },
        podIdentityAssociations = {
            type = "list",
            member_type = "string",
        },
        namespaceConfig = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
        },
        defaultVersion = {
            type = "boolean",
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
            member_type = "string",
        },
        computeTypes = {
            type = "list",
            member_type = "string",
        },
        compatibilities = {
            type = "list",
            member_type = "structure",
        },
        requiresConfiguration = {
            type = "boolean",
        },
        requiresIamPermissions = {
            type = "boolean",
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
            member_type = "structure",
        },
        publisher = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        marketplaceInformation = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
        awsIdc = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        rbacRoleMappings = {
            type = "list",
            member_type = "structure",
        },
        networkAccess = {
            type = "structure",
        },
    },
}

M.ArgoCdNetworkAccessConfigResponse = {
    type = "structure",
    members = {
        vpceIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ArgoCdConfigResponse = {
    type = "structure",
    members = {
        namespace = {
            type = "string",
        },
        awsIdc = {
            type = "structure",
        },
        rbacRoleMappings = {
            type = "list",
            member_type = "structure",
        },
        networkAccess = {
            type = "structure",
        },
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
        accessScope = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatedAccessPolicy = {
    type = "structure",
    members = {
        policyArn = {
            type = "string",
        },
        accessScope = {
            type = "structure",
        },
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
        associatedAccessPolicy = {
            type = "structure",
        },
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
            member_type = "string",
        },
        provider = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssociateEncryptionConfigOutput = {
    type = "structure",
    members = {
        update = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        oidc = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientRequestToken = {
            type = "string",
        },
    },
}

M.AssociateIdentityProviderConfigOutput = {
    type = "structure",
    members = {
        update = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        accessEntry = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        configurationValues = {
            type = "string",
        },
        podIdentityAssociations = {
            type = "list",
            member_type = "structure",
        },
        namespaceConfig = {
            type = "structure",
        },
    },
}

M.CreateAddonOutput = {
    type = "structure",
    members = {
        addon = {
            type = "structure",
        },
    },
}

M.CapabilityConfigurationRequest = {
    type = "structure",
    members = {
        argoCd = {
            type = "structure",
        },
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
        configuration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        argoCd = {
            type = "structure",
        },
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
            member_type = "structure",
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
        configuration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        health = {
            type = "structure",
        },
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
        capability = {
            type = "structure",
        },
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
            member_type = "string",
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
        elasticLoadBalancing = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
        controlPlanePlacement = {
            type = "structure",
        },
    },
}

M.RemoteNodeNetwork = {
    type = "structure",
    members = {
        cidrs = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RemotePodNetwork = {
    type = "structure",
    members = {
        cidrs = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RemoteNetworkConfigRequest = {
    type = "structure",
    members = {
        remoteNodeNetworks = {
            type = "list",
            member_type = "structure",
        },
        remotePodNetworks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.VpcConfigRequest = {
    type = "structure",
    members = {
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        endpointPublicAccess = {
            type = "boolean",
        },
        endpointPrivateAccess = {
            type = "boolean",
        },
        publicAccessCidrs = {
            type = "list",
            member_type = "string",
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
        blockStorage = {
            type = "structure",
        },
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
        resourcesVpcConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        kubernetesNetworkConfig = {
            type = "structure",
        },
        logging = {
            type = "structure",
        },
        clientRequestToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        encryptionConfig = {
            type = "list",
            member_type = "structure",
        },
        outpostConfig = {
            type = "structure",
        },
        accessConfig = {
            type = "structure",
        },
        bootstrapSelfManagedAddons = {
            type = "boolean",
        },
        upgradePolicy = {
            type = "structure",
        },
        zonalShiftConfig = {
            type = "structure",
        },
        remoteNetworkConfig = {
            type = "structure",
        },
        computeConfig = {
            type = "structure",
        },
        storageConfig = {
            type = "structure",
        },
        deletionProtection = {
            type = "boolean",
        },
        controlPlaneScalingConfig = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
        },
    },
}

M.ClusterHealth = {
    type = "structure",
    members = {
        issues = {
            type = "list",
            member_type = "structure",
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
        oidc = {
            type = "structure",
        },
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
        elasticLoadBalancing = {
            type = "structure",
        },
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
            member_type = "string",
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
        controlPlanePlacement = {
            type = "structure",
        },
    },
}

M.RemoteNetworkConfigResponse = {
    type = "structure",
    members = {
        remoteNodeNetworks = {
            type = "list",
            member_type = "structure",
        },
        remotePodNetworks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.VpcConfigResponse = {
    type = "structure",
    members = {
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        clusterSecurityGroupId = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        endpointPublicAccess = {
            type = "boolean",
        },
        endpointPrivateAccess = {
            type = "boolean",
        },
        publicAccessCidrs = {
            type = "list",
            member_type = "string",
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
        blockStorage = {
            type = "structure",
        },
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
        resourcesVpcConfig = {
            type = "structure",
        },
        kubernetesNetworkConfig = {
            type = "structure",
        },
        logging = {
            type = "structure",
        },
        identity = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        certificateAuthority = {
            type = "structure",
        },
        clientRequestToken = {
            type = "string",
        },
        platformVersion = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        encryptionConfig = {
            type = "list",
            member_type = "structure",
        },
        connectorConfig = {
            type = "structure",
        },
        id = {
            type = "string",
        },
        health = {
            type = "structure",
        },
        outpostConfig = {
            type = "structure",
        },
        accessConfig = {
            type = "structure",
        },
        upgradePolicy = {
            type = "structure",
        },
        zonalShiftConfig = {
            type = "structure",
        },
        remoteNetworkConfig = {
            type = "structure",
        },
        computeConfig = {
            type = "structure",
        },
        storageConfig = {
            type = "structure",
        },
        deletionProtection = {
            type = "boolean",
        },
        controlPlaneScalingConfig = {
            type = "structure",
        },
    },
}

M.CreateClusterOutput = {
    type = "structure",
    members = {
        cluster = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
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
        term = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        licenseQuantity = {
            type = "number",
        },
        licenseType = {
            type = "string",
        },
        autoRenew = {
            type = "boolean",
        },
        clientRequestToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        licenseType = {
            type = "string",
        },
        term = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        autoRenew = {
            type = "boolean",
        },
        licenseArns = {
            type = "list",
            member_type = "string",
        },
        licenses = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateEksAnywhereSubscriptionOutput = {
    type = "structure",
    members = {
        subscription = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        selectors = {
            type = "list",
            member_type = "structure",
        },
        clientRequestToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
    },
}

M.FargateProfileHealth = {
    type = "structure",
    members = {
        issues = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        selectors = {
            type = "list",
            member_type = "structure",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        health = {
            type = "structure",
        },
    },
}

M.CreateFargateProfileOutput = {
    type = "structure",
    members = {
        fargateProfile = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        maxUnhealthyNodeThresholdPercentage = {
            type = "number",
        },
        maxParallelNodesRepairedCount = {
            type = "number",
        },
        maxParallelNodesRepairedPercentage = {
            type = "number",
        },
        nodeRepairConfigOverrides = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.NodegroupScalingConfig = {
    type = "structure",
    members = {
        minSize = {
            type = "number",
        },
        maxSize = {
            type = "number",
        },
        desiredSize = {
            type = "number",
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
            type = "number",
        },
        maxUnavailablePercentage = {
            type = "number",
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
            type = "number",
        },
        maxGroupPreparedCapacity = {
            type = "number",
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
        scalingConfig = {
            type = "structure",
        },
        diskSize = {
            type = "number",
        },
        subnets = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        instanceTypes = {
            type = "list",
            member_type = "string",
        },
        amiType = {
            type = "string",
        },
        remoteAccess = {
            type = "structure",
        },
        nodeRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        labels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        taints = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientRequestToken = {
            type = "string",
        },
        launchTemplate = {
            type = "structure",
        },
        updateConfig = {
            type = "structure",
        },
        nodeRepairConfig = {
            type = "structure",
        },
        capacityType = {
            type = "string",
        },
        version = {
            type = "string",
        },
        releaseVersion = {
            type = "string",
        },
        warmPoolConfig = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.NodegroupHealth = {
    type = "structure",
    members = {
        issues = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NodegroupResources = {
    type = "structure",
    members = {
        autoScalingGroups = {
            type = "list",
            member_type = "structure",
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
        scalingConfig = {
            type = "structure",
        },
        instanceTypes = {
            type = "list",
            member_type = "string",
        },
        subnets = {
            type = "list",
            member_type = "string",
        },
        remoteAccess = {
            type = "structure",
        },
        amiType = {
            type = "string",
        },
        nodeRole = {
            type = "string",
        },
        labels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        taints = {
            type = "list",
            member_type = "structure",
        },
        resources = {
            type = "structure",
        },
        diskSize = {
            type = "number",
        },
        health = {
            type = "structure",
        },
        updateConfig = {
            type = "structure",
        },
        nodeRepairConfig = {
            type = "structure",
        },
        launchTemplate = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        warmPoolConfig = {
            type = "structure",
        },
    },
}

M.CreateNodegroupOutput = {
    type = "structure",
    members = {
        nodegroup = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
        association = {
            type = "structure",
        },
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
                http_query = "preserve",
            },
        },
    },
}

M.DeleteAddonOutput = {
    type = "structure",
    members = {
        addon = {
            type = "structure",
        },
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
        capability = {
            type = "structure",
        },
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
        cluster = {
            type = "structure",
        },
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
        subscription = {
            type = "structure",
        },
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
        fargateProfile = {
            type = "structure",
        },
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
        nodegroup = {
            type = "structure",
        },
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
        association = {
            type = "structure",
        },
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
        cluster = {
            type = "structure",
        },
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
        accessEntry = {
            type = "structure",
        },
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
        addon = {
            type = "structure",
        },
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
            member_type = "structure",
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
        addonName = {
            type = "string",
            traits = {
                http_query = "addonName",
            },
        },
        types = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "types",
            },
        },
        publishers = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "publishers",
            },
        },
        owners = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        capability = {
            type = "structure",
        },
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
        cluster = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
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
        subscription = {
            type = "structure",
        },
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
        fargateProfile = {
            type = "structure",
        },
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
        identityProviderConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.IdentityProviderConfigResponse = {
    type = "structure",
    members = {
        oidc = {
            type = "structure",
        },
    },
}

M.DescribeIdentityProviderConfigOutput = {
    type = "structure",
    members = {
        identityProviderConfig = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.InsightCategorySpecificSummary = {
    type = "structure",
    members = {
        deprecationDetails = {
            type = "list",
            member_type = "structure",
        },
        addonCompatibilityDetails = {
            type = "list",
            member_type = "structure",
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
        insightStatus = {
            type = "structure",
        },
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
        insightStatus = {
            type = "structure",
        },
        recommendation = {
            type = "string",
        },
        additionalInfo = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        resources = {
            type = "list",
            member_type = "structure",
        },
        categorySpecificSummary = {
            type = "structure",
        },
    },
}

M.DescribeInsightOutput = {
    type = "structure",
    members = {
        insight = {
            type = "structure",
        },
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
        nodegroup = {
            type = "structure",
        },
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
        association = {
            type = "structure",
        },
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
        update = {
            type = "structure",
        },
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
        identityProviderConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
        },
    },
}

M.DisassociateIdentityProviderConfigOutput = {
    type = "structure",
    members = {
        update = {
            type = "structure",
        },
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

M.ListAccessEntriesOutput = {
    type = "structure",
    members = {
        accessEntries = {
            type = "list",
            member_type = "string",
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

M.ListAccessPoliciesOutput = {
    type = "structure",
    members = {
        accessPolicies = {
            type = "list",
            member_type = "structure",
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

M.ListAddonsOutput = {
    type = "structure",
    members = {
        addons = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
        include = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
        includeStatus = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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

M.ListFargateProfilesOutput = {
    type = "structure",
    members = {
        fargateProfileNames = {
            type = "list",
            member_type = "string",
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

M.ListIdentityProviderConfigsOutput = {
    type = "structure",
    members = {
        identityProviderConfigs = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        kubernetesVersions = {
            type = "list",
            member_type = "string",
        },
        statuses = {
            type = "list",
            member_type = "string",
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
        filter = {
            type = "structure",
        },
        maxResults = {
            type = "number",
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
        insightStatus = {
            type = "structure",
        },
    },
}

M.ListInsightsOutput = {
    type = "structure",
    members = {
        insights = {
            type = "list",
            member_type = "structure",
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

M.ListNodegroupsOutput = {
    type = "structure",
    members = {
        nodegroups = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            member_type = "string",
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
        connectorConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.RegisterClusterOutput = {
    type = "structure",
    members = {
        cluster = {
            type = "structure",
        },
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
            member_type = "string",
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
        accessEntry = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.UpdateAddonOutput = {
    type = "structure",
    members = {
        update = {
            type = "structure",
        },
    },
}

M.UpdateRoleMappings = {
    type = "structure",
    members = {
        addOrUpdateRoleMappings = {
            type = "list",
            member_type = "structure",
        },
        removeRoleMappings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateArgoCdConfig = {
    type = "structure",
    members = {
        rbacRoleMappings = {
            type = "structure",
        },
        networkAccess = {
            type = "structure",
        },
    },
}

M.UpdateCapabilityConfiguration = {
    type = "structure",
    members = {
        argoCd = {
            type = "structure",
        },
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
        configuration = {
            type = "structure",
        },
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
        update = {
            type = "structure",
        },
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
        resourcesVpcConfig = {
            type = "structure",
        },
        logging = {
            type = "structure",
        },
        clientRequestToken = {
            type = "string",
        },
        accessConfig = {
            type = "structure",
        },
        upgradePolicy = {
            type = "structure",
        },
        zonalShiftConfig = {
            type = "structure",
        },
        computeConfig = {
            type = "structure",
        },
        kubernetesNetworkConfig = {
            type = "structure",
        },
        storageConfig = {
            type = "structure",
        },
        remoteNetworkConfig = {
            type = "structure",
        },
        deletionProtection = {
            type = "boolean",
        },
        controlPlaneScalingConfig = {
            type = "structure",
        },
    },
}

M.UpdateClusterConfigOutput = {
    type = "structure",
    members = {
        update = {
            type = "structure",
        },
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
        },
    },
}

M.UpdateClusterVersionOutput = {
    type = "structure",
    members = {
        update = {
            type = "structure",
        },
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
        subscription = {
            type = "structure",
        },
    },
}

M.UpdateLabelsPayload = {
    type = "structure",
    members = {
        addOrUpdateLabels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        removeLabels = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateTaintsPayload = {
    type = "structure",
    members = {
        addOrUpdateTaints = {
            type = "list",
            member_type = "structure",
        },
        removeTaints = {
            type = "list",
            member_type = "structure",
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
        labels = {
            type = "structure",
        },
        taints = {
            type = "structure",
        },
        scalingConfig = {
            type = "structure",
        },
        updateConfig = {
            type = "structure",
        },
        nodeRepairConfig = {
            type = "structure",
        },
        warmPoolConfig = {
            type = "structure",
        },
        clientRequestToken = {
            type = "string",
        },
    },
}

M.UpdateNodegroupConfigOutput = {
    type = "structure",
    members = {
        update = {
            type = "structure",
        },
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
        launchTemplate = {
            type = "structure",
        },
        force = {
            type = "boolean",
        },
        clientRequestToken = {
            type = "string",
        },
    },
}

M.UpdateNodegroupVersionOutput = {
    type = "structure",
    members = {
        update = {
            type = "structure",
        },
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
        association = {
            type = "structure",
        },
    },
}

return M
