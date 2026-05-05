local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.eks"

local M = {}

M.AccessConfigResponse = schema.new({
    id = id.from(_N, "AccessConfigResponse"),
    type = "structure",
    members = {
        bootstrapClusterCreatorAdminPermissions = schema.new({
            id = id.from(_N, "AccessConfigResponse", "bootstrapClusterCreatorAdminPermissions"),
            type = "boolean",
            name = "bootstrapClusterCreatorAdminPermissions",
            target_id = prelude.Boolean.id,
        }),
        authenticationMode = schema.new({
            id = id.from(_N, "AccessConfigResponse", "authenticationMode"),
            type = "string",
            name = "authenticationMode",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessEntry = schema.new({
    id = id.from(_N, "AccessEntry"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "AccessEntry", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        principalArn = schema.new({
            id = id.from(_N, "AccessEntry", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
        }),
        kubernetesGroups = schema.new({
            id = id.from(_N, "AccessEntry", "kubernetesGroups"),
            type = "list",
            name = "kubernetesGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        accessEntryArn = schema.new({
            id = id.from(_N, "AccessEntry", "accessEntryArn"),
            type = "string",
            name = "accessEntryArn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "AccessEntry", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "AccessEntry", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "AccessEntry", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        username = schema.new({
            id = id.from(_N, "AccessEntry", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AccessEntry", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessPolicy = schema.new({
    id = id.from(_N, "AccessPolicy"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AccessPolicy", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "AccessPolicy", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessScope = schema.new({
    id = id.from(_N, "AccessScope"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "AccessScope", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        namespaces = schema.new({
            id = id.from(_N, "AccessScope", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AddonIssue = schema.new({
    id = id.from(_N, "AddonIssue"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "AddonIssue", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "AddonIssue", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceIds = schema.new({
            id = id.from(_N, "AddonIssue", "resourceIds"),
            type = "list",
            name = "resourceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AddonHealth = schema.new({
    id = id.from(_N, "AddonHealth"),
    type = "structure",
    members = {
        issues = schema.new({
            id = id.from(_N, "AddonHealth", "issues"),
            type = "list",
            name = "issues",
            target_id = prelude.Document.id,
            list_member = M.AddonIssue,
        }),
    },
})

M.MarketplaceInformation = schema.new({
    id = id.from(_N, "MarketplaceInformation"),
    type = "structure",
    members = {
        productId = schema.new({
            id = id.from(_N, "MarketplaceInformation", "productId"),
            type = "string",
            name = "productId",
            target_id = prelude.String.id,
        }),
        productUrl = schema.new({
            id = id.from(_N, "MarketplaceInformation", "productUrl"),
            type = "string",
            name = "productUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.AddonNamespaceConfigResponse = schema.new({
    id = id.from(_N, "AddonNamespaceConfigResponse"),
    type = "structure",
    members = {
        namespace = schema.new({
            id = id.from(_N, "AddonNamespaceConfigResponse", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
        }),
    },
})

M.Addon = schema.new({
    id = id.from(_N, "Addon"),
    type = "structure",
    members = {
        addonName = schema.new({
            id = id.from(_N, "Addon", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
        }),
        clusterName = schema.new({
            id = id.from(_N, "Addon", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Addon", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        addonVersion = schema.new({
            id = id.from(_N, "Addon", "addonVersion"),
            type = "string",
            name = "addonVersion",
            target_id = prelude.String.id,
        }),
        health = schema.new({
            id = id.from(_N, "Addon", "health"),
            type = "structure",
            name = "health",
            target_id = id.from(_N, "AddonHealth"),
            target = M.AddonHealth,
        }),
        addonArn = schema.new({
            id = id.from(_N, "Addon", "addonArn"),
            type = "string",
            name = "addonArn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Addon", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "Addon", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
        }),
        serviceAccountRoleArn = schema.new({
            id = id.from(_N, "Addon", "serviceAccountRoleArn"),
            type = "string",
            name = "serviceAccountRoleArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Addon", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        publisher = schema.new({
            id = id.from(_N, "Addon", "publisher"),
            type = "string",
            name = "publisher",
            target_id = prelude.String.id,
        }),
        owner = schema.new({
            id = id.from(_N, "Addon", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
        }),
        marketplaceInformation = schema.new({
            id = id.from(_N, "Addon", "marketplaceInformation"),
            type = "structure",
            name = "marketplaceInformation",
            target_id = id.from(_N, "MarketplaceInformation"),
            target = M.MarketplaceInformation,
        }),
        configurationValues = schema.new({
            id = id.from(_N, "Addon", "configurationValues"),
            type = "string",
            name = "configurationValues",
            target_id = prelude.String.id,
        }),
        podIdentityAssociations = schema.new({
            id = id.from(_N, "Addon", "podIdentityAssociations"),
            type = "list",
            name = "podIdentityAssociations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        namespaceConfig = schema.new({
            id = id.from(_N, "Addon", "namespaceConfig"),
            type = "structure",
            name = "namespaceConfig",
            target_id = id.from(_N, "AddonNamespaceConfigResponse"),
            target = M.AddonNamespaceConfigResponse,
        }),
    },
})

M.AddonCompatibilityDetail = schema.new({
    id = id.from(_N, "AddonCompatibilityDetail"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AddonCompatibilityDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        compatibleVersions = schema.new({
            id = id.from(_N, "AddonCompatibilityDetail", "compatibleVersions"),
            type = "list",
            name = "compatibleVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.Compatibility = schema.new({
    id = id.from(_N, "Compatibility"),
    type = "structure",
    members = {
        clusterVersion = schema.new({
            id = id.from(_N, "Compatibility", "clusterVersion"),
            type = "string",
            name = "clusterVersion",
            target_id = prelude.String.id,
        }),
        platformVersions = schema.new({
            id = id.from(_N, "Compatibility", "platformVersions"),
            type = "list",
            name = "platformVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        defaultVersion = schema.new({
            id = id.from(_N, "Compatibility", "defaultVersion"),
            type = "boolean",
            name = "defaultVersion",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.AddonVersionInfo = schema.new({
    id = id.from(_N, "AddonVersionInfo"),
    type = "structure",
    members = {
        addonVersion = schema.new({
            id = id.from(_N, "AddonVersionInfo", "addonVersion"),
            type = "string",
            name = "addonVersion",
            target_id = prelude.String.id,
        }),
        architecture = schema.new({
            id = id.from(_N, "AddonVersionInfo", "architecture"),
            type = "list",
            name = "architecture",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        computeTypes = schema.new({
            id = id.from(_N, "AddonVersionInfo", "computeTypes"),
            type = "list",
            name = "computeTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        compatibilities = schema.new({
            id = id.from(_N, "AddonVersionInfo", "compatibilities"),
            type = "list",
            name = "compatibilities",
            target_id = prelude.Document.id,
            list_member = M.Compatibility,
        }),
        requiresConfiguration = schema.new({
            id = id.from(_N, "AddonVersionInfo", "requiresConfiguration"),
            type = "boolean",
            name = "requiresConfiguration",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        requiresIamPermissions = schema.new({
            id = id.from(_N, "AddonVersionInfo", "requiresIamPermissions"),
            type = "boolean",
            name = "requiresIamPermissions",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.AddonInfo = schema.new({
    id = id.from(_N, "AddonInfo"),
    type = "structure",
    members = {
        addonName = schema.new({
            id = id.from(_N, "AddonInfo", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AddonInfo", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        addonVersions = schema.new({
            id = id.from(_N, "AddonInfo", "addonVersions"),
            type = "list",
            name = "addonVersions",
            target_id = prelude.Document.id,
            list_member = M.AddonVersionInfo,
        }),
        publisher = schema.new({
            id = id.from(_N, "AddonInfo", "publisher"),
            type = "string",
            name = "publisher",
            target_id = prelude.String.id,
        }),
        owner = schema.new({
            id = id.from(_N, "AddonInfo", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
        }),
        marketplaceInformation = schema.new({
            id = id.from(_N, "AddonInfo", "marketplaceInformation"),
            type = "structure",
            name = "marketplaceInformation",
            target_id = id.from(_N, "MarketplaceInformation"),
            target = M.MarketplaceInformation,
        }),
        defaultNamespace = schema.new({
            id = id.from(_N, "AddonInfo", "defaultNamespace"),
            type = "string",
            name = "defaultNamespace",
            target_id = prelude.String.id,
        }),
    },
})

M.AddonNamespaceConfigRequest = schema.new({
    id = id.from(_N, "AddonNamespaceConfigRequest"),
    type = "structure",
    members = {
        namespace = schema.new({
            id = id.from(_N, "AddonNamespaceConfigRequest", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
        }),
    },
})

M.AddonPodIdentityAssociations = schema.new({
    id = id.from(_N, "AddonPodIdentityAssociations"),
    type = "structure",
    members = {
        serviceAccount = schema.new({
            id = id.from(_N, "AddonPodIdentityAssociations", "serviceAccount"),
            type = "string",
            name = "serviceAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "AddonPodIdentityAssociations", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddonPodIdentityConfiguration = schema.new({
    id = id.from(_N, "AddonPodIdentityConfiguration"),
    type = "structure",
    members = {
        serviceAccount = schema.new({
            id = id.from(_N, "AddonPodIdentityConfiguration", "serviceAccount"),
            type = "string",
            name = "serviceAccount",
            target_id = prelude.String.id,
        }),
        recommendedManagedPolicies = schema.new({
            id = id.from(_N, "AddonPodIdentityConfiguration", "recommendedManagedPolicies"),
            type = "list",
            name = "recommendedManagedPolicies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ArgoCdAwsIdcConfigRequest = schema.new({
    id = id.from(_N, "ArgoCdAwsIdcConfigRequest"),
    type = "structure",
    members = {
        idcInstanceArn = schema.new({
            id = id.from(_N, "ArgoCdAwsIdcConfigRequest", "idcInstanceArn"),
            type = "string",
            name = "idcInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        idcRegion = schema.new({
            id = id.from(_N, "ArgoCdAwsIdcConfigRequest", "idcRegion"),
            type = "string",
            name = "idcRegion",
            target_id = prelude.String.id,
        }),
    },
})

M.ArgoCdAwsIdcConfigResponse = schema.new({
    id = id.from(_N, "ArgoCdAwsIdcConfigResponse"),
    type = "structure",
    members = {
        idcInstanceArn = schema.new({
            id = id.from(_N, "ArgoCdAwsIdcConfigResponse", "idcInstanceArn"),
            type = "string",
            name = "idcInstanceArn",
            target_id = prelude.String.id,
        }),
        idcRegion = schema.new({
            id = id.from(_N, "ArgoCdAwsIdcConfigResponse", "idcRegion"),
            type = "string",
            name = "idcRegion",
            target_id = prelude.String.id,
        }),
        idcManagedApplicationArn = schema.new({
            id = id.from(_N, "ArgoCdAwsIdcConfigResponse", "idcManagedApplicationArn"),
            type = "string",
            name = "idcManagedApplicationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ArgoCdNetworkAccessConfigRequest = schema.new({
    id = id.from(_N, "ArgoCdNetworkAccessConfigRequest"),
    type = "structure",
    members = {
        vpceIds = schema.new({
            id = id.from(_N, "ArgoCdNetworkAccessConfigRequest", "vpceIds"),
            type = "list",
            name = "vpceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SsoIdentity = schema.new({
    id = id.from(_N, "SsoIdentity"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "SsoIdentity", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "SsoIdentity", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ArgoCdRoleMapping = schema.new({
    id = id.from(_N, "ArgoCdRoleMapping"),
    type = "structure",
    members = {
        role = schema.new({
            id = id.from(_N, "ArgoCdRoleMapping", "role"),
            type = "string",
            name = "role",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identities = schema.new({
            id = id.from(_N, "ArgoCdRoleMapping", "identities"),
            type = "list",
            name = "identities",
            target_id = prelude.Document.id,
            list_member = M.SsoIdentity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ArgoCdConfigRequest = schema.new({
    id = id.from(_N, "ArgoCdConfigRequest"),
    type = "structure",
    members = {
        namespace = schema.new({
            id = id.from(_N, "ArgoCdConfigRequest", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
        }),
        awsIdc = schema.new({
            id = id.from(_N, "ArgoCdConfigRequest", "awsIdc"),
            type = "structure",
            name = "awsIdc",
            target_id = id.from(_N, "ArgoCdAwsIdcConfigRequest"),
            target = M.ArgoCdAwsIdcConfigRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        rbacRoleMappings = schema.new({
            id = id.from(_N, "ArgoCdConfigRequest", "rbacRoleMappings"),
            type = "list",
            name = "rbacRoleMappings",
            target_id = prelude.Document.id,
            list_member = M.ArgoCdRoleMapping,
        }),
        networkAccess = schema.new({
            id = id.from(_N, "ArgoCdConfigRequest", "networkAccess"),
            type = "structure",
            name = "networkAccess",
            target_id = id.from(_N, "ArgoCdNetworkAccessConfigRequest"),
            target = M.ArgoCdNetworkAccessConfigRequest,
        }),
    },
})

M.ArgoCdNetworkAccessConfigResponse = schema.new({
    id = id.from(_N, "ArgoCdNetworkAccessConfigResponse"),
    type = "structure",
    members = {
        vpceIds = schema.new({
            id = id.from(_N, "ArgoCdNetworkAccessConfigResponse", "vpceIds"),
            type = "list",
            name = "vpceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ArgoCdConfigResponse = schema.new({
    id = id.from(_N, "ArgoCdConfigResponse"),
    type = "structure",
    members = {
        namespace = schema.new({
            id = id.from(_N, "ArgoCdConfigResponse", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
        }),
        awsIdc = schema.new({
            id = id.from(_N, "ArgoCdConfigResponse", "awsIdc"),
            type = "structure",
            name = "awsIdc",
            target_id = id.from(_N, "ArgoCdAwsIdcConfigResponse"),
            target = M.ArgoCdAwsIdcConfigResponse,
        }),
        rbacRoleMappings = schema.new({
            id = id.from(_N, "ArgoCdConfigResponse", "rbacRoleMappings"),
            type = "list",
            name = "rbacRoleMappings",
            target_id = prelude.Document.id,
            list_member = M.ArgoCdRoleMapping,
        }),
        networkAccess = schema.new({
            id = id.from(_N, "ArgoCdConfigResponse", "networkAccess"),
            type = "structure",
            name = "networkAccess",
            target_id = id.from(_N, "ArgoCdNetworkAccessConfigResponse"),
            target = M.ArgoCdNetworkAccessConfigResponse,
        }),
        serverUrl = schema.new({
            id = id.from(_N, "ArgoCdConfigResponse", "serverUrl"),
            type = "string",
            name = "serverUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateAccessPolicyInput = schema.new({
    id = id.from(_N, "AssociateAccessPolicyInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "AssociateAccessPolicyInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        principalArn = schema.new({
            id = id.from(_N, "AssociateAccessPolicyInput", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        policyArn = schema.new({
            id = id.from(_N, "AssociateAccessPolicyInput", "policyArn"),
            type = "string",
            name = "policyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessScope = schema.new({
            id = id.from(_N, "AssociateAccessPolicyInput", "accessScope"),
            type = "structure",
            name = "accessScope",
            target_id = id.from(_N, "AccessScope"),
            target = M.AccessScope,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociatedAccessPolicy = schema.new({
    id = id.from(_N, "AssociatedAccessPolicy"),
    type = "structure",
    members = {
        policyArn = schema.new({
            id = id.from(_N, "AssociatedAccessPolicy", "policyArn"),
            type = "string",
            name = "policyArn",
            target_id = prelude.String.id,
        }),
        accessScope = schema.new({
            id = id.from(_N, "AssociatedAccessPolicy", "accessScope"),
            type = "structure",
            name = "accessScope",
            target_id = id.from(_N, "AccessScope"),
            target = M.AccessScope,
        }),
        associatedAt = schema.new({
            id = id.from(_N, "AssociatedAccessPolicy", "associatedAt"),
            type = "timestamp",
            name = "associatedAt",
            target_id = prelude.Timestamp.id,
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "AssociatedAccessPolicy", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AssociateAccessPolicyOutput = schema.new({
    id = id.from(_N, "AssociateAccessPolicyOutput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "AssociateAccessPolicyOutput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        principalArn = schema.new({
            id = id.from(_N, "AssociateAccessPolicyOutput", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
        }),
        associatedAccessPolicy = schema.new({
            id = id.from(_N, "AssociateAccessPolicyOutput", "associatedAccessPolicy"),
            type = "structure",
            name = "associatedAccessPolicy",
            target_id = id.from(_N, "AssociatedAccessPolicy"),
            target = M.AssociatedAccessPolicy,
        }),
    },
})

M.InvalidParameterException = schema.new({
    id = id.from(_N, "InvalidParameterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        clusterName = schema.new({
            id = id.from(_N, "InvalidParameterException", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "InvalidParameterException", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
        }),
        fargateProfileName = schema.new({
            id = id.from(_N, "InvalidParameterException", "fargateProfileName"),
            type = "string",
            name = "fargateProfileName",
            target_id = prelude.String.id,
        }),
        addonName = schema.new({
            id = id.from(_N, "InvalidParameterException", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
        }),
        subscriptionId = schema.new({
            id = id.from(_N, "InvalidParameterException", "subscriptionId"),
            type = "string",
            name = "subscriptionId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "InvalidParameterException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        clusterName = schema.new({
            id = id.from(_N, "InvalidRequestException", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "InvalidRequestException", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
        }),
        addonName = schema.new({
            id = id.from(_N, "InvalidRequestException", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
        }),
        subscriptionId = schema.new({
            id = id.from(_N, "InvalidRequestException", "subscriptionId"),
            type = "string",
            name = "subscriptionId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "InvalidRequestException", "message"),
            type = "string",
            name = "message",
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
        clusterName = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
        }),
        fargateProfileName = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "fargateProfileName"),
            type = "string",
            name = "fargateProfileName",
            target_id = prelude.String.id,
        }),
        addonName = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
        }),
        subscriptionId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "subscriptionId"),
            type = "string",
            name = "subscriptionId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerException = schema.new({
    id = id.from(_N, "ServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ServerException", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "ServerException", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
        }),
        addonName = schema.new({
            id = id.from(_N, "ServerException", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
        }),
        subscriptionId = schema.new({
            id = id.from(_N, "ServerException", "subscriptionId"),
            type = "string",
            name = "subscriptionId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Provider = schema.new({
    id = id.from(_N, "Provider"),
    type = "structure",
    members = {
        keyArn = schema.new({
            id = id.from(_N, "Provider", "keyArn"),
            type = "string",
            name = "keyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.EncryptionConfig = schema.new({
    id = id.from(_N, "EncryptionConfig"),
    type = "structure",
    members = {
        resources = schema.new({
            id = id.from(_N, "EncryptionConfig", "resources"),
            type = "list",
            name = "resources",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        provider = schema.new({
            id = id.from(_N, "EncryptionConfig", "provider"),
            type = "structure",
            name = "provider",
            target_id = id.from(_N, "Provider"),
            target = M.Provider,
        }),
    },
})

M.AssociateEncryptionConfigInput = schema.new({
    id = id.from(_N, "AssociateEncryptionConfigInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "AssociateEncryptionConfigInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        encryptionConfig = schema.new({
            id = id.from(_N, "AssociateEncryptionConfigInput", "encryptionConfig"),
            type = "list",
            name = "encryptionConfig",
            target_id = prelude.Document.id,
            list_member = M.EncryptionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "AssociateEncryptionConfigInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.ErrorDetail = schema.new({
    id = id.from(_N, "ErrorDetail"),
    type = "structure",
    members = {
        errorCode = schema.new({
            id = id.from(_N, "ErrorDetail", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "ErrorDetail", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        resourceIds = schema.new({
            id = id.from(_N, "ErrorDetail", "resourceIds"),
            type = "list",
            name = "resourceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateParam = schema.new({
    id = id.from(_N, "UpdateParam"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "UpdateParam", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "UpdateParam", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.Update = schema.new({
    id = id.from(_N, "Update"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Update", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Update", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Update", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        params = schema.new({
            id = id.from(_N, "Update", "params"),
            type = "list",
            name = "params",
            target_id = prelude.Document.id,
            list_member = M.UpdateParam,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Update", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        errors = schema.new({
            id = id.from(_N, "Update", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.ErrorDetail,
        }),
    },
})

M.AssociateEncryptionConfigOutput = schema.new({
    id = id.from(_N, "AssociateEncryptionConfigOutput"),
    type = "structure",
    members = {
        update = schema.new({
            id = id.from(_N, "AssociateEncryptionConfigOutput", "update"),
            type = "structure",
            name = "update",
            target_id = id.from(_N, "Update"),
            target = M.Update,
        }),
    },
})

M.ClientException = schema.new({
    id = id.from(_N, "ClientException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ClientException", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "ClientException", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
        }),
        addonName = schema.new({
            id = id.from(_N, "ClientException", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
        }),
        subscriptionId = schema.new({
            id = id.from(_N, "ClientException", "subscriptionId"),
            type = "string",
            name = "subscriptionId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ClientException", "message"),
            type = "string",
            name = "message",
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
        clusterName = schema.new({
            id = id.from(_N, "ResourceInUseException", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "ResourceInUseException", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
        }),
        addonName = schema.new({
            id = id.from(_N, "ResourceInUseException", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ResourceInUseException", "message"),
            type = "string",
            name = "message",
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
        clusterName = schema.new({
            id = id.from(_N, "ThrottlingException", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.OidcIdentityProviderConfigRequest = schema.new({
    id = id.from(_N, "OidcIdentityProviderConfigRequest"),
    type = "structure",
    members = {
        identityProviderConfigName = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfigRequest", "identityProviderConfigName"),
            type = "string",
            name = "identityProviderConfigName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        issuerUrl = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfigRequest", "issuerUrl"),
            type = "string",
            name = "issuerUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfigRequest", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usernameClaim = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfigRequest", "usernameClaim"),
            type = "string",
            name = "usernameClaim",
            target_id = prelude.String.id,
        }),
        usernamePrefix = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfigRequest", "usernamePrefix"),
            type = "string",
            name = "usernamePrefix",
            target_id = prelude.String.id,
        }),
        groupsClaim = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfigRequest", "groupsClaim"),
            type = "string",
            name = "groupsClaim",
            target_id = prelude.String.id,
        }),
        groupsPrefix = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfigRequest", "groupsPrefix"),
            type = "string",
            name = "groupsPrefix",
            target_id = prelude.String.id,
        }),
        requiredClaims = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfigRequest", "requiredClaims"),
            type = "map",
            name = "requiredClaims",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.AssociateIdentityProviderConfigInput = schema.new({
    id = id.from(_N, "AssociateIdentityProviderConfigInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "AssociateIdentityProviderConfigInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        oidc = schema.new({
            id = id.from(_N, "AssociateIdentityProviderConfigInput", "oidc"),
            type = "structure",
            name = "oidc",
            target_id = id.from(_N, "OidcIdentityProviderConfigRequest"),
            target = M.OidcIdentityProviderConfigRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "AssociateIdentityProviderConfigInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "AssociateIdentityProviderConfigInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.AssociateIdentityProviderConfigOutput = schema.new({
    id = id.from(_N, "AssociateIdentityProviderConfigOutput"),
    type = "structure",
    members = {
        update = schema.new({
            id = id.from(_N, "AssociateIdentityProviderConfigOutput", "update"),
            type = "structure",
            name = "update",
            target_id = id.from(_N, "Update"),
            target = M.Update,
        }),
        tags = schema.new({
            id = id.from(_N, "AssociateIdentityProviderConfigOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.AutoScalingGroup = schema.new({
    id = id.from(_N, "AutoScalingGroup"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AutoScalingGroup", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAccessEntryInput = schema.new({
    id = id.from(_N, "CreateAccessEntryInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "CreateAccessEntryInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        principalArn = schema.new({
            id = id.from(_N, "CreateAccessEntryInput", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kubernetesGroups = schema.new({
            id = id.from(_N, "CreateAccessEntryInput", "kubernetesGroups"),
            type = "list",
            name = "kubernetesGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAccessEntryInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "CreateAccessEntryInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        username = schema.new({
            id = id.from(_N, "CreateAccessEntryInput", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "CreateAccessEntryInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAccessEntryOutput = schema.new({
    id = id.from(_N, "CreateAccessEntryOutput"),
    type = "structure",
    members = {
        accessEntry = schema.new({
            id = id.from(_N, "CreateAccessEntryOutput", "accessEntry"),
            type = "structure",
            name = "accessEntry",
            target_id = id.from(_N, "AccessEntry"),
            target = M.AccessEntry,
        }),
    },
})

M.ResourceLimitExceededException = schema.new({
    id = id.from(_N, "ResourceLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
        }),
        subscriptionId = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "subscriptionId"),
            type = "string",
            name = "subscriptionId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAddonInput = schema.new({
    id = id.from(_N, "CreateAddonInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "CreateAddonInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        addonName = schema.new({
            id = id.from(_N, "CreateAddonInput", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        addonVersion = schema.new({
            id = id.from(_N, "CreateAddonInput", "addonVersion"),
            type = "string",
            name = "addonVersion",
            target_id = prelude.String.id,
        }),
        serviceAccountRoleArn = schema.new({
            id = id.from(_N, "CreateAddonInput", "serviceAccountRoleArn"),
            type = "string",
            name = "serviceAccountRoleArn",
            target_id = prelude.String.id,
        }),
        resolveConflicts = schema.new({
            id = id.from(_N, "CreateAddonInput", "resolveConflicts"),
            type = "string",
            name = "resolveConflicts",
            target_id = prelude.String.id,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "CreateAddonInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAddonInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        configurationValues = schema.new({
            id = id.from(_N, "CreateAddonInput", "configurationValues"),
            type = "string",
            name = "configurationValues",
            target_id = prelude.String.id,
        }),
        podIdentityAssociations = schema.new({
            id = id.from(_N, "CreateAddonInput", "podIdentityAssociations"),
            type = "list",
            name = "podIdentityAssociations",
            target_id = prelude.Document.id,
            list_member = M.AddonPodIdentityAssociations,
        }),
        namespaceConfig = schema.new({
            id = id.from(_N, "CreateAddonInput", "namespaceConfig"),
            type = "structure",
            name = "namespaceConfig",
            target_id = id.from(_N, "AddonNamespaceConfigRequest"),
            target = M.AddonNamespaceConfigRequest,
        }),
    },
})

M.CreateAddonOutput = schema.new({
    id = id.from(_N, "CreateAddonOutput"),
    type = "structure",
    members = {
        addon = schema.new({
            id = id.from(_N, "CreateAddonOutput", "addon"),
            type = "structure",
            name = "addon",
            target_id = id.from(_N, "Addon"),
            target = M.Addon,
        }),
    },
})

M.CapabilityConfigurationRequest = schema.new({
    id = id.from(_N, "CapabilityConfigurationRequest"),
    type = "structure",
    members = {
        argoCd = schema.new({
            id = id.from(_N, "CapabilityConfigurationRequest", "argoCd"),
            type = "structure",
            name = "argoCd",
            target_id = id.from(_N, "ArgoCdConfigRequest"),
            target = M.ArgoCdConfigRequest,
        }),
    },
})

M.CreateCapabilityInput = schema.new({
    id = id.from(_N, "CreateCapabilityInput"),
    type = "structure",
    members = {
        capabilityName = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "capabilityName"),
            type = "string",
            name = "capabilityName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterName = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "CapabilityConfigurationRequest"),
            target = M.CapabilityConfigurationRequest,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        deletePropagationPolicy = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "deletePropagationPolicy"),
            type = "string",
            name = "deletePropagationPolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CapabilityConfigurationResponse = schema.new({
    id = id.from(_N, "CapabilityConfigurationResponse"),
    type = "structure",
    members = {
        argoCd = schema.new({
            id = id.from(_N, "CapabilityConfigurationResponse", "argoCd"),
            type = "structure",
            name = "argoCd",
            target_id = id.from(_N, "ArgoCdConfigResponse"),
            target = M.ArgoCdConfigResponse,
        }),
    },
})

M.CapabilityIssue = schema.new({
    id = id.from(_N, "CapabilityIssue"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "CapabilityIssue", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "CapabilityIssue", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CapabilityHealth = schema.new({
    id = id.from(_N, "CapabilityHealth"),
    type = "structure",
    members = {
        issues = schema.new({
            id = id.from(_N, "CapabilityHealth", "issues"),
            type = "list",
            name = "issues",
            target_id = prelude.Document.id,
            list_member = M.CapabilityIssue,
        }),
    },
})

M.Capability = schema.new({
    id = id.from(_N, "Capability"),
    type = "structure",
    members = {
        capabilityName = schema.new({
            id = id.from(_N, "Capability", "capabilityName"),
            type = "string",
            name = "capabilityName",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Capability", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        clusterName = schema.new({
            id = id.from(_N, "Capability", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Capability", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "Capability", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Capability", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "Capability", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "Capability", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "CapabilityConfigurationResponse"),
            target = M.CapabilityConfigurationResponse,
        }),
        tags = schema.new({
            id = id.from(_N, "Capability", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        health = schema.new({
            id = id.from(_N, "Capability", "health"),
            type = "structure",
            name = "health",
            target_id = id.from(_N, "CapabilityHealth"),
            target = M.CapabilityHealth,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Capability", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "Capability", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
        }),
        deletePropagationPolicy = schema.new({
            id = id.from(_N, "Capability", "deletePropagationPolicy"),
            type = "string",
            name = "deletePropagationPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCapabilityOutput = schema.new({
    id = id.from(_N, "CreateCapabilityOutput"),
    type = "structure",
    members = {
        capability = schema.new({
            id = id.from(_N, "CreateCapabilityOutput", "capability"),
            type = "structure",
            name = "capability",
            target_id = id.from(_N, "Capability"),
            target = M.Capability,
        }),
    },
})

M.CreateAccessConfigRequest = schema.new({
    id = id.from(_N, "CreateAccessConfigRequest"),
    type = "structure",
    members = {
        bootstrapClusterCreatorAdminPermissions = schema.new({
            id = id.from(_N, "CreateAccessConfigRequest", "bootstrapClusterCreatorAdminPermissions"),
            type = "boolean",
            name = "bootstrapClusterCreatorAdminPermissions",
            target_id = prelude.Boolean.id,
        }),
        authenticationMode = schema.new({
            id = id.from(_N, "CreateAccessConfigRequest", "authenticationMode"),
            type = "string",
            name = "authenticationMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ComputeConfigRequest = schema.new({
    id = id.from(_N, "ComputeConfigRequest"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "ComputeConfigRequest", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        nodePools = schema.new({
            id = id.from(_N, "ComputeConfigRequest", "nodePools"),
            type = "list",
            name = "nodePools",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nodeRoleArn = schema.new({
            id = id.from(_N, "ComputeConfigRequest", "nodeRoleArn"),
            type = "string",
            name = "nodeRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ControlPlaneScalingConfig = schema.new({
    id = id.from(_N, "ControlPlaneScalingConfig"),
    type = "structure",
    members = {
        tier = schema.new({
            id = id.from(_N, "ControlPlaneScalingConfig", "tier"),
            type = "string",
            name = "tier",
            target_id = prelude.String.id,
        }),
    },
})

M.ElasticLoadBalancing = schema.new({
    id = id.from(_N, "ElasticLoadBalancing"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "ElasticLoadBalancing", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.KubernetesNetworkConfigRequest = schema.new({
    id = id.from(_N, "KubernetesNetworkConfigRequest"),
    type = "structure",
    members = {
        serviceIpv4Cidr = schema.new({
            id = id.from(_N, "KubernetesNetworkConfigRequest", "serviceIpv4Cidr"),
            type = "string",
            name = "serviceIpv4Cidr",
            target_id = prelude.String.id,
        }),
        ipFamily = schema.new({
            id = id.from(_N, "KubernetesNetworkConfigRequest", "ipFamily"),
            type = "string",
            name = "ipFamily",
            target_id = prelude.String.id,
        }),
        elasticLoadBalancing = schema.new({
            id = id.from(_N, "KubernetesNetworkConfigRequest", "elasticLoadBalancing"),
            type = "structure",
            name = "elasticLoadBalancing",
            target_id = id.from(_N, "ElasticLoadBalancing"),
            target = M.ElasticLoadBalancing,
        }),
    },
})

M.LogSetup = schema.new({
    id = id.from(_N, "LogSetup"),
    type = "structure",
    members = {
        types = schema.new({
            id = id.from(_N, "LogSetup", "types"),
            type = "list",
            name = "types",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        enabled = schema.new({
            id = id.from(_N, "LogSetup", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.Logging = schema.new({
    id = id.from(_N, "Logging"),
    type = "structure",
    members = {
        clusterLogging = schema.new({
            id = id.from(_N, "Logging", "clusterLogging"),
            type = "list",
            name = "clusterLogging",
            target_id = prelude.Document.id,
            list_member = M.LogSetup,
        }),
    },
})

M.ControlPlanePlacementRequest = schema.new({
    id = id.from(_N, "ControlPlanePlacementRequest"),
    type = "structure",
    members = {
        groupName = schema.new({
            id = id.from(_N, "ControlPlanePlacementRequest", "groupName"),
            type = "string",
            name = "groupName",
            target_id = prelude.String.id,
        }),
    },
})

M.OutpostConfigRequest = schema.new({
    id = id.from(_N, "OutpostConfigRequest"),
    type = "structure",
    members = {
        outpostArns = schema.new({
            id = id.from(_N, "OutpostConfigRequest", "outpostArns"),
            type = "list",
            name = "outpostArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        controlPlaneInstanceType = schema.new({
            id = id.from(_N, "OutpostConfigRequest", "controlPlaneInstanceType"),
            type = "string",
            name = "controlPlaneInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        controlPlanePlacement = schema.new({
            id = id.from(_N, "OutpostConfigRequest", "controlPlanePlacement"),
            type = "structure",
            name = "controlPlanePlacement",
            target_id = id.from(_N, "ControlPlanePlacementRequest"),
            target = M.ControlPlanePlacementRequest,
        }),
    },
})

M.RemoteNodeNetwork = schema.new({
    id = id.from(_N, "RemoteNodeNetwork"),
    type = "structure",
    members = {
        cidrs = schema.new({
            id = id.from(_N, "RemoteNodeNetwork", "cidrs"),
            type = "list",
            name = "cidrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RemotePodNetwork = schema.new({
    id = id.from(_N, "RemotePodNetwork"),
    type = "structure",
    members = {
        cidrs = schema.new({
            id = id.from(_N, "RemotePodNetwork", "cidrs"),
            type = "list",
            name = "cidrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RemoteNetworkConfigRequest = schema.new({
    id = id.from(_N, "RemoteNetworkConfigRequest"),
    type = "structure",
    members = {
        remoteNodeNetworks = schema.new({
            id = id.from(_N, "RemoteNetworkConfigRequest", "remoteNodeNetworks"),
            type = "list",
            name = "remoteNodeNetworks",
            target_id = prelude.Document.id,
            list_member = M.RemoteNodeNetwork,
        }),
        remotePodNetworks = schema.new({
            id = id.from(_N, "RemoteNetworkConfigRequest", "remotePodNetworks"),
            type = "list",
            name = "remotePodNetworks",
            target_id = prelude.Document.id,
            list_member = M.RemotePodNetwork,
        }),
    },
})

M.VpcConfigRequest = schema.new({
    id = id.from(_N, "VpcConfigRequest"),
    type = "structure",
    members = {
        subnetIds = schema.new({
            id = id.from(_N, "VpcConfigRequest", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "VpcConfigRequest", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        endpointPublicAccess = schema.new({
            id = id.from(_N, "VpcConfigRequest", "endpointPublicAccess"),
            type = "boolean",
            name = "endpointPublicAccess",
            target_id = prelude.Boolean.id,
        }),
        endpointPrivateAccess = schema.new({
            id = id.from(_N, "VpcConfigRequest", "endpointPrivateAccess"),
            type = "boolean",
            name = "endpointPrivateAccess",
            target_id = prelude.Boolean.id,
        }),
        publicAccessCidrs = schema.new({
            id = id.from(_N, "VpcConfigRequest", "publicAccessCidrs"),
            type = "list",
            name = "publicAccessCidrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BlockStorage = schema.new({
    id = id.from(_N, "BlockStorage"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "BlockStorage", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.StorageConfigRequest = schema.new({
    id = id.from(_N, "StorageConfigRequest"),
    type = "structure",
    members = {
        blockStorage = schema.new({
            id = id.from(_N, "StorageConfigRequest", "blockStorage"),
            type = "structure",
            name = "blockStorage",
            target_id = id.from(_N, "BlockStorage"),
            target = M.BlockStorage,
        }),
    },
})

M.UpgradePolicyRequest = schema.new({
    id = id.from(_N, "UpgradePolicyRequest"),
    type = "structure",
    members = {
        supportType = schema.new({
            id = id.from(_N, "UpgradePolicyRequest", "supportType"),
            type = "string",
            name = "supportType",
            target_id = prelude.String.id,
        }),
    },
})

M.ZonalShiftConfigRequest = schema.new({
    id = id.from(_N, "ZonalShiftConfigRequest"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "ZonalShiftConfigRequest", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateClusterInput = schema.new({
    id = id.from(_N, "CreateClusterInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateClusterInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "CreateClusterInput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateClusterInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourcesVpcConfig = schema.new({
            id = id.from(_N, "CreateClusterInput", "resourcesVpcConfig"),
            type = "structure",
            name = "resourcesVpcConfig",
            target_id = id.from(_N, "VpcConfigRequest"),
            target = M.VpcConfigRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kubernetesNetworkConfig = schema.new({
            id = id.from(_N, "CreateClusterInput", "kubernetesNetworkConfig"),
            type = "structure",
            name = "kubernetesNetworkConfig",
            target_id = id.from(_N, "KubernetesNetworkConfigRequest"),
            target = M.KubernetesNetworkConfigRequest,
        }),
        logging = schema.new({
            id = id.from(_N, "CreateClusterInput", "logging"),
            type = "structure",
            name = "logging",
            target_id = id.from(_N, "Logging"),
            target = M.Logging,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "CreateClusterInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateClusterInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        encryptionConfig = schema.new({
            id = id.from(_N, "CreateClusterInput", "encryptionConfig"),
            type = "list",
            name = "encryptionConfig",
            target_id = prelude.Document.id,
            list_member = M.EncryptionConfig,
        }),
        outpostConfig = schema.new({
            id = id.from(_N, "CreateClusterInput", "outpostConfig"),
            type = "structure",
            name = "outpostConfig",
            target_id = id.from(_N, "OutpostConfigRequest"),
            target = M.OutpostConfigRequest,
        }),
        accessConfig = schema.new({
            id = id.from(_N, "CreateClusterInput", "accessConfig"),
            type = "structure",
            name = "accessConfig",
            target_id = id.from(_N, "CreateAccessConfigRequest"),
            target = M.CreateAccessConfigRequest,
        }),
        bootstrapSelfManagedAddons = schema.new({
            id = id.from(_N, "CreateClusterInput", "bootstrapSelfManagedAddons"),
            type = "boolean",
            name = "bootstrapSelfManagedAddons",
            target_id = prelude.Boolean.id,
        }),
        upgradePolicy = schema.new({
            id = id.from(_N, "CreateClusterInput", "upgradePolicy"),
            type = "structure",
            name = "upgradePolicy",
            target_id = id.from(_N, "UpgradePolicyRequest"),
            target = M.UpgradePolicyRequest,
        }),
        zonalShiftConfig = schema.new({
            id = id.from(_N, "CreateClusterInput", "zonalShiftConfig"),
            type = "structure",
            name = "zonalShiftConfig",
            target_id = id.from(_N, "ZonalShiftConfigRequest"),
            target = M.ZonalShiftConfigRequest,
        }),
        remoteNetworkConfig = schema.new({
            id = id.from(_N, "CreateClusterInput", "remoteNetworkConfig"),
            type = "structure",
            name = "remoteNetworkConfig",
            target_id = id.from(_N, "RemoteNetworkConfigRequest"),
            target = M.RemoteNetworkConfigRequest,
        }),
        computeConfig = schema.new({
            id = id.from(_N, "CreateClusterInput", "computeConfig"),
            type = "structure",
            name = "computeConfig",
            target_id = id.from(_N, "ComputeConfigRequest"),
            target = M.ComputeConfigRequest,
        }),
        storageConfig = schema.new({
            id = id.from(_N, "CreateClusterInput", "storageConfig"),
            type = "structure",
            name = "storageConfig",
            target_id = id.from(_N, "StorageConfigRequest"),
            target = M.StorageConfigRequest,
        }),
        deletionProtection = schema.new({
            id = id.from(_N, "CreateClusterInput", "deletionProtection"),
            type = "boolean",
            name = "deletionProtection",
            target_id = prelude.Boolean.id,
        }),
        controlPlaneScalingConfig = schema.new({
            id = id.from(_N, "CreateClusterInput", "controlPlaneScalingConfig"),
            type = "structure",
            name = "controlPlaneScalingConfig",
            target_id = id.from(_N, "ControlPlaneScalingConfig"),
            target = M.ControlPlaneScalingConfig,
        }),
    },
})

M.Certificate = schema.new({
    id = id.from(_N, "Certificate"),
    type = "structure",
    members = {
        data = schema.new({
            id = id.from(_N, "Certificate", "data"),
            type = "string",
            name = "data",
            target_id = prelude.String.id,
        }),
    },
})

M.ComputeConfigResponse = schema.new({
    id = id.from(_N, "ComputeConfigResponse"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "ComputeConfigResponse", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        nodePools = schema.new({
            id = id.from(_N, "ComputeConfigResponse", "nodePools"),
            type = "list",
            name = "nodePools",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nodeRoleArn = schema.new({
            id = id.from(_N, "ComputeConfigResponse", "nodeRoleArn"),
            type = "string",
            name = "nodeRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectorConfigResponse = schema.new({
    id = id.from(_N, "ConnectorConfigResponse"),
    type = "structure",
    members = {
        activationId = schema.new({
            id = id.from(_N, "ConnectorConfigResponse", "activationId"),
            type = "string",
            name = "activationId",
            target_id = prelude.String.id,
        }),
        activationCode = schema.new({
            id = id.from(_N, "ConnectorConfigResponse", "activationCode"),
            type = "string",
            name = "activationCode",
            target_id = prelude.String.id,
        }),
        activationExpiry = schema.new({
            id = id.from(_N, "ConnectorConfigResponse", "activationExpiry"),
            type = "timestamp",
            name = "activationExpiry",
            target_id = prelude.Timestamp.id,
        }),
        provider = schema.new({
            id = id.from(_N, "ConnectorConfigResponse", "provider"),
            type = "string",
            name = "provider",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "ConnectorConfigResponse", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ClusterIssue = schema.new({
    id = id.from(_N, "ClusterIssue"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "ClusterIssue", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ClusterIssue", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceIds = schema.new({
            id = id.from(_N, "ClusterIssue", "resourceIds"),
            type = "list",
            name = "resourceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ClusterHealth = schema.new({
    id = id.from(_N, "ClusterHealth"),
    type = "structure",
    members = {
        issues = schema.new({
            id = id.from(_N, "ClusterHealth", "issues"),
            type = "list",
            name = "issues",
            target_id = prelude.Document.id,
            list_member = M.ClusterIssue,
        }),
    },
})

M.OIDC = schema.new({
    id = id.from(_N, "OIDC"),
    type = "structure",
    members = {
        issuer = schema.new({
            id = id.from(_N, "OIDC", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
        }),
    },
})

M.Identity = schema.new({
    id = id.from(_N, "Identity"),
    type = "structure",
    members = {
        oidc = schema.new({
            id = id.from(_N, "Identity", "oidc"),
            type = "structure",
            name = "oidc",
            target_id = id.from(_N, "OIDC"),
            target = M.OIDC,
        }),
    },
})

M.KubernetesNetworkConfigResponse = schema.new({
    id = id.from(_N, "KubernetesNetworkConfigResponse"),
    type = "structure",
    members = {
        serviceIpv4Cidr = schema.new({
            id = id.from(_N, "KubernetesNetworkConfigResponse", "serviceIpv4Cidr"),
            type = "string",
            name = "serviceIpv4Cidr",
            target_id = prelude.String.id,
        }),
        serviceIpv6Cidr = schema.new({
            id = id.from(_N, "KubernetesNetworkConfigResponse", "serviceIpv6Cidr"),
            type = "string",
            name = "serviceIpv6Cidr",
            target_id = prelude.String.id,
        }),
        ipFamily = schema.new({
            id = id.from(_N, "KubernetesNetworkConfigResponse", "ipFamily"),
            type = "string",
            name = "ipFamily",
            target_id = prelude.String.id,
        }),
        elasticLoadBalancing = schema.new({
            id = id.from(_N, "KubernetesNetworkConfigResponse", "elasticLoadBalancing"),
            type = "structure",
            name = "elasticLoadBalancing",
            target_id = id.from(_N, "ElasticLoadBalancing"),
            target = M.ElasticLoadBalancing,
        }),
    },
})

M.ControlPlanePlacementResponse = schema.new({
    id = id.from(_N, "ControlPlanePlacementResponse"),
    type = "structure",
    members = {
        groupName = schema.new({
            id = id.from(_N, "ControlPlanePlacementResponse", "groupName"),
            type = "string",
            name = "groupName",
            target_id = prelude.String.id,
        }),
    },
})

M.OutpostConfigResponse = schema.new({
    id = id.from(_N, "OutpostConfigResponse"),
    type = "structure",
    members = {
        outpostArns = schema.new({
            id = id.from(_N, "OutpostConfigResponse", "outpostArns"),
            type = "list",
            name = "outpostArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        controlPlaneInstanceType = schema.new({
            id = id.from(_N, "OutpostConfigResponse", "controlPlaneInstanceType"),
            type = "string",
            name = "controlPlaneInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        controlPlanePlacement = schema.new({
            id = id.from(_N, "OutpostConfigResponse", "controlPlanePlacement"),
            type = "structure",
            name = "controlPlanePlacement",
            target_id = id.from(_N, "ControlPlanePlacementResponse"),
            target = M.ControlPlanePlacementResponse,
        }),
    },
})

M.RemoteNetworkConfigResponse = schema.new({
    id = id.from(_N, "RemoteNetworkConfigResponse"),
    type = "structure",
    members = {
        remoteNodeNetworks = schema.new({
            id = id.from(_N, "RemoteNetworkConfigResponse", "remoteNodeNetworks"),
            type = "list",
            name = "remoteNodeNetworks",
            target_id = prelude.Document.id,
            list_member = M.RemoteNodeNetwork,
        }),
        remotePodNetworks = schema.new({
            id = id.from(_N, "RemoteNetworkConfigResponse", "remotePodNetworks"),
            type = "list",
            name = "remotePodNetworks",
            target_id = prelude.Document.id,
            list_member = M.RemotePodNetwork,
        }),
    },
})

M.VpcConfigResponse = schema.new({
    id = id.from(_N, "VpcConfigResponse"),
    type = "structure",
    members = {
        subnetIds = schema.new({
            id = id.from(_N, "VpcConfigResponse", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "VpcConfigResponse", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        clusterSecurityGroupId = schema.new({
            id = id.from(_N, "VpcConfigResponse", "clusterSecurityGroupId"),
            type = "string",
            name = "clusterSecurityGroupId",
            target_id = prelude.String.id,
        }),
        vpcId = schema.new({
            id = id.from(_N, "VpcConfigResponse", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
        }),
        endpointPublicAccess = schema.new({
            id = id.from(_N, "VpcConfigResponse", "endpointPublicAccess"),
            type = "boolean",
            name = "endpointPublicAccess",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        endpointPrivateAccess = schema.new({
            id = id.from(_N, "VpcConfigResponse", "endpointPrivateAccess"),
            type = "boolean",
            name = "endpointPrivateAccess",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        publicAccessCidrs = schema.new({
            id = id.from(_N, "VpcConfigResponse", "publicAccessCidrs"),
            type = "list",
            name = "publicAccessCidrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.StorageConfigResponse = schema.new({
    id = id.from(_N, "StorageConfigResponse"),
    type = "structure",
    members = {
        blockStorage = schema.new({
            id = id.from(_N, "StorageConfigResponse", "blockStorage"),
            type = "structure",
            name = "blockStorage",
            target_id = id.from(_N, "BlockStorage"),
            target = M.BlockStorage,
        }),
    },
})

M.UpgradePolicyResponse = schema.new({
    id = id.from(_N, "UpgradePolicyResponse"),
    type = "structure",
    members = {
        supportType = schema.new({
            id = id.from(_N, "UpgradePolicyResponse", "supportType"),
            type = "string",
            name = "supportType",
            target_id = prelude.String.id,
        }),
    },
})

M.ZonalShiftConfigResponse = schema.new({
    id = id.from(_N, "ZonalShiftConfigResponse"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "ZonalShiftConfigResponse", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.Cluster = schema.new({
    id = id.from(_N, "Cluster"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Cluster", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Cluster", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Cluster", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        version = schema.new({
            id = id.from(_N, "Cluster", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        endpoint = schema.new({
            id = id.from(_N, "Cluster", "endpoint"),
            type = "string",
            name = "endpoint",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "Cluster", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        resourcesVpcConfig = schema.new({
            id = id.from(_N, "Cluster", "resourcesVpcConfig"),
            type = "structure",
            name = "resourcesVpcConfig",
            target_id = id.from(_N, "VpcConfigResponse"),
            target = M.VpcConfigResponse,
        }),
        kubernetesNetworkConfig = schema.new({
            id = id.from(_N, "Cluster", "kubernetesNetworkConfig"),
            type = "structure",
            name = "kubernetesNetworkConfig",
            target_id = id.from(_N, "KubernetesNetworkConfigResponse"),
            target = M.KubernetesNetworkConfigResponse,
        }),
        logging = schema.new({
            id = id.from(_N, "Cluster", "logging"),
            type = "structure",
            name = "logging",
            target_id = id.from(_N, "Logging"),
            target = M.Logging,
        }),
        identity = schema.new({
            id = id.from(_N, "Cluster", "identity"),
            type = "structure",
            name = "identity",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        status = schema.new({
            id = id.from(_N, "Cluster", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        certificateAuthority = schema.new({
            id = id.from(_N, "Cluster", "certificateAuthority"),
            type = "structure",
            name = "certificateAuthority",
            target_id = id.from(_N, "Certificate"),
            target = M.Certificate,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "Cluster", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
        }),
        platformVersion = schema.new({
            id = id.from(_N, "Cluster", "platformVersion"),
            type = "string",
            name = "platformVersion",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Cluster", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        encryptionConfig = schema.new({
            id = id.from(_N, "Cluster", "encryptionConfig"),
            type = "list",
            name = "encryptionConfig",
            target_id = prelude.Document.id,
            list_member = M.EncryptionConfig,
        }),
        connectorConfig = schema.new({
            id = id.from(_N, "Cluster", "connectorConfig"),
            type = "structure",
            name = "connectorConfig",
            target_id = id.from(_N, "ConnectorConfigResponse"),
            target = M.ConnectorConfigResponse,
        }),
        id = schema.new({
            id = id.from(_N, "Cluster", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        health = schema.new({
            id = id.from(_N, "Cluster", "health"),
            type = "structure",
            name = "health",
            target_id = id.from(_N, "ClusterHealth"),
            target = M.ClusterHealth,
        }),
        outpostConfig = schema.new({
            id = id.from(_N, "Cluster", "outpostConfig"),
            type = "structure",
            name = "outpostConfig",
            target_id = id.from(_N, "OutpostConfigResponse"),
            target = M.OutpostConfigResponse,
        }),
        accessConfig = schema.new({
            id = id.from(_N, "Cluster", "accessConfig"),
            type = "structure",
            name = "accessConfig",
            target_id = id.from(_N, "AccessConfigResponse"),
            target = M.AccessConfigResponse,
        }),
        upgradePolicy = schema.new({
            id = id.from(_N, "Cluster", "upgradePolicy"),
            type = "structure",
            name = "upgradePolicy",
            target_id = id.from(_N, "UpgradePolicyResponse"),
            target = M.UpgradePolicyResponse,
        }),
        zonalShiftConfig = schema.new({
            id = id.from(_N, "Cluster", "zonalShiftConfig"),
            type = "structure",
            name = "zonalShiftConfig",
            target_id = id.from(_N, "ZonalShiftConfigResponse"),
            target = M.ZonalShiftConfigResponse,
        }),
        remoteNetworkConfig = schema.new({
            id = id.from(_N, "Cluster", "remoteNetworkConfig"),
            type = "structure",
            name = "remoteNetworkConfig",
            target_id = id.from(_N, "RemoteNetworkConfigResponse"),
            target = M.RemoteNetworkConfigResponse,
        }),
        computeConfig = schema.new({
            id = id.from(_N, "Cluster", "computeConfig"),
            type = "structure",
            name = "computeConfig",
            target_id = id.from(_N, "ComputeConfigResponse"),
            target = M.ComputeConfigResponse,
        }),
        storageConfig = schema.new({
            id = id.from(_N, "Cluster", "storageConfig"),
            type = "structure",
            name = "storageConfig",
            target_id = id.from(_N, "StorageConfigResponse"),
            target = M.StorageConfigResponse,
        }),
        deletionProtection = schema.new({
            id = id.from(_N, "Cluster", "deletionProtection"),
            type = "boolean",
            name = "deletionProtection",
            target_id = prelude.Boolean.id,
        }),
        controlPlaneScalingConfig = schema.new({
            id = id.from(_N, "Cluster", "controlPlaneScalingConfig"),
            type = "structure",
            name = "controlPlaneScalingConfig",
            target_id = id.from(_N, "ControlPlaneScalingConfig"),
            target = M.ControlPlaneScalingConfig,
        }),
    },
})

M.CreateClusterOutput = schema.new({
    id = id.from(_N, "CreateClusterOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "CreateClusterOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedAvailabilityZoneException = schema.new({
    id = id.from(_N, "UnsupportedAvailabilityZoneException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnsupportedAvailabilityZoneException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        clusterName = schema.new({
            id = id.from(_N, "UnsupportedAvailabilityZoneException", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "UnsupportedAvailabilityZoneException", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
        }),
        validZones = schema.new({
            id = id.from(_N, "UnsupportedAvailabilityZoneException", "validZones"),
            type = "list",
            name = "validZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.EksAnywhereSubscriptionTerm = schema.new({
    id = id.from(_N, "EksAnywhereSubscriptionTerm"),
    type = "structure",
    members = {
        duration = schema.new({
            id = id.from(_N, "EksAnywhereSubscriptionTerm", "duration"),
            type = "integer",
            name = "duration",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        unit = schema.new({
            id = id.from(_N, "EksAnywhereSubscriptionTerm", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEksAnywhereSubscriptionInput = schema.new({
    id = id.from(_N, "CreateEksAnywhereSubscriptionInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateEksAnywhereSubscriptionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        term = schema.new({
            id = id.from(_N, "CreateEksAnywhereSubscriptionInput", "term"),
            type = "structure",
            name = "term",
            target_id = id.from(_N, "EksAnywhereSubscriptionTerm"),
            target = M.EksAnywhereSubscriptionTerm,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        licenseQuantity = schema.new({
            id = id.from(_N, "CreateEksAnywhereSubscriptionInput", "licenseQuantity"),
            type = "integer",
            name = "licenseQuantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        licenseType = schema.new({
            id = id.from(_N, "CreateEksAnywhereSubscriptionInput", "licenseType"),
            type = "string",
            name = "licenseType",
            target_id = prelude.String.id,
        }),
        autoRenew = schema.new({
            id = id.from(_N, "CreateEksAnywhereSubscriptionInput", "autoRenew"),
            type = "boolean",
            name = "autoRenew",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "CreateEksAnywhereSubscriptionInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateEksAnywhereSubscriptionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.License = schema.new({
    id = id.from(_N, "License"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "License", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        token = schema.new({
            id = id.from(_N, "License", "token"),
            type = "string",
            name = "token",
            target_id = prelude.String.id,
        }),
    },
})

M.EksAnywhereSubscription = schema.new({
    id = id.from(_N, "EksAnywhereSubscription"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        effectiveDate = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "effectiveDate"),
            type = "timestamp",
            name = "effectiveDate",
            target_id = prelude.Timestamp.id,
        }),
        expirationDate = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "expirationDate"),
            type = "timestamp",
            name = "expirationDate",
            target_id = prelude.Timestamp.id,
        }),
        licenseQuantity = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "licenseQuantity"),
            type = "integer",
            name = "licenseQuantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        licenseType = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "licenseType"),
            type = "string",
            name = "licenseType",
            target_id = prelude.String.id,
        }),
        term = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "term"),
            type = "structure",
            name = "term",
            target_id = id.from(_N, "EksAnywhereSubscriptionTerm"),
            target = M.EksAnywhereSubscriptionTerm,
        }),
        status = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        autoRenew = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "autoRenew"),
            type = "boolean",
            name = "autoRenew",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        licenseArns = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "licenseArns"),
            type = "list",
            name = "licenseArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        licenses = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "licenses"),
            type = "list",
            name = "licenses",
            target_id = prelude.Document.id,
            list_member = M.License,
        }),
        tags = schema.new({
            id = id.from(_N, "EksAnywhereSubscription", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateEksAnywhereSubscriptionOutput = schema.new({
    id = id.from(_N, "CreateEksAnywhereSubscriptionOutput"),
    type = "structure",
    members = {
        subscription = schema.new({
            id = id.from(_N, "CreateEksAnywhereSubscriptionOutput", "subscription"),
            type = "structure",
            name = "subscription",
            target_id = id.from(_N, "EksAnywhereSubscription"),
            target = M.EksAnywhereSubscription,
        }),
    },
})

M.FargateProfileSelector = schema.new({
    id = id.from(_N, "FargateProfileSelector"),
    type = "structure",
    members = {
        namespace = schema.new({
            id = id.from(_N, "FargateProfileSelector", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
        }),
        labels = schema.new({
            id = id.from(_N, "FargateProfileSelector", "labels"),
            type = "map",
            name = "labels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateFargateProfileInput = schema.new({
    id = id.from(_N, "CreateFargateProfileInput"),
    type = "structure",
    members = {
        fargateProfileName = schema.new({
            id = id.from(_N, "CreateFargateProfileInput", "fargateProfileName"),
            type = "string",
            name = "fargateProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterName = schema.new({
            id = id.from(_N, "CreateFargateProfileInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        podExecutionRoleArn = schema.new({
            id = id.from(_N, "CreateFargateProfileInput", "podExecutionRoleArn"),
            type = "string",
            name = "podExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnets = schema.new({
            id = id.from(_N, "CreateFargateProfileInput", "subnets"),
            type = "list",
            name = "subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        selectors = schema.new({
            id = id.from(_N, "CreateFargateProfileInput", "selectors"),
            type = "list",
            name = "selectors",
            target_id = prelude.Document.id,
            list_member = M.FargateProfileSelector,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "CreateFargateProfileInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateFargateProfileInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.FargateProfileIssue = schema.new({
    id = id.from(_N, "FargateProfileIssue"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "FargateProfileIssue", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "FargateProfileIssue", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceIds = schema.new({
            id = id.from(_N, "FargateProfileIssue", "resourceIds"),
            type = "list",
            name = "resourceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.FargateProfileHealth = schema.new({
    id = id.from(_N, "FargateProfileHealth"),
    type = "structure",
    members = {
        issues = schema.new({
            id = id.from(_N, "FargateProfileHealth", "issues"),
            type = "list",
            name = "issues",
            target_id = prelude.Document.id,
            list_member = M.FargateProfileIssue,
        }),
    },
})

M.FargateProfile = schema.new({
    id = id.from(_N, "FargateProfile"),
    type = "structure",
    members = {
        fargateProfileName = schema.new({
            id = id.from(_N, "FargateProfile", "fargateProfileName"),
            type = "string",
            name = "fargateProfileName",
            target_id = prelude.String.id,
        }),
        fargateProfileArn = schema.new({
            id = id.from(_N, "FargateProfile", "fargateProfileArn"),
            type = "string",
            name = "fargateProfileArn",
            target_id = prelude.String.id,
        }),
        clusterName = schema.new({
            id = id.from(_N, "FargateProfile", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "FargateProfile", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        podExecutionRoleArn = schema.new({
            id = id.from(_N, "FargateProfile", "podExecutionRoleArn"),
            type = "string",
            name = "podExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        subnets = schema.new({
            id = id.from(_N, "FargateProfile", "subnets"),
            type = "list",
            name = "subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        selectors = schema.new({
            id = id.from(_N, "FargateProfile", "selectors"),
            type = "list",
            name = "selectors",
            target_id = prelude.Document.id,
            list_member = M.FargateProfileSelector,
        }),
        status = schema.new({
            id = id.from(_N, "FargateProfile", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "FargateProfile", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        health = schema.new({
            id = id.from(_N, "FargateProfile", "health"),
            type = "structure",
            name = "health",
            target_id = id.from(_N, "FargateProfileHealth"),
            target = M.FargateProfileHealth,
        }),
    },
})

M.CreateFargateProfileOutput = schema.new({
    id = id.from(_N, "CreateFargateProfileOutput"),
    type = "structure",
    members = {
        fargateProfile = schema.new({
            id = id.from(_N, "CreateFargateProfileOutput", "fargateProfile"),
            type = "structure",
            name = "fargateProfile",
            target_id = id.from(_N, "FargateProfile"),
            target = M.FargateProfile,
        }),
    },
})

M.LaunchTemplateSpecification = schema.new({
    id = id.from(_N, "LaunchTemplateSpecification"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "LaunchTemplateSpecification", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "LaunchTemplateSpecification", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "LaunchTemplateSpecification", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
    },
})

M.NodeRepairConfigOverrides = schema.new({
    id = id.from(_N, "NodeRepairConfigOverrides"),
    type = "structure",
    members = {
        nodeMonitoringCondition = schema.new({
            id = id.from(_N, "NodeRepairConfigOverrides", "nodeMonitoringCondition"),
            type = "string",
            name = "nodeMonitoringCondition",
            target_id = prelude.String.id,
        }),
        nodeUnhealthyReason = schema.new({
            id = id.from(_N, "NodeRepairConfigOverrides", "nodeUnhealthyReason"),
            type = "string",
            name = "nodeUnhealthyReason",
            target_id = prelude.String.id,
        }),
        minRepairWaitTimeMins = schema.new({
            id = id.from(_N, "NodeRepairConfigOverrides", "minRepairWaitTimeMins"),
            type = "integer",
            name = "minRepairWaitTimeMins",
            target_id = prelude.Integer.id,
        }),
        repairAction = schema.new({
            id = id.from(_N, "NodeRepairConfigOverrides", "repairAction"),
            type = "string",
            name = "repairAction",
            target_id = prelude.String.id,
        }),
    },
})

M.NodeRepairConfig = schema.new({
    id = id.from(_N, "NodeRepairConfig"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "NodeRepairConfig", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        maxUnhealthyNodeThresholdCount = schema.new({
            id = id.from(_N, "NodeRepairConfig", "maxUnhealthyNodeThresholdCount"),
            type = "integer",
            name = "maxUnhealthyNodeThresholdCount",
            target_id = prelude.Integer.id,
        }),
        maxUnhealthyNodeThresholdPercentage = schema.new({
            id = id.from(_N, "NodeRepairConfig", "maxUnhealthyNodeThresholdPercentage"),
            type = "integer",
            name = "maxUnhealthyNodeThresholdPercentage",
            target_id = prelude.Integer.id,
        }),
        maxParallelNodesRepairedCount = schema.new({
            id = id.from(_N, "NodeRepairConfig", "maxParallelNodesRepairedCount"),
            type = "integer",
            name = "maxParallelNodesRepairedCount",
            target_id = prelude.Integer.id,
        }),
        maxParallelNodesRepairedPercentage = schema.new({
            id = id.from(_N, "NodeRepairConfig", "maxParallelNodesRepairedPercentage"),
            type = "integer",
            name = "maxParallelNodesRepairedPercentage",
            target_id = prelude.Integer.id,
        }),
        nodeRepairConfigOverrides = schema.new({
            id = id.from(_N, "NodeRepairConfig", "nodeRepairConfigOverrides"),
            type = "list",
            name = "nodeRepairConfigOverrides",
            target_id = prelude.Document.id,
            list_member = M.NodeRepairConfigOverrides,
        }),
    },
})

M.RemoteAccessConfig = schema.new({
    id = id.from(_N, "RemoteAccessConfig"),
    type = "structure",
    members = {
        ec2SshKey = schema.new({
            id = id.from(_N, "RemoteAccessConfig", "ec2SshKey"),
            type = "string",
            name = "ec2SshKey",
            target_id = prelude.String.id,
        }),
        sourceSecurityGroups = schema.new({
            id = id.from(_N, "RemoteAccessConfig", "sourceSecurityGroups"),
            type = "list",
            name = "sourceSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.NodegroupScalingConfig = schema.new({
    id = id.from(_N, "NodegroupScalingConfig"),
    type = "structure",
    members = {
        minSize = schema.new({
            id = id.from(_N, "NodegroupScalingConfig", "minSize"),
            type = "integer",
            name = "minSize",
            target_id = prelude.Integer.id,
        }),
        maxSize = schema.new({
            id = id.from(_N, "NodegroupScalingConfig", "maxSize"),
            type = "integer",
            name = "maxSize",
            target_id = prelude.Integer.id,
        }),
        desiredSize = schema.new({
            id = id.from(_N, "NodegroupScalingConfig", "desiredSize"),
            type = "integer",
            name = "desiredSize",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Taint = schema.new({
    id = id.from(_N, "Taint"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Taint", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "Taint", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        effect = schema.new({
            id = id.from(_N, "Taint", "effect"),
            type = "string",
            name = "effect",
            target_id = prelude.String.id,
        }),
    },
})

M.NodegroupUpdateConfig = schema.new({
    id = id.from(_N, "NodegroupUpdateConfig"),
    type = "structure",
    members = {
        maxUnavailable = schema.new({
            id = id.from(_N, "NodegroupUpdateConfig", "maxUnavailable"),
            type = "integer",
            name = "maxUnavailable",
            target_id = prelude.Integer.id,
        }),
        maxUnavailablePercentage = schema.new({
            id = id.from(_N, "NodegroupUpdateConfig", "maxUnavailablePercentage"),
            type = "integer",
            name = "maxUnavailablePercentage",
            target_id = prelude.Integer.id,
        }),
        updateStrategy = schema.new({
            id = id.from(_N, "NodegroupUpdateConfig", "updateStrategy"),
            type = "string",
            name = "updateStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.WarmPoolConfig = schema.new({
    id = id.from(_N, "WarmPoolConfig"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "WarmPoolConfig", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        minSize = schema.new({
            id = id.from(_N, "WarmPoolConfig", "minSize"),
            type = "integer",
            name = "minSize",
            target_id = prelude.Integer.id,
        }),
        maxGroupPreparedCapacity = schema.new({
            id = id.from(_N, "WarmPoolConfig", "maxGroupPreparedCapacity"),
            type = "integer",
            name = "maxGroupPreparedCapacity",
            target_id = prelude.Integer.id,
        }),
        poolState = schema.new({
            id = id.from(_N, "WarmPoolConfig", "poolState"),
            type = "string",
            name = "poolState",
            target_id = prelude.String.id,
        }),
        reuseOnScaleIn = schema.new({
            id = id.from(_N, "WarmPoolConfig", "reuseOnScaleIn"),
            type = "boolean",
            name = "reuseOnScaleIn",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateNodegroupInput = schema.new({
    id = id.from(_N, "CreateNodegroupInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scalingConfig = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "scalingConfig"),
            type = "structure",
            name = "scalingConfig",
            target_id = id.from(_N, "NodegroupScalingConfig"),
            target = M.NodegroupScalingConfig,
        }),
        diskSize = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "diskSize"),
            type = "integer",
            name = "diskSize",
            target_id = prelude.Integer.id,
        }),
        subnets = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "subnets"),
            type = "list",
            name = "subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceTypes = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "instanceTypes"),
            type = "list",
            name = "instanceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        amiType = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "amiType"),
            type = "string",
            name = "amiType",
            target_id = prelude.String.id,
        }),
        remoteAccess = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "remoteAccess"),
            type = "structure",
            name = "remoteAccess",
            target_id = id.from(_N, "RemoteAccessConfig"),
            target = M.RemoteAccessConfig,
        }),
        nodeRole = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "nodeRole"),
            type = "string",
            name = "nodeRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        labels = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "labels"),
            type = "map",
            name = "labels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        taints = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "taints"),
            type = "list",
            name = "taints",
            target_id = prelude.Document.id,
            list_member = M.Taint,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        launchTemplate = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "launchTemplate"),
            type = "structure",
            name = "launchTemplate",
            target_id = id.from(_N, "LaunchTemplateSpecification"),
            target = M.LaunchTemplateSpecification,
        }),
        updateConfig = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "updateConfig"),
            type = "structure",
            name = "updateConfig",
            target_id = id.from(_N, "NodegroupUpdateConfig"),
            target = M.NodegroupUpdateConfig,
        }),
        nodeRepairConfig = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "nodeRepairConfig"),
            type = "structure",
            name = "nodeRepairConfig",
            target_id = id.from(_N, "NodeRepairConfig"),
            target = M.NodeRepairConfig,
        }),
        capacityType = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "capacityType"),
            type = "string",
            name = "capacityType",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        releaseVersion = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "releaseVersion"),
            type = "string",
            name = "releaseVersion",
            target_id = prelude.String.id,
        }),
        warmPoolConfig = schema.new({
            id = id.from(_N, "CreateNodegroupInput", "warmPoolConfig"),
            type = "structure",
            name = "warmPoolConfig",
            target_id = id.from(_N, "WarmPoolConfig"),
            target = M.WarmPoolConfig,
        }),
    },
})

M.Issue = schema.new({
    id = id.from(_N, "Issue"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "Issue", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "Issue", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceIds = schema.new({
            id = id.from(_N, "Issue", "resourceIds"),
            type = "list",
            name = "resourceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.NodegroupHealth = schema.new({
    id = id.from(_N, "NodegroupHealth"),
    type = "structure",
    members = {
        issues = schema.new({
            id = id.from(_N, "NodegroupHealth", "issues"),
            type = "list",
            name = "issues",
            target_id = prelude.Document.id,
            list_member = M.Issue,
        }),
    },
})

M.NodegroupResources = schema.new({
    id = id.from(_N, "NodegroupResources"),
    type = "structure",
    members = {
        autoScalingGroups = schema.new({
            id = id.from(_N, "NodegroupResources", "autoScalingGroups"),
            type = "list",
            name = "autoScalingGroups",
            target_id = prelude.Document.id,
            list_member = M.AutoScalingGroup,
        }),
        remoteAccessSecurityGroup = schema.new({
            id = id.from(_N, "NodegroupResources", "remoteAccessSecurityGroup"),
            type = "string",
            name = "remoteAccessSecurityGroup",
            target_id = prelude.String.id,
        }),
    },
})

M.Nodegroup = schema.new({
    id = id.from(_N, "Nodegroup"),
    type = "structure",
    members = {
        nodegroupName = schema.new({
            id = id.from(_N, "Nodegroup", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
        }),
        nodegroupArn = schema.new({
            id = id.from(_N, "Nodegroup", "nodegroupArn"),
            type = "string",
            name = "nodegroupArn",
            target_id = prelude.String.id,
        }),
        clusterName = schema.new({
            id = id.from(_N, "Nodegroup", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "Nodegroup", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        releaseVersion = schema.new({
            id = id.from(_N, "Nodegroup", "releaseVersion"),
            type = "string",
            name = "releaseVersion",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Nodegroup", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "Nodegroup", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "Nodegroup", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        capacityType = schema.new({
            id = id.from(_N, "Nodegroup", "capacityType"),
            type = "string",
            name = "capacityType",
            target_id = prelude.String.id,
        }),
        scalingConfig = schema.new({
            id = id.from(_N, "Nodegroup", "scalingConfig"),
            type = "structure",
            name = "scalingConfig",
            target_id = id.from(_N, "NodegroupScalingConfig"),
            target = M.NodegroupScalingConfig,
        }),
        instanceTypes = schema.new({
            id = id.from(_N, "Nodegroup", "instanceTypes"),
            type = "list",
            name = "instanceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        subnets = schema.new({
            id = id.from(_N, "Nodegroup", "subnets"),
            type = "list",
            name = "subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        remoteAccess = schema.new({
            id = id.from(_N, "Nodegroup", "remoteAccess"),
            type = "structure",
            name = "remoteAccess",
            target_id = id.from(_N, "RemoteAccessConfig"),
            target = M.RemoteAccessConfig,
        }),
        amiType = schema.new({
            id = id.from(_N, "Nodegroup", "amiType"),
            type = "string",
            name = "amiType",
            target_id = prelude.String.id,
        }),
        nodeRole = schema.new({
            id = id.from(_N, "Nodegroup", "nodeRole"),
            type = "string",
            name = "nodeRole",
            target_id = prelude.String.id,
        }),
        labels = schema.new({
            id = id.from(_N, "Nodegroup", "labels"),
            type = "map",
            name = "labels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        taints = schema.new({
            id = id.from(_N, "Nodegroup", "taints"),
            type = "list",
            name = "taints",
            target_id = prelude.Document.id,
            list_member = M.Taint,
        }),
        resources = schema.new({
            id = id.from(_N, "Nodegroup", "resources"),
            type = "structure",
            name = "resources",
            target_id = id.from(_N, "NodegroupResources"),
            target = M.NodegroupResources,
        }),
        diskSize = schema.new({
            id = id.from(_N, "Nodegroup", "diskSize"),
            type = "integer",
            name = "diskSize",
            target_id = prelude.Integer.id,
        }),
        health = schema.new({
            id = id.from(_N, "Nodegroup", "health"),
            type = "structure",
            name = "health",
            target_id = id.from(_N, "NodegroupHealth"),
            target = M.NodegroupHealth,
        }),
        updateConfig = schema.new({
            id = id.from(_N, "Nodegroup", "updateConfig"),
            type = "structure",
            name = "updateConfig",
            target_id = id.from(_N, "NodegroupUpdateConfig"),
            target = M.NodegroupUpdateConfig,
        }),
        nodeRepairConfig = schema.new({
            id = id.from(_N, "Nodegroup", "nodeRepairConfig"),
            type = "structure",
            name = "nodeRepairConfig",
            target_id = id.from(_N, "NodeRepairConfig"),
            target = M.NodeRepairConfig,
        }),
        launchTemplate = schema.new({
            id = id.from(_N, "Nodegroup", "launchTemplate"),
            type = "structure",
            name = "launchTemplate",
            target_id = id.from(_N, "LaunchTemplateSpecification"),
            target = M.LaunchTemplateSpecification,
        }),
        tags = schema.new({
            id = id.from(_N, "Nodegroup", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        warmPoolConfig = schema.new({
            id = id.from(_N, "Nodegroup", "warmPoolConfig"),
            type = "structure",
            name = "warmPoolConfig",
            target_id = id.from(_N, "WarmPoolConfig"),
            target = M.WarmPoolConfig,
        }),
    },
})

M.CreateNodegroupOutput = schema.new({
    id = id.from(_N, "CreateNodegroupOutput"),
    type = "structure",
    members = {
        nodegroup = schema.new({
            id = id.from(_N, "CreateNodegroupOutput", "nodegroup"),
            type = "structure",
            name = "nodegroup",
            target_id = id.from(_N, "Nodegroup"),
            target = M.Nodegroup,
        }),
    },
})

M.CreatePodIdentityAssociationInput = schema.new({
    id = id.from(_N, "CreatePodIdentityAssociationInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "CreatePodIdentityAssociationInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        namespace = schema.new({
            id = id.from(_N, "CreatePodIdentityAssociationInput", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceAccount = schema.new({
            id = id.from(_N, "CreatePodIdentityAssociationInput", "serviceAccount"),
            type = "string",
            name = "serviceAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreatePodIdentityAssociationInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "CreatePodIdentityAssociationInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreatePodIdentityAssociationInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        disableSessionTags = schema.new({
            id = id.from(_N, "CreatePodIdentityAssociationInput", "disableSessionTags"),
            type = "boolean",
            name = "disableSessionTags",
            target_id = prelude.Boolean.id,
        }),
        targetRoleArn = schema.new({
            id = id.from(_N, "CreatePodIdentityAssociationInput", "targetRoleArn"),
            type = "string",
            name = "targetRoleArn",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "CreatePodIdentityAssociationInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
    },
})

M.PodIdentityAssociation = schema.new({
    id = id.from(_N, "PodIdentityAssociation"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        namespace = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
        }),
        serviceAccount = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "serviceAccount"),
            type = "string",
            name = "serviceAccount",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        associationArn = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "associationArn"),
            type = "string",
            name = "associationArn",
            target_id = prelude.String.id,
        }),
        associationId = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        createdAt = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
        }),
        ownerArn = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "ownerArn"),
            type = "string",
            name = "ownerArn",
            target_id = prelude.String.id,
        }),
        disableSessionTags = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "disableSessionTags"),
            type = "boolean",
            name = "disableSessionTags",
            target_id = prelude.Boolean.id,
        }),
        targetRoleArn = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "targetRoleArn"),
            type = "string",
            name = "targetRoleArn",
            target_id = prelude.String.id,
        }),
        externalId = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePodIdentityAssociationOutput = schema.new({
    id = id.from(_N, "CreatePodIdentityAssociationOutput"),
    type = "structure",
    members = {
        association = schema.new({
            id = id.from(_N, "CreatePodIdentityAssociationOutput", "association"),
            type = "structure",
            name = "association",
            target_id = id.from(_N, "PodIdentityAssociation"),
            target = M.PodIdentityAssociation,
        }),
    },
})

M.DeleteAccessEntryInput = schema.new({
    id = id.from(_N, "DeleteAccessEntryInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DeleteAccessEntryInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        principalArn = schema.new({
            id = id.from(_N, "DeleteAccessEntryInput", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAccessEntryOutput = schema.new({
    id = id.from(_N, "DeleteAccessEntryOutput"),
    type = "structure",
})

M.DeleteAddonInput = schema.new({
    id = id.from(_N, "DeleteAddonInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DeleteAddonInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        addonName = schema.new({
            id = id.from(_N, "DeleteAddonInput", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        preserve = schema.new({
            id = id.from(_N, "DeleteAddonInput", "preserve"),
            type = "boolean",
            name = "preserve",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "preserve" },
            },
        }),
    },
})

M.DeleteAddonOutput = schema.new({
    id = id.from(_N, "DeleteAddonOutput"),
    type = "structure",
    members = {
        addon = schema.new({
            id = id.from(_N, "DeleteAddonOutput", "addon"),
            type = "structure",
            name = "addon",
            target_id = id.from(_N, "Addon"),
            target = M.Addon,
        }),
    },
})

M.DeleteCapabilityInput = schema.new({
    id = id.from(_N, "DeleteCapabilityInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DeleteCapabilityInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        capabilityName = schema.new({
            id = id.from(_N, "DeleteCapabilityInput", "capabilityName"),
            type = "string",
            name = "capabilityName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteCapabilityOutput = schema.new({
    id = id.from(_N, "DeleteCapabilityOutput"),
    type = "structure",
    members = {
        capability = schema.new({
            id = id.from(_N, "DeleteCapabilityOutput", "capability"),
            type = "structure",
            name = "capability",
            target_id = id.from(_N, "Capability"),
            target = M.Capability,
        }),
    },
})

M.DeleteClusterInput = schema.new({
    id = id.from(_N, "DeleteClusterInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeleteClusterInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteClusterOutput = schema.new({
    id = id.from(_N, "DeleteClusterOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "DeleteClusterOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.DeleteEksAnywhereSubscriptionInput = schema.new({
    id = id.from(_N, "DeleteEksAnywhereSubscriptionInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteEksAnywhereSubscriptionInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteEksAnywhereSubscriptionOutput = schema.new({
    id = id.from(_N, "DeleteEksAnywhereSubscriptionOutput"),
    type = "structure",
    members = {
        subscription = schema.new({
            id = id.from(_N, "DeleteEksAnywhereSubscriptionOutput", "subscription"),
            type = "structure",
            name = "subscription",
            target_id = id.from(_N, "EksAnywhereSubscription"),
            target = M.EksAnywhereSubscription,
        }),
    },
})

M.DeleteFargateProfileInput = schema.new({
    id = id.from(_N, "DeleteFargateProfileInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DeleteFargateProfileInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        fargateProfileName = schema.new({
            id = id.from(_N, "DeleteFargateProfileInput", "fargateProfileName"),
            type = "string",
            name = "fargateProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteFargateProfileOutput = schema.new({
    id = id.from(_N, "DeleteFargateProfileOutput"),
    type = "structure",
    members = {
        fargateProfile = schema.new({
            id = id.from(_N, "DeleteFargateProfileOutput", "fargateProfile"),
            type = "structure",
            name = "fargateProfile",
            target_id = id.from(_N, "FargateProfile"),
            target = M.FargateProfile,
        }),
    },
})

M.DeleteNodegroupInput = schema.new({
    id = id.from(_N, "DeleteNodegroupInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DeleteNodegroupInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "DeleteNodegroupInput", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteNodegroupOutput = schema.new({
    id = id.from(_N, "DeleteNodegroupOutput"),
    type = "structure",
    members = {
        nodegroup = schema.new({
            id = id.from(_N, "DeleteNodegroupOutput", "nodegroup"),
            type = "structure",
            name = "nodegroup",
            target_id = id.from(_N, "Nodegroup"),
            target = M.Nodegroup,
        }),
    },
})

M.DeletePodIdentityAssociationInput = schema.new({
    id = id.from(_N, "DeletePodIdentityAssociationInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DeletePodIdentityAssociationInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        associationId = schema.new({
            id = id.from(_N, "DeletePodIdentityAssociationInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeletePodIdentityAssociationOutput = schema.new({
    id = id.from(_N, "DeletePodIdentityAssociationOutput"),
    type = "structure",
    members = {
        association = schema.new({
            id = id.from(_N, "DeletePodIdentityAssociationOutput", "association"),
            type = "structure",
            name = "association",
            target_id = id.from(_N, "PodIdentityAssociation"),
            target = M.PodIdentityAssociation,
        }),
    },
})

M.DeregisterClusterInput = schema.new({
    id = id.from(_N, "DeregisterClusterInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeregisterClusterInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeregisterClusterOutput = schema.new({
    id = id.from(_N, "DeregisterClusterOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "DeregisterClusterOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.DescribeAccessEntryInput = schema.new({
    id = id.from(_N, "DescribeAccessEntryInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DescribeAccessEntryInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        principalArn = schema.new({
            id = id.from(_N, "DescribeAccessEntryInput", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeAccessEntryOutput = schema.new({
    id = id.from(_N, "DescribeAccessEntryOutput"),
    type = "structure",
    members = {
        accessEntry = schema.new({
            id = id.from(_N, "DescribeAccessEntryOutput", "accessEntry"),
            type = "structure",
            name = "accessEntry",
            target_id = id.from(_N, "AccessEntry"),
            target = M.AccessEntry,
        }),
    },
})

M.DescribeAddonInput = schema.new({
    id = id.from(_N, "DescribeAddonInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DescribeAddonInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        addonName = schema.new({
            id = id.from(_N, "DescribeAddonInput", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeAddonOutput = schema.new({
    id = id.from(_N, "DescribeAddonOutput"),
    type = "structure",
    members = {
        addon = schema.new({
            id = id.from(_N, "DescribeAddonOutput", "addon"),
            type = "structure",
            name = "addon",
            target_id = id.from(_N, "Addon"),
            target = M.Addon,
        }),
    },
})

M.DescribeAddonConfigurationInput = schema.new({
    id = id.from(_N, "DescribeAddonConfigurationInput"),
    type = "structure",
    members = {
        addonName = schema.new({
            id = id.from(_N, "DescribeAddonConfigurationInput", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "addonName" },
            },
        }),
        addonVersion = schema.new({
            id = id.from(_N, "DescribeAddonConfigurationInput", "addonVersion"),
            type = "string",
            name = "addonVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "addonVersion" },
            },
        }),
    },
})

M.DescribeAddonConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeAddonConfigurationOutput"),
    type = "structure",
    members = {
        addonName = schema.new({
            id = id.from(_N, "DescribeAddonConfigurationOutput", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
        }),
        addonVersion = schema.new({
            id = id.from(_N, "DescribeAddonConfigurationOutput", "addonVersion"),
            type = "string",
            name = "addonVersion",
            target_id = prelude.String.id,
        }),
        configurationSchema = schema.new({
            id = id.from(_N, "DescribeAddonConfigurationOutput", "configurationSchema"),
            type = "string",
            name = "configurationSchema",
            target_id = prelude.String.id,
        }),
        podIdentityConfiguration = schema.new({
            id = id.from(_N, "DescribeAddonConfigurationOutput", "podIdentityConfiguration"),
            type = "list",
            name = "podIdentityConfiguration",
            target_id = prelude.Document.id,
            list_member = M.AddonPodIdentityConfiguration,
        }),
    },
})

M.DescribeAddonVersionsInput = schema.new({
    id = id.from(_N, "DescribeAddonVersionsInput"),
    type = "structure",
    members = {
        kubernetesVersion = schema.new({
            id = id.from(_N, "DescribeAddonVersionsInput", "kubernetesVersion"),
            type = "string",
            name = "kubernetesVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "kubernetesVersion" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeAddonVersionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeAddonVersionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        addonName = schema.new({
            id = id.from(_N, "DescribeAddonVersionsInput", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "addonName" },
            },
        }),
        types = schema.new({
            id = id.from(_N, "DescribeAddonVersionsInput", "types"),
            type = "list",
            name = "types",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "types" },
            },
        }),
        publishers = schema.new({
            id = id.from(_N, "DescribeAddonVersionsInput", "publishers"),
            type = "list",
            name = "publishers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "publishers" },
            },
        }),
        owners = schema.new({
            id = id.from(_N, "DescribeAddonVersionsInput", "owners"),
            type = "list",
            name = "owners",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "owners" },
            },
        }),
    },
})

M.DescribeAddonVersionsOutput = schema.new({
    id = id.from(_N, "DescribeAddonVersionsOutput"),
    type = "structure",
    members = {
        addons = schema.new({
            id = id.from(_N, "DescribeAddonVersionsOutput", "addons"),
            type = "list",
            name = "addons",
            target_id = prelude.Document.id,
            list_member = M.AddonInfo,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeAddonVersionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCapabilityInput = schema.new({
    id = id.from(_N, "DescribeCapabilityInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DescribeCapabilityInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        capabilityName = schema.new({
            id = id.from(_N, "DescribeCapabilityInput", "capabilityName"),
            type = "string",
            name = "capabilityName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeCapabilityOutput = schema.new({
    id = id.from(_N, "DescribeCapabilityOutput"),
    type = "structure",
    members = {
        capability = schema.new({
            id = id.from(_N, "DescribeCapabilityOutput", "capability"),
            type = "structure",
            name = "capability",
            target_id = id.from(_N, "Capability"),
            target = M.Capability,
        }),
    },
})

M.DescribeClusterInput = schema.new({
    id = id.from(_N, "DescribeClusterInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DescribeClusterInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeClusterOutput = schema.new({
    id = id.from(_N, "DescribeClusterOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "DescribeClusterOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.DescribeClusterVersionsInput = schema.new({
    id = id.from(_N, "DescribeClusterVersionsInput"),
    type = "structure",
    members = {
        clusterType = schema.new({
            id = id.from(_N, "DescribeClusterVersionsInput", "clusterType"),
            type = "string",
            name = "clusterType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clusterType" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeClusterVersionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeClusterVersionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        defaultOnly = schema.new({
            id = id.from(_N, "DescribeClusterVersionsInput", "defaultOnly"),
            type = "boolean",
            name = "defaultOnly",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "defaultOnly" },
            },
        }),
        includeAll = schema.new({
            id = id.from(_N, "DescribeClusterVersionsInput", "includeAll"),
            type = "boolean",
            name = "includeAll",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "includeAll" },
            },
        }),
        clusterVersions = schema.new({
            id = id.from(_N, "DescribeClusterVersionsInput", "clusterVersions"),
            type = "list",
            name = "clusterVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "clusterVersions" },
            },
        }),
        status = schema.new({
            id = id.from(_N, "DescribeClusterVersionsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
        versionStatus = schema.new({
            id = id.from(_N, "DescribeClusterVersionsInput", "versionStatus"),
            type = "string",
            name = "versionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "versionStatus" },
            },
        }),
    },
})

M.ClusterVersionInformation = schema.new({
    id = id.from(_N, "ClusterVersionInformation"),
    type = "structure",
    members = {
        clusterVersion = schema.new({
            id = id.from(_N, "ClusterVersionInformation", "clusterVersion"),
            type = "string",
            name = "clusterVersion",
            target_id = prelude.String.id,
        }),
        clusterType = schema.new({
            id = id.from(_N, "ClusterVersionInformation", "clusterType"),
            type = "string",
            name = "clusterType",
            target_id = prelude.String.id,
        }),
        defaultPlatformVersion = schema.new({
            id = id.from(_N, "ClusterVersionInformation", "defaultPlatformVersion"),
            type = "string",
            name = "defaultPlatformVersion",
            target_id = prelude.String.id,
        }),
        defaultVersion = schema.new({
            id = id.from(_N, "ClusterVersionInformation", "defaultVersion"),
            type = "boolean",
            name = "defaultVersion",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        releaseDate = schema.new({
            id = id.from(_N, "ClusterVersionInformation", "releaseDate"),
            type = "timestamp",
            name = "releaseDate",
            target_id = prelude.Timestamp.id,
        }),
        endOfStandardSupportDate = schema.new({
            id = id.from(_N, "ClusterVersionInformation", "endOfStandardSupportDate"),
            type = "timestamp",
            name = "endOfStandardSupportDate",
            target_id = prelude.Timestamp.id,
        }),
        endOfExtendedSupportDate = schema.new({
            id = id.from(_N, "ClusterVersionInformation", "endOfExtendedSupportDate"),
            type = "timestamp",
            name = "endOfExtendedSupportDate",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "ClusterVersionInformation", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        versionStatus = schema.new({
            id = id.from(_N, "ClusterVersionInformation", "versionStatus"),
            type = "string",
            name = "versionStatus",
            target_id = prelude.String.id,
        }),
        kubernetesPatchVersion = schema.new({
            id = id.from(_N, "ClusterVersionInformation", "kubernetesPatchVersion"),
            type = "string",
            name = "kubernetesPatchVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeClusterVersionsOutput = schema.new({
    id = id.from(_N, "DescribeClusterVersionsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "DescribeClusterVersionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        clusterVersions = schema.new({
            id = id.from(_N, "DescribeClusterVersionsOutput", "clusterVersions"),
            type = "list",
            name = "clusterVersions",
            target_id = prelude.Document.id,
            list_member = M.ClusterVersionInformation,
        }),
    },
})

M.DescribeEksAnywhereSubscriptionInput = schema.new({
    id = id.from(_N, "DescribeEksAnywhereSubscriptionInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DescribeEksAnywhereSubscriptionInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeEksAnywhereSubscriptionOutput = schema.new({
    id = id.from(_N, "DescribeEksAnywhereSubscriptionOutput"),
    type = "structure",
    members = {
        subscription = schema.new({
            id = id.from(_N, "DescribeEksAnywhereSubscriptionOutput", "subscription"),
            type = "structure",
            name = "subscription",
            target_id = id.from(_N, "EksAnywhereSubscription"),
            target = M.EksAnywhereSubscription,
        }),
    },
})

M.DescribeFargateProfileInput = schema.new({
    id = id.from(_N, "DescribeFargateProfileInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DescribeFargateProfileInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        fargateProfileName = schema.new({
            id = id.from(_N, "DescribeFargateProfileInput", "fargateProfileName"),
            type = "string",
            name = "fargateProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeFargateProfileOutput = schema.new({
    id = id.from(_N, "DescribeFargateProfileOutput"),
    type = "structure",
    members = {
        fargateProfile = schema.new({
            id = id.from(_N, "DescribeFargateProfileOutput", "fargateProfile"),
            type = "structure",
            name = "fargateProfile",
            target_id = id.from(_N, "FargateProfile"),
            target = M.FargateProfile,
        }),
    },
})

M.IdentityProviderConfig = schema.new({
    id = id.from(_N, "IdentityProviderConfig"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "IdentityProviderConfig", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "IdentityProviderConfig", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeIdentityProviderConfigInput = schema.new({
    id = id.from(_N, "DescribeIdentityProviderConfigInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DescribeIdentityProviderConfigInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        identityProviderConfig = schema.new({
            id = id.from(_N, "DescribeIdentityProviderConfigInput", "identityProviderConfig"),
            type = "structure",
            name = "identityProviderConfig",
            target_id = id.from(_N, "IdentityProviderConfig"),
            target = M.IdentityProviderConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OidcIdentityProviderConfig = schema.new({
    id = id.from(_N, "OidcIdentityProviderConfig"),
    type = "structure",
    members = {
        identityProviderConfigName = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "identityProviderConfigName"),
            type = "string",
            name = "identityProviderConfigName",
            target_id = prelude.String.id,
        }),
        identityProviderConfigArn = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "identityProviderConfigArn"),
            type = "string",
            name = "identityProviderConfigArn",
            target_id = prelude.String.id,
        }),
        clusterName = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        issuerUrl = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "issuerUrl"),
            type = "string",
            name = "issuerUrl",
            target_id = prelude.String.id,
        }),
        clientId = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
        usernameClaim = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "usernameClaim"),
            type = "string",
            name = "usernameClaim",
            target_id = prelude.String.id,
        }),
        usernamePrefix = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "usernamePrefix"),
            type = "string",
            name = "usernamePrefix",
            target_id = prelude.String.id,
        }),
        groupsClaim = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "groupsClaim"),
            type = "string",
            name = "groupsClaim",
            target_id = prelude.String.id,
        }),
        groupsPrefix = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "groupsPrefix"),
            type = "string",
            name = "groupsPrefix",
            target_id = prelude.String.id,
        }),
        requiredClaims = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "requiredClaims"),
            type = "map",
            name = "requiredClaims",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "OidcIdentityProviderConfig", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.IdentityProviderConfigResponse = schema.new({
    id = id.from(_N, "IdentityProviderConfigResponse"),
    type = "structure",
    members = {
        oidc = schema.new({
            id = id.from(_N, "IdentityProviderConfigResponse", "oidc"),
            type = "structure",
            name = "oidc",
            target_id = id.from(_N, "OidcIdentityProviderConfig"),
            target = M.OidcIdentityProviderConfig,
        }),
    },
})

M.DescribeIdentityProviderConfigOutput = schema.new({
    id = id.from(_N, "DescribeIdentityProviderConfigOutput"),
    type = "structure",
    members = {
        identityProviderConfig = schema.new({
            id = id.from(_N, "DescribeIdentityProviderConfigOutput", "identityProviderConfig"),
            type = "structure",
            name = "identityProviderConfig",
            target_id = id.from(_N, "IdentityProviderConfigResponse"),
            target = M.IdentityProviderConfigResponse,
        }),
    },
})

M.DescribeInsightInput = schema.new({
    id = id.from(_N, "DescribeInsightInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DescribeInsightInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "DescribeInsightInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ClientStat = schema.new({
    id = id.from(_N, "ClientStat"),
    type = "structure",
    members = {
        userAgent = schema.new({
            id = id.from(_N, "ClientStat", "userAgent"),
            type = "string",
            name = "userAgent",
            target_id = prelude.String.id,
        }),
        numberOfRequestsLast30Days = schema.new({
            id = id.from(_N, "ClientStat", "numberOfRequestsLast30Days"),
            type = "integer",
            name = "numberOfRequestsLast30Days",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastRequestTime = schema.new({
            id = id.from(_N, "ClientStat", "lastRequestTime"),
            type = "timestamp",
            name = "lastRequestTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DeprecationDetail = schema.new({
    id = id.from(_N, "DeprecationDetail"),
    type = "structure",
    members = {
        usage = schema.new({
            id = id.from(_N, "DeprecationDetail", "usage"),
            type = "string",
            name = "usage",
            target_id = prelude.String.id,
        }),
        replacedWith = schema.new({
            id = id.from(_N, "DeprecationDetail", "replacedWith"),
            type = "string",
            name = "replacedWith",
            target_id = prelude.String.id,
        }),
        stopServingVersion = schema.new({
            id = id.from(_N, "DeprecationDetail", "stopServingVersion"),
            type = "string",
            name = "stopServingVersion",
            target_id = prelude.String.id,
        }),
        startServingReplacementVersion = schema.new({
            id = id.from(_N, "DeprecationDetail", "startServingReplacementVersion"),
            type = "string",
            name = "startServingReplacementVersion",
            target_id = prelude.String.id,
        }),
        clientStats = schema.new({
            id = id.from(_N, "DeprecationDetail", "clientStats"),
            type = "list",
            name = "clientStats",
            target_id = prelude.Document.id,
            list_member = M.ClientStat,
        }),
    },
})

M.InsightCategorySpecificSummary = schema.new({
    id = id.from(_N, "InsightCategorySpecificSummary"),
    type = "structure",
    members = {
        deprecationDetails = schema.new({
            id = id.from(_N, "InsightCategorySpecificSummary", "deprecationDetails"),
            type = "list",
            name = "deprecationDetails",
            target_id = prelude.Document.id,
            list_member = M.DeprecationDetail,
        }),
        addonCompatibilityDetails = schema.new({
            id = id.from(_N, "InsightCategorySpecificSummary", "addonCompatibilityDetails"),
            type = "list",
            name = "addonCompatibilityDetails",
            target_id = prelude.Document.id,
            list_member = M.AddonCompatibilityDetail,
        }),
    },
})

M.InsightStatus = schema.new({
    id = id.from(_N, "InsightStatus"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "InsightStatus", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "InsightStatus", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
    },
})

M.InsightResourceDetail = schema.new({
    id = id.from(_N, "InsightResourceDetail"),
    type = "structure",
    members = {
        insightStatus = schema.new({
            id = id.from(_N, "InsightResourceDetail", "insightStatus"),
            type = "structure",
            name = "insightStatus",
            target_id = id.from(_N, "InsightStatus"),
            target = M.InsightStatus,
        }),
        kubernetesResourceUri = schema.new({
            id = id.from(_N, "InsightResourceDetail", "kubernetesResourceUri"),
            type = "string",
            name = "kubernetesResourceUri",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "InsightResourceDetail", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.Insight = schema.new({
    id = id.from(_N, "Insight"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Insight", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Insight", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "Insight", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
        kubernetesVersion = schema.new({
            id = id.from(_N, "Insight", "kubernetesVersion"),
            type = "string",
            name = "kubernetesVersion",
            target_id = prelude.String.id,
        }),
        lastRefreshTime = schema.new({
            id = id.from(_N, "Insight", "lastRefreshTime"),
            type = "timestamp",
            name = "lastRefreshTime",
            target_id = prelude.Timestamp.id,
        }),
        lastTransitionTime = schema.new({
            id = id.from(_N, "Insight", "lastTransitionTime"),
            type = "timestamp",
            name = "lastTransitionTime",
            target_id = prelude.Timestamp.id,
        }),
        description = schema.new({
            id = id.from(_N, "Insight", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        insightStatus = schema.new({
            id = id.from(_N, "Insight", "insightStatus"),
            type = "structure",
            name = "insightStatus",
            target_id = id.from(_N, "InsightStatus"),
            target = M.InsightStatus,
        }),
        recommendation = schema.new({
            id = id.from(_N, "Insight", "recommendation"),
            type = "string",
            name = "recommendation",
            target_id = prelude.String.id,
        }),
        additionalInfo = schema.new({
            id = id.from(_N, "Insight", "additionalInfo"),
            type = "map",
            name = "additionalInfo",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        resources = schema.new({
            id = id.from(_N, "Insight", "resources"),
            type = "list",
            name = "resources",
            target_id = prelude.Document.id,
            list_member = M.InsightResourceDetail,
        }),
        categorySpecificSummary = schema.new({
            id = id.from(_N, "Insight", "categorySpecificSummary"),
            type = "structure",
            name = "categorySpecificSummary",
            target_id = id.from(_N, "InsightCategorySpecificSummary"),
            target = M.InsightCategorySpecificSummary,
        }),
    },
})

M.DescribeInsightOutput = schema.new({
    id = id.from(_N, "DescribeInsightOutput"),
    type = "structure",
    members = {
        insight = schema.new({
            id = id.from(_N, "DescribeInsightOutput", "insight"),
            type = "structure",
            name = "insight",
            target_id = id.from(_N, "Insight"),
            target = M.Insight,
        }),
    },
})

M.DescribeInsightsRefreshInput = schema.new({
    id = id.from(_N, "DescribeInsightsRefreshInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DescribeInsightsRefreshInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeInsightsRefreshOutput = schema.new({
    id = id.from(_N, "DescribeInsightsRefreshOutput"),
    type = "structure",
    members = {
        message = schema.new({
            id = id.from(_N, "DescribeInsightsRefreshOutput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DescribeInsightsRefreshOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        startedAt = schema.new({
            id = id.from(_N, "DescribeInsightsRefreshOutput", "startedAt"),
            type = "timestamp",
            name = "startedAt",
            target_id = prelude.Timestamp.id,
        }),
        endedAt = schema.new({
            id = id.from(_N, "DescribeInsightsRefreshOutput", "endedAt"),
            type = "timestamp",
            name = "endedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeNodegroupInput = schema.new({
    id = id.from(_N, "DescribeNodegroupInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DescribeNodegroupInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "DescribeNodegroupInput", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeNodegroupOutput = schema.new({
    id = id.from(_N, "DescribeNodegroupOutput"),
    type = "structure",
    members = {
        nodegroup = schema.new({
            id = id.from(_N, "DescribeNodegroupOutput", "nodegroup"),
            type = "structure",
            name = "nodegroup",
            target_id = id.from(_N, "Nodegroup"),
            target = M.Nodegroup,
        }),
    },
})

M.DescribePodIdentityAssociationInput = schema.new({
    id = id.from(_N, "DescribePodIdentityAssociationInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DescribePodIdentityAssociationInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        associationId = schema.new({
            id = id.from(_N, "DescribePodIdentityAssociationInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribePodIdentityAssociationOutput = schema.new({
    id = id.from(_N, "DescribePodIdentityAssociationOutput"),
    type = "structure",
    members = {
        association = schema.new({
            id = id.from(_N, "DescribePodIdentityAssociationOutput", "association"),
            type = "structure",
            name = "association",
            target_id = id.from(_N, "PodIdentityAssociation"),
            target = M.PodIdentityAssociation,
        }),
    },
})

M.DescribeUpdateInput = schema.new({
    id = id.from(_N, "DescribeUpdateInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DescribeUpdateInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        updateId = schema.new({
            id = id.from(_N, "DescribeUpdateInput", "updateId"),
            type = "string",
            name = "updateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "DescribeUpdateInput", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nodegroupName" },
            },
        }),
        addonName = schema.new({
            id = id.from(_N, "DescribeUpdateInput", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "addonName" },
            },
        }),
        capabilityName = schema.new({
            id = id.from(_N, "DescribeUpdateInput", "capabilityName"),
            type = "string",
            name = "capabilityName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "capabilityName" },
            },
        }),
    },
})

M.DescribeUpdateOutput = schema.new({
    id = id.from(_N, "DescribeUpdateOutput"),
    type = "structure",
    members = {
        update = schema.new({
            id = id.from(_N, "DescribeUpdateOutput", "update"),
            type = "structure",
            name = "update",
            target_id = id.from(_N, "Update"),
            target = M.Update,
        }),
    },
})

M.DisassociateAccessPolicyInput = schema.new({
    id = id.from(_N, "DisassociateAccessPolicyInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DisassociateAccessPolicyInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        principalArn = schema.new({
            id = id.from(_N, "DisassociateAccessPolicyInput", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        policyArn = schema.new({
            id = id.from(_N, "DisassociateAccessPolicyInput", "policyArn"),
            type = "string",
            name = "policyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateAccessPolicyOutput = schema.new({
    id = id.from(_N, "DisassociateAccessPolicyOutput"),
    type = "structure",
})

M.DisassociateIdentityProviderConfigInput = schema.new({
    id = id.from(_N, "DisassociateIdentityProviderConfigInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "DisassociateIdentityProviderConfigInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        identityProviderConfig = schema.new({
            id = id.from(_N, "DisassociateIdentityProviderConfigInput", "identityProviderConfig"),
            type = "structure",
            name = "identityProviderConfig",
            target_id = id.from(_N, "IdentityProviderConfig"),
            target = M.IdentityProviderConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "DisassociateIdentityProviderConfigInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DisassociateIdentityProviderConfigOutput = schema.new({
    id = id.from(_N, "DisassociateIdentityProviderConfigOutput"),
    type = "structure",
    members = {
        update = schema.new({
            id = id.from(_N, "DisassociateIdentityProviderConfigOutput", "update"),
            type = "structure",
            name = "update",
            target_id = id.from(_N, "Update"),
            target = M.Update,
        }),
    },
})

M.ListAccessEntriesInput = schema.new({
    id = id.from(_N, "ListAccessEntriesInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ListAccessEntriesInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        associatedPolicyArn = schema.new({
            id = id.from(_N, "ListAccessEntriesInput", "associatedPolicyArn"),
            type = "string",
            name = "associatedPolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "associatedPolicyArn" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAccessEntriesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessEntriesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListAccessEntriesOutput = schema.new({
    id = id.from(_N, "ListAccessEntriesOutput"),
    type = "structure",
    members = {
        accessEntries = schema.new({
            id = id.from(_N, "ListAccessEntriesOutput", "accessEntries"),
            type = "list",
            name = "accessEntries",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessEntriesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccessPoliciesInput = schema.new({
    id = id.from(_N, "ListAccessPoliciesInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListAccessPoliciesOutput = schema.new({
    id = id.from(_N, "ListAccessPoliciesOutput"),
    type = "structure",
    members = {
        accessPolicies = schema.new({
            id = id.from(_N, "ListAccessPoliciesOutput", "accessPolicies"),
            type = "list",
            name = "accessPolicies",
            target_id = prelude.Document.id,
            list_member = M.AccessPolicy,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessPoliciesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAddonsInput = schema.new({
    id = id.from(_N, "ListAddonsInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ListAddonsInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAddonsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAddonsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListAddonsOutput = schema.new({
    id = id.from(_N, "ListAddonsOutput"),
    type = "structure",
    members = {
        addons = schema.new({
            id = id.from(_N, "ListAddonsOutput", "addons"),
            type = "list",
            name = "addons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAddonsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssociatedAccessPoliciesInput = schema.new({
    id = id.from(_N, "ListAssociatedAccessPoliciesInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ListAssociatedAccessPoliciesInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        principalArn = schema.new({
            id = id.from(_N, "ListAssociatedAccessPoliciesInput", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssociatedAccessPoliciesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssociatedAccessPoliciesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListAssociatedAccessPoliciesOutput = schema.new({
    id = id.from(_N, "ListAssociatedAccessPoliciesOutput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ListAssociatedAccessPoliciesOutput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        principalArn = schema.new({
            id = id.from(_N, "ListAssociatedAccessPoliciesOutput", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssociatedAccessPoliciesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        associatedAccessPolicies = schema.new({
            id = id.from(_N, "ListAssociatedAccessPoliciesOutput", "associatedAccessPolicies"),
            type = "list",
            name = "associatedAccessPolicies",
            target_id = prelude.Document.id,
            list_member = M.AssociatedAccessPolicy,
        }),
    },
})

M.ListCapabilitiesInput = schema.new({
    id = id.from(_N, "ListCapabilitiesInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ListCapabilitiesInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCapabilitiesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCapabilitiesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.CapabilitySummary = schema.new({
    id = id.from(_N, "CapabilitySummary"),
    type = "structure",
    members = {
        capabilityName = schema.new({
            id = id.from(_N, "CapabilitySummary", "capabilityName"),
            type = "string",
            name = "capabilityName",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CapabilitySummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "CapabilitySummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CapabilitySummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "CapabilitySummary", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CapabilitySummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "CapabilitySummary", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListCapabilitiesOutput = schema.new({
    id = id.from(_N, "ListCapabilitiesOutput"),
    type = "structure",
    members = {
        capabilities = schema.new({
            id = id.from(_N, "ListCapabilitiesOutput", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = M.CapabilitySummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCapabilitiesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListClustersInput = schema.new({
    id = id.from(_N, "ListClustersInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListClustersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListClustersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        include = schema.new({
            id = id.from(_N, "ListClustersInput", "include"),
            type = "list",
            name = "include",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "include" },
            },
        }),
    },
})

M.ListClustersOutput = schema.new({
    id = id.from(_N, "ListClustersOutput"),
    type = "structure",
    members = {
        clusters = schema.new({
            id = id.from(_N, "ListClustersOutput", "clusters"),
            type = "list",
            name = "clusters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListClustersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEksAnywhereSubscriptionsInput = schema.new({
    id = id.from(_N, "ListEksAnywhereSubscriptionsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListEksAnywhereSubscriptionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEksAnywhereSubscriptionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        includeStatus = schema.new({
            id = id.from(_N, "ListEksAnywhereSubscriptionsInput", "includeStatus"),
            type = "list",
            name = "includeStatus",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "includeStatus" },
            },
        }),
    },
})

M.ListEksAnywhereSubscriptionsOutput = schema.new({
    id = id.from(_N, "ListEksAnywhereSubscriptionsOutput"),
    type = "structure",
    members = {
        subscriptions = schema.new({
            id = id.from(_N, "ListEksAnywhereSubscriptionsOutput", "subscriptions"),
            type = "list",
            name = "subscriptions",
            target_id = prelude.Document.id,
            list_member = M.EksAnywhereSubscription,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEksAnywhereSubscriptionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFargateProfilesInput = schema.new({
    id = id.from(_N, "ListFargateProfilesInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ListFargateProfilesInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListFargateProfilesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFargateProfilesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListFargateProfilesOutput = schema.new({
    id = id.from(_N, "ListFargateProfilesOutput"),
    type = "structure",
    members = {
        fargateProfileNames = schema.new({
            id = id.from(_N, "ListFargateProfilesOutput", "fargateProfileNames"),
            type = "list",
            name = "fargateProfileNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFargateProfilesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListIdentityProviderConfigsInput = schema.new({
    id = id.from(_N, "ListIdentityProviderConfigsInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ListIdentityProviderConfigsInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListIdentityProviderConfigsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIdentityProviderConfigsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListIdentityProviderConfigsOutput = schema.new({
    id = id.from(_N, "ListIdentityProviderConfigsOutput"),
    type = "structure",
    members = {
        identityProviderConfigs = schema.new({
            id = id.from(_N, "ListIdentityProviderConfigsOutput", "identityProviderConfigs"),
            type = "list",
            name = "identityProviderConfigs",
            target_id = prelude.Document.id,
            list_member = M.IdentityProviderConfig,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIdentityProviderConfigsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InsightsFilter = schema.new({
    id = id.from(_N, "InsightsFilter"),
    type = "structure",
    members = {
        categories = schema.new({
            id = id.from(_N, "InsightsFilter", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        kubernetesVersions = schema.new({
            id = id.from(_N, "InsightsFilter", "kubernetesVersions"),
            type = "list",
            name = "kubernetesVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        statuses = schema.new({
            id = id.from(_N, "InsightsFilter", "statuses"),
            type = "list",
            name = "statuses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListInsightsInput = schema.new({
    id = id.from(_N, "ListInsightsInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ListInsightsInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListInsightsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "InsightsFilter"),
            target = M.InsightsFilter,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListInsightsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListInsightsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InsightSummary = schema.new({
    id = id.from(_N, "InsightSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "InsightSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "InsightSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "InsightSummary", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
        kubernetesVersion = schema.new({
            id = id.from(_N, "InsightSummary", "kubernetesVersion"),
            type = "string",
            name = "kubernetesVersion",
            target_id = prelude.String.id,
        }),
        lastRefreshTime = schema.new({
            id = id.from(_N, "InsightSummary", "lastRefreshTime"),
            type = "timestamp",
            name = "lastRefreshTime",
            target_id = prelude.Timestamp.id,
        }),
        lastTransitionTime = schema.new({
            id = id.from(_N, "InsightSummary", "lastTransitionTime"),
            type = "timestamp",
            name = "lastTransitionTime",
            target_id = prelude.Timestamp.id,
        }),
        description = schema.new({
            id = id.from(_N, "InsightSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        insightStatus = schema.new({
            id = id.from(_N, "InsightSummary", "insightStatus"),
            type = "structure",
            name = "insightStatus",
            target_id = id.from(_N, "InsightStatus"),
            target = M.InsightStatus,
        }),
    },
})

M.ListInsightsOutput = schema.new({
    id = id.from(_N, "ListInsightsOutput"),
    type = "structure",
    members = {
        insights = schema.new({
            id = id.from(_N, "ListInsightsOutput", "insights"),
            type = "list",
            name = "insights",
            target_id = prelude.Document.id,
            list_member = M.InsightSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListInsightsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNodegroupsInput = schema.new({
    id = id.from(_N, "ListNodegroupsInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ListNodegroupsInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNodegroupsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNodegroupsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListNodegroupsOutput = schema.new({
    id = id.from(_N, "ListNodegroupsOutput"),
    type = "structure",
    members = {
        nodegroups = schema.new({
            id = id.from(_N, "ListNodegroupsOutput", "nodegroups"),
            type = "list",
            name = "nodegroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNodegroupsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPodIdentityAssociationsInput = schema.new({
    id = id.from(_N, "ListPodIdentityAssociationsInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ListPodIdentityAssociationsInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        namespace = schema.new({
            id = id.from(_N, "ListPodIdentityAssociationsInput", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "namespace" },
            },
        }),
        serviceAccount = schema.new({
            id = id.from(_N, "ListPodIdentityAssociationsInput", "serviceAccount"),
            type = "string",
            name = "serviceAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "serviceAccount" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPodIdentityAssociationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPodIdentityAssociationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.PodIdentityAssociationSummary = schema.new({
    id = id.from(_N, "PodIdentityAssociationSummary"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "PodIdentityAssociationSummary", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        namespace = schema.new({
            id = id.from(_N, "PodIdentityAssociationSummary", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
        }),
        serviceAccount = schema.new({
            id = id.from(_N, "PodIdentityAssociationSummary", "serviceAccount"),
            type = "string",
            name = "serviceAccount",
            target_id = prelude.String.id,
        }),
        associationArn = schema.new({
            id = id.from(_N, "PodIdentityAssociationSummary", "associationArn"),
            type = "string",
            name = "associationArn",
            target_id = prelude.String.id,
        }),
        associationId = schema.new({
            id = id.from(_N, "PodIdentityAssociationSummary", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
        }),
        ownerArn = schema.new({
            id = id.from(_N, "PodIdentityAssociationSummary", "ownerArn"),
            type = "string",
            name = "ownerArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPodIdentityAssociationsOutput = schema.new({
    id = id.from(_N, "ListPodIdentityAssociationsOutput"),
    type = "structure",
    members = {
        associations = schema.new({
            id = id.from(_N, "ListPodIdentityAssociationsOutput", "associations"),
            type = "list",
            name = "associations",
            target_id = prelude.Document.id,
            list_member = M.PodIdentityAssociationSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPodIdentityAssociationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BadRequestException", "message"),
            type = "string",
            name = "message",
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
                [traits.HTTP_LABEL] = {},
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
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUpdatesInput = schema.new({
    id = id.from(_N, "ListUpdatesInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ListUpdatesInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "ListUpdatesInput", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nodegroupName" },
            },
        }),
        addonName = schema.new({
            id = id.from(_N, "ListUpdatesInput", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "addonName" },
            },
        }),
        capabilityName = schema.new({
            id = id.from(_N, "ListUpdatesInput", "capabilityName"),
            type = "string",
            name = "capabilityName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "capabilityName" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListUpdatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListUpdatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListUpdatesOutput = schema.new({
    id = id.from(_N, "ListUpdatesOutput"),
    type = "structure",
    members = {
        updateIds = schema.new({
            id = id.from(_N, "ListUpdatesOutput", "updateIds"),
            type = "list",
            name = "updateIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListUpdatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectorConfigRequest = schema.new({
    id = id.from(_N, "ConnectorConfigRequest"),
    type = "structure",
    members = {
        roleArn = schema.new({
            id = id.from(_N, "ConnectorConfigRequest", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        provider = schema.new({
            id = id.from(_N, "ConnectorConfigRequest", "provider"),
            type = "string",
            name = "provider",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterClusterInput = schema.new({
    id = id.from(_N, "RegisterClusterInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "RegisterClusterInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectorConfig = schema.new({
            id = id.from(_N, "RegisterClusterInput", "connectorConfig"),
            type = "structure",
            name = "connectorConfig",
            target_id = id.from(_N, "ConnectorConfigRequest"),
            target = M.ConnectorConfigRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "RegisterClusterInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "RegisterClusterInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.RegisterClusterOutput = schema.new({
    id = id.from(_N, "RegisterClusterOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "RegisterClusterOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.ResourcePropagationDelayException = schema.new({
    id = id.from(_N, "ResourcePropagationDelayException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourcePropagationDelayException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.StartInsightsRefreshInput = schema.new({
    id = id.from(_N, "StartInsightsRefreshInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "StartInsightsRefreshInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StartInsightsRefreshOutput = schema.new({
    id = id.from(_N, "StartInsightsRefreshOutput"),
    type = "structure",
    members = {
        message = schema.new({
            id = id.from(_N, "StartInsightsRefreshOutput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "StartInsightsRefreshOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
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
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
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
                [traits.HTTP_LABEL] = {},
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
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateAccessEntryInput = schema.new({
    id = id.from(_N, "UpdateAccessEntryInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "UpdateAccessEntryInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        principalArn = schema.new({
            id = id.from(_N, "UpdateAccessEntryInput", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        kubernetesGroups = schema.new({
            id = id.from(_N, "UpdateAccessEntryInput", "kubernetesGroups"),
            type = "list",
            name = "kubernetesGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "UpdateAccessEntryInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        username = schema.new({
            id = id.from(_N, "UpdateAccessEntryInput", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAccessEntryOutput = schema.new({
    id = id.from(_N, "UpdateAccessEntryOutput"),
    type = "structure",
    members = {
        accessEntry = schema.new({
            id = id.from(_N, "UpdateAccessEntryOutput", "accessEntry"),
            type = "structure",
            name = "accessEntry",
            target_id = id.from(_N, "AccessEntry"),
            target = M.AccessEntry,
        }),
    },
})

M.UpdateAddonInput = schema.new({
    id = id.from(_N, "UpdateAddonInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "UpdateAddonInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        addonName = schema.new({
            id = id.from(_N, "UpdateAddonInput", "addonName"),
            type = "string",
            name = "addonName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        addonVersion = schema.new({
            id = id.from(_N, "UpdateAddonInput", "addonVersion"),
            type = "string",
            name = "addonVersion",
            target_id = prelude.String.id,
        }),
        serviceAccountRoleArn = schema.new({
            id = id.from(_N, "UpdateAddonInput", "serviceAccountRoleArn"),
            type = "string",
            name = "serviceAccountRoleArn",
            target_id = prelude.String.id,
        }),
        resolveConflicts = schema.new({
            id = id.from(_N, "UpdateAddonInput", "resolveConflicts"),
            type = "string",
            name = "resolveConflicts",
            target_id = prelude.String.id,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "UpdateAddonInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        configurationValues = schema.new({
            id = id.from(_N, "UpdateAddonInput", "configurationValues"),
            type = "string",
            name = "configurationValues",
            target_id = prelude.String.id,
        }),
        podIdentityAssociations = schema.new({
            id = id.from(_N, "UpdateAddonInput", "podIdentityAssociations"),
            type = "list",
            name = "podIdentityAssociations",
            target_id = prelude.Document.id,
            list_member = M.AddonPodIdentityAssociations,
        }),
    },
})

M.UpdateAddonOutput = schema.new({
    id = id.from(_N, "UpdateAddonOutput"),
    type = "structure",
    members = {
        update = schema.new({
            id = id.from(_N, "UpdateAddonOutput", "update"),
            type = "structure",
            name = "update",
            target_id = id.from(_N, "Update"),
            target = M.Update,
        }),
    },
})

M.UpdateRoleMappings = schema.new({
    id = id.from(_N, "UpdateRoleMappings"),
    type = "structure",
    members = {
        addOrUpdateRoleMappings = schema.new({
            id = id.from(_N, "UpdateRoleMappings", "addOrUpdateRoleMappings"),
            type = "list",
            name = "addOrUpdateRoleMappings",
            target_id = prelude.Document.id,
            list_member = M.ArgoCdRoleMapping,
        }),
        removeRoleMappings = schema.new({
            id = id.from(_N, "UpdateRoleMappings", "removeRoleMappings"),
            type = "list",
            name = "removeRoleMappings",
            target_id = prelude.Document.id,
            list_member = M.ArgoCdRoleMapping,
        }),
    },
})

M.UpdateArgoCdConfig = schema.new({
    id = id.from(_N, "UpdateArgoCdConfig"),
    type = "structure",
    members = {
        rbacRoleMappings = schema.new({
            id = id.from(_N, "UpdateArgoCdConfig", "rbacRoleMappings"),
            type = "structure",
            name = "rbacRoleMappings",
            target_id = id.from(_N, "UpdateRoleMappings"),
            target = M.UpdateRoleMappings,
        }),
        networkAccess = schema.new({
            id = id.from(_N, "UpdateArgoCdConfig", "networkAccess"),
            type = "structure",
            name = "networkAccess",
            target_id = id.from(_N, "ArgoCdNetworkAccessConfigRequest"),
            target = M.ArgoCdNetworkAccessConfigRequest,
        }),
    },
})

M.UpdateCapabilityConfiguration = schema.new({
    id = id.from(_N, "UpdateCapabilityConfiguration"),
    type = "structure",
    members = {
        argoCd = schema.new({
            id = id.from(_N, "UpdateCapabilityConfiguration", "argoCd"),
            type = "structure",
            name = "argoCd",
            target_id = id.from(_N, "UpdateArgoCdConfig"),
            target = M.UpdateArgoCdConfig,
        }),
    },
})

M.UpdateCapabilityInput = schema.new({
    id = id.from(_N, "UpdateCapabilityInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "UpdateCapabilityInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        capabilityName = schema.new({
            id = id.from(_N, "UpdateCapabilityInput", "capabilityName"),
            type = "string",
            name = "capabilityName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateCapabilityInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "UpdateCapabilityInput", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "UpdateCapabilityConfiguration"),
            target = M.UpdateCapabilityConfiguration,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "UpdateCapabilityInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        deletePropagationPolicy = schema.new({
            id = id.from(_N, "UpdateCapabilityInput", "deletePropagationPolicy"),
            type = "string",
            name = "deletePropagationPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateCapabilityOutput = schema.new({
    id = id.from(_N, "UpdateCapabilityOutput"),
    type = "structure",
    members = {
        update = schema.new({
            id = id.from(_N, "UpdateCapabilityOutput", "update"),
            type = "structure",
            name = "update",
            target_id = id.from(_N, "Update"),
            target = M.Update,
        }),
    },
})

M.UpdateAccessConfigRequest = schema.new({
    id = id.from(_N, "UpdateAccessConfigRequest"),
    type = "structure",
    members = {
        authenticationMode = schema.new({
            id = id.from(_N, "UpdateAccessConfigRequest", "authenticationMode"),
            type = "string",
            name = "authenticationMode",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateClusterConfigInput = schema.new({
    id = id.from(_N, "UpdateClusterConfigInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourcesVpcConfig = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "resourcesVpcConfig"),
            type = "structure",
            name = "resourcesVpcConfig",
            target_id = id.from(_N, "VpcConfigRequest"),
            target = M.VpcConfigRequest,
        }),
        logging = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "logging"),
            type = "structure",
            name = "logging",
            target_id = id.from(_N, "Logging"),
            target = M.Logging,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        accessConfig = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "accessConfig"),
            type = "structure",
            name = "accessConfig",
            target_id = id.from(_N, "UpdateAccessConfigRequest"),
            target = M.UpdateAccessConfigRequest,
        }),
        upgradePolicy = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "upgradePolicy"),
            type = "structure",
            name = "upgradePolicy",
            target_id = id.from(_N, "UpgradePolicyRequest"),
            target = M.UpgradePolicyRequest,
        }),
        zonalShiftConfig = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "zonalShiftConfig"),
            type = "structure",
            name = "zonalShiftConfig",
            target_id = id.from(_N, "ZonalShiftConfigRequest"),
            target = M.ZonalShiftConfigRequest,
        }),
        computeConfig = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "computeConfig"),
            type = "structure",
            name = "computeConfig",
            target_id = id.from(_N, "ComputeConfigRequest"),
            target = M.ComputeConfigRequest,
        }),
        kubernetesNetworkConfig = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "kubernetesNetworkConfig"),
            type = "structure",
            name = "kubernetesNetworkConfig",
            target_id = id.from(_N, "KubernetesNetworkConfigRequest"),
            target = M.KubernetesNetworkConfigRequest,
        }),
        storageConfig = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "storageConfig"),
            type = "structure",
            name = "storageConfig",
            target_id = id.from(_N, "StorageConfigRequest"),
            target = M.StorageConfigRequest,
        }),
        remoteNetworkConfig = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "remoteNetworkConfig"),
            type = "structure",
            name = "remoteNetworkConfig",
            target_id = id.from(_N, "RemoteNetworkConfigRequest"),
            target = M.RemoteNetworkConfigRequest,
        }),
        deletionProtection = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "deletionProtection"),
            type = "boolean",
            name = "deletionProtection",
            target_id = prelude.Boolean.id,
        }),
        controlPlaneScalingConfig = schema.new({
            id = id.from(_N, "UpdateClusterConfigInput", "controlPlaneScalingConfig"),
            type = "structure",
            name = "controlPlaneScalingConfig",
            target_id = id.from(_N, "ControlPlaneScalingConfig"),
            target = M.ControlPlaneScalingConfig,
        }),
    },
})

M.UpdateClusterConfigOutput = schema.new({
    id = id.from(_N, "UpdateClusterConfigOutput"),
    type = "structure",
    members = {
        update = schema.new({
            id = id.from(_N, "UpdateClusterConfigOutput", "update"),
            type = "structure",
            name = "update",
            target_id = id.from(_N, "Update"),
            target = M.Update,
        }),
    },
})

M.InvalidStateException = schema.new({
    id = id.from(_N, "InvalidStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        clusterName = schema.new({
            id = id.from(_N, "InvalidStateException", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "InvalidStateException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateClusterVersionInput = schema.new({
    id = id.from(_N, "UpdateClusterVersionInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateClusterVersionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "UpdateClusterVersionInput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "UpdateClusterVersionInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        force = schema.new({
            id = id.from(_N, "UpdateClusterVersionInput", "force"),
            type = "boolean",
            name = "force",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.UpdateClusterVersionOutput = schema.new({
    id = id.from(_N, "UpdateClusterVersionOutput"),
    type = "structure",
    members = {
        update = schema.new({
            id = id.from(_N, "UpdateClusterVersionOutput", "update"),
            type = "structure",
            name = "update",
            target_id = id.from(_N, "Update"),
            target = M.Update,
        }),
    },
})

M.UpdateEksAnywhereSubscriptionInput = schema.new({
    id = id.from(_N, "UpdateEksAnywhereSubscriptionInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateEksAnywhereSubscriptionInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        autoRenew = schema.new({
            id = id.from(_N, "UpdateEksAnywhereSubscriptionInput", "autoRenew"),
            type = "boolean",
            name = "autoRenew",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "UpdateEksAnywhereSubscriptionInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateEksAnywhereSubscriptionOutput = schema.new({
    id = id.from(_N, "UpdateEksAnywhereSubscriptionOutput"),
    type = "structure",
    members = {
        subscription = schema.new({
            id = id.from(_N, "UpdateEksAnywhereSubscriptionOutput", "subscription"),
            type = "structure",
            name = "subscription",
            target_id = id.from(_N, "EksAnywhereSubscription"),
            target = M.EksAnywhereSubscription,
        }),
    },
})

M.UpdateLabelsPayload = schema.new({
    id = id.from(_N, "UpdateLabelsPayload"),
    type = "structure",
    members = {
        addOrUpdateLabels = schema.new({
            id = id.from(_N, "UpdateLabelsPayload", "addOrUpdateLabels"),
            type = "map",
            name = "addOrUpdateLabels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        removeLabels = schema.new({
            id = id.from(_N, "UpdateLabelsPayload", "removeLabels"),
            type = "list",
            name = "removeLabels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateTaintsPayload = schema.new({
    id = id.from(_N, "UpdateTaintsPayload"),
    type = "structure",
    members = {
        addOrUpdateTaints = schema.new({
            id = id.from(_N, "UpdateTaintsPayload", "addOrUpdateTaints"),
            type = "list",
            name = "addOrUpdateTaints",
            target_id = prelude.Document.id,
            list_member = M.Taint,
        }),
        removeTaints = schema.new({
            id = id.from(_N, "UpdateTaintsPayload", "removeTaints"),
            type = "list",
            name = "removeTaints",
            target_id = prelude.Document.id,
            list_member = M.Taint,
        }),
    },
})

M.UpdateNodegroupConfigInput = schema.new({
    id = id.from(_N, "UpdateNodegroupConfigInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "UpdateNodegroupConfigInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "UpdateNodegroupConfigInput", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        labels = schema.new({
            id = id.from(_N, "UpdateNodegroupConfigInput", "labels"),
            type = "structure",
            name = "labels",
            target_id = id.from(_N, "UpdateLabelsPayload"),
            target = M.UpdateLabelsPayload,
        }),
        taints = schema.new({
            id = id.from(_N, "UpdateNodegroupConfigInput", "taints"),
            type = "structure",
            name = "taints",
            target_id = id.from(_N, "UpdateTaintsPayload"),
            target = M.UpdateTaintsPayload,
        }),
        scalingConfig = schema.new({
            id = id.from(_N, "UpdateNodegroupConfigInput", "scalingConfig"),
            type = "structure",
            name = "scalingConfig",
            target_id = id.from(_N, "NodegroupScalingConfig"),
            target = M.NodegroupScalingConfig,
        }),
        updateConfig = schema.new({
            id = id.from(_N, "UpdateNodegroupConfigInput", "updateConfig"),
            type = "structure",
            name = "updateConfig",
            target_id = id.from(_N, "NodegroupUpdateConfig"),
            target = M.NodegroupUpdateConfig,
        }),
        nodeRepairConfig = schema.new({
            id = id.from(_N, "UpdateNodegroupConfigInput", "nodeRepairConfig"),
            type = "structure",
            name = "nodeRepairConfig",
            target_id = id.from(_N, "NodeRepairConfig"),
            target = M.NodeRepairConfig,
        }),
        warmPoolConfig = schema.new({
            id = id.from(_N, "UpdateNodegroupConfigInput", "warmPoolConfig"),
            type = "structure",
            name = "warmPoolConfig",
            target_id = id.from(_N, "WarmPoolConfig"),
            target = M.WarmPoolConfig,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "UpdateNodegroupConfigInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateNodegroupConfigOutput = schema.new({
    id = id.from(_N, "UpdateNodegroupConfigOutput"),
    type = "structure",
    members = {
        update = schema.new({
            id = id.from(_N, "UpdateNodegroupConfigOutput", "update"),
            type = "structure",
            name = "update",
            target_id = id.from(_N, "Update"),
            target = M.Update,
        }),
    },
})

M.UpdateNodegroupVersionInput = schema.new({
    id = id.from(_N, "UpdateNodegroupVersionInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "UpdateNodegroupVersionInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nodegroupName = schema.new({
            id = id.from(_N, "UpdateNodegroupVersionInput", "nodegroupName"),
            type = "string",
            name = "nodegroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "UpdateNodegroupVersionInput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        releaseVersion = schema.new({
            id = id.from(_N, "UpdateNodegroupVersionInput", "releaseVersion"),
            type = "string",
            name = "releaseVersion",
            target_id = prelude.String.id,
        }),
        launchTemplate = schema.new({
            id = id.from(_N, "UpdateNodegroupVersionInput", "launchTemplate"),
            type = "structure",
            name = "launchTemplate",
            target_id = id.from(_N, "LaunchTemplateSpecification"),
            target = M.LaunchTemplateSpecification,
        }),
        force = schema.new({
            id = id.from(_N, "UpdateNodegroupVersionInput", "force"),
            type = "boolean",
            name = "force",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "UpdateNodegroupVersionInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateNodegroupVersionOutput = schema.new({
    id = id.from(_N, "UpdateNodegroupVersionOutput"),
    type = "structure",
    members = {
        update = schema.new({
            id = id.from(_N, "UpdateNodegroupVersionOutput", "update"),
            type = "structure",
            name = "update",
            target_id = id.from(_N, "Update"),
            target = M.Update,
        }),
    },
})

M.UpdatePodIdentityAssociationInput = schema.new({
    id = id.from(_N, "UpdatePodIdentityAssociationInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "UpdatePodIdentityAssociationInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        associationId = schema.new({
            id = id.from(_N, "UpdatePodIdentityAssociationInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdatePodIdentityAssociationInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "UpdatePodIdentityAssociationInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        disableSessionTags = schema.new({
            id = id.from(_N, "UpdatePodIdentityAssociationInput", "disableSessionTags"),
            type = "boolean",
            name = "disableSessionTags",
            target_id = prelude.Boolean.id,
        }),
        targetRoleArn = schema.new({
            id = id.from(_N, "UpdatePodIdentityAssociationInput", "targetRoleArn"),
            type = "string",
            name = "targetRoleArn",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "UpdatePodIdentityAssociationInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePodIdentityAssociationOutput = schema.new({
    id = id.from(_N, "UpdatePodIdentityAssociationOutput"),
    type = "structure",
    members = {
        association = schema.new({
            id = id.from(_N, "UpdatePodIdentityAssociationOutput", "association"),
            type = "structure",
            name = "association",
            target_id = id.from(_N, "PodIdentityAssociation"),
            target = M.PodIdentityAssociation,
        }),
    },
})

return M
