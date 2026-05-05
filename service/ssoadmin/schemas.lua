local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.ssoadmin"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.AccountAssignmentOperationStatusList = schema.new({ type = "list", list_member = M.AccountAssignmentOperationStatusMetadata })

M.AccountAssignmentList = schema.new({ type = "list", list_member = M.AccountAssignment })

M.AccountAssignmentListForPrincipal = schema.new({ type = "list", list_member = M.AccountAssignmentForPrincipal })

M.AccountList = schema.new({ type = "list", list_member = prelude.String })

M.ApplicationAssignmentsList = schema.new({ type = "list", list_member = M.ApplicationAssignment })

M.ApplicationAssignmentListForPrincipal = schema.new({ type = "list", list_member = M.ApplicationAssignmentForPrincipal })

M.ApplicationProviderList = schema.new({ type = "list", list_member = M.ApplicationProvider })

M.ApplicationList = schema.new({ type = "list", list_member = M.Application })

M.CustomerManagedPolicyReferenceList = schema.new({ type = "list", list_member = M.CustomerManagedPolicyReference })

M.InstanceList = schema.new({ type = "list", list_member = M.InstanceMetadata })

M.AttachedManagedPolicyList = schema.new({ type = "list", list_member = M.AttachedManagedPolicy })

M.PermissionSetProvisioningStatusList = schema.new({ type = "list", list_member = M.PermissionSetProvisioningStatusMetadata })

M.PermissionSetList = schema.new({ type = "list", list_member = prelude.String })

M.RegionMetadataList = schema.new({ type = "list", list_member = M.RegionMetadata })

M.TrustedTokenIssuerList = schema.new({ type = "list", list_member = M.TrustedTokenIssuerMetadata })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.Scopes = schema.new({ type = "list", list_member = M.ScopeDetails })

M.ScopeTargets = schema.new({ type = "list", list_member = prelude.String })

M.AuthenticationMethods = schema.new({ type = "list", list_member = M.AuthenticationMethodItem })

M.Grants = schema.new({ type = "list", list_member = M.GrantItem })

M.AccessControlAttributeList = schema.new({ type = "list", list_member = M.AccessControlAttribute })

M.ResourceServerScopes = schema.new({ type = "map", map_key = prelude.String, map_value = M.ResourceServerScopeDetails })

M.RedirectUris = schema.new({ type = "list", list_member = prelude.String })

M.AuthorizedTokenIssuers = schema.new({ type = "list", list_member = M.AuthorizedTokenIssuer })

M.AccessControlAttributeValueSourceList = schema.new({ type = "list", list_member = prelude.String })

M.TokenIssuerAudiences = schema.new({ type = "list", list_member = prelude.String })

