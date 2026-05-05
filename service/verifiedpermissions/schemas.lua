local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.verifiedpermissions"

local M = {}

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.PolicyStoreList = schema.new({ type = "list", list_member = M.PolicyStoreItem })

M.ResourceConflictList = schema.new({ type = "list", list_member = M.ResourceConflict })

M.BatchIsAuthorizedInputList = schema.new({ type = "list", list_member = M.BatchIsAuthorizedInputItem })

M.BatchIsAuthorizedOutputList = schema.new({ type = "list", list_member = M.BatchIsAuthorizedOutputItem })

M.BatchIsAuthorizedWithTokenInputList = schema.new({ type = "list", list_member = M.BatchIsAuthorizedWithTokenInputItem })

M.BatchIsAuthorizedWithTokenOutputList = schema.new({ type = "list", list_member = M.BatchIsAuthorizedWithTokenOutputItem })

M.NamespaceList = schema.new({ type = "list", list_member = prelude.String })

M.DeterminingPolicyList = schema.new({ type = "list", list_member = M.DeterminingPolicyItem })

M.EvaluationErrorList = schema.new({ type = "list", list_member = M.EvaluationErrorItem })

M.BatchGetPolicyInputList = schema.new({ type = "list", list_member = M.BatchGetPolicyInputItem })

M.BatchGetPolicyOutputList = schema.new({ type = "list", list_member = M.BatchGetPolicyOutputItem })

M.BatchGetPolicyErrorList = schema.new({ type = "list", list_member = M.BatchGetPolicyErrorItem })

M.PolicyStoreAliasList = schema.new({ type = "list", list_member = M.PolicyStoreAliasItem })

M.IdentitySourceFilters = schema.new({ type = "list", list_member = M.IdentitySourceFilter })

M.IdentitySources = schema.new({ type = "list", list_member = M.IdentitySourceItem })

M.PolicyList = schema.new({ type = "list", list_member = M.PolicyItem })

M.ActionIdentifierList = schema.new({ type = "list", list_member = M.ActionIdentifier })

M.PolicyTemplatesList = schema.new({ type = "list", list_member = M.PolicyTemplateItem })

M.EntityList = schema.new({ type = "list", list_member = M.EntityItem })

M.ContextMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.AttributeValue })

M.ClientIds = schema.new({ type = "list", list_member = prelude.String })

M.EncryptionContext = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.EntityAttributes = schema.new({ type = "map", map_key = prelude.String, map_value = M.AttributeValue })

M.ParentList = schema.new({ type = "list", list_member = M.EntityIdentifier })

M.EntityCedarTags = schema.new({ type = "map", map_key = prelude.String, map_value = M.CedarTagValue })

M.SetAttribute = schema.new({ type = "list", list_member = M.AttributeValue })

M.RecordAttribute = schema.new({ type = "map", map_key = prelude.String, map_value = M.AttributeValue })

M.Audiences = schema.new({ type = "list", list_member = prelude.String })

M.CedarTagSetAttribute = schema.new({ type = "list", list_member = M.CedarTagValue })