M.AccessControlAttributeValue = schema.new({
    id = id.from(_N, "AccessControlAttributeValue"),
    type = "structure",
    members = {
        Source = schema.new({
            id = id.from(_N, "AccessControlAttributeValue", "Source"),
            type = "list",
            name = "Source",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AccessControlAttribute = schema.new({
    id = id.from(_N, "AccessControlAttribute"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "AccessControlAttribute", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "AccessControlAttribute", "Value"),
            type = "structure",
            name = "Value",
            target_id = id.from(_N, "AccessControlAttributeValue"),
            target = M.AccessControlAttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "AccessDeniedException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.AccountAssignment = schema.new({
    id = id.from(_N, "AccountAssignment"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "AccountAssignment", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "AccountAssignment", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "AccountAssignment", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "AccountAssignment", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
        }),
    },
})

M.AccountAssignmentForPrincipal = schema.new({
    id = id.from(_N, "AccountAssignmentForPrincipal"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "AccountAssignmentForPrincipal", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "AccountAssignmentForPrincipal", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "AccountAssignmentForPrincipal", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "AccountAssignmentForPrincipal", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
        }),
    },
})

M.AccountAssignmentOperationStatus = schema.new({
    id = id.from(_N, "AccountAssignmentOperationStatus"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatus", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatus", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        FailureReason = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatus", "FailureReason"),
            type = "string",
            name = "FailureReason",
            target_id = prelude.String.id,
        }),
        TargetId = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatus", "TargetId"),
            type = "string",
            name = "TargetId",
            target_id = prelude.String.id,
        }),
        TargetType = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatus", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatus", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatus", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatus", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatus", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AccountAssignmentOperationStatusMetadata = schema.new({
    id = id.from(_N, "AccountAssignmentOperationStatusMetadata"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatusMetadata", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatusMetadata", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "AccountAssignmentOperationStatusMetadata", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AddRegionInput = schema.new({
    id = id.from(_N, "AddRegionRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "AddRegionInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegionName = schema.new({
            id = id.from(_N, "AddRegionInput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddRegionOutput = schema.new({
    id = id.from(_N, "AddRegionResponse"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "AddRegionOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
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
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "ThrottlingException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "ValidationException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.SignInOptions = schema.new({
    id = id.from(_N, "SignInOptions"),
    type = "structure",
    members = {
        Origin = schema.new({
            id = id.from(_N, "SignInOptions", "Origin"),
            type = "string",
            name = "Origin",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationUrl = schema.new({
            id = id.from(_N, "SignInOptions", "ApplicationUrl"),
            type = "string",
            name = "ApplicationUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.PortalOptions = schema.new({
    id = id.from(_N, "PortalOptions"),
    type = "structure",
    members = {
        SignInOptions = schema.new({
            id = id.from(_N, "PortalOptions", "SignInOptions"),
            type = "structure",
            name = "SignInOptions",
            target_id = id.from(_N, "SignInOptions"),
            target = M.SignInOptions,
        }),
        Visibility = schema.new({
            id = id.from(_N, "PortalOptions", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "ENABLED" },
            },
        }),
    },
})

M.Application = schema.new({
    id = id.from(_N, "Application"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "Application", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
        }),
        ApplicationProviderArn = schema.new({
            id = id.from(_N, "Application", "ApplicationProviderArn"),
            type = "string",
            name = "ApplicationProviderArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Application", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ApplicationAccount = schema.new({
            id = id.from(_N, "Application", "ApplicationAccount"),
            type = "string",
            name = "ApplicationAccount",
            target_id = prelude.String.id,
        }),
        InstanceArn = schema.new({
            id = id.from(_N, "Application", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
        }),
        IdentityStoreArn = schema.new({
            id = id.from(_N, "Application", "IdentityStoreArn"),
            type = "string",
            name = "IdentityStoreArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Application", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        PortalOptions = schema.new({
            id = id.from(_N, "Application", "PortalOptions"),
            type = "structure",
            name = "PortalOptions",
            target_id = id.from(_N, "PortalOptions"),
            target = M.PortalOptions,
        }),
        Description = schema.new({
            id = id.from(_N, "Application", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "Application", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        CreatedFrom = schema.new({
            id = id.from(_N, "Application", "CreatedFrom"),
            type = "string",
            name = "CreatedFrom",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteApplicationAccessScopeInput = schema.new({
    id = id.from(_N, "DeleteApplicationAccessScopeRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "DeleteApplicationAccessScopeInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Scope = schema.new({
            id = id.from(_N, "DeleteApplicationAccessScopeInput", "Scope"),
            type = "string",
            name = "Scope",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationAccessScopeOutput = prelude.Unit

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.GetApplicationAccessScopeInput = schema.new({
    id = id.from(_N, "GetApplicationAccessScopeRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "GetApplicationAccessScopeInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Scope = schema.new({
            id = id.from(_N, "GetApplicationAccessScopeInput", "Scope"),
            type = "string",
            name = "Scope",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetApplicationAccessScopeOutput = schema.new({
    id = id.from(_N, "GetApplicationAccessScopeResponse"),
    type = "structure",
    members = {
        Scope = schema.new({
            id = id.from(_N, "GetApplicationAccessScopeOutput", "Scope"),
            type = "string",
            name = "Scope",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthorizedTargets = schema.new({
            id = id.from(_N, "GetApplicationAccessScopeOutput", "AuthorizedTargets"),
            type = "list",
            name = "AuthorizedTargets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListApplicationAccessScopesInput = schema.new({
    id = id.from(_N, "ListApplicationAccessScopesRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "ListApplicationAccessScopesInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListApplicationAccessScopesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationAccessScopesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ScopeDetails = schema.new({
    id = id.from(_N, "ScopeDetails"),
    type = "structure",
    members = {
        Scope = schema.new({
            id = id.from(_N, "ScopeDetails", "Scope"),
            type = "string",
            name = "Scope",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthorizedTargets = schema.new({
            id = id.from(_N, "ScopeDetails", "AuthorizedTargets"),
            type = "list",
            name = "AuthorizedTargets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListApplicationAccessScopesOutput = schema.new({
    id = id.from(_N, "ListApplicationAccessScopesResponse"),
    type = "structure",
    members = {
        Scopes = schema.new({
            id = id.from(_N, "ListApplicationAccessScopesOutput", "Scopes"),
            type = "list",
            name = "Scopes",
            target_id = prelude.Document.id,
            list_member = M.ScopeDetails,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationAccessScopesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutApplicationAccessScopeInput = schema.new({
    id = id.from(_N, "PutApplicationAccessScopeRequest"),
    type = "structure",
    members = {
        Scope = schema.new({
            id = id.from(_N, "PutApplicationAccessScopeInput", "Scope"),
            type = "string",
            name = "Scope",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthorizedTargets = schema.new({
            id = id.from(_N, "PutApplicationAccessScopeInput", "AuthorizedTargets"),
            type = "list",
            name = "AuthorizedTargets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ApplicationArn = schema.new({
            id = id.from(_N, "PutApplicationAccessScopeInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutApplicationAccessScopeOutput = prelude.Unit

M.ApplicationAssignment = schema.new({
    id = id.from(_N, "ApplicationAssignment"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "ApplicationAssignment", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "ApplicationAssignment", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "ApplicationAssignment", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApplicationAssignmentForPrincipal = schema.new({
    id = id.from(_N, "ApplicationAssignmentForPrincipal"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "ApplicationAssignmentForPrincipal", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "ApplicationAssignmentForPrincipal", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "ApplicationAssignmentForPrincipal", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteApplicationAuthenticationMethodInput = schema.new({
    id = id.from(_N, "DeleteApplicationAuthenticationMethodRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "DeleteApplicationAuthenticationMethodInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationMethodType = schema.new({
            id = id.from(_N, "DeleteApplicationAuthenticationMethodInput", "AuthenticationMethodType"),
            type = "string",
            name = "AuthenticationMethodType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationAuthenticationMethodOutput = prelude.Unit

M.GetApplicationAuthenticationMethodInput = schema.new({
    id = id.from(_N, "GetApplicationAuthenticationMethodRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "GetApplicationAuthenticationMethodInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationMethodType = schema.new({
            id = id.from(_N, "GetApplicationAuthenticationMethodInput", "AuthenticationMethodType"),
            type = "string",
            name = "AuthenticationMethodType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IamAuthenticationMethod = schema.new({
    id = id.from(_N, "IamAuthenticationMethod"),
    type = "structure",
    members = {
        ActorPolicy = schema.new({
            id = id.from(_N, "IamAuthenticationMethod", "ActorPolicy"),
            type = "document",
            name = "ActorPolicy",
            target_id = prelude.Document.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AuthenticationMethod = schema.new({
    id = id.from(_N, "AuthenticationMethod"),
    type = "union",
    members = {
        Iam = schema.new({
            id = id.from(_N, "AuthenticationMethod", "Iam"),
            type = "structure",
            name = "Iam",
            target_id = id.from(_N, "IamAuthenticationMethod"),
            target = M.IamAuthenticationMethod,
        }),
    },
})

M.GetApplicationAuthenticationMethodOutput = schema.new({
    id = id.from(_N, "GetApplicationAuthenticationMethodResponse"),
    type = "structure",
    members = {
        AuthenticationMethod = schema.new({
            id = id.from(_N, "GetApplicationAuthenticationMethodOutput", "AuthenticationMethod"),
            type = "union",
            name = "AuthenticationMethod",
            target_id = id.from(_N, "AuthenticationMethod"),
            target = M.AuthenticationMethod,
        }),
    },
})

M.ListApplicationAuthenticationMethodsInput = schema.new({
    id = id.from(_N, "ListApplicationAuthenticationMethodsRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "ListApplicationAuthenticationMethodsInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationAuthenticationMethodsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthenticationMethodItem = schema.new({
    id = id.from(_N, "AuthenticationMethodItem"),
    type = "structure",
    members = {
        AuthenticationMethodType = schema.new({
            id = id.from(_N, "AuthenticationMethodItem", "AuthenticationMethodType"),
            type = "string",
            name = "AuthenticationMethodType",
            target_id = prelude.String.id,
        }),
        AuthenticationMethod = schema.new({
            id = id.from(_N, "AuthenticationMethodItem", "AuthenticationMethod"),
            type = "union",
            name = "AuthenticationMethod",
            target_id = id.from(_N, "AuthenticationMethod"),
            target = M.AuthenticationMethod,
        }),
    },
})

M.ListApplicationAuthenticationMethodsOutput = schema.new({
    id = id.from(_N, "ListApplicationAuthenticationMethodsResponse"),
    type = "structure",
    members = {
        AuthenticationMethods = schema.new({
            id = id.from(_N, "ListApplicationAuthenticationMethodsOutput", "AuthenticationMethods"),
            type = "list",
            name = "AuthenticationMethods",
            target_id = prelude.Document.id,
            list_member = M.AuthenticationMethodItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationAuthenticationMethodsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutApplicationAuthenticationMethodInput = schema.new({
    id = id.from(_N, "PutApplicationAuthenticationMethodRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "PutApplicationAuthenticationMethodInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationMethodType = schema.new({
            id = id.from(_N, "PutApplicationAuthenticationMethodInput", "AuthenticationMethodType"),
            type = "string",
            name = "AuthenticationMethodType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationMethod = schema.new({
            id = id.from(_N, "PutApplicationAuthenticationMethodInput", "AuthenticationMethod"),
            type = "union",
            name = "AuthenticationMethod",
            target_id = id.from(_N, "AuthenticationMethod"),
            target = M.AuthenticationMethod,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutApplicationAuthenticationMethodOutput = prelude.Unit

M.DeleteApplicationGrantInput = schema.new({
    id = id.from(_N, "DeleteApplicationGrantRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "DeleteApplicationGrantInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GrantType = schema.new({
            id = id.from(_N, "DeleteApplicationGrantInput", "GrantType"),
            type = "string",
            name = "GrantType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationGrantOutput = prelude.Unit

M.GetApplicationGrantInput = schema.new({
    id = id.from(_N, "GetApplicationGrantRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "GetApplicationGrantInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GrantType = schema.new({
            id = id.from(_N, "GetApplicationGrantInput", "GrantType"),
            type = "string",
            name = "GrantType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AuthorizationCodeGrant = schema.new({
    id = id.from(_N, "AuthorizationCodeGrant"),
    type = "structure",
    members = {
        RedirectUris = schema.new({
            id = id.from(_N, "AuthorizationCodeGrant", "RedirectUris"),
            type = "list",
            name = "RedirectUris",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AuthorizedTokenIssuer = schema.new({
    id = id.from(_N, "AuthorizedTokenIssuer"),
    type = "structure",
    members = {
        TrustedTokenIssuerArn = schema.new({
            id = id.from(_N, "AuthorizedTokenIssuer", "TrustedTokenIssuerArn"),
            type = "string",
            name = "TrustedTokenIssuerArn",
            target_id = prelude.String.id,
        }),
        AuthorizedAudiences = schema.new({
            id = id.from(_N, "AuthorizedTokenIssuer", "AuthorizedAudiences"),
            type = "list",
            name = "AuthorizedAudiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.JwtBearerGrant = schema.new({
    id = id.from(_N, "JwtBearerGrant"),
    type = "structure",
    members = {
        AuthorizedTokenIssuers = schema.new({
            id = id.from(_N, "JwtBearerGrant", "AuthorizedTokenIssuers"),
            type = "list",
            name = "AuthorizedTokenIssuers",
            target_id = prelude.Document.id,
            list_member = M.AuthorizedTokenIssuer,
        }),
    },
})

M.RefreshTokenGrant = schema.new({
    id = id.from(_N, "RefreshTokenGrant"),
    type = "structure",
})

M.TokenExchangeGrant = schema.new({
    id = id.from(_N, "TokenExchangeGrant"),
    type = "structure",
})

M.Grant = schema.new({
    id = id.from(_N, "Grant"),
    type = "union",
    members = {
        AuthorizationCode = schema.new({
            id = id.from(_N, "Grant", "AuthorizationCode"),
            type = "structure",
            name = "AuthorizationCode",
            target_id = id.from(_N, "AuthorizationCodeGrant"),
            target = M.AuthorizationCodeGrant,
        }),
        JwtBearer = schema.new({
            id = id.from(_N, "Grant", "JwtBearer"),
            type = "structure",
            name = "JwtBearer",
            target_id = id.from(_N, "JwtBearerGrant"),
            target = M.JwtBearerGrant,
        }),
        RefreshToken = schema.new({
            id = id.from(_N, "Grant", "RefreshToken"),
            type = "structure",
            name = "RefreshToken",
            target_id = id.from(_N, "RefreshTokenGrant"),
            target = M.RefreshTokenGrant,
        }),
        TokenExchange = schema.new({
            id = id.from(_N, "Grant", "TokenExchange"),
            type = "structure",
            name = "TokenExchange",
            target_id = id.from(_N, "TokenExchangeGrant"),
            target = M.TokenExchangeGrant,
        }),
    },
})

M.GetApplicationGrantOutput = schema.new({
    id = id.from(_N, "GetApplicationGrantResponse"),
    type = "structure",
    members = {
        Grant = schema.new({
            id = id.from(_N, "GetApplicationGrantOutput", "Grant"),
            type = "union",
            name = "Grant",
            target_id = id.from(_N, "Grant"),
            target = M.Grant,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListApplicationGrantsInput = schema.new({
    id = id.from(_N, "ListApplicationGrantsRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "ListApplicationGrantsInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationGrantsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GrantItem = schema.new({
    id = id.from(_N, "GrantItem"),
    type = "structure",
    members = {
        GrantType = schema.new({
            id = id.from(_N, "GrantItem", "GrantType"),
            type = "string",
            name = "GrantType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Grant = schema.new({
            id = id.from(_N, "GrantItem", "Grant"),
            type = "union",
            name = "Grant",
            target_id = id.from(_N, "Grant"),
            target = M.Grant,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListApplicationGrantsOutput = schema.new({
    id = id.from(_N, "ListApplicationGrantsResponse"),
    type = "structure",
    members = {
        Grants = schema.new({
            id = id.from(_N, "ListApplicationGrantsOutput", "Grants"),
            type = "list",
            name = "Grants",
            target_id = prelude.Document.id,
            list_member = M.GrantItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationGrantsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutApplicationGrantInput = schema.new({
    id = id.from(_N, "PutApplicationGrantRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "PutApplicationGrantInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GrantType = schema.new({
            id = id.from(_N, "PutApplicationGrantInput", "GrantType"),
            type = "string",
            name = "GrantType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Grant = schema.new({
            id = id.from(_N, "PutApplicationGrantInput", "Grant"),
            type = "union",
            name = "Grant",
            target_id = id.from(_N, "Grant"),
            target = M.Grant,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutApplicationGrantOutput = prelude.Unit

M.DisplayData = schema.new({
    id = id.from(_N, "DisplayData"),
    type = "structure",
    members = {
        DisplayName = schema.new({
            id = id.from(_N, "DisplayData", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        IconUrl = schema.new({
            id = id.from(_N, "DisplayData", "IconUrl"),
            type = "string",
            name = "IconUrl",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DisplayData", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceServerScopeDetails = schema.new({
    id = id.from(_N, "ResourceServerScopeDetails"),
    type = "structure",
    members = {
        LongDescription = schema.new({
            id = id.from(_N, "ResourceServerScopeDetails", "LongDescription"),
            type = "string",
            name = "LongDescription",
            target_id = prelude.String.id,
        }),
        DetailedTitle = schema.new({
            id = id.from(_N, "ResourceServerScopeDetails", "DetailedTitle"),
            type = "string",
            name = "DetailedTitle",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceServerConfig = schema.new({
    id = id.from(_N, "ResourceServerConfig"),
    type = "structure",
    members = {
        Scopes = schema.new({
            id = id.from(_N, "ResourceServerConfig", "Scopes"),
            type = "map",
            name = "Scopes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ResourceServerScopeDetails,
        }),
    },
})

M.ApplicationProvider = schema.new({
    id = id.from(_N, "ApplicationProvider"),
    type = "structure",
    members = {
        ApplicationProviderArn = schema.new({
            id = id.from(_N, "ApplicationProvider", "ApplicationProviderArn"),
            type = "string",
            name = "ApplicationProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FederationProtocol = schema.new({
            id = id.from(_N, "ApplicationProvider", "FederationProtocol"),
            type = "string",
            name = "FederationProtocol",
            target_id = prelude.String.id,
        }),
        DisplayData = schema.new({
            id = id.from(_N, "ApplicationProvider", "DisplayData"),
            type = "structure",
            name = "DisplayData",
            target_id = id.from(_N, "DisplayData"),
            target = M.DisplayData,
        }),
        ResourceServerConfig = schema.new({
            id = id.from(_N, "ApplicationProvider", "ResourceServerConfig"),
            type = "structure",
            name = "ResourceServerConfig",
            target_id = id.from(_N, "ResourceServerConfig"),
            target = M.ResourceServerConfig,
        }),
    },
})

M.CustomerManagedPolicyReference = schema.new({
    id = id.from(_N, "CustomerManagedPolicyReference"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CustomerManagedPolicyReference", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Path = schema.new({
            id = id.from(_N, "CustomerManagedPolicyReference", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachCustomerManagedPolicyReferenceToPermissionSetInput = schema.new({
    id = id.from(_N, "AttachCustomerManagedPolicyReferenceToPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "AttachCustomerManagedPolicyReferenceToPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "AttachCustomerManagedPolicyReferenceToPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CustomerManagedPolicyReference = schema.new({
            id = id.from(_N, "AttachCustomerManagedPolicyReferenceToPermissionSetInput", "CustomerManagedPolicyReference"),
            type = "structure",
            name = "CustomerManagedPolicyReference",
            target_id = id.from(_N, "CustomerManagedPolicyReference"),
            target = M.CustomerManagedPolicyReference,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachCustomerManagedPolicyReferenceToPermissionSetOutput = schema.new({
    id = id.from(_N, "AttachCustomerManagedPolicyReferenceToPermissionSetResponse"),
    type = "structure",
})

M.AttachedManagedPolicy = schema.new({
    id = id.from(_N, "AttachedManagedPolicy"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AttachedManagedPolicy", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "AttachedManagedPolicy", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachManagedPolicyToPermissionSetInput = schema.new({
    id = id.from(_N, "AttachManagedPolicyToPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "AttachManagedPolicyToPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "AttachManagedPolicyToPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ManagedPolicyArn = schema.new({
            id = id.from(_N, "AttachManagedPolicyToPermissionSetInput", "ManagedPolicyArn"),
            type = "string",
            name = "ManagedPolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachManagedPolicyToPermissionSetOutput = schema.new({
    id = id.from(_N, "AttachManagedPolicyToPermissionSetResponse"),
    type = "structure",
})

M.CreateAccountAssignmentInput = schema.new({
    id = id.from(_N, "CreateAccountAssignmentRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "CreateAccountAssignmentInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetId = schema.new({
            id = id.from(_N, "CreateAccountAssignmentInput", "TargetId"),
            type = "string",
            name = "TargetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetType = schema.new({
            id = id.from(_N, "CreateAccountAssignmentInput", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "CreateAccountAssignmentInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "CreateAccountAssignmentInput", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "CreateAccountAssignmentInput", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAccountAssignmentOutput = schema.new({
    id = id.from(_N, "CreateAccountAssignmentResponse"),
    type = "structure",
    members = {
        AccountAssignmentCreationStatus = schema.new({
            id = id.from(_N, "CreateAccountAssignmentOutput", "AccountAssignmentCreationStatus"),
            type = "structure",
            name = "AccountAssignmentCreationStatus",
            target_id = id.from(_N, "AccountAssignmentOperationStatus"),
            target = M.AccountAssignmentOperationStatus,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateApplicationInput = schema.new({
    id = id.from(_N, "CreateApplicationRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "CreateApplicationInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationProviderArn = schema.new({
            id = id.from(_N, "CreateApplicationInput", "ApplicationProviderArn"),
            type = "string",
            name = "ApplicationProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateApplicationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateApplicationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        PortalOptions = schema.new({
            id = id.from(_N, "CreateApplicationInput", "PortalOptions"),
            type = "structure",
            name = "PortalOptions",
            target_id = id.from(_N, "PortalOptions"),
            target = M.PortalOptions,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateApplicationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Status = schema.new({
            id = id.from(_N, "CreateApplicationInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateApplicationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateApplicationOutput = schema.new({
    id = id.from(_N, "CreateApplicationResponse"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
        }),
        InstanceArn = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
        }),
        IdentityStoreArn = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "IdentityStoreArn"),
            type = "string",
            name = "IdentityStoreArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateApplicationAssignmentInput = schema.new({
    id = id.from(_N, "CreateApplicationAssignmentRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "CreateApplicationAssignmentInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "CreateApplicationAssignmentInput", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "CreateApplicationAssignmentInput", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateApplicationAssignmentOutput = schema.new({
    id = id.from(_N, "CreateApplicationAssignmentResponse"),
    type = "structure",
})

M.CreateInstanceInput = schema.new({
    id = id.from(_N, "CreateInstanceRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateInstanceInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateInstanceInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateInstanceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateInstanceOutput = schema.new({
    id = id.from(_N, "CreateInstanceResponse"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "CreateInstanceOutput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceAccessControlAttributeConfiguration = schema.new({
    id = id.from(_N, "InstanceAccessControlAttributeConfiguration"),
    type = "structure",
    members = {
        AccessControlAttributes = schema.new({
            id = id.from(_N, "InstanceAccessControlAttributeConfiguration", "AccessControlAttributes"),
            type = "list",
            name = "AccessControlAttributes",
            target_id = prelude.Document.id,
            list_member = M.AccessControlAttribute,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateInstanceAccessControlAttributeConfigurationInput = schema.new({
    id = id.from(_N, "CreateInstanceAccessControlAttributeConfigurationRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "CreateInstanceAccessControlAttributeConfigurationInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceAccessControlAttributeConfiguration = schema.new({
            id = id.from(_N, "CreateInstanceAccessControlAttributeConfigurationInput", "InstanceAccessControlAttributeConfiguration"),
            type = "structure",
            name = "InstanceAccessControlAttributeConfiguration",
            target_id = id.from(_N, "InstanceAccessControlAttributeConfiguration"),
            target = M.InstanceAccessControlAttributeConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateInstanceAccessControlAttributeConfigurationOutput = schema.new({
    id = id.from(_N, "CreateInstanceAccessControlAttributeConfigurationResponse"),
    type = "structure",
})

M.CreatePermissionSetInput = schema.new({
    id = id.from(_N, "CreatePermissionSetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreatePermissionSetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreatePermissionSetInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        InstanceArn = schema.new({
            id = id.from(_N, "CreatePermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SessionDuration = schema.new({
            id = id.from(_N, "CreatePermissionSetInput", "SessionDuration"),
            type = "string",
            name = "SessionDuration",
            target_id = prelude.String.id,
        }),
        RelayState = schema.new({
            id = id.from(_N, "CreatePermissionSetInput", "RelayState"),
            type = "string",
            name = "RelayState",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePermissionSetInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PermissionSet = schema.new({
    id = id.from(_N, "PermissionSet"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PermissionSet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "PermissionSet", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "PermissionSet", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "PermissionSet", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        SessionDuration = schema.new({
            id = id.from(_N, "PermissionSet", "SessionDuration"),
            type = "string",
            name = "SessionDuration",
            target_id = prelude.String.id,
        }),
        RelayState = schema.new({
            id = id.from(_N, "PermissionSet", "RelayState"),
            type = "string",
            name = "RelayState",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePermissionSetOutput = schema.new({
    id = id.from(_N, "CreatePermissionSetResponse"),
    type = "structure",
    members = {
        PermissionSet = schema.new({
            id = id.from(_N, "CreatePermissionSetOutput", "PermissionSet"),
            type = "structure",
            name = "PermissionSet",
            target_id = id.from(_N, "PermissionSet"),
            target = M.PermissionSet,
        }),
    },
})

M.OidcJwtConfiguration = schema.new({
    id = id.from(_N, "OidcJwtConfiguration"),
    type = "structure",
    members = {
        IssuerUrl = schema.new({
            id = id.from(_N, "OidcJwtConfiguration", "IssuerUrl"),
            type = "string",
            name = "IssuerUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClaimAttributePath = schema.new({
            id = id.from(_N, "OidcJwtConfiguration", "ClaimAttributePath"),
            type = "string",
            name = "ClaimAttributePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdentityStoreAttributePath = schema.new({
            id = id.from(_N, "OidcJwtConfiguration", "IdentityStoreAttributePath"),
            type = "string",
            name = "IdentityStoreAttributePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JwksRetrievalOption = schema.new({
            id = id.from(_N, "OidcJwtConfiguration", "JwksRetrievalOption"),
            type = "string",
            name = "JwksRetrievalOption",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TrustedTokenIssuerConfiguration = schema.new({
    id = id.from(_N, "TrustedTokenIssuerConfiguration"),
    type = "union",
    members = {
        OidcJwtConfiguration = schema.new({
            id = id.from(_N, "TrustedTokenIssuerConfiguration", "OidcJwtConfiguration"),
            type = "structure",
            name = "OidcJwtConfiguration",
            target_id = id.from(_N, "OidcJwtConfiguration"),
            target = M.OidcJwtConfiguration,
        }),
    },
})

M.CreateTrustedTokenIssuerInput = schema.new({
    id = id.from(_N, "CreateTrustedTokenIssuerRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "CreateTrustedTokenIssuerInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateTrustedTokenIssuerInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrustedTokenIssuerType = schema.new({
            id = id.from(_N, "CreateTrustedTokenIssuerInput", "TrustedTokenIssuerType"),
            type = "string",
            name = "TrustedTokenIssuerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrustedTokenIssuerConfiguration = schema.new({
            id = id.from(_N, "CreateTrustedTokenIssuerInput", "TrustedTokenIssuerConfiguration"),
            type = "union",
            name = "TrustedTokenIssuerConfiguration",
            target_id = id.from(_N, "TrustedTokenIssuerConfiguration"),
            target = M.TrustedTokenIssuerConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateTrustedTokenIssuerInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTrustedTokenIssuerInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateTrustedTokenIssuerOutput = schema.new({
    id = id.from(_N, "CreateTrustedTokenIssuerResponse"),
    type = "structure",
    members = {
        TrustedTokenIssuerArn = schema.new({
            id = id.from(_N, "CreateTrustedTokenIssuerOutput", "TrustedTokenIssuerArn"),
            type = "string",
            name = "TrustedTokenIssuerArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAccountAssignmentInput = schema.new({
    id = id.from(_N, "DeleteAccountAssignmentRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DeleteAccountAssignmentInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetId = schema.new({
            id = id.from(_N, "DeleteAccountAssignmentInput", "TargetId"),
            type = "string",
            name = "TargetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetType = schema.new({
            id = id.from(_N, "DeleteAccountAssignmentInput", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "DeleteAccountAssignmentInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "DeleteAccountAssignmentInput", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "DeleteAccountAssignmentInput", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAccountAssignmentOutput = schema.new({
    id = id.from(_N, "DeleteAccountAssignmentResponse"),
    type = "structure",
    members = {
        AccountAssignmentDeletionStatus = schema.new({
            id = id.from(_N, "DeleteAccountAssignmentOutput", "AccountAssignmentDeletionStatus"),
            type = "structure",
            name = "AccountAssignmentDeletionStatus",
            target_id = id.from(_N, "AccountAssignmentOperationStatus"),
            target = M.AccountAssignmentOperationStatus,
        }),
    },
})

M.DeleteApplicationInput = schema.new({
    id = id.from(_N, "DeleteApplicationRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "DeleteApplicationInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationOutput = schema.new({
    id = id.from(_N, "DeleteApplicationResponse"),
    type = "structure",
})

M.DeleteApplicationAssignmentInput = schema.new({
    id = id.from(_N, "DeleteApplicationAssignmentRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "DeleteApplicationAssignmentInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "DeleteApplicationAssignmentInput", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "DeleteApplicationAssignmentInput", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationAssignmentOutput = schema.new({
    id = id.from(_N, "DeleteApplicationAssignmentResponse"),
    type = "structure",
})

M.DeleteInlinePolicyFromPermissionSetInput = schema.new({
    id = id.from(_N, "DeleteInlinePolicyFromPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DeleteInlinePolicyFromPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "DeleteInlinePolicyFromPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteInlinePolicyFromPermissionSetOutput = schema.new({
    id = id.from(_N, "DeleteInlinePolicyFromPermissionSetResponse"),
    type = "structure",
})

M.DeleteInstanceInput = schema.new({
    id = id.from(_N, "DeleteInstanceRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DeleteInstanceInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteInstanceOutput = schema.new({
    id = id.from(_N, "DeleteInstanceResponse"),
    type = "structure",
})

M.DeleteInstanceAccessControlAttributeConfigurationInput = schema.new({
    id = id.from(_N, "DeleteInstanceAccessControlAttributeConfigurationRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DeleteInstanceAccessControlAttributeConfigurationInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteInstanceAccessControlAttributeConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteInstanceAccessControlAttributeConfigurationResponse"),
    type = "structure",
})

M.DeletePermissionsBoundaryFromPermissionSetInput = schema.new({
    id = id.from(_N, "DeletePermissionsBoundaryFromPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DeletePermissionsBoundaryFromPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "DeletePermissionsBoundaryFromPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePermissionsBoundaryFromPermissionSetOutput = schema.new({
    id = id.from(_N, "DeletePermissionsBoundaryFromPermissionSetResponse"),
    type = "structure",
})

M.DeletePermissionSetInput = schema.new({
    id = id.from(_N, "DeletePermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DeletePermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "DeletePermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePermissionSetOutput = schema.new({
    id = id.from(_N, "DeletePermissionSetResponse"),
    type = "structure",
})

M.DeleteTrustedTokenIssuerInput = schema.new({
    id = id.from(_N, "DeleteTrustedTokenIssuerRequest"),
    type = "structure",
    members = {
        TrustedTokenIssuerArn = schema.new({
            id = id.from(_N, "DeleteTrustedTokenIssuerInput", "TrustedTokenIssuerArn"),
            type = "string",
            name = "TrustedTokenIssuerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteTrustedTokenIssuerOutput = schema.new({
    id = id.from(_N, "DeleteTrustedTokenIssuerResponse"),
    type = "structure",
})

M.DescribeAccountAssignmentCreationStatusInput = schema.new({
    id = id.from(_N, "DescribeAccountAssignmentCreationStatusRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DescribeAccountAssignmentCreationStatusInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountAssignmentCreationRequestId = schema.new({
            id = id.from(_N, "DescribeAccountAssignmentCreationStatusInput", "AccountAssignmentCreationRequestId"),
            type = "string",
            name = "AccountAssignmentCreationRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAccountAssignmentCreationStatusOutput = schema.new({
    id = id.from(_N, "DescribeAccountAssignmentCreationStatusResponse"),
    type = "structure",
    members = {
        AccountAssignmentCreationStatus = schema.new({
            id = id.from(_N, "DescribeAccountAssignmentCreationStatusOutput", "AccountAssignmentCreationStatus"),
            type = "structure",
            name = "AccountAssignmentCreationStatus",
            target_id = id.from(_N, "AccountAssignmentOperationStatus"),
            target = M.AccountAssignmentOperationStatus,
        }),
    },
})

M.DescribeAccountAssignmentDeletionStatusInput = schema.new({
    id = id.from(_N, "DescribeAccountAssignmentDeletionStatusRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DescribeAccountAssignmentDeletionStatusInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountAssignmentDeletionRequestId = schema.new({
            id = id.from(_N, "DescribeAccountAssignmentDeletionStatusInput", "AccountAssignmentDeletionRequestId"),
            type = "string",
            name = "AccountAssignmentDeletionRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAccountAssignmentDeletionStatusOutput = schema.new({
    id = id.from(_N, "DescribeAccountAssignmentDeletionStatusResponse"),
    type = "structure",
    members = {
        AccountAssignmentDeletionStatus = schema.new({
            id = id.from(_N, "DescribeAccountAssignmentDeletionStatusOutput", "AccountAssignmentDeletionStatus"),
            type = "structure",
            name = "AccountAssignmentDeletionStatus",
            target_id = id.from(_N, "AccountAssignmentOperationStatus"),
            target = M.AccountAssignmentOperationStatus,
        }),
    },
})

M.DescribeApplicationInput = schema.new({
    id = id.from(_N, "DescribeApplicationRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "DescribeApplicationInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeApplicationOutput = schema.new({
    id = id.from(_N, "DescribeApplicationResponse"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
        }),
        ApplicationProviderArn = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "ApplicationProviderArn"),
            type = "string",
            name = "ApplicationProviderArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ApplicationAccount = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "ApplicationAccount"),
            type = "string",
            name = "ApplicationAccount",
            target_id = prelude.String.id,
        }),
        InstanceArn = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
        }),
        IdentityStoreArn = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "IdentityStoreArn"),
            type = "string",
            name = "IdentityStoreArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        PortalOptions = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "PortalOptions"),
            type = "structure",
            name = "PortalOptions",
            target_id = id.from(_N, "PortalOptions"),
            target = M.PortalOptions,
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        CreatedFrom = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "CreatedFrom"),
            type = "string",
            name = "CreatedFrom",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeApplicationAssignmentInput = schema.new({
    id = id.from(_N, "DescribeApplicationAssignmentRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "DescribeApplicationAssignmentInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "DescribeApplicationAssignmentInput", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "DescribeApplicationAssignmentInput", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeApplicationAssignmentOutput = schema.new({
    id = id.from(_N, "DescribeApplicationAssignmentResponse"),
    type = "structure",
    members = {
        PrincipalType = schema.new({
            id = id.from(_N, "DescribeApplicationAssignmentOutput", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "DescribeApplicationAssignmentOutput", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
        }),
        ApplicationArn = schema.new({
            id = id.from(_N, "DescribeApplicationAssignmentOutput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeApplicationProviderInput = schema.new({
    id = id.from(_N, "DescribeApplicationProviderRequest"),
    type = "structure",
    members = {
        ApplicationProviderArn = schema.new({
            id = id.from(_N, "DescribeApplicationProviderInput", "ApplicationProviderArn"),
            type = "string",
            name = "ApplicationProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeApplicationProviderOutput = schema.new({
    id = id.from(_N, "DescribeApplicationProviderResponse"),
    type = "structure",
    members = {
        ApplicationProviderArn = schema.new({
            id = id.from(_N, "DescribeApplicationProviderOutput", "ApplicationProviderArn"),
            type = "string",
            name = "ApplicationProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FederationProtocol = schema.new({
            id = id.from(_N, "DescribeApplicationProviderOutput", "FederationProtocol"),
            type = "string",
            name = "FederationProtocol",
            target_id = prelude.String.id,
        }),
        DisplayData = schema.new({
            id = id.from(_N, "DescribeApplicationProviderOutput", "DisplayData"),
            type = "structure",
            name = "DisplayData",
            target_id = id.from(_N, "DisplayData"),
            target = M.DisplayData,
        }),
        ResourceServerConfig = schema.new({
            id = id.from(_N, "DescribeApplicationProviderOutput", "ResourceServerConfig"),
            type = "structure",
            name = "ResourceServerConfig",
            target_id = id.from(_N, "ResourceServerConfig"),
            target = M.ResourceServerConfig,
        }),
    },
})

M.DescribeInstanceInput = schema.new({
    id = id.from(_N, "DescribeInstanceRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DescribeInstanceInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EncryptionConfigurationDetails = schema.new({
    id = id.from(_N, "EncryptionConfigurationDetails"),
    type = "structure",
    members = {
        KeyType = schema.new({
            id = id.from(_N, "EncryptionConfigurationDetails", "KeyType"),
            type = "string",
            name = "KeyType",
            target_id = prelude.String.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "EncryptionConfigurationDetails", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        EncryptionStatus = schema.new({
            id = id.from(_N, "EncryptionConfigurationDetails", "EncryptionStatus"),
            type = "string",
            name = "EncryptionStatus",
            target_id = prelude.String.id,
        }),
        EncryptionStatusReason = schema.new({
            id = id.from(_N, "EncryptionConfigurationDetails", "EncryptionStatusReason"),
            type = "string",
            name = "EncryptionStatusReason",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInstanceOutput = schema.new({
    id = id.from(_N, "DescribeInstanceResponse"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DescribeInstanceOutput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
        }),
        IdentityStoreId = schema.new({
            id = id.from(_N, "DescribeInstanceOutput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
        }),
        OwnerAccountId = schema.new({
            id = id.from(_N, "DescribeInstanceOutput", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeInstanceOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "DescribeInstanceOutput", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeInstanceOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "DescribeInstanceOutput", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        EncryptionConfigurationDetails = schema.new({
            id = id.from(_N, "DescribeInstanceOutput", "EncryptionConfigurationDetails"),
            type = "structure",
            name = "EncryptionConfigurationDetails",
            target_id = id.from(_N, "EncryptionConfigurationDetails"),
            target = M.EncryptionConfigurationDetails,
        }),
    },
})

M.DescribeInstanceAccessControlAttributeConfigurationInput = schema.new({
    id = id.from(_N, "DescribeInstanceAccessControlAttributeConfigurationRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DescribeInstanceAccessControlAttributeConfigurationInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeInstanceAccessControlAttributeConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeInstanceAccessControlAttributeConfigurationResponse"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "DescribeInstanceAccessControlAttributeConfigurationOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "DescribeInstanceAccessControlAttributeConfigurationOutput", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        InstanceAccessControlAttributeConfiguration = schema.new({
            id = id.from(_N, "DescribeInstanceAccessControlAttributeConfigurationOutput", "InstanceAccessControlAttributeConfiguration"),
            type = "structure",
            name = "InstanceAccessControlAttributeConfiguration",
            target_id = id.from(_N, "InstanceAccessControlAttributeConfiguration"),
            target = M.InstanceAccessControlAttributeConfiguration,
        }),
    },
})

M.DescribePermissionSetInput = schema.new({
    id = id.from(_N, "DescribePermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DescribePermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "DescribePermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribePermissionSetOutput = schema.new({
    id = id.from(_N, "DescribePermissionSetResponse"),
    type = "structure",
    members = {
        PermissionSet = schema.new({
            id = id.from(_N, "DescribePermissionSetOutput", "PermissionSet"),
            type = "structure",
            name = "PermissionSet",
            target_id = id.from(_N, "PermissionSet"),
            target = M.PermissionSet,
        }),
    },
})

M.DescribePermissionSetProvisioningStatusInput = schema.new({
    id = id.from(_N, "DescribePermissionSetProvisioningStatusRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DescribePermissionSetProvisioningStatusInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionPermissionSetRequestId = schema.new({
            id = id.from(_N, "DescribePermissionSetProvisioningStatusInput", "ProvisionPermissionSetRequestId"),
            type = "string",
            name = "ProvisionPermissionSetRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PermissionSetProvisioningStatus = schema.new({
    id = id.from(_N, "PermissionSetProvisioningStatus"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "PermissionSetProvisioningStatus", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "PermissionSetProvisioningStatus", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "PermissionSetProvisioningStatus", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "PermissionSetProvisioningStatus", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
        }),
        FailureReason = schema.new({
            id = id.from(_N, "PermissionSetProvisioningStatus", "FailureReason"),
            type = "string",
            name = "FailureReason",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "PermissionSetProvisioningStatus", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribePermissionSetProvisioningStatusOutput = schema.new({
    id = id.from(_N, "DescribePermissionSetProvisioningStatusResponse"),
    type = "structure",
    members = {
        PermissionSetProvisioningStatus = schema.new({
            id = id.from(_N, "DescribePermissionSetProvisioningStatusOutput", "PermissionSetProvisioningStatus"),
            type = "structure",
            name = "PermissionSetProvisioningStatus",
            target_id = id.from(_N, "PermissionSetProvisioningStatus"),
            target = M.PermissionSetProvisioningStatus,
        }),
    },
})

M.DescribeRegionInput = schema.new({
    id = id.from(_N, "DescribeRegionRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DescribeRegionInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegionName = schema.new({
            id = id.from(_N, "DescribeRegionInput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeRegionOutput = schema.new({
    id = id.from(_N, "DescribeRegionResponse"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "DescribeRegionOutput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeRegionOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        AddedDate = schema.new({
            id = id.from(_N, "DescribeRegionOutput", "AddedDate"),
            type = "timestamp",
            name = "AddedDate",
            target_id = prelude.Timestamp.id,
        }),
        IsPrimaryRegion = schema.new({
            id = id.from(_N, "DescribeRegionOutput", "IsPrimaryRegion"),
            type = "boolean",
            name = "IsPrimaryRegion",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DescribeTrustedTokenIssuerInput = schema.new({
    id = id.from(_N, "DescribeTrustedTokenIssuerRequest"),
    type = "structure",
    members = {
        TrustedTokenIssuerArn = schema.new({
            id = id.from(_N, "DescribeTrustedTokenIssuerInput", "TrustedTokenIssuerArn"),
            type = "string",
            name = "TrustedTokenIssuerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeTrustedTokenIssuerOutput = schema.new({
    id = id.from(_N, "DescribeTrustedTokenIssuerResponse"),
    type = "structure",
    members = {
        TrustedTokenIssuerArn = schema.new({
            id = id.from(_N, "DescribeTrustedTokenIssuerOutput", "TrustedTokenIssuerArn"),
            type = "string",
            name = "TrustedTokenIssuerArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeTrustedTokenIssuerOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        TrustedTokenIssuerType = schema.new({
            id = id.from(_N, "DescribeTrustedTokenIssuerOutput", "TrustedTokenIssuerType"),
            type = "string",
            name = "TrustedTokenIssuerType",
            target_id = prelude.String.id,
        }),
        TrustedTokenIssuerConfiguration = schema.new({
            id = id.from(_N, "DescribeTrustedTokenIssuerOutput", "TrustedTokenIssuerConfiguration"),
            type = "union",
            name = "TrustedTokenIssuerConfiguration",
            target_id = id.from(_N, "TrustedTokenIssuerConfiguration"),
            target = M.TrustedTokenIssuerConfiguration,
        }),
    },
})

M.DetachCustomerManagedPolicyReferenceFromPermissionSetInput = schema.new({
    id = id.from(_N, "DetachCustomerManagedPolicyReferenceFromPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DetachCustomerManagedPolicyReferenceFromPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "DetachCustomerManagedPolicyReferenceFromPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CustomerManagedPolicyReference = schema.new({
            id = id.from(_N, "DetachCustomerManagedPolicyReferenceFromPermissionSetInput", "CustomerManagedPolicyReference"),
            type = "structure",
            name = "CustomerManagedPolicyReference",
            target_id = id.from(_N, "CustomerManagedPolicyReference"),
            target = M.CustomerManagedPolicyReference,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachCustomerManagedPolicyReferenceFromPermissionSetOutput = schema.new({
    id = id.from(_N, "DetachCustomerManagedPolicyReferenceFromPermissionSetResponse"),
    type = "structure",
})

M.DetachManagedPolicyFromPermissionSetInput = schema.new({
    id = id.from(_N, "DetachManagedPolicyFromPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "DetachManagedPolicyFromPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "DetachManagedPolicyFromPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ManagedPolicyArn = schema.new({
            id = id.from(_N, "DetachManagedPolicyFromPermissionSetInput", "ManagedPolicyArn"),
            type = "string",
            name = "ManagedPolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachManagedPolicyFromPermissionSetOutput = schema.new({
    id = id.from(_N, "DetachManagedPolicyFromPermissionSetResponse"),
    type = "structure",
})

M.EncryptionConfiguration = schema.new({
    id = id.from(_N, "EncryptionConfiguration"),
    type = "structure",
    members = {
        KeyType = schema.new({
            id = id.from(_N, "EncryptionConfiguration", "KeyType"),
            type = "string",
            name = "KeyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "EncryptionConfiguration", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetApplicationAssignmentConfigurationInput = schema.new({
    id = id.from(_N, "GetApplicationAssignmentConfigurationRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "GetApplicationAssignmentConfigurationInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetApplicationAssignmentConfigurationOutput = schema.new({
    id = id.from(_N, "GetApplicationAssignmentConfigurationResponse"),
    type = "structure",
    members = {
        AssignmentRequired = schema.new({
            id = id.from(_N, "GetApplicationAssignmentConfigurationOutput", "AssignmentRequired"),
            type = "boolean",
            name = "AssignmentRequired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = true },
            },
        }),
    },
})

M.GetApplicationSessionConfigurationInput = schema.new({
    id = id.from(_N, "GetApplicationSessionConfigurationRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "GetApplicationSessionConfigurationInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetApplicationSessionConfigurationOutput = schema.new({
    id = id.from(_N, "GetApplicationSessionConfigurationResponse"),
    type = "structure",
    members = {
        UserBackgroundSessionApplicationStatus = schema.new({
            id = id.from(_N, "GetApplicationSessionConfigurationOutput", "UserBackgroundSessionApplicationStatus"),
            type = "string",
            name = "UserBackgroundSessionApplicationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInlinePolicyForPermissionSetInput = schema.new({
    id = id.from(_N, "GetInlinePolicyForPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "GetInlinePolicyForPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "GetInlinePolicyForPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetInlinePolicyForPermissionSetOutput = schema.new({
    id = id.from(_N, "GetInlinePolicyForPermissionSetResponse"),
    type = "structure",
    members = {
        InlinePolicy = schema.new({
            id = id.from(_N, "GetInlinePolicyForPermissionSetOutput", "InlinePolicy"),
            type = "string",
            name = "InlinePolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPermissionsBoundaryForPermissionSetInput = schema.new({
    id = id.from(_N, "GetPermissionsBoundaryForPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "GetPermissionsBoundaryForPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "GetPermissionsBoundaryForPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PermissionsBoundary = schema.new({
    id = id.from(_N, "PermissionsBoundary"),
    type = "structure",
    members = {
        CustomerManagedPolicyReference = schema.new({
            id = id.from(_N, "PermissionsBoundary", "CustomerManagedPolicyReference"),
            type = "structure",
            name = "CustomerManagedPolicyReference",
            target_id = id.from(_N, "CustomerManagedPolicyReference"),
            target = M.CustomerManagedPolicyReference,
        }),
        ManagedPolicyArn = schema.new({
            id = id.from(_N, "PermissionsBoundary", "ManagedPolicyArn"),
            type = "string",
            name = "ManagedPolicyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPermissionsBoundaryForPermissionSetOutput = schema.new({
    id = id.from(_N, "GetPermissionsBoundaryForPermissionSetResponse"),
    type = "structure",
    members = {
        PermissionsBoundary = schema.new({
            id = id.from(_N, "GetPermissionsBoundaryForPermissionSetOutput", "PermissionsBoundary"),
            type = "structure",
            name = "PermissionsBoundary",
            target_id = id.from(_N, "PermissionsBoundary"),
            target = M.PermissionsBoundary,
        }),
    },
})

M.InstanceMetadata = schema.new({
    id = id.from(_N, "InstanceMetadata"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "InstanceMetadata", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
        }),
        IdentityStoreId = schema.new({
            id = id.from(_N, "InstanceMetadata", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
        }),
        OwnerAccountId = schema.new({
            id = id.from(_N, "InstanceMetadata", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "InstanceMetadata", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "InstanceMetadata", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "InstanceMetadata", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "InstanceMetadata", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
    },
})

M.OperationStatusFilter = schema.new({
    id = id.from(_N, "OperationStatusFilter"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "OperationStatusFilter", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccountAssignmentCreationStatusInput = schema.new({
    id = id.from(_N, "ListAccountAssignmentCreationStatusRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListAccountAssignmentCreationStatusInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAccountAssignmentCreationStatusInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountAssignmentCreationStatusInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filter = schema.new({
            id = id.from(_N, "ListAccountAssignmentCreationStatusInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "OperationStatusFilter"),
            target = M.OperationStatusFilter,
        }),
    },
})

M.ListAccountAssignmentCreationStatusOutput = schema.new({
    id = id.from(_N, "ListAccountAssignmentCreationStatusResponse"),
    type = "structure",
    members = {
        AccountAssignmentsCreationStatus = schema.new({
            id = id.from(_N, "ListAccountAssignmentCreationStatusOutput", "AccountAssignmentsCreationStatus"),
            type = "list",
            name = "AccountAssignmentsCreationStatus",
            target_id = prelude.Document.id,
            list_member = M.AccountAssignmentOperationStatusMetadata,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountAssignmentCreationStatusOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccountAssignmentDeletionStatusInput = schema.new({
    id = id.from(_N, "ListAccountAssignmentDeletionStatusRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListAccountAssignmentDeletionStatusInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAccountAssignmentDeletionStatusInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountAssignmentDeletionStatusInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filter = schema.new({
            id = id.from(_N, "ListAccountAssignmentDeletionStatusInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "OperationStatusFilter"),
            target = M.OperationStatusFilter,
        }),
    },
})

M.ListAccountAssignmentDeletionStatusOutput = schema.new({
    id = id.from(_N, "ListAccountAssignmentDeletionStatusResponse"),
    type = "structure",
    members = {
        AccountAssignmentsDeletionStatus = schema.new({
            id = id.from(_N, "ListAccountAssignmentDeletionStatusOutput", "AccountAssignmentsDeletionStatus"),
            type = "list",
            name = "AccountAssignmentsDeletionStatus",
            target_id = prelude.Document.id,
            list_member = M.AccountAssignmentOperationStatusMetadata,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountAssignmentDeletionStatusOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccountAssignmentsInput = schema.new({
    id = id.from(_N, "ListAccountAssignmentsRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListAccountAssignmentsInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "ListAccountAssignmentsInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "ListAccountAssignmentsInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAccountAssignmentsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountAssignmentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccountAssignmentsOutput = schema.new({
    id = id.from(_N, "ListAccountAssignmentsResponse"),
    type = "structure",
    members = {
        AccountAssignments = schema.new({
            id = id.from(_N, "ListAccountAssignmentsOutput", "AccountAssignments"),
            type = "list",
            name = "AccountAssignments",
            target_id = prelude.Document.id,
            list_member = M.AccountAssignment,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountAssignmentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccountAssignmentsFilter = schema.new({
    id = id.from(_N, "ListAccountAssignmentsFilter"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "ListAccountAssignmentsFilter", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccountAssignmentsForPrincipalInput = schema.new({
    id = id.from(_N, "ListAccountAssignmentsForPrincipalRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListAccountAssignmentsForPrincipalInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "ListAccountAssignmentsForPrincipalInput", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "ListAccountAssignmentsForPrincipalInput", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filter = schema.new({
            id = id.from(_N, "ListAccountAssignmentsForPrincipalInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "ListAccountAssignmentsFilter"),
            target = M.ListAccountAssignmentsFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountAssignmentsForPrincipalInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAccountAssignmentsForPrincipalInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 100 },
            },
        }),
    },
})

M.ListAccountAssignmentsForPrincipalOutput = schema.new({
    id = id.from(_N, "ListAccountAssignmentsForPrincipalResponse"),
    type = "structure",
    members = {
        AccountAssignments = schema.new({
            id = id.from(_N, "ListAccountAssignmentsForPrincipalOutput", "AccountAssignments"),
            type = "list",
            name = "AccountAssignments",
            target_id = prelude.Document.id,
            list_member = M.AccountAssignmentForPrincipal,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountAssignmentsForPrincipalOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccountsForProvisionedPermissionSetInput = schema.new({
    id = id.from(_N, "ListAccountsForProvisionedPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListAccountsForProvisionedPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "ListAccountsForProvisionedPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningStatus = schema.new({
            id = id.from(_N, "ListAccountsForProvisionedPermissionSetInput", "ProvisioningStatus"),
            type = "string",
            name = "ProvisioningStatus",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAccountsForProvisionedPermissionSetInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountsForProvisionedPermissionSetInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccountsForProvisionedPermissionSetOutput = schema.new({
    id = id.from(_N, "ListAccountsForProvisionedPermissionSetResponse"),
    type = "structure",
    members = {
        AccountIds = schema.new({
            id = id.from(_N, "ListAccountsForProvisionedPermissionSetOutput", "AccountIds"),
            type = "list",
            name = "AccountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountsForProvisionedPermissionSetOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationAssignmentsInput = schema.new({
    id = id.from(_N, "ListApplicationAssignmentsRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationAssignmentsOutput = schema.new({
    id = id.from(_N, "ListApplicationAssignmentsResponse"),
    type = "structure",
    members = {
        ApplicationAssignments = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsOutput", "ApplicationAssignments"),
            type = "list",
            name = "ApplicationAssignments",
            target_id = prelude.Document.id,
            list_member = M.ApplicationAssignment,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationAssignmentsFilter = schema.new({
    id = id.from(_N, "ListApplicationAssignmentsFilter"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsFilter", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationAssignmentsForPrincipalInput = schema.new({
    id = id.from(_N, "ListApplicationAssignmentsForPrincipalRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsForPrincipalInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsForPrincipalInput", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsForPrincipalInput", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filter = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsForPrincipalInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "ListApplicationAssignmentsFilter"),
            target = M.ListApplicationAssignmentsFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsForPrincipalInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsForPrincipalInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 100 },
            },
        }),
    },
})

M.ListApplicationAssignmentsForPrincipalOutput = schema.new({
    id = id.from(_N, "ListApplicationAssignmentsForPrincipalResponse"),
    type = "structure",
    members = {
        ApplicationAssignments = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsForPrincipalOutput", "ApplicationAssignments"),
            type = "list",
            name = "ApplicationAssignments",
            target_id = prelude.Document.id,
            list_member = M.ApplicationAssignmentForPrincipal,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationAssignmentsForPrincipalOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationProvidersInput = schema.new({
    id = id.from(_N, "ListApplicationProvidersRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListApplicationProvidersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationProvidersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationProvidersOutput = schema.new({
    id = id.from(_N, "ListApplicationProvidersResponse"),
    type = "structure",
    members = {
        ApplicationProviders = schema.new({
            id = id.from(_N, "ListApplicationProvidersOutput", "ApplicationProviders"),
            type = "list",
            name = "ApplicationProviders",
            target_id = prelude.Document.id,
            list_member = M.ApplicationProvider,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationProvidersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationsFilter = schema.new({
    id = id.from(_N, "ListApplicationsFilter"),
    type = "structure",
    members = {
        ApplicationAccount = schema.new({
            id = id.from(_N, "ListApplicationsFilter", "ApplicationAccount"),
            type = "string",
            name = "ApplicationAccount",
            target_id = prelude.String.id,
        }),
        ApplicationProvider = schema.new({
            id = id.from(_N, "ListApplicationsFilter", "ApplicationProvider"),
            type = "string",
            name = "ApplicationProvider",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationsInput = schema.new({
    id = id.from(_N, "ListApplicationsRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListApplicationsInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListApplicationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filter = schema.new({
            id = id.from(_N, "ListApplicationsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "ListApplicationsFilter"),
            target = M.ListApplicationsFilter,
        }),
    },
})

M.ListApplicationsOutput = schema.new({
    id = id.from(_N, "ListApplicationsResponse"),
    type = "structure",
    members = {
        Applications = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "Applications"),
            type = "list",
            name = "Applications",
            target_id = prelude.Document.id,
            list_member = M.Application,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCustomerManagedPolicyReferencesInPermissionSetInput = schema.new({
    id = id.from(_N, "ListCustomerManagedPolicyReferencesInPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListCustomerManagedPolicyReferencesInPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "ListCustomerManagedPolicyReferencesInPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCustomerManagedPolicyReferencesInPermissionSetInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCustomerManagedPolicyReferencesInPermissionSetInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCustomerManagedPolicyReferencesInPermissionSetOutput = schema.new({
    id = id.from(_N, "ListCustomerManagedPolicyReferencesInPermissionSetResponse"),
    type = "structure",
    members = {
        CustomerManagedPolicyReferences = schema.new({
            id = id.from(_N, "ListCustomerManagedPolicyReferencesInPermissionSetOutput", "CustomerManagedPolicyReferences"),
            type = "list",
            name = "CustomerManagedPolicyReferences",
            target_id = prelude.Document.id,
            list_member = M.CustomerManagedPolicyReference,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCustomerManagedPolicyReferencesInPermissionSetOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInstancesInput = schema.new({
    id = id.from(_N, "ListInstancesRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListInstancesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListInstancesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInstancesOutput = schema.new({
    id = id.from(_N, "ListInstancesResponse"),
    type = "structure",
    members = {
        Instances = schema.new({
            id = id.from(_N, "ListInstancesOutput", "Instances"),
            type = "list",
            name = "Instances",
            target_id = prelude.Document.id,
            list_member = M.InstanceMetadata,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListInstancesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListManagedPoliciesInPermissionSetInput = schema.new({
    id = id.from(_N, "ListManagedPoliciesInPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListManagedPoliciesInPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "ListManagedPoliciesInPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListManagedPoliciesInPermissionSetInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListManagedPoliciesInPermissionSetInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListManagedPoliciesInPermissionSetOutput = schema.new({
    id = id.from(_N, "ListManagedPoliciesInPermissionSetResponse"),
    type = "structure",
    members = {
        AttachedManagedPolicies = schema.new({
            id = id.from(_N, "ListManagedPoliciesInPermissionSetOutput", "AttachedManagedPolicies"),
            type = "list",
            name = "AttachedManagedPolicies",
            target_id = prelude.Document.id,
            list_member = M.AttachedManagedPolicy,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListManagedPoliciesInPermissionSetOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPermissionSetProvisioningStatusInput = schema.new({
    id = id.from(_N, "ListPermissionSetProvisioningStatusRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListPermissionSetProvisioningStatusInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPermissionSetProvisioningStatusInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPermissionSetProvisioningStatusInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filter = schema.new({
            id = id.from(_N, "ListPermissionSetProvisioningStatusInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "OperationStatusFilter"),
            target = M.OperationStatusFilter,
        }),
    },
})

M.PermissionSetProvisioningStatusMetadata = schema.new({
    id = id.from(_N, "PermissionSetProvisioningStatusMetadata"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "PermissionSetProvisioningStatusMetadata", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "PermissionSetProvisioningStatusMetadata", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "PermissionSetProvisioningStatusMetadata", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListPermissionSetProvisioningStatusOutput = schema.new({
    id = id.from(_N, "ListPermissionSetProvisioningStatusResponse"),
    type = "structure",
    members = {
        PermissionSetsProvisioningStatus = schema.new({
            id = id.from(_N, "ListPermissionSetProvisioningStatusOutput", "PermissionSetsProvisioningStatus"),
            type = "list",
            name = "PermissionSetsProvisioningStatus",
            target_id = prelude.Document.id,
            list_member = M.PermissionSetProvisioningStatusMetadata,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPermissionSetProvisioningStatusOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPermissionSetsInput = schema.new({
    id = id.from(_N, "ListPermissionSetsRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListPermissionSetsInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPermissionSetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPermissionSetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListPermissionSetsOutput = schema.new({
    id = id.from(_N, "ListPermissionSetsResponse"),
    type = "structure",
    members = {
        PermissionSets = schema.new({
            id = id.from(_N, "ListPermissionSetsOutput", "PermissionSets"),
            type = "list",
            name = "PermissionSets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPermissionSetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPermissionSetsProvisionedToAccountInput = schema.new({
    id = id.from(_N, "ListPermissionSetsProvisionedToAccountRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListPermissionSetsProvisionedToAccountInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "ListPermissionSetsProvisionedToAccountInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningStatus = schema.new({
            id = id.from(_N, "ListPermissionSetsProvisionedToAccountInput", "ProvisioningStatus"),
            type = "string",
            name = "ProvisioningStatus",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPermissionSetsProvisionedToAccountInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPermissionSetsProvisionedToAccountInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPermissionSetsProvisionedToAccountOutput = schema.new({
    id = id.from(_N, "ListPermissionSetsProvisionedToAccountResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListPermissionSetsProvisionedToAccountOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        PermissionSets = schema.new({
            id = id.from(_N, "ListPermissionSetsProvisionedToAccountOutput", "PermissionSets"),
            type = "list",
            name = "PermissionSets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListRegionsInput = schema.new({
    id = id.from(_N, "ListRegionsRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListRegionsInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRegionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRegionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegionMetadata = schema.new({
    id = id.from(_N, "RegionMetadata"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "RegionMetadata", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "RegionMetadata", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        AddedDate = schema.new({
            id = id.from(_N, "RegionMetadata", "AddedDate"),
            type = "timestamp",
            name = "AddedDate",
            target_id = prelude.Timestamp.id,
        }),
        IsPrimaryRegion = schema.new({
            id = id.from(_N, "RegionMetadata", "IsPrimaryRegion"),
            type = "boolean",
            name = "IsPrimaryRegion",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ListRegionsOutput = schema.new({
    id = id.from(_N, "ListRegionsResponse"),
    type = "structure",
    members = {
        Regions = schema.new({
            id = id.from(_N, "ListRegionsOutput", "Regions"),
            type = "list",
            name = "Regions",
            target_id = prelude.Document.id,
            list_member = M.RegionMetadata,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRegionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTrustedTokenIssuersInput = schema.new({
    id = id.from(_N, "ListTrustedTokenIssuersRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ListTrustedTokenIssuersInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTrustedTokenIssuersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTrustedTokenIssuersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TrustedTokenIssuerMetadata = schema.new({
    id = id.from(_N, "TrustedTokenIssuerMetadata"),
    type = "structure",
    members = {
        TrustedTokenIssuerArn = schema.new({
            id = id.from(_N, "TrustedTokenIssuerMetadata", "TrustedTokenIssuerArn"),
            type = "string",
            name = "TrustedTokenIssuerArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "TrustedTokenIssuerMetadata", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        TrustedTokenIssuerType = schema.new({
            id = id.from(_N, "TrustedTokenIssuerMetadata", "TrustedTokenIssuerType"),
            type = "string",
            name = "TrustedTokenIssuerType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTrustedTokenIssuersOutput = schema.new({
    id = id.from(_N, "ListTrustedTokenIssuersResponse"),
    type = "structure",
    members = {
        TrustedTokenIssuers = schema.new({
            id = id.from(_N, "ListTrustedTokenIssuersOutput", "TrustedTokenIssuers"),
            type = "list",
            name = "TrustedTokenIssuers",
            target_id = prelude.Document.id,
            list_member = M.TrustedTokenIssuerMetadata,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTrustedTokenIssuersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OidcJwtUpdateConfiguration = schema.new({
    id = id.from(_N, "OidcJwtUpdateConfiguration"),
    type = "structure",
    members = {
        ClaimAttributePath = schema.new({
            id = id.from(_N, "OidcJwtUpdateConfiguration", "ClaimAttributePath"),
            type = "string",
            name = "ClaimAttributePath",
            target_id = prelude.String.id,
        }),
        IdentityStoreAttributePath = schema.new({
            id = id.from(_N, "OidcJwtUpdateConfiguration", "IdentityStoreAttributePath"),
            type = "string",
            name = "IdentityStoreAttributePath",
            target_id = prelude.String.id,
        }),
        JwksRetrievalOption = schema.new({
            id = id.from(_N, "OidcJwtUpdateConfiguration", "JwksRetrievalOption"),
            type = "string",
            name = "JwksRetrievalOption",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisionPermissionSetInput = schema.new({
    id = id.from(_N, "ProvisionPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "ProvisionPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "ProvisionPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetId = schema.new({
            id = id.from(_N, "ProvisionPermissionSetInput", "TargetId"),
            type = "string",
            name = "TargetId",
            target_id = prelude.String.id,
        }),
        TargetType = schema.new({
            id = id.from(_N, "ProvisionPermissionSetInput", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProvisionPermissionSetOutput = schema.new({
    id = id.from(_N, "ProvisionPermissionSetResponse"),
    type = "structure",
    members = {
        PermissionSetProvisioningStatus = schema.new({
            id = id.from(_N, "ProvisionPermissionSetOutput", "PermissionSetProvisioningStatus"),
            type = "structure",
            name = "PermissionSetProvisioningStatus",
            target_id = id.from(_N, "PermissionSetProvisioningStatus"),
            target = M.PermissionSetProvisioningStatus,
        }),
    },
})

M.PutApplicationAssignmentConfigurationInput = schema.new({
    id = id.from(_N, "PutApplicationAssignmentConfigurationRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "PutApplicationAssignmentConfigurationInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssignmentRequired = schema.new({
            id = id.from(_N, "PutApplicationAssignmentConfigurationInput", "AssignmentRequired"),
            type = "boolean",
            name = "AssignmentRequired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = true },
            },
        }),
    },
})

M.PutApplicationAssignmentConfigurationOutput = schema.new({
    id = id.from(_N, "PutApplicationAssignmentConfigurationResponse"),
    type = "structure",
})

M.PutApplicationSessionConfigurationInput = schema.new({
    id = id.from(_N, "PutApplicationSessionConfigurationRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "PutApplicationSessionConfigurationInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserBackgroundSessionApplicationStatus = schema.new({
            id = id.from(_N, "PutApplicationSessionConfigurationInput", "UserBackgroundSessionApplicationStatus"),
            type = "string",
            name = "UserBackgroundSessionApplicationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.PutApplicationSessionConfigurationOutput = schema.new({
    id = id.from(_N, "PutApplicationSessionConfigurationResponse"),
    type = "structure",
})

M.PutInlinePolicyToPermissionSetInput = schema.new({
    id = id.from(_N, "PutInlinePolicyToPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "PutInlinePolicyToPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "PutInlinePolicyToPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InlinePolicy = schema.new({
            id = id.from(_N, "PutInlinePolicyToPermissionSetInput", "InlinePolicy"),
            type = "string",
            name = "InlinePolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutInlinePolicyToPermissionSetOutput = schema.new({
    id = id.from(_N, "PutInlinePolicyToPermissionSetResponse"),
    type = "structure",
})

M.PutPermissionsBoundaryToPermissionSetInput = schema.new({
    id = id.from(_N, "PutPermissionsBoundaryToPermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "PutPermissionsBoundaryToPermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "PutPermissionsBoundaryToPermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionsBoundary = schema.new({
            id = id.from(_N, "PutPermissionsBoundaryToPermissionSetInput", "PermissionsBoundary"),
            type = "structure",
            name = "PermissionsBoundary",
            target_id = id.from(_N, "PermissionsBoundary"),
            target = M.PermissionsBoundary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutPermissionsBoundaryToPermissionSetOutput = schema.new({
    id = id.from(_N, "PutPermissionsBoundaryToPermissionSetResponse"),
    type = "structure",
})

M.RemoveRegionInput = schema.new({
    id = id.from(_N, "RemoveRegionRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "RemoveRegionInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegionName = schema.new({
            id = id.from(_N, "RemoveRegionInput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveRegionOutput = schema.new({
    id = id.from(_N, "RemoveRegionResponse"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "RemoveRegionOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateApplicationPortalOptions = schema.new({
    id = id.from(_N, "UpdateApplicationPortalOptions"),
    type = "structure",
    members = {
        SignInOptions = schema.new({
            id = id.from(_N, "UpdateApplicationPortalOptions", "SignInOptions"),
            type = "structure",
            name = "SignInOptions",
            target_id = id.from(_N, "SignInOptions"),
            target = M.SignInOptions,
        }),
    },
})

M.UpdateApplicationInput = schema.new({
    id = id.from(_N, "UpdateApplicationRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        PortalOptions = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "PortalOptions"),
            type = "structure",
            name = "PortalOptions",
            target_id = id.from(_N, "UpdateApplicationPortalOptions"),
            target = M.UpdateApplicationPortalOptions,
        }),
    },
})

M.UpdateApplicationOutput = schema.new({
    id = id.from(_N, "UpdateApplicationResponse"),
    type = "structure",
})

M.UpdateInstanceInput = schema.new({
    id = id.from(_N, "UpdateInstanceRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateInstanceInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        InstanceArn = schema.new({
            id = id.from(_N, "UpdateInstanceInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncryptionConfiguration = schema.new({
            id = id.from(_N, "UpdateInstanceInput", "EncryptionConfiguration"),
            type = "structure",
            name = "EncryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
    },
})

M.UpdateInstanceOutput = schema.new({
    id = id.from(_N, "UpdateInstanceResponse"),
    type = "structure",
})

M.UpdateInstanceAccessControlAttributeConfigurationInput = schema.new({
    id = id.from(_N, "UpdateInstanceAccessControlAttributeConfigurationRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "UpdateInstanceAccessControlAttributeConfigurationInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceAccessControlAttributeConfiguration = schema.new({
            id = id.from(_N, "UpdateInstanceAccessControlAttributeConfigurationInput", "InstanceAccessControlAttributeConfiguration"),
            type = "structure",
            name = "InstanceAccessControlAttributeConfiguration",
            target_id = id.from(_N, "InstanceAccessControlAttributeConfiguration"),
            target = M.InstanceAccessControlAttributeConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateInstanceAccessControlAttributeConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateInstanceAccessControlAttributeConfigurationResponse"),
    type = "structure",
})

M.UpdatePermissionSetInput = schema.new({
    id = id.from(_N, "UpdatePermissionSetRequest"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "UpdatePermissionSetInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionSetArn = schema.new({
            id = id.from(_N, "UpdatePermissionSetInput", "PermissionSetArn"),
            type = "string",
            name = "PermissionSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdatePermissionSetInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SessionDuration = schema.new({
            id = id.from(_N, "UpdatePermissionSetInput", "SessionDuration"),
            type = "string",
            name = "SessionDuration",
            target_id = prelude.String.id,
        }),
        RelayState = schema.new({
            id = id.from(_N, "UpdatePermissionSetInput", "RelayState"),
            type = "string",
            name = "RelayState",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePermissionSetOutput = schema.new({
    id = id.from(_N, "UpdatePermissionSetResponse"),
    type = "structure",
})

M.TrustedTokenIssuerUpdateConfiguration = schema.new({
    id = id.from(_N, "TrustedTokenIssuerUpdateConfiguration"),
    type = "union",
    members = {
        OidcJwtConfiguration = schema.new({
            id = id.from(_N, "TrustedTokenIssuerUpdateConfiguration", "OidcJwtConfiguration"),
            type = "structure",
            name = "OidcJwtConfiguration",
            target_id = id.from(_N, "OidcJwtUpdateConfiguration"),
            target = M.OidcJwtUpdateConfiguration,
        }),
    },
})

M.UpdateTrustedTokenIssuerInput = schema.new({
    id = id.from(_N, "UpdateTrustedTokenIssuerRequest"),
    type = "structure",
    members = {
        TrustedTokenIssuerArn = schema.new({
            id = id.from(_N, "UpdateTrustedTokenIssuerInput", "TrustedTokenIssuerArn"),
            type = "string",
            name = "TrustedTokenIssuerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateTrustedTokenIssuerInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        TrustedTokenIssuerConfiguration = schema.new({
            id = id.from(_N, "UpdateTrustedTokenIssuerInput", "TrustedTokenIssuerConfiguration"),
            type = "union",
            name = "TrustedTokenIssuerConfiguration",
            target_id = id.from(_N, "TrustedTokenIssuerUpdateConfiguration"),
            target = M.TrustedTokenIssuerUpdateConfiguration,
        }),
    },
})

M.UpdateTrustedTokenIssuerOutput = schema.new({
    id = id.from(_N, "UpdateTrustedTokenIssuerResponse"),
    type = "structure",
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