M.CedarTagRecordAttribute = schema.new({ type = "map", map_key = prelude.String, map_value = M.CedarTagValue })

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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActionIdentifier = schema.new({
    id = id.from(_N, "ActionIdentifier"),
    type = "structure",
    members = {
        actionType = schema.new({
            id = id.from(_N, "ActionIdentifier", "actionType"),
            type = "string",
            name = "actionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionId = schema.new({
            id = id.from(_N, "ActionIdentifier", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EntityIdentifier = schema.new({
    id = id.from(_N, "EntityIdentifier"),
    type = "structure",
    members = {
        entityType = schema.new({
            id = id.from(_N, "EntityIdentifier", "entityType"),
            type = "string",
            name = "entityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        entityId = schema.new({
            id = id.from(_N, "EntityIdentifier", "entityId"),
            type = "string",
            name = "entityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetPolicyInputItem = schema.new({
    id = id.from(_N, "BatchGetPolicyInputItem"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "BatchGetPolicyInputItem", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "BatchGetPolicyInputItem", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetPolicyInput = schema.new({
    id = id.from(_N, "BatchGetPolicyInput"),
    type = "structure",
    members = {
        requests = schema.new({
            id = id.from(_N, "BatchGetPolicyInput", "requests"),
            type = "list",
            name = "requests",
            target_id = prelude.Document.id,
            list_member = M.BatchGetPolicyInputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetPolicyErrorItem = schema.new({
    id = id.from(_N, "BatchGetPolicyErrorItem"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "BatchGetPolicyErrorItem", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "BatchGetPolicyErrorItem", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "BatchGetPolicyErrorItem", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "BatchGetPolicyErrorItem", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StaticPolicyDefinitionDetail = schema.new({
    id = id.from(_N, "StaticPolicyDefinitionDetail"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "StaticPolicyDefinitionDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        statement = schema.new({
            id = id.from(_N, "StaticPolicyDefinitionDetail", "statement"),
            type = "string",
            name = "statement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TemplateLinkedPolicyDefinitionDetail = schema.new({
    id = id.from(_N, "TemplateLinkedPolicyDefinitionDetail"),
    type = "structure",
    members = {
        policyTemplateId = schema.new({
            id = id.from(_N, "TemplateLinkedPolicyDefinitionDetail", "policyTemplateId"),
            type = "string",
            name = "policyTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "TemplateLinkedPolicyDefinitionDetail", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        resource = schema.new({
            id = id.from(_N, "TemplateLinkedPolicyDefinitionDetail", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
    },
})

M.PolicyDefinitionDetail = schema.new({
    id = id.from(_N, "PolicyDefinitionDetail"),
    type = "union",
    members = {
        static = schema.new({
            id = id.from(_N, "PolicyDefinitionDetail", "static"),
            type = "structure",
            name = "static",
            target_id = id.from(_N, "StaticPolicyDefinitionDetail"),
            target = M.StaticPolicyDefinitionDetail,
        }),
        templateLinked = schema.new({
            id = id.from(_N, "PolicyDefinitionDetail", "templateLinked"),
            type = "structure",
            name = "templateLinked",
            target_id = id.from(_N, "TemplateLinkedPolicyDefinitionDetail"),
            target = M.TemplateLinkedPolicyDefinitionDetail,
        }),
    },
})

M.BatchGetPolicyOutputItem = schema.new({
    id = id.from(_N, "BatchGetPolicyOutputItem"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "BatchGetPolicyOutputItem", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "BatchGetPolicyOutputItem", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyType = schema.new({
            id = id.from(_N, "BatchGetPolicyOutputItem", "policyType"),
            type = "string",
            name = "policyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "BatchGetPolicyOutputItem", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinitionDetail"),
            target = M.PolicyDefinitionDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "BatchGetPolicyOutputItem", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "BatchGetPolicyOutputItem", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "BatchGetPolicyOutputItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetPolicyOutput = schema.new({
    id = id.from(_N, "BatchGetPolicyOutput"),
    type = "structure",
    members = {
        results = schema.new({
            id = id.from(_N, "BatchGetPolicyOutput", "results"),
            type = "list",
            name = "results",
            target_id = prelude.Document.id,
            list_member = M.BatchGetPolicyOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "BatchGetPolicyOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchGetPolicyErrorItem,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
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
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceCode = schema.new({
            id = id.from(_N, "ThrottlingException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "quotaCode"),
            type = "string",
            name = "quotaCode",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "ValidationExceptionField", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.DeterminingPolicyItem = schema.new({
    id = id.from(_N, "DeterminingPolicyItem"),
    type = "structure",
    members = {
        policyId = schema.new({
            id = id.from(_N, "DeterminingPolicyItem", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EvaluationErrorItem = schema.new({
    id = id.from(_N, "EvaluationErrorItem"),
    type = "structure",
    members = {
        errorDescription = schema.new({
            id = id.from(_N, "EvaluationErrorItem", "errorDescription"),
            type = "string",
            name = "errorDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CognitoGroupConfiguration = schema.new({
    id = id.from(_N, "CognitoGroupConfiguration"),
    type = "structure",
    members = {
        groupEntityType = schema.new({
            id = id.from(_N, "CognitoGroupConfiguration", "groupEntityType"),
            type = "string",
            name = "groupEntityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CognitoGroupConfigurationDetail = schema.new({
    id = id.from(_N, "CognitoGroupConfigurationDetail"),
    type = "structure",
    members = {
        groupEntityType = schema.new({
            id = id.from(_N, "CognitoGroupConfigurationDetail", "groupEntityType"),
            type = "string",
            name = "groupEntityType",
            target_id = prelude.String.id,
        }),
    },
})

M.CognitoGroupConfigurationItem = schema.new({
    id = id.from(_N, "CognitoGroupConfigurationItem"),
    type = "structure",
    members = {
        groupEntityType = schema.new({
            id = id.from(_N, "CognitoGroupConfigurationItem", "groupEntityType"),
            type = "string",
            name = "groupEntityType",
            target_id = prelude.String.id,
        }),
    },
})

M.CognitoUserPoolConfiguration = schema.new({
    id = id.from(_N, "CognitoUserPoolConfiguration"),
    type = "structure",
    members = {
        userPoolArn = schema.new({
            id = id.from(_N, "CognitoUserPoolConfiguration", "userPoolArn"),
            type = "string",
            name = "userPoolArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientIds = schema.new({
            id = id.from(_N, "CognitoUserPoolConfiguration", "clientIds"),
            type = "list",
            name = "clientIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        groupConfiguration = schema.new({
            id = id.from(_N, "CognitoUserPoolConfiguration", "groupConfiguration"),
            type = "structure",
            name = "groupConfiguration",
            target_id = id.from(_N, "CognitoGroupConfiguration"),
            target = M.CognitoGroupConfiguration,
        }),
    },
})

M.CognitoUserPoolConfigurationDetail = schema.new({
    id = id.from(_N, "CognitoUserPoolConfigurationDetail"),
    type = "structure",
    members = {
        userPoolArn = schema.new({
            id = id.from(_N, "CognitoUserPoolConfigurationDetail", "userPoolArn"),
            type = "string",
            name = "userPoolArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientIds = schema.new({
            id = id.from(_N, "CognitoUserPoolConfigurationDetail", "clientIds"),
            type = "list",
            name = "clientIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        issuer = schema.new({
            id = id.from(_N, "CognitoUserPoolConfigurationDetail", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        groupConfiguration = schema.new({
            id = id.from(_N, "CognitoUserPoolConfigurationDetail", "groupConfiguration"),
            type = "structure",
            name = "groupConfiguration",
            target_id = id.from(_N, "CognitoGroupConfigurationDetail"),
            target = M.CognitoGroupConfigurationDetail,
        }),
    },
})

M.CognitoUserPoolConfigurationItem = schema.new({
    id = id.from(_N, "CognitoUserPoolConfigurationItem"),
    type = "structure",
    members = {
        userPoolArn = schema.new({
            id = id.from(_N, "CognitoUserPoolConfigurationItem", "userPoolArn"),
            type = "string",
            name = "userPoolArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientIds = schema.new({
            id = id.from(_N, "CognitoUserPoolConfigurationItem", "clientIds"),
            type = "list",
            name = "clientIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        issuer = schema.new({
            id = id.from(_N, "CognitoUserPoolConfigurationItem", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        groupConfiguration = schema.new({
            id = id.from(_N, "CognitoUserPoolConfigurationItem", "groupConfiguration"),
            type = "structure",
            name = "groupConfiguration",
            target_id = id.from(_N, "CognitoGroupConfigurationItem"),
            target = M.CognitoGroupConfigurationItem,
        }),
    },
})

M.OpenIdConnectGroupConfiguration = schema.new({
    id = id.from(_N, "OpenIdConnectGroupConfiguration"),
    type = "structure",
    members = {
        groupClaim = schema.new({
            id = id.from(_N, "OpenIdConnectGroupConfiguration", "groupClaim"),
            type = "string",
            name = "groupClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        groupEntityType = schema.new({
            id = id.from(_N, "OpenIdConnectGroupConfiguration", "groupEntityType"),
            type = "string",
            name = "groupEntityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OpenIdConnectAccessTokenConfiguration = schema.new({
    id = id.from(_N, "OpenIdConnectAccessTokenConfiguration"),
    type = "structure",
    members = {
        principalIdClaim = schema.new({
            id = id.from(_N, "OpenIdConnectAccessTokenConfiguration", "principalIdClaim"),
            type = "string",
            name = "principalIdClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "sub" },
            },
        }),
        audiences = schema.new({
            id = id.from(_N, "OpenIdConnectAccessTokenConfiguration", "audiences"),
            type = "list",
            name = "audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OpenIdConnectIdentityTokenConfiguration = schema.new({
    id = id.from(_N, "OpenIdConnectIdentityTokenConfiguration"),
    type = "structure",
    members = {
        principalIdClaim = schema.new({
            id = id.from(_N, "OpenIdConnectIdentityTokenConfiguration", "principalIdClaim"),
            type = "string",
            name = "principalIdClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "sub" },
            },
        }),
        clientIds = schema.new({
            id = id.from(_N, "OpenIdConnectIdentityTokenConfiguration", "clientIds"),
            type = "list",
            name = "clientIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OpenIdConnectTokenSelection = schema.new({
    id = id.from(_N, "OpenIdConnectTokenSelection"),
    type = "union",
    members = {
        accessTokenOnly = schema.new({
            id = id.from(_N, "OpenIdConnectTokenSelection", "accessTokenOnly"),
            type = "structure",
            name = "accessTokenOnly",
            target_id = id.from(_N, "OpenIdConnectAccessTokenConfiguration"),
            target = M.OpenIdConnectAccessTokenConfiguration,
        }),
        identityTokenOnly = schema.new({
            id = id.from(_N, "OpenIdConnectTokenSelection", "identityTokenOnly"),
            type = "structure",
            name = "identityTokenOnly",
            target_id = id.from(_N, "OpenIdConnectIdentityTokenConfiguration"),
            target = M.OpenIdConnectIdentityTokenConfiguration,
        }),
    },
})

M.OpenIdConnectConfiguration = schema.new({
    id = id.from(_N, "OpenIdConnectConfiguration"),
    type = "structure",
    members = {
        issuer = schema.new({
            id = id.from(_N, "OpenIdConnectConfiguration", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        entityIdPrefix = schema.new({
            id = id.from(_N, "OpenIdConnectConfiguration", "entityIdPrefix"),
            type = "string",
            name = "entityIdPrefix",
            target_id = prelude.String.id,
        }),
        groupConfiguration = schema.new({
            id = id.from(_N, "OpenIdConnectConfiguration", "groupConfiguration"),
            type = "structure",
            name = "groupConfiguration",
            target_id = id.from(_N, "OpenIdConnectGroupConfiguration"),
            target = M.OpenIdConnectGroupConfiguration,
        }),
        tokenSelection = schema.new({
            id = id.from(_N, "OpenIdConnectConfiguration", "tokenSelection"),
            type = "union",
            name = "tokenSelection",
            target_id = id.from(_N, "OpenIdConnectTokenSelection"),
            target = M.OpenIdConnectTokenSelection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Configuration = schema.new({
    id = id.from(_N, "Configuration"),
    type = "union",
    members = {
        cognitoUserPoolConfiguration = schema.new({
            id = id.from(_N, "Configuration", "cognitoUserPoolConfiguration"),
            type = "structure",
            name = "cognitoUserPoolConfiguration",
            target_id = id.from(_N, "CognitoUserPoolConfiguration"),
            target = M.CognitoUserPoolConfiguration,
        }),
        openIdConnectConfiguration = schema.new({
            id = id.from(_N, "Configuration", "openIdConnectConfiguration"),
            type = "structure",
            name = "openIdConnectConfiguration",
            target_id = id.from(_N, "OpenIdConnectConfiguration"),
            target = M.OpenIdConnectConfiguration,
        }),
    },
})

M.OpenIdConnectGroupConfigurationDetail = schema.new({
    id = id.from(_N, "OpenIdConnectGroupConfigurationDetail"),
    type = "structure",
    members = {
        groupClaim = schema.new({
            id = id.from(_N, "OpenIdConnectGroupConfigurationDetail", "groupClaim"),
            type = "string",
            name = "groupClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        groupEntityType = schema.new({
            id = id.from(_N, "OpenIdConnectGroupConfigurationDetail", "groupEntityType"),
            type = "string",
            name = "groupEntityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OpenIdConnectAccessTokenConfigurationDetail = schema.new({
    id = id.from(_N, "OpenIdConnectAccessTokenConfigurationDetail"),
    type = "structure",
    members = {
        principalIdClaim = schema.new({
            id = id.from(_N, "OpenIdConnectAccessTokenConfigurationDetail", "principalIdClaim"),
            type = "string",
            name = "principalIdClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "sub" },
            },
        }),
        audiences = schema.new({
            id = id.from(_N, "OpenIdConnectAccessTokenConfigurationDetail", "audiences"),
            type = "list",
            name = "audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OpenIdConnectIdentityTokenConfigurationDetail = schema.new({
    id = id.from(_N, "OpenIdConnectIdentityTokenConfigurationDetail"),
    type = "structure",
    members = {
        principalIdClaim = schema.new({
            id = id.from(_N, "OpenIdConnectIdentityTokenConfigurationDetail", "principalIdClaim"),
            type = "string",
            name = "principalIdClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "sub" },
            },
        }),
        clientIds = schema.new({
            id = id.from(_N, "OpenIdConnectIdentityTokenConfigurationDetail", "clientIds"),
            type = "list",
            name = "clientIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OpenIdConnectTokenSelectionDetail = schema.new({
    id = id.from(_N, "OpenIdConnectTokenSelectionDetail"),
    type = "union",
    members = {
        accessTokenOnly = schema.new({
            id = id.from(_N, "OpenIdConnectTokenSelectionDetail", "accessTokenOnly"),
            type = "structure",
            name = "accessTokenOnly",
            target_id = id.from(_N, "OpenIdConnectAccessTokenConfigurationDetail"),
            target = M.OpenIdConnectAccessTokenConfigurationDetail,
        }),
        identityTokenOnly = schema.new({
            id = id.from(_N, "OpenIdConnectTokenSelectionDetail", "identityTokenOnly"),
            type = "structure",
            name = "identityTokenOnly",
            target_id = id.from(_N, "OpenIdConnectIdentityTokenConfigurationDetail"),
            target = M.OpenIdConnectIdentityTokenConfigurationDetail,
        }),
    },
})

M.OpenIdConnectConfigurationDetail = schema.new({
    id = id.from(_N, "OpenIdConnectConfigurationDetail"),
    type = "structure",
    members = {
        issuer = schema.new({
            id = id.from(_N, "OpenIdConnectConfigurationDetail", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        entityIdPrefix = schema.new({
            id = id.from(_N, "OpenIdConnectConfigurationDetail", "entityIdPrefix"),
            type = "string",
            name = "entityIdPrefix",
            target_id = prelude.String.id,
        }),
        groupConfiguration = schema.new({
            id = id.from(_N, "OpenIdConnectConfigurationDetail", "groupConfiguration"),
            type = "structure",
            name = "groupConfiguration",
            target_id = id.from(_N, "OpenIdConnectGroupConfigurationDetail"),
            target = M.OpenIdConnectGroupConfigurationDetail,
        }),
        tokenSelection = schema.new({
            id = id.from(_N, "OpenIdConnectConfigurationDetail", "tokenSelection"),
            type = "union",
            name = "tokenSelection",
            target_id = id.from(_N, "OpenIdConnectTokenSelectionDetail"),
            target = M.OpenIdConnectTokenSelectionDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfigurationDetail = schema.new({
    id = id.from(_N, "ConfigurationDetail"),
    type = "union",
    members = {
        cognitoUserPoolConfiguration = schema.new({
            id = id.from(_N, "ConfigurationDetail", "cognitoUserPoolConfiguration"),
            type = "structure",
            name = "cognitoUserPoolConfiguration",
            target_id = id.from(_N, "CognitoUserPoolConfigurationDetail"),
            target = M.CognitoUserPoolConfigurationDetail,
        }),
        openIdConnectConfiguration = schema.new({
            id = id.from(_N, "ConfigurationDetail", "openIdConnectConfiguration"),
            type = "structure",
            name = "openIdConnectConfiguration",
            target_id = id.from(_N, "OpenIdConnectConfigurationDetail"),
            target = M.OpenIdConnectConfigurationDetail,
        }),
    },
})

M.OpenIdConnectGroupConfigurationItem = schema.new({
    id = id.from(_N, "OpenIdConnectGroupConfigurationItem"),
    type = "structure",
    members = {
        groupClaim = schema.new({
            id = id.from(_N, "OpenIdConnectGroupConfigurationItem", "groupClaim"),
            type = "string",
            name = "groupClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        groupEntityType = schema.new({
            id = id.from(_N, "OpenIdConnectGroupConfigurationItem", "groupEntityType"),
            type = "string",
            name = "groupEntityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OpenIdConnectAccessTokenConfigurationItem = schema.new({
    id = id.from(_N, "OpenIdConnectAccessTokenConfigurationItem"),
    type = "structure",
    members = {
        principalIdClaim = schema.new({
            id = id.from(_N, "OpenIdConnectAccessTokenConfigurationItem", "principalIdClaim"),
            type = "string",
            name = "principalIdClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "sub" },
            },
        }),
        audiences = schema.new({
            id = id.from(_N, "OpenIdConnectAccessTokenConfigurationItem", "audiences"),
            type = "list",
            name = "audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OpenIdConnectIdentityTokenConfigurationItem = schema.new({
    id = id.from(_N, "OpenIdConnectIdentityTokenConfigurationItem"),
    type = "structure",
    members = {
        principalIdClaim = schema.new({
            id = id.from(_N, "OpenIdConnectIdentityTokenConfigurationItem", "principalIdClaim"),
            type = "string",
            name = "principalIdClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "sub" },
            },
        }),
        clientIds = schema.new({
            id = id.from(_N, "OpenIdConnectIdentityTokenConfigurationItem", "clientIds"),
            type = "list",
            name = "clientIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OpenIdConnectTokenSelectionItem = schema.new({
    id = id.from(_N, "OpenIdConnectTokenSelectionItem"),
    type = "union",
    members = {
        accessTokenOnly = schema.new({
            id = id.from(_N, "OpenIdConnectTokenSelectionItem", "accessTokenOnly"),
            type = "structure",
            name = "accessTokenOnly",
            target_id = id.from(_N, "OpenIdConnectAccessTokenConfigurationItem"),
            target = M.OpenIdConnectAccessTokenConfigurationItem,
        }),
        identityTokenOnly = schema.new({
            id = id.from(_N, "OpenIdConnectTokenSelectionItem", "identityTokenOnly"),
            type = "structure",
            name = "identityTokenOnly",
            target_id = id.from(_N, "OpenIdConnectIdentityTokenConfigurationItem"),
            target = M.OpenIdConnectIdentityTokenConfigurationItem,
        }),
    },
})

M.OpenIdConnectConfigurationItem = schema.new({
    id = id.from(_N, "OpenIdConnectConfigurationItem"),
    type = "structure",
    members = {
        issuer = schema.new({
            id = id.from(_N, "OpenIdConnectConfigurationItem", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        entityIdPrefix = schema.new({
            id = id.from(_N, "OpenIdConnectConfigurationItem", "entityIdPrefix"),
            type = "string",
            name = "entityIdPrefix",
            target_id = prelude.String.id,
        }),
        groupConfiguration = schema.new({
            id = id.from(_N, "OpenIdConnectConfigurationItem", "groupConfiguration"),
            type = "structure",
            name = "groupConfiguration",
            target_id = id.from(_N, "OpenIdConnectGroupConfigurationItem"),
            target = M.OpenIdConnectGroupConfigurationItem,
        }),
        tokenSelection = schema.new({
            id = id.from(_N, "OpenIdConnectConfigurationItem", "tokenSelection"),
            type = "union",
            name = "tokenSelection",
            target_id = id.from(_N, "OpenIdConnectTokenSelectionItem"),
            target = M.OpenIdConnectTokenSelectionItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfigurationItem = schema.new({
    id = id.from(_N, "ConfigurationItem"),
    type = "union",
    members = {
        cognitoUserPoolConfiguration = schema.new({
            id = id.from(_N, "ConfigurationItem", "cognitoUserPoolConfiguration"),
            type = "structure",
            name = "cognitoUserPoolConfiguration",
            target_id = id.from(_N, "CognitoUserPoolConfigurationItem"),
            target = M.CognitoUserPoolConfigurationItem,
        }),
        openIdConnectConfiguration = schema.new({
            id = id.from(_N, "ConfigurationItem", "openIdConnectConfiguration"),
            type = "structure",
            name = "openIdConnectConfiguration",
            target_id = id.from(_N, "OpenIdConnectConfigurationItem"),
            target = M.OpenIdConnectConfigurationItem,
        }),
    },
})

M.ResourceConflict = schema.new({
    id = id.from(_N, "ResourceConflict"),
    type = "structure",
    members = {
        resourceId = schema.new({
            id = id.from(_N, "ResourceConflict", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceConflict", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resources = schema.new({
            id = id.from(_N, "ConflictException", "resources"),
            type = "list",
            name = "resources",
            target_id = prelude.Document.id,
            list_member = M.ResourceConflict,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateIdentitySourceInput = schema.new({
    id = id.from(_N, "CreateIdentitySourceInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateIdentitySourceInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "CreateIdentitySourceInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "CreateIdentitySourceInput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "Configuration"),
            target = M.Configuration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principalEntityType = schema.new({
            id = id.from(_N, "CreateIdentitySourceInput", "principalEntityType"),
            type = "string",
            name = "principalEntityType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateIdentitySourceOutput = schema.new({
    id = id.from(_N, "CreateIdentitySourceOutput"),
    type = "structure",
    members = {
        createdDate = schema.new({
            id = id.from(_N, "CreateIdentitySourceOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identitySourceId = schema.new({
            id = id.from(_N, "CreateIdentitySourceOutput", "identitySourceId"),
            type = "string",
            name = "identitySourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "CreateIdentitySourceOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "CreateIdentitySourceOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
            type = "string",
            name = "quotaCode",
            target_id = prelude.String.id,
        }),
    },
})

M.StaticPolicyDefinition = schema.new({
    id = id.from(_N, "StaticPolicyDefinition"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "StaticPolicyDefinition", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        statement = schema.new({
            id = id.from(_N, "StaticPolicyDefinition", "statement"),
            type = "string",
            name = "statement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TemplateLinkedPolicyDefinition = schema.new({
    id = id.from(_N, "TemplateLinkedPolicyDefinition"),
    type = "structure",
    members = {
        policyTemplateId = schema.new({
            id = id.from(_N, "TemplateLinkedPolicyDefinition", "policyTemplateId"),
            type = "string",
            name = "policyTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "TemplateLinkedPolicyDefinition", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        resource = schema.new({
            id = id.from(_N, "TemplateLinkedPolicyDefinition", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
    },
})

M.PolicyDefinition = schema.new({
    id = id.from(_N, "PolicyDefinition"),
    type = "union",
    members = {
        static = schema.new({
            id = id.from(_N, "PolicyDefinition", "static"),
            type = "structure",
            name = "static",
            target_id = id.from(_N, "StaticPolicyDefinition"),
            target = M.StaticPolicyDefinition,
        }),
        templateLinked = schema.new({
            id = id.from(_N, "PolicyDefinition", "templateLinked"),
            type = "structure",
            name = "templateLinked",
            target_id = id.from(_N, "TemplateLinkedPolicyDefinition"),
            target = M.TemplateLinkedPolicyDefinition,
        }),
    },
})

M.CreatePolicyInput = schema.new({
    id = id.from(_N, "CreatePolicyInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreatePolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "CreatePolicyInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "CreatePolicyInput", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinition"),
            target = M.PolicyDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreatePolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePolicyOutput = schema.new({
    id = id.from(_N, "CreatePolicyOutput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyType = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "policyType"),
            type = "string",
            name = "policyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        resource = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        actions = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.ActionIdentifier,
        }),
        createdDate = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        effect = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "effect"),
            type = "string",
            name = "effect",
            target_id = prelude.String.id,
        }),
    },
})

M.Unit = prelude.Unit

M.KmsEncryptionSettings = schema.new({
    id = id.from(_N, "KmsEncryptionSettings"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "KmsEncryptionSettings", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionContext = schema.new({
            id = id.from(_N, "KmsEncryptionSettings", "encryptionContext"),
            type = "map",
            name = "encryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.EncryptionSettings = schema.new({
    id = id.from(_N, "EncryptionSettings"),
    type = "union",
    members = {
        kmsEncryptionSettings = schema.new({
            id = id.from(_N, "EncryptionSettings", "kmsEncryptionSettings"),
            type = "structure",
            name = "kmsEncryptionSettings",
            target_id = id.from(_N, "KmsEncryptionSettings"),
            target = M.KmsEncryptionSettings,
        }),
        default = schema.new({
            id = id.from(_N, "EncryptionSettings", "default"),
            type = "structure",
            name = "default",
            target_id = id.from(_N, "Unit"),
            target = M.Unit,
        }),
    },
})

M.ValidationSettings = schema.new({
    id = id.from(_N, "ValidationSettings"),
    type = "structure",
    members = {
        mode = schema.new({
            id = id.from(_N, "ValidationSettings", "mode"),
            type = "string",
            name = "mode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePolicyStoreInput = schema.new({
    id = id.from(_N, "CreatePolicyStoreInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreatePolicyStoreInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        validationSettings = schema.new({
            id = id.from(_N, "CreatePolicyStoreInput", "validationSettings"),
            type = "structure",
            name = "validationSettings",
            target_id = id.from(_N, "ValidationSettings"),
            target = M.ValidationSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreatePolicyStoreInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        deletionProtection = schema.new({
            id = id.from(_N, "CreatePolicyStoreInput", "deletionProtection"),
            type = "string",
            name = "deletionProtection",
            target_id = prelude.String.id,
        }),
        encryptionSettings = schema.new({
            id = id.from(_N, "CreatePolicyStoreInput", "encryptionSettings"),
            type = "union",
            name = "encryptionSettings",
            target_id = id.from(_N, "EncryptionSettings"),
            target = M.EncryptionSettings,
        }),
        tags = schema.new({
            id = id.from(_N, "CreatePolicyStoreInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreatePolicyStoreOutput = schema.new({
    id = id.from(_N, "CreatePolicyStoreOutput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "CreatePolicyStoreOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "CreatePolicyStoreOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "CreatePolicyStoreOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "CreatePolicyStoreOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePolicyStoreAliasInput = schema.new({
    id = id.from(_N, "CreatePolicyStoreAliasInput"),
    type = "structure",
    members = {
        aliasName = schema.new({
            id = id.from(_N, "CreatePolicyStoreAliasInput", "aliasName"),
            type = "string",
            name = "aliasName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "CreatePolicyStoreAliasInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePolicyStoreAliasOutput = schema.new({
    id = id.from(_N, "CreatePolicyStoreAliasOutput"),
    type = "structure",
    members = {
        aliasName = schema.new({
            id = id.from(_N, "CreatePolicyStoreAliasOutput", "aliasName"),
            type = "string",
            name = "aliasName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "CreatePolicyStoreAliasOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        aliasArn = schema.new({
            id = id.from(_N, "CreatePolicyStoreAliasOutput", "aliasArn"),
            type = "string",
            name = "aliasArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreatePolicyStoreAliasOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePolicyTemplateInput = schema.new({
    id = id.from(_N, "CreatePolicyTemplateInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreatePolicyTemplateInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "CreatePolicyTemplateInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreatePolicyTemplateInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        statement = schema.new({
            id = id.from(_N, "CreatePolicyTemplateInput", "statement"),
            type = "string",
            name = "statement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreatePolicyTemplateInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePolicyTemplateOutput = schema.new({
    id = id.from(_N, "CreatePolicyTemplateOutput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "CreatePolicyTemplateOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyTemplateId = schema.new({
            id = id.from(_N, "CreatePolicyTemplateOutput", "policyTemplateId"),
            type = "string",
            name = "policyTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "CreatePolicyTemplateOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "CreatePolicyTemplateOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIdentitySourceInput = schema.new({
    id = id.from(_N, "DeleteIdentitySourceInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "DeleteIdentitySourceInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identitySourceId = schema.new({
            id = id.from(_N, "DeleteIdentitySourceInput", "identitySourceId"),
            type = "string",
            name = "identitySourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIdentitySourceOutput = schema.new({
    id = id.from(_N, "DeleteIdentitySourceOutput"),
    type = "structure",
})

M.DeletePolicyInput = schema.new({
    id = id.from(_N, "DeletePolicyInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "DeletePolicyInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "DeletePolicyInput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePolicyOutput = schema.new({
    id = id.from(_N, "DeletePolicyOutput"),
    type = "structure",
})

M.DeletePolicyStoreInput = schema.new({
    id = id.from(_N, "DeletePolicyStoreInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "DeletePolicyStoreInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePolicyStoreOutput = schema.new({
    id = id.from(_N, "DeletePolicyStoreOutput"),
    type = "structure",
})

M.InvalidStateException = schema.new({
    id = id.from(_N, "InvalidStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidStateException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePolicyStoreAliasInput = schema.new({
    id = id.from(_N, "DeletePolicyStoreAliasInput"),
    type = "structure",
    members = {
        aliasName = schema.new({
            id = id.from(_N, "DeletePolicyStoreAliasInput", "aliasName"),
            type = "string",
            name = "aliasName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePolicyStoreAliasOutput = schema.new({
    id = id.from(_N, "DeletePolicyStoreAliasOutput"),
    type = "structure",
})

M.DeletePolicyTemplateInput = schema.new({
    id = id.from(_N, "DeletePolicyTemplateInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "DeletePolicyTemplateInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyTemplateId = schema.new({
            id = id.from(_N, "DeletePolicyTemplateInput", "policyTemplateId"),
            type = "string",
            name = "policyTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePolicyTemplateOutput = schema.new({
    id = id.from(_N, "DeletePolicyTemplateOutput"),
    type = "structure",
})

M.KmsEncryptionState = schema.new({
    id = id.from(_N, "KmsEncryptionState"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "KmsEncryptionState", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionContext = schema.new({
            id = id.from(_N, "KmsEncryptionState", "encryptionContext"),
            type = "map",
            name = "encryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EncryptionState = schema.new({
    id = id.from(_N, "EncryptionState"),
    type = "union",
    members = {
        kmsEncryptionState = schema.new({
            id = id.from(_N, "EncryptionState", "kmsEncryptionState"),
            type = "structure",
            name = "kmsEncryptionState",
            target_id = id.from(_N, "KmsEncryptionState"),
            target = M.KmsEncryptionState,
        }),
        default = schema.new({
            id = id.from(_N, "EncryptionState", "default"),
            type = "structure",
            name = "default",
            target_id = id.from(_N, "Unit"),
            target = M.Unit,
        }),
    },
})

M.EntityReference = schema.new({
    id = id.from(_N, "EntityReference"),
    type = "union",
    members = {
        unspecified = schema.new({
            id = id.from(_N, "EntityReference", "unspecified"),
            type = "boolean",
            name = "unspecified",
            target_id = prelude.Boolean.id,
        }),
        identifier = schema.new({
            id = id.from(_N, "EntityReference", "identifier"),
            type = "structure",
            name = "identifier",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
    },
})

M.GetIdentitySourceInput = schema.new({
    id = id.from(_N, "GetIdentitySourceInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "GetIdentitySourceInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identitySourceId = schema.new({
            id = id.from(_N, "GetIdentitySourceInput", "identitySourceId"),
            type = "string",
            name = "identitySourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IdentitySourceDetails = schema.new({
    id = id.from(_N, "IdentitySourceDetails"),
    type = "structure",
    members = {
        clientIds = schema.new({
            id = id.from(_N, "IdentitySourceDetails", "clientIds"),
            type = "list",
            name = "clientIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        userPoolArn = schema.new({
            id = id.from(_N, "IdentitySourceDetails", "userPoolArn"),
            type = "string",
            name = "userPoolArn",
            target_id = prelude.String.id,
        }),
        discoveryUrl = schema.new({
            id = id.from(_N, "IdentitySourceDetails", "discoveryUrl"),
            type = "string",
            name = "discoveryUrl",
            target_id = prelude.String.id,
        }),
        openIdIssuer = schema.new({
            id = id.from(_N, "IdentitySourceDetails", "openIdIssuer"),
            type = "string",
            name = "openIdIssuer",
            target_id = prelude.String.id,
        }),
    },
})

M.GetIdentitySourceOutput = schema.new({
    id = id.from(_N, "GetIdentitySourceOutput"),
    type = "structure",
    members = {
        createdDate = schema.new({
            id = id.from(_N, "GetIdentitySourceOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        details = schema.new({
            id = id.from(_N, "GetIdentitySourceOutput", "details"),
            type = "structure",
            name = "details",
            target_id = id.from(_N, "IdentitySourceDetails"),
            target = M.IdentitySourceDetails,
        }),
        identitySourceId = schema.new({
            id = id.from(_N, "GetIdentitySourceOutput", "identitySourceId"),
            type = "string",
            name = "identitySourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "GetIdentitySourceOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "GetIdentitySourceOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principalEntityType = schema.new({
            id = id.from(_N, "GetIdentitySourceOutput", "principalEntityType"),
            type = "string",
            name = "principalEntityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "GetIdentitySourceOutput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "ConfigurationDetail"),
            target = M.ConfigurationDetail,
        }),
    },
})

M.GetPolicyInput = schema.new({
    id = id.from(_N, "GetPolicyInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "GetPolicyInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "GetPolicyInput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPolicyOutput = schema.new({
    id = id.from(_N, "GetPolicyOutput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "GetPolicyOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "GetPolicyOutput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyType = schema.new({
            id = id.from(_N, "GetPolicyOutput", "policyType"),
            type = "string",
            name = "policyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "GetPolicyOutput", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        resource = schema.new({
            id = id.from(_N, "GetPolicyOutput", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        actions = schema.new({
            id = id.from(_N, "GetPolicyOutput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.ActionIdentifier,
        }),
        definition = schema.new({
            id = id.from(_N, "GetPolicyOutput", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinitionDetail"),
            target = M.PolicyDefinitionDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "GetPolicyOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "GetPolicyOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        effect = schema.new({
            id = id.from(_N, "GetPolicyOutput", "effect"),
            type = "string",
            name = "effect",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetPolicyOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPolicyStoreInput = schema.new({
    id = id.from(_N, "GetPolicyStoreInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "GetPolicyStoreInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "GetPolicyStoreInput", "tags"),
            type = "boolean",
            name = "tags",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetPolicyStoreOutput = schema.new({
    id = id.from(_N, "GetPolicyStoreOutput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "GetPolicyStoreOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "GetPolicyStoreOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        validationSettings = schema.new({
            id = id.from(_N, "GetPolicyStoreOutput", "validationSettings"),
            type = "structure",
            name = "validationSettings",
            target_id = id.from(_N, "ValidationSettings"),
            target = M.ValidationSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "GetPolicyStoreOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "GetPolicyStoreOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetPolicyStoreOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        deletionProtection = schema.new({
            id = id.from(_N, "GetPolicyStoreOutput", "deletionProtection"),
            type = "string",
            name = "deletionProtection",
            target_id = prelude.String.id,
        }),
        encryptionState = schema.new({
            id = id.from(_N, "GetPolicyStoreOutput", "encryptionState"),
            type = "union",
            name = "encryptionState",
            target_id = id.from(_N, "EncryptionState"),
            target = M.EncryptionState,
        }),
        cedarVersion = schema.new({
            id = id.from(_N, "GetPolicyStoreOutput", "cedarVersion"),
            type = "string",
            name = "cedarVersion",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetPolicyStoreOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetPolicyStoreAliasInput = schema.new({
    id = id.from(_N, "GetPolicyStoreAliasInput"),
    type = "structure",
    members = {
        aliasName = schema.new({
            id = id.from(_N, "GetPolicyStoreAliasInput", "aliasName"),
            type = "string",
            name = "aliasName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPolicyStoreAliasOutput = schema.new({
    id = id.from(_N, "GetPolicyStoreAliasOutput"),
    type = "structure",
    members = {
        aliasName = schema.new({
            id = id.from(_N, "GetPolicyStoreAliasOutput", "aliasName"),
            type = "string",
            name = "aliasName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "GetPolicyStoreAliasOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        aliasArn = schema.new({
            id = id.from(_N, "GetPolicyStoreAliasOutput", "aliasArn"),
            type = "string",
            name = "aliasArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetPolicyStoreAliasOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        state = schema.new({
            id = id.from(_N, "GetPolicyStoreAliasOutput", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPolicyTemplateInput = schema.new({
    id = id.from(_N, "GetPolicyTemplateInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "GetPolicyTemplateInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyTemplateId = schema.new({
            id = id.from(_N, "GetPolicyTemplateInput", "policyTemplateId"),
            type = "string",
            name = "policyTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPolicyTemplateOutput = schema.new({
    id = id.from(_N, "GetPolicyTemplateOutput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "GetPolicyTemplateOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyTemplateId = schema.new({
            id = id.from(_N, "GetPolicyTemplateOutput", "policyTemplateId"),
            type = "string",
            name = "policyTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetPolicyTemplateOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        statement = schema.new({
            id = id.from(_N, "GetPolicyTemplateOutput", "statement"),
            type = "string",
            name = "statement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "GetPolicyTemplateOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "GetPolicyTemplateOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetPolicyTemplateOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSchemaInput = schema.new({
    id = id.from(_N, "GetSchemaInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "GetSchemaInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSchemaOutput = schema.new({
    id = id.from(_N, "GetSchemaOutput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "GetSchemaOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        schema = schema.new({
            id = id.from(_N, "GetSchemaOutput", "schema"),
            type = "string",
            name = "schema",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "GetSchemaOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "GetSchemaOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        namespaces = schema.new({
            id = id.from(_N, "GetSchemaOutput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.IdentitySourceFilter = schema.new({
    id = id.from(_N, "IdentitySourceFilter"),
    type = "structure",
    members = {
        principalEntityType = schema.new({
            id = id.from(_N, "IdentitySourceFilter", "principalEntityType"),
            type = "string",
            name = "principalEntityType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListIdentitySourcesInput = schema.new({
    id = id.from(_N, "ListIdentitySourcesInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "ListIdentitySourcesInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIdentitySourcesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListIdentitySourcesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        filters = schema.new({
            id = id.from(_N, "ListIdentitySourcesInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.IdentitySourceFilter,
        }),
    },
})

M.IdentitySourceItemDetails = schema.new({
    id = id.from(_N, "IdentitySourceItemDetails"),
    type = "structure",
    members = {
        clientIds = schema.new({
            id = id.from(_N, "IdentitySourceItemDetails", "clientIds"),
            type = "list",
            name = "clientIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        userPoolArn = schema.new({
            id = id.from(_N, "IdentitySourceItemDetails", "userPoolArn"),
            type = "string",
            name = "userPoolArn",
            target_id = prelude.String.id,
        }),
        discoveryUrl = schema.new({
            id = id.from(_N, "IdentitySourceItemDetails", "discoveryUrl"),
            type = "string",
            name = "discoveryUrl",
            target_id = prelude.String.id,
        }),
        openIdIssuer = schema.new({
            id = id.from(_N, "IdentitySourceItemDetails", "openIdIssuer"),
            type = "string",
            name = "openIdIssuer",
            target_id = prelude.String.id,
        }),
    },
})

M.IdentitySourceItem = schema.new({
    id = id.from(_N, "IdentitySourceItem"),
    type = "structure",
    members = {
        createdDate = schema.new({
            id = id.from(_N, "IdentitySourceItem", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        details = schema.new({
            id = id.from(_N, "IdentitySourceItem", "details"),
            type = "structure",
            name = "details",
            target_id = id.from(_N, "IdentitySourceItemDetails"),
            target = M.IdentitySourceItemDetails,
        }),
        identitySourceId = schema.new({
            id = id.from(_N, "IdentitySourceItem", "identitySourceId"),
            type = "string",
            name = "identitySourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "IdentitySourceItem", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "IdentitySourceItem", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principalEntityType = schema.new({
            id = id.from(_N, "IdentitySourceItem", "principalEntityType"),
            type = "string",
            name = "principalEntityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "IdentitySourceItem", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "ConfigurationItem"),
            target = M.ConfigurationItem,
        }),
    },
})

M.ListIdentitySourcesOutput = schema.new({
    id = id.from(_N, "ListIdentitySourcesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListIdentitySourcesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        identitySources = schema.new({
            id = id.from(_N, "ListIdentitySourcesOutput", "identitySources"),
            type = "list",
            name = "identitySources",
            target_id = prelude.Document.id,
            list_member = M.IdentitySourceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateCognitoGroupConfiguration = schema.new({
    id = id.from(_N, "UpdateCognitoGroupConfiguration"),
    type = "structure",
    members = {
        groupEntityType = schema.new({
            id = id.from(_N, "UpdateCognitoGroupConfiguration", "groupEntityType"),
            type = "string",
            name = "groupEntityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateCognitoUserPoolConfiguration = schema.new({
    id = id.from(_N, "UpdateCognitoUserPoolConfiguration"),
    type = "structure",
    members = {
        userPoolArn = schema.new({
            id = id.from(_N, "UpdateCognitoUserPoolConfiguration", "userPoolArn"),
            type = "string",
            name = "userPoolArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientIds = schema.new({
            id = id.from(_N, "UpdateCognitoUserPoolConfiguration", "clientIds"),
            type = "list",
            name = "clientIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        groupConfiguration = schema.new({
            id = id.from(_N, "UpdateCognitoUserPoolConfiguration", "groupConfiguration"),
            type = "structure",
            name = "groupConfiguration",
            target_id = id.from(_N, "UpdateCognitoGroupConfiguration"),
            target = M.UpdateCognitoGroupConfiguration,
        }),
    },
})

M.UpdateOpenIdConnectGroupConfiguration = schema.new({
    id = id.from(_N, "UpdateOpenIdConnectGroupConfiguration"),
    type = "structure",
    members = {
        groupClaim = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectGroupConfiguration", "groupClaim"),
            type = "string",
            name = "groupClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        groupEntityType = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectGroupConfiguration", "groupEntityType"),
            type = "string",
            name = "groupEntityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateOpenIdConnectAccessTokenConfiguration = schema.new({
    id = id.from(_N, "UpdateOpenIdConnectAccessTokenConfiguration"),
    type = "structure",
    members = {
        principalIdClaim = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectAccessTokenConfiguration", "principalIdClaim"),
            type = "string",
            name = "principalIdClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "sub" },
            },
        }),
        audiences = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectAccessTokenConfiguration", "audiences"),
            type = "list",
            name = "audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateOpenIdConnectIdentityTokenConfiguration = schema.new({
    id = id.from(_N, "UpdateOpenIdConnectIdentityTokenConfiguration"),
    type = "structure",
    members = {
        principalIdClaim = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectIdentityTokenConfiguration", "principalIdClaim"),
            type = "string",
            name = "principalIdClaim",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "sub" },
            },
        }),
        clientIds = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectIdentityTokenConfiguration", "clientIds"),
            type = "list",
            name = "clientIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateOpenIdConnectTokenSelection = schema.new({
    id = id.from(_N, "UpdateOpenIdConnectTokenSelection"),
    type = "union",
    members = {
        accessTokenOnly = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectTokenSelection", "accessTokenOnly"),
            type = "structure",
            name = "accessTokenOnly",
            target_id = id.from(_N, "UpdateOpenIdConnectAccessTokenConfiguration"),
            target = M.UpdateOpenIdConnectAccessTokenConfiguration,
        }),
        identityTokenOnly = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectTokenSelection", "identityTokenOnly"),
            type = "structure",
            name = "identityTokenOnly",
            target_id = id.from(_N, "UpdateOpenIdConnectIdentityTokenConfiguration"),
            target = M.UpdateOpenIdConnectIdentityTokenConfiguration,
        }),
    },
})

M.UpdateOpenIdConnectConfiguration = schema.new({
    id = id.from(_N, "UpdateOpenIdConnectConfiguration"),
    type = "structure",
    members = {
        issuer = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectConfiguration", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        entityIdPrefix = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectConfiguration", "entityIdPrefix"),
            type = "string",
            name = "entityIdPrefix",
            target_id = prelude.String.id,
        }),
        groupConfiguration = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectConfiguration", "groupConfiguration"),
            type = "structure",
            name = "groupConfiguration",
            target_id = id.from(_N, "UpdateOpenIdConnectGroupConfiguration"),
            target = M.UpdateOpenIdConnectGroupConfiguration,
        }),
        tokenSelection = schema.new({
            id = id.from(_N, "UpdateOpenIdConnectConfiguration", "tokenSelection"),
            type = "union",
            name = "tokenSelection",
            target_id = id.from(_N, "UpdateOpenIdConnectTokenSelection"),
            target = M.UpdateOpenIdConnectTokenSelection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateConfiguration = schema.new({
    id = id.from(_N, "UpdateConfiguration"),
    type = "union",
    members = {
        cognitoUserPoolConfiguration = schema.new({
            id = id.from(_N, "UpdateConfiguration", "cognitoUserPoolConfiguration"),
            type = "structure",
            name = "cognitoUserPoolConfiguration",
            target_id = id.from(_N, "UpdateCognitoUserPoolConfiguration"),
            target = M.UpdateCognitoUserPoolConfiguration,
        }),
        openIdConnectConfiguration = schema.new({
            id = id.from(_N, "UpdateConfiguration", "openIdConnectConfiguration"),
            type = "structure",
            name = "openIdConnectConfiguration",
            target_id = id.from(_N, "UpdateOpenIdConnectConfiguration"),
            target = M.UpdateOpenIdConnectConfiguration,
        }),
    },
})

M.UpdateIdentitySourceInput = schema.new({
    id = id.from(_N, "UpdateIdentitySourceInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "UpdateIdentitySourceInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identitySourceId = schema.new({
            id = id.from(_N, "UpdateIdentitySourceInput", "identitySourceId"),
            type = "string",
            name = "identitySourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateConfiguration = schema.new({
            id = id.from(_N, "UpdateIdentitySourceInput", "updateConfiguration"),
            type = "union",
            name = "updateConfiguration",
            target_id = id.from(_N, "UpdateConfiguration"),
            target = M.UpdateConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principalEntityType = schema.new({
            id = id.from(_N, "UpdateIdentitySourceInput", "principalEntityType"),
            type = "string",
            name = "principalEntityType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateIdentitySourceOutput = schema.new({
    id = id.from(_N, "UpdateIdentitySourceOutput"),
    type = "structure",
    members = {
        createdDate = schema.new({
            id = id.from(_N, "UpdateIdentitySourceOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identitySourceId = schema.new({
            id = id.from(_N, "UpdateIdentitySourceOutput", "identitySourceId"),
            type = "string",
            name = "identitySourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "UpdateIdentitySourceOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "UpdateIdentitySourceOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IsAuthorizedOutput = schema.new({
    id = id.from(_N, "IsAuthorizedOutput"),
    type = "structure",
    members = {
        decision = schema.new({
            id = id.from(_N, "IsAuthorizedOutput", "decision"),
            type = "string",
            name = "decision",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        determiningPolicies = schema.new({
            id = id.from(_N, "IsAuthorizedOutput", "determiningPolicies"),
            type = "list",
            name = "determiningPolicies",
            target_id = prelude.Document.id,
            list_member = M.DeterminingPolicyItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "IsAuthorizedOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.EvaluationErrorItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IsAuthorizedWithTokenOutput = schema.new({
    id = id.from(_N, "IsAuthorizedWithTokenOutput"),
    type = "structure",
    members = {
        decision = schema.new({
            id = id.from(_N, "IsAuthorizedWithTokenOutput", "decision"),
            type = "string",
            name = "decision",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        determiningPolicies = schema.new({
            id = id.from(_N, "IsAuthorizedWithTokenOutput", "determiningPolicies"),
            type = "list",
            name = "determiningPolicies",
            target_id = prelude.Document.id,
            list_member = M.DeterminingPolicyItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "IsAuthorizedWithTokenOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.EvaluationErrorItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "IsAuthorizedWithTokenOutput", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
    },
})

M.PolicyFilter = schema.new({
    id = id.from(_N, "PolicyFilter"),
    type = "structure",
    members = {
        principal = schema.new({
            id = id.from(_N, "PolicyFilter", "principal"),
            type = "union",
            name = "principal",
            target_id = id.from(_N, "EntityReference"),
            target = M.EntityReference,
        }),
        resource = schema.new({
            id = id.from(_N, "PolicyFilter", "resource"),
            type = "union",
            name = "resource",
            target_id = id.from(_N, "EntityReference"),
            target = M.EntityReference,
        }),
        policyType = schema.new({
            id = id.from(_N, "PolicyFilter", "policyType"),
            type = "string",
            name = "policyType",
            target_id = prelude.String.id,
        }),
        policyTemplateId = schema.new({
            id = id.from(_N, "PolicyFilter", "policyTemplateId"),
            type = "string",
            name = "policyTemplateId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPoliciesInput = schema.new({
    id = id.from(_N, "ListPoliciesInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "ListPoliciesInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPoliciesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPoliciesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        filter = schema.new({
            id = id.from(_N, "ListPoliciesInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "PolicyFilter"),
            target = M.PolicyFilter,
        }),
    },
})

M.StaticPolicyDefinitionItem = schema.new({
    id = id.from(_N, "StaticPolicyDefinitionItem"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "StaticPolicyDefinitionItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.TemplateLinkedPolicyDefinitionItem = schema.new({
    id = id.from(_N, "TemplateLinkedPolicyDefinitionItem"),
    type = "structure",
    members = {
        policyTemplateId = schema.new({
            id = id.from(_N, "TemplateLinkedPolicyDefinitionItem", "policyTemplateId"),
            type = "string",
            name = "policyTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "TemplateLinkedPolicyDefinitionItem", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        resource = schema.new({
            id = id.from(_N, "TemplateLinkedPolicyDefinitionItem", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
    },
})

M.PolicyDefinitionItem = schema.new({
    id = id.from(_N, "PolicyDefinitionItem"),
    type = "union",
    members = {
        static = schema.new({
            id = id.from(_N, "PolicyDefinitionItem", "static"),
            type = "structure",
            name = "static",
            target_id = id.from(_N, "StaticPolicyDefinitionItem"),
            target = M.StaticPolicyDefinitionItem,
        }),
        templateLinked = schema.new({
            id = id.from(_N, "PolicyDefinitionItem", "templateLinked"),
            type = "structure",
            name = "templateLinked",
            target_id = id.from(_N, "TemplateLinkedPolicyDefinitionItem"),
            target = M.TemplateLinkedPolicyDefinitionItem,
        }),
    },
})

M.PolicyItem = schema.new({
    id = id.from(_N, "PolicyItem"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "PolicyItem", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "PolicyItem", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyType = schema.new({
            id = id.from(_N, "PolicyItem", "policyType"),
            type = "string",
            name = "policyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "PolicyItem", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        resource = schema.new({
            id = id.from(_N, "PolicyItem", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        actions = schema.new({
            id = id.from(_N, "PolicyItem", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.ActionIdentifier,
        }),
        definition = schema.new({
            id = id.from(_N, "PolicyItem", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinitionItem"),
            target = M.PolicyDefinitionItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "PolicyItem", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "PolicyItem", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        effect = schema.new({
            id = id.from(_N, "PolicyItem", "effect"),
            type = "string",
            name = "effect",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "PolicyItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPoliciesOutput = schema.new({
    id = id.from(_N, "ListPoliciesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPoliciesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        policies = schema.new({
            id = id.from(_N, "ListPoliciesOutput", "policies"),
            type = "list",
            name = "policies",
            target_id = prelude.Document.id,
            list_member = M.PolicyItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PolicyStoreAliasFilter = schema.new({
    id = id.from(_N, "PolicyStoreAliasFilter"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "PolicyStoreAliasFilter", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPolicyStoreAliasesInput = schema.new({
    id = id.from(_N, "ListPolicyStoreAliasesInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyStoreAliasesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPolicyStoreAliasesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 5 },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListPolicyStoreAliasesInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "PolicyStoreAliasFilter"),
            target = M.PolicyStoreAliasFilter,
        }),
    },
})

M.PolicyStoreAliasItem = schema.new({
    id = id.from(_N, "PolicyStoreAliasItem"),
    type = "structure",
    members = {
        aliasName = schema.new({
            id = id.from(_N, "PolicyStoreAliasItem", "aliasName"),
            type = "string",
            name = "aliasName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyStoreId = schema.new({
            id = id.from(_N, "PolicyStoreAliasItem", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        aliasArn = schema.new({
            id = id.from(_N, "PolicyStoreAliasItem", "aliasArn"),
            type = "string",
            name = "aliasArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "PolicyStoreAliasItem", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        state = schema.new({
            id = id.from(_N, "PolicyStoreAliasItem", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListPolicyStoreAliasesOutput = schema.new({
    id = id.from(_N, "ListPolicyStoreAliasesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyStoreAliasesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        policyStoreAliases = schema.new({
            id = id.from(_N, "ListPolicyStoreAliasesOutput", "policyStoreAliases"),
            type = "list",
            name = "policyStoreAliases",
            target_id = prelude.Document.id,
            list_member = M.PolicyStoreAliasItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListPolicyStoresInput = schema.new({
    id = id.from(_N, "ListPolicyStoresInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyStoresInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPolicyStoresInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PolicyStoreItem = schema.new({
    id = id.from(_N, "PolicyStoreItem"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "PolicyStoreItem", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "PolicyStoreItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "PolicyStoreItem", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "PolicyStoreItem", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "PolicyStoreItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPolicyStoresOutput = schema.new({
    id = id.from(_N, "ListPolicyStoresOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyStoresOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        policyStores = schema.new({
            id = id.from(_N, "ListPolicyStoresOutput", "policyStores"),
            type = "list",
            name = "policyStores",
            target_id = prelude.Document.id,
            list_member = M.PolicyStoreItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListPolicyTemplatesInput = schema.new({
    id = id.from(_N, "ListPolicyTemplatesInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "ListPolicyTemplatesInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyTemplatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPolicyTemplatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PolicyTemplateItem = schema.new({
    id = id.from(_N, "PolicyTemplateItem"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "PolicyTemplateItem", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyTemplateId = schema.new({
            id = id.from(_N, "PolicyTemplateItem", "policyTemplateId"),
            type = "string",
            name = "policyTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "PolicyTemplateItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "PolicyTemplateItem", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "PolicyTemplateItem", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "PolicyTemplateItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPolicyTemplatesOutput = schema.new({
    id = id.from(_N, "ListPolicyTemplatesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyTemplatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        policyTemplates = schema.new({
            id = id.from(_N, "ListPolicyTemplatesOutput", "policyTemplates"),
            type = "list",
            name = "policyTemplates",
            target_id = prelude.Document.id,
            list_member = M.PolicyTemplateItem,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateStaticPolicyDefinition = schema.new({
    id = id.from(_N, "UpdateStaticPolicyDefinition"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "UpdateStaticPolicyDefinition", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        statement = schema.new({
            id = id.from(_N, "UpdateStaticPolicyDefinition", "statement"),
            type = "string",
            name = "statement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePolicyDefinition = schema.new({
    id = id.from(_N, "UpdatePolicyDefinition"),
    type = "union",
    members = {
        static = schema.new({
            id = id.from(_N, "UpdatePolicyDefinition", "static"),
            type = "structure",
            name = "static",
            target_id = id.from(_N, "UpdateStaticPolicyDefinition"),
            target = M.UpdateStaticPolicyDefinition,
        }),
    },
})

M.UpdatePolicyInput = schema.new({
    id = id.from(_N, "UpdatePolicyInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "UpdatePolicyInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "UpdatePolicyInput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "UpdatePolicyInput", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "UpdatePolicyDefinition"),
            target = M.UpdatePolicyDefinition,
        }),
        name = schema.new({
            id = id.from(_N, "UpdatePolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePolicyOutput = schema.new({
    id = id.from(_N, "UpdatePolicyOutput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyType = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "policyType"),
            type = "string",
            name = "policyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        resource = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        actions = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.ActionIdentifier,
        }),
        createdDate = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        effect = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "effect"),
            type = "string",
            name = "effect",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePolicyTemplateInput = schema.new({
    id = id.from(_N, "UpdatePolicyTemplateInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "UpdatePolicyTemplateInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyTemplateId = schema.new({
            id = id.from(_N, "UpdatePolicyTemplateInput", "policyTemplateId"),
            type = "string",
            name = "policyTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdatePolicyTemplateInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        statement = schema.new({
            id = id.from(_N, "UpdatePolicyTemplateInput", "statement"),
            type = "string",
            name = "statement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdatePolicyTemplateInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePolicyTemplateOutput = schema.new({
    id = id.from(_N, "UpdatePolicyTemplateOutput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "UpdatePolicyTemplateOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyTemplateId = schema.new({
            id = id.from(_N, "UpdatePolicyTemplateOutput", "policyTemplateId"),
            type = "string",
            name = "policyTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "UpdatePolicyTemplateOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "UpdatePolicyTemplateOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SchemaDefinition = schema.new({
    id = id.from(_N, "SchemaDefinition"),
    type = "union",
    members = {
        cedarJson = schema.new({
            id = id.from(_N, "SchemaDefinition", "cedarJson"),
            type = "string",
            name = "cedarJson",
            target_id = prelude.String.id,
        }),
    },
})

M.PutSchemaInput = schema.new({
    id = id.from(_N, "PutSchemaInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "PutSchemaInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "PutSchemaInput", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "SchemaDefinition"),
            target = M.SchemaDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutSchemaOutput = schema.new({
    id = id.from(_N, "PutSchemaOutput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "PutSchemaOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        namespaces = schema.new({
            id = id.from(_N, "PutSchemaOutput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "PutSchemaOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "PutSchemaOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePolicyStoreInput = schema.new({
    id = id.from(_N, "UpdatePolicyStoreInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "UpdatePolicyStoreInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        validationSettings = schema.new({
            id = id.from(_N, "UpdatePolicyStoreInput", "validationSettings"),
            type = "structure",
            name = "validationSettings",
            target_id = id.from(_N, "ValidationSettings"),
            target = M.ValidationSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        deletionProtection = schema.new({
            id = id.from(_N, "UpdatePolicyStoreInput", "deletionProtection"),
            type = "string",
            name = "deletionProtection",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdatePolicyStoreInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePolicyStoreOutput = schema.new({
    id = id.from(_N, "UpdatePolicyStoreOutput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "UpdatePolicyStoreOutput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "UpdatePolicyStoreOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "UpdatePolicyStoreOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "UpdatePolicyStoreOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
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

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyTagsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceName = schema.new({
            id = id.from(_N, "TooManyTagsException", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
        }),
    },
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

M.AttributeValue = schema.new({
    id = id.from(_N, "AttributeValue"),
    type = "union",
    members = {
        boolean = schema.new({
            id = id.from(_N, "AttributeValue", "boolean"),
            type = "boolean",
            name = "boolean",
            target_id = prelude.Boolean.id,
        }),
        entityIdentifier = schema.new({
            id = id.from(_N, "AttributeValue", "entityIdentifier"),
            type = "structure",
            name = "entityIdentifier",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        long = schema.new({
            id = id.from(_N, "AttributeValue", "long"),
            type = "long",
            name = "long",
            target_id = prelude.Long.id,
        }),
        string = schema.new({
            id = id.from(_N, "AttributeValue", "string"),
            type = "string",
            name = "string",
            target_id = prelude.String.id,
        }),
        set = schema.new({
            id = id.from(_N, "AttributeValue", "set"),
            type = "list",
            name = "set",
            target_id = prelude.Document.id,
            list_member = M.AttributeValue,
        }),
        record = schema.new({
            id = id.from(_N, "AttributeValue", "record"),
            type = "map",
            name = "record",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ipaddr = schema.new({
            id = id.from(_N, "AttributeValue", "ipaddr"),
            type = "string",
            name = "ipaddr",
            target_id = prelude.String.id,
        }),
        decimal = schema.new({
            id = id.from(_N, "AttributeValue", "decimal"),
            type = "string",
            name = "decimal",
            target_id = prelude.String.id,
        }),
        datetime = schema.new({
            id = id.from(_N, "AttributeValue", "datetime"),
            type = "string",
            name = "datetime",
            target_id = prelude.String.id,
        }),
        duration = schema.new({
            id = id.from(_N, "AttributeValue", "duration"),
            type = "string",
            name = "duration",
            target_id = prelude.String.id,
        }),
    },
})

M.CedarTagValue = schema.new({
    id = id.from(_N, "CedarTagValue"),
    type = "union",
    members = {
        boolean = schema.new({
            id = id.from(_N, "CedarTagValue", "boolean"),
            type = "boolean",
            name = "boolean",
            target_id = prelude.Boolean.id,
        }),
        entityIdentifier = schema.new({
            id = id.from(_N, "CedarTagValue", "entityIdentifier"),
            type = "structure",
            name = "entityIdentifier",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        long = schema.new({
            id = id.from(_N, "CedarTagValue", "long"),
            type = "long",
            name = "long",
            target_id = prelude.Long.id,
        }),
        string = schema.new({
            id = id.from(_N, "CedarTagValue", "string"),
            type = "string",
            name = "string",
            target_id = prelude.String.id,
        }),
        set = schema.new({
            id = id.from(_N, "CedarTagValue", "set"),
            type = "list",
            name = "set",
            target_id = prelude.Document.id,
            list_member = M.CedarTagValue,
        }),
        record = schema.new({
            id = id.from(_N, "CedarTagValue", "record"),
            type = "map",
            name = "record",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.CedarTagValue,
        }),
        ipaddr = schema.new({
            id = id.from(_N, "CedarTagValue", "ipaddr"),
            type = "string",
            name = "ipaddr",
            target_id = prelude.String.id,
        }),
        decimal = schema.new({
            id = id.from(_N, "CedarTagValue", "decimal"),
            type = "string",
            name = "decimal",
            target_id = prelude.String.id,
        }),
        datetime = schema.new({
            id = id.from(_N, "CedarTagValue", "datetime"),
            type = "string",
            name = "datetime",
            target_id = prelude.String.id,
        }),
        duration = schema.new({
            id = id.from(_N, "CedarTagValue", "duration"),
            type = "string",
            name = "duration",
            target_id = prelude.String.id,
        }),
    },
})

M.ContextDefinition = schema.new({
    id = id.from(_N, "ContextDefinition"),
    type = "union",
    members = {
        contextMap = schema.new({
            id = id.from(_N, "ContextDefinition", "contextMap"),
            type = "map",
            name = "contextMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        cedarJson = schema.new({
            id = id.from(_N, "ContextDefinition", "cedarJson"),
            type = "string",
            name = "cedarJson",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchIsAuthorizedInputItem = schema.new({
    id = id.from(_N, "BatchIsAuthorizedInputItem"),
    type = "structure",
    members = {
        principal = schema.new({
            id = id.from(_N, "BatchIsAuthorizedInputItem", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        action = schema.new({
            id = id.from(_N, "BatchIsAuthorizedInputItem", "action"),
            type = "structure",
            name = "action",
            target_id = id.from(_N, "ActionIdentifier"),
            target = M.ActionIdentifier,
        }),
        resource = schema.new({
            id = id.from(_N, "BatchIsAuthorizedInputItem", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        context = schema.new({
            id = id.from(_N, "BatchIsAuthorizedInputItem", "context"),
            type = "union",
            name = "context",
            target_id = id.from(_N, "ContextDefinition"),
            target = M.ContextDefinition,
        }),
    },
})

M.BatchIsAuthorizedWithTokenInputItem = schema.new({
    id = id.from(_N, "BatchIsAuthorizedWithTokenInputItem"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenInputItem", "action"),
            type = "structure",
            name = "action",
            target_id = id.from(_N, "ActionIdentifier"),
            target = M.ActionIdentifier,
        }),
        resource = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenInputItem", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        context = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenInputItem", "context"),
            type = "union",
            name = "context",
            target_id = id.from(_N, "ContextDefinition"),
            target = M.ContextDefinition,
        }),
    },
})

M.BatchIsAuthorizedOutputItem = schema.new({
    id = id.from(_N, "BatchIsAuthorizedOutputItem"),
    type = "structure",
    members = {
        request = schema.new({
            id = id.from(_N, "BatchIsAuthorizedOutputItem", "request"),
            type = "structure",
            name = "request",
            target_id = id.from(_N, "BatchIsAuthorizedInputItem"),
            target = M.BatchIsAuthorizedInputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        decision = schema.new({
            id = id.from(_N, "BatchIsAuthorizedOutputItem", "decision"),
            type = "string",
            name = "decision",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        determiningPolicies = schema.new({
            id = id.from(_N, "BatchIsAuthorizedOutputItem", "determiningPolicies"),
            type = "list",
            name = "determiningPolicies",
            target_id = prelude.Document.id,
            list_member = M.DeterminingPolicyItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "BatchIsAuthorizedOutputItem", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.EvaluationErrorItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchIsAuthorizedWithTokenOutputItem = schema.new({
    id = id.from(_N, "BatchIsAuthorizedWithTokenOutputItem"),
    type = "structure",
    members = {
        request = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenOutputItem", "request"),
            type = "structure",
            name = "request",
            target_id = id.from(_N, "BatchIsAuthorizedWithTokenInputItem"),
            target = M.BatchIsAuthorizedWithTokenInputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        decision = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenOutputItem", "decision"),
            type = "string",
            name = "decision",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        determiningPolicies = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenOutputItem", "determiningPolicies"),
            type = "list",
            name = "determiningPolicies",
            target_id = prelude.Document.id,
            list_member = M.DeterminingPolicyItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenOutputItem", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.EvaluationErrorItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchIsAuthorizedOutput = schema.new({
    id = id.from(_N, "BatchIsAuthorizedOutput"),
    type = "structure",
    members = {
        results = schema.new({
            id = id.from(_N, "BatchIsAuthorizedOutput", "results"),
            type = "list",
            name = "results",
            target_id = prelude.Document.id,
            list_member = M.BatchIsAuthorizedOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchIsAuthorizedWithTokenOutput = schema.new({
    id = id.from(_N, "BatchIsAuthorizedWithTokenOutput"),
    type = "structure",
    members = {
        principal = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenOutput", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        results = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenOutput", "results"),
            type = "list",
            name = "results",
            target_id = prelude.Document.id,
            list_member = M.BatchIsAuthorizedWithTokenOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EntityItem = schema.new({
    id = id.from(_N, "EntityItem"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "EntityItem", "identifier"),
            type = "structure",
            name = "identifier",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attributes = schema.new({
            id = id.from(_N, "EntityItem", "attributes"),
            type = "map",
            name = "attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        parents = schema.new({
            id = id.from(_N, "EntityItem", "parents"),
            type = "list",
            name = "parents",
            target_id = prelude.Document.id,
            list_member = M.EntityIdentifier,
        }),
        tags = schema.new({
            id = id.from(_N, "EntityItem", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.CedarTagValue,
        }),
    },
})

M.EntitiesDefinition = schema.new({
    id = id.from(_N, "EntitiesDefinition"),
    type = "union",
    members = {
        entityList = schema.new({
            id = id.from(_N, "EntitiesDefinition", "entityList"),
            type = "list",
            name = "entityList",
            target_id = prelude.Document.id,
            list_member = M.EntityItem,
        }),
        cedarJson = schema.new({
            id = id.from(_N, "EntitiesDefinition", "cedarJson"),
            type = "string",
            name = "cedarJson",
            target_id = prelude.String.id,
        }),
    },
})

M.IsAuthorizedInput = schema.new({
    id = id.from(_N, "IsAuthorizedInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "IsAuthorizedInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "IsAuthorizedInput", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        action = schema.new({
            id = id.from(_N, "IsAuthorizedInput", "action"),
            type = "structure",
            name = "action",
            target_id = id.from(_N, "ActionIdentifier"),
            target = M.ActionIdentifier,
        }),
        resource = schema.new({
            id = id.from(_N, "IsAuthorizedInput", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        context = schema.new({
            id = id.from(_N, "IsAuthorizedInput", "context"),
            type = "union",
            name = "context",
            target_id = id.from(_N, "ContextDefinition"),
            target = M.ContextDefinition,
        }),
        entities = schema.new({
            id = id.from(_N, "IsAuthorizedInput", "entities"),
            type = "union",
            name = "entities",
            target_id = id.from(_N, "EntitiesDefinition"),
            target = M.EntitiesDefinition,
        }),
    },
})

M.IsAuthorizedWithTokenInput = schema.new({
    id = id.from(_N, "IsAuthorizedWithTokenInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "IsAuthorizedWithTokenInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identityToken = schema.new({
            id = id.from(_N, "IsAuthorizedWithTokenInput", "identityToken"),
            type = "string",
            name = "identityToken",
            target_id = prelude.String.id,
        }),
        accessToken = schema.new({
            id = id.from(_N, "IsAuthorizedWithTokenInput", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        action = schema.new({
            id = id.from(_N, "IsAuthorizedWithTokenInput", "action"),
            type = "structure",
            name = "action",
            target_id = id.from(_N, "ActionIdentifier"),
            target = M.ActionIdentifier,
        }),
        resource = schema.new({
            id = id.from(_N, "IsAuthorizedWithTokenInput", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "EntityIdentifier"),
            target = M.EntityIdentifier,
        }),
        context = schema.new({
            id = id.from(_N, "IsAuthorizedWithTokenInput", "context"),
            type = "union",
            name = "context",
            target_id = id.from(_N, "ContextDefinition"),
            target = M.ContextDefinition,
        }),
        entities = schema.new({
            id = id.from(_N, "IsAuthorizedWithTokenInput", "entities"),
            type = "union",
            name = "entities",
            target_id = id.from(_N, "EntitiesDefinition"),
            target = M.EntitiesDefinition,
        }),
    },
})

M.BatchIsAuthorizedInput = schema.new({
    id = id.from(_N, "BatchIsAuthorizedInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "BatchIsAuthorizedInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        entities = schema.new({
            id = id.from(_N, "BatchIsAuthorizedInput", "entities"),
            type = "union",
            name = "entities",
            target_id = id.from(_N, "EntitiesDefinition"),
            target = M.EntitiesDefinition,
        }),
        requests = schema.new({
            id = id.from(_N, "BatchIsAuthorizedInput", "requests"),
            type = "list",
            name = "requests",
            target_id = prelude.Document.id,
            list_member = M.BatchIsAuthorizedInputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchIsAuthorizedWithTokenInput = schema.new({
    id = id.from(_N, "BatchIsAuthorizedWithTokenInput"),
    type = "structure",
    members = {
        policyStoreId = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenInput", "policyStoreId"),
            type = "string",
            name = "policyStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identityToken = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenInput", "identityToken"),
            type = "string",
            name = "identityToken",
            target_id = prelude.String.id,
        }),
        accessToken = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenInput", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        entities = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenInput", "entities"),
            type = "union",
            name = "entities",
            target_id = id.from(_N, "EntitiesDefinition"),
            target = M.EntitiesDefinition,
        }),
        requests = schema.new({
            id = id.from(_N, "BatchIsAuthorizedWithTokenInput", "requests"),
            type = "list",
            name = "requests",
            target_id = prelude.Document.id,
            list_member = M.BatchIsAuthorizedWithTokenInputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
