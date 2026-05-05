local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.iam"

local M = {}

M.AcceptDelegationRequestInput = schema.new({
    id = id.from(_N, "AcceptDelegationRequestInput"),
    type = "structure",
    members = {
        DelegationRequestId = schema.new({
            id = id.from(_N, "AcceptDelegationRequestInput", "DelegationRequestId"),
            type = "string",
            name = "DelegationRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AcceptDelegationRequestOutput = schema.new({
    id = id.from(_N, "AcceptDelegationRequestOutput"),
    type = "structure",
})

M.ConcurrentModificationException = schema.new({
    id = id.from(_N, "ConcurrentModificationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConcurrentModificationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchEntityException = schema.new({
    id = id.from(_N, "NoSuchEntityException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoSuchEntityException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceFailureException = schema.new({
    id = id.from(_N, "ServiceFailureException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceFailureException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessDetail = schema.new({
    id = id.from(_N, "AccessDetail"),
    type = "structure",
    members = {
        ServiceName = schema.new({
            id = id.from(_N, "AccessDetail", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "AccessDetail", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Region = schema.new({
            id = id.from(_N, "AccessDetail", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        EntityPath = schema.new({
            id = id.from(_N, "AccessDetail", "EntityPath"),
            type = "string",
            name = "EntityPath",
            target_id = prelude.String.id,
        }),
        LastAuthenticatedTime = schema.new({
            id = id.from(_N, "AccessDetail", "LastAuthenticatedTime"),
            type = "timestamp",
            name = "LastAuthenticatedTime",
            target_id = prelude.Timestamp.id,
        }),
        TotalAuthenticatedEntities = schema.new({
            id = id.from(_N, "AccessDetail", "TotalAuthenticatedEntities"),
            type = "integer",
            name = "TotalAuthenticatedEntities",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AccessKey = schema.new({
    id = id.from(_N, "AccessKey"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "AccessKey", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccessKeyId = schema.new({
            id = id.from(_N, "AccessKey", "AccessKeyId"),
            type = "string",
            name = "AccessKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "AccessKey", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecretAccessKey = schema.new({
            id = id.from(_N, "AccessKey", "SecretAccessKey"),
            type = "string",
            name = "SecretAccessKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateDate = schema.new({
            id = id.from(_N, "AccessKey", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AccessKeyLastUsed = schema.new({
    id = id.from(_N, "AccessKeyLastUsed"),
    type = "structure",
    members = {
        LastUsedDate = schema.new({
            id = id.from(_N, "AccessKeyLastUsed", "LastUsedDate"),
            type = "timestamp",
            name = "LastUsedDate",
            target_id = prelude.Timestamp.id,
        }),
        ServiceName = schema.new({
            id = id.from(_N, "AccessKeyLastUsed", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Region = schema.new({
            id = id.from(_N, "AccessKeyLastUsed", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AccessKeyMetadata = schema.new({
    id = id.from(_N, "AccessKeyMetadata"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "AccessKeyMetadata", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        AccessKeyId = schema.new({
            id = id.from(_N, "AccessKeyMetadata", "AccessKeyId"),
            type = "string",
            name = "AccessKeyId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "AccessKeyMetadata", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "AccessKeyMetadata", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AccountNotManagementOrDelegatedAdministratorException = schema.new({
    id = id.from(_N, "AccountNotManagementOrDelegatedAdministratorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccountNotManagementOrDelegatedAdministratorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AddClientIDToOpenIDConnectProviderInput = schema.new({
    id = id.from(_N, "AddClientIDToOpenIDConnectProviderInput"),
    type = "structure",
    members = {
        OpenIDConnectProviderArn = schema.new({
            id = id.from(_N, "AddClientIDToOpenIDConnectProviderInput", "OpenIDConnectProviderArn"),
            type = "string",
            name = "OpenIDConnectProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientID = schema.new({
            id = id.from(_N, "AddClientIDToOpenIDConnectProviderInput", "ClientID"),
            type = "string",
            name = "ClientID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddClientIDToOpenIDConnectProviderOutput = schema.new({
    id = id.from(_N, "AddClientIDToOpenIDConnectProviderOutput"),
    type = "structure",
})

M.InvalidInputException = schema.new({
    id = id.from(_N, "InvalidInputException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidInputException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AddRoleToInstanceProfileInput = schema.new({
    id = id.from(_N, "AddRoleToInstanceProfileInput"),
    type = "structure",
    members = {
        InstanceProfileName = schema.new({
            id = id.from(_N, "AddRoleToInstanceProfileInput", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleName = schema.new({
            id = id.from(_N, "AddRoleToInstanceProfileInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddRoleToInstanceProfileOutput = schema.new({
    id = id.from(_N, "AddRoleToInstanceProfileOutput"),
    type = "structure",
})

M.EntityAlreadyExistsException = schema.new({
    id = id.from(_N, "EntityAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EntityAlreadyExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnmodifiableEntityException = schema.new({
    id = id.from(_N, "UnmodifiableEntityException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnmodifiableEntityException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AddUserToGroupInput = schema.new({
    id = id.from(_N, "AddUserToGroupInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "AddUserToGroupInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "AddUserToGroupInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddUserToGroupOutput = schema.new({
    id = id.from(_N, "AddUserToGroupOutput"),
    type = "structure",
})

M.AssociateDelegationRequestInput = schema.new({
    id = id.from(_N, "AssociateDelegationRequestInput"),
    type = "structure",
    members = {
        DelegationRequestId = schema.new({
            id = id.from(_N, "AssociateDelegationRequestInput", "DelegationRequestId"),
            type = "string",
            name = "DelegationRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateDelegationRequestOutput = schema.new({
    id = id.from(_N, "AssociateDelegationRequestOutput"),
    type = "structure",
})

M.AttachedPermissionsBoundary = schema.new({
    id = id.from(_N, "AttachedPermissionsBoundary"),
    type = "structure",
    members = {
        PermissionsBoundaryType = schema.new({
            id = id.from(_N, "AttachedPermissionsBoundary", "PermissionsBoundaryType"),
            type = "string",
            name = "PermissionsBoundaryType",
            target_id = prelude.String.id,
        }),
        PermissionsBoundaryArn = schema.new({
            id = id.from(_N, "AttachedPermissionsBoundary", "PermissionsBoundaryArn"),
            type = "string",
            name = "PermissionsBoundaryArn",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachedPolicy = schema.new({
    id = id.from(_N, "AttachedPolicy"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "AttachedPolicy", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
        }),
        PolicyArn = schema.new({
            id = id.from(_N, "AttachedPolicy", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachGroupPolicyInput = schema.new({
    id = id.from(_N, "AttachGroupPolicyInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "AttachGroupPolicyInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyArn = schema.new({
            id = id.from(_N, "AttachGroupPolicyInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachGroupPolicyOutput = schema.new({
    id = id.from(_N, "AttachGroupPolicyOutput"),
    type = "structure",
})

M.PolicyNotAttachableException = schema.new({
    id = id.from(_N, "PolicyNotAttachableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PolicyNotAttachableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachRolePolicyInput = schema.new({
    id = id.from(_N, "AttachRolePolicyInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "AttachRolePolicyInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyArn = schema.new({
            id = id.from(_N, "AttachRolePolicyInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachRolePolicyOutput = schema.new({
    id = id.from(_N, "AttachRolePolicyOutput"),
    type = "structure",
})

M.AttachUserPolicyInput = schema.new({
    id = id.from(_N, "AttachUserPolicyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "AttachUserPolicyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyArn = schema.new({
            id = id.from(_N, "AttachUserPolicyInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachUserPolicyOutput = schema.new({
    id = id.from(_N, "AttachUserPolicyOutput"),
    type = "structure",
})

M.ChangePasswordInput = schema.new({
    id = id.from(_N, "ChangePasswordInput"),
    type = "structure",
    members = {
        OldPassword = schema.new({
            id = id.from(_N, "ChangePasswordInput", "OldPassword"),
            type = "string",
            name = "OldPassword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewPassword = schema.new({
            id = id.from(_N, "ChangePasswordInput", "NewPassword"),
            type = "string",
            name = "NewPassword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChangePasswordOutput = schema.new({
    id = id.from(_N, "ChangePasswordOutput"),
    type = "structure",
})

M.EntityTemporarilyUnmodifiableException = schema.new({
    id = id.from(_N, "EntityTemporarilyUnmodifiableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EntityTemporarilyUnmodifiableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidUserTypeException = schema.new({
    id = id.from(_N, "InvalidUserTypeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidUserTypeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PasswordPolicyViolationException = schema.new({
    id = id.from(_N, "PasswordPolicyViolationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PasswordPolicyViolationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAccessKeyInput = schema.new({
    id = id.from(_N, "CreateAccessKeyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "CreateAccessKeyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAccessKeyOutput = schema.new({
    id = id.from(_N, "CreateAccessKeyOutput"),
    type = "structure",
    members = {
        AccessKey = schema.new({
            id = id.from(_N, "CreateAccessKeyOutput", "AccessKey"),
            type = "structure",
            name = "AccessKey",
            target_id = id.from(_N, "AccessKey"),
            target = M.AccessKey,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAccountAliasInput = schema.new({
    id = id.from(_N, "CreateAccountAliasInput"),
    type = "structure",
    members = {
        AccountAlias = schema.new({
            id = id.from(_N, "CreateAccountAliasInput", "AccountAlias"),
            type = "string",
            name = "AccountAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAccountAliasOutput = schema.new({
    id = id.from(_N, "CreateAccountAliasOutput"),
    type = "structure",
})

M.PolicyParameter = schema.new({
    id = id.from(_N, "PolicyParameter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PolicyParameter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "PolicyParameter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Type = schema.new({
            id = id.from(_N, "PolicyParameter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.DelegationPermission = schema.new({
    id = id.from(_N, "DelegationPermission"),
    type = "structure",
    members = {
        PolicyTemplateArn = schema.new({
            id = id.from(_N, "DelegationPermission", "PolicyTemplateArn"),
            type = "string",
            name = "PolicyTemplateArn",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "DelegationPermission", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.PolicyParameter,
        }),
    },
})

M.CreateDelegationRequestInput = schema.new({
    id = id.from(_N, "CreateDelegationRequestInput"),
    type = "structure",
    members = {
        OwnerAccountId = schema.new({
            id = id.from(_N, "CreateDelegationRequestInput", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateDelegationRequestInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Permissions = schema.new({
            id = id.from(_N, "CreateDelegationRequestInput", "Permissions"),
            type = "structure",
            name = "Permissions",
            target_id = id.from(_N, "DelegationPermission"),
            target = M.DelegationPermission,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RequestMessage = schema.new({
            id = id.from(_N, "CreateDelegationRequestInput", "RequestMessage"),
            type = "string",
            name = "RequestMessage",
            target_id = prelude.String.id,
        }),
        RequestorWorkflowId = schema.new({
            id = id.from(_N, "CreateDelegationRequestInput", "RequestorWorkflowId"),
            type = "string",
            name = "RequestorWorkflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RedirectUrl = schema.new({
            id = id.from(_N, "CreateDelegationRequestInput", "RedirectUrl"),
            type = "string",
            name = "RedirectUrl",
            target_id = prelude.String.id,
        }),
        NotificationChannel = schema.new({
            id = id.from(_N, "CreateDelegationRequestInput", "NotificationChannel"),
            type = "string",
            name = "NotificationChannel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SessionDuration = schema.new({
            id = id.from(_N, "CreateDelegationRequestInput", "SessionDuration"),
            type = "integer",
            name = "SessionDuration",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OnlySendByOwner = schema.new({
            id = id.from(_N, "CreateDelegationRequestInput", "OnlySendByOwner"),
            type = "boolean",
            name = "OnlySendByOwner",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateDelegationRequestOutput = schema.new({
    id = id.from(_N, "CreateDelegationRequestOutput"),
    type = "structure",
    members = {
        ConsoleDeepLink = schema.new({
            id = id.from(_N, "CreateDelegationRequestOutput", "ConsoleDeepLink"),
            type = "string",
            name = "ConsoleDeepLink",
            target_id = prelude.String.id,
        }),
        DelegationRequestId = schema.new({
            id = id.from(_N, "CreateDelegationRequestOutput", "DelegationRequestId"),
            type = "string",
            name = "DelegationRequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGroupInput = schema.new({
    id = id.from(_N, "CreateGroupInput"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "CreateGroupInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        GroupName = schema.new({
            id = id.from(_N, "CreateGroupInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Group = schema.new({
    id = id.from(_N, "Group"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "Group", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupName = schema.new({
            id = id.from(_N, "Group", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "Group", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "Group", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateDate = schema.new({
            id = id.from(_N, "Group", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateGroupOutput = schema.new({
    id = id.from(_N, "CreateGroupOutput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "CreateGroupOutput", "Group"),
            type = "structure",
            name = "Group",
            target_id = id.from(_N, "Group"),
            target = M.Group,
            traits = {
                [traits.REQUIRED] = {},
            },
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

M.CreateInstanceProfileInput = schema.new({
    id = id.from(_N, "CreateInstanceProfileInput"),
    type = "structure",
    members = {
        InstanceProfileName = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Path = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.RoleLastUsed = schema.new({
    id = id.from(_N, "RoleLastUsed"),
    type = "structure",
    members = {
        LastUsedDate = schema.new({
            id = id.from(_N, "RoleLastUsed", "LastUsedDate"),
            type = "timestamp",
            name = "LastUsedDate",
            target_id = prelude.Timestamp.id,
        }),
        Region = schema.new({
            id = id.from(_N, "RoleLastUsed", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
    },
})

M.Role = schema.new({
    id = id.from(_N, "Role"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "Role", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleName = schema.new({
            id = id.from(_N, "Role", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleId = schema.new({
            id = id.from(_N, "Role", "RoleId"),
            type = "string",
            name = "RoleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "Role", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateDate = schema.new({
            id = id.from(_N, "Role", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssumeRolePolicyDocument = schema.new({
            id = id.from(_N, "Role", "AssumeRolePolicyDocument"),
            type = "string",
            name = "AssumeRolePolicyDocument",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Role", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        MaxSessionDuration = schema.new({
            id = id.from(_N, "Role", "MaxSessionDuration"),
            type = "integer",
            name = "MaxSessionDuration",
            target_id = prelude.Integer.id,
        }),
        PermissionsBoundary = schema.new({
            id = id.from(_N, "Role", "PermissionsBoundary"),
            type = "structure",
            name = "PermissionsBoundary",
            target_id = id.from(_N, "AttachedPermissionsBoundary"),
            target = M.AttachedPermissionsBoundary,
        }),
        Tags = schema.new({
            id = id.from(_N, "Role", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        RoleLastUsed = schema.new({
            id = id.from(_N, "Role", "RoleLastUsed"),
            type = "structure",
            name = "RoleLastUsed",
            target_id = id.from(_N, "RoleLastUsed"),
            target = M.RoleLastUsed,
        }),
    },
})

M.InstanceProfile = schema.new({
    id = id.from(_N, "InstanceProfile"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "InstanceProfile", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceProfileName = schema.new({
            id = id.from(_N, "InstanceProfile", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceProfileId = schema.new({
            id = id.from(_N, "InstanceProfile", "InstanceProfileId"),
            type = "string",
            name = "InstanceProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "InstanceProfile", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateDate = schema.new({
            id = id.from(_N, "InstanceProfile", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Roles = schema.new({
            id = id.from(_N, "InstanceProfile", "Roles"),
            type = "list",
            name = "Roles",
            target_id = prelude.Document.id,
            list_member = M.Role,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "InstanceProfile", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateInstanceProfileOutput = schema.new({
    id = id.from(_N, "CreateInstanceProfileOutput"),
    type = "structure",
    members = {
        InstanceProfile = schema.new({
            id = id.from(_N, "CreateInstanceProfileOutput", "InstanceProfile"),
            type = "structure",
            name = "InstanceProfile",
            target_id = id.from(_N, "InstanceProfile"),
            target = M.InstanceProfile,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateLoginProfileInput = schema.new({
    id = id.from(_N, "CreateLoginProfileInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "CreateLoginProfileInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "CreateLoginProfileInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        PasswordResetRequired = schema.new({
            id = id.from(_N, "CreateLoginProfileInput", "PasswordResetRequired"),
            type = "boolean",
            name = "PasswordResetRequired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.LoginProfile = schema.new({
    id = id.from(_N, "LoginProfile"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "LoginProfile", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateDate = schema.new({
            id = id.from(_N, "LoginProfile", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PasswordResetRequired = schema.new({
            id = id.from(_N, "LoginProfile", "PasswordResetRequired"),
            type = "boolean",
            name = "PasswordResetRequired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateLoginProfileOutput = schema.new({
    id = id.from(_N, "CreateLoginProfileOutput"),
    type = "structure",
    members = {
        LoginProfile = schema.new({
            id = id.from(_N, "CreateLoginProfileOutput", "LoginProfile"),
            type = "structure",
            name = "LoginProfile",
            target_id = id.from(_N, "LoginProfile"),
            target = M.LoginProfile,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateOpenIDConnectProviderInput = schema.new({
    id = id.from(_N, "CreateOpenIDConnectProviderInput"),
    type = "structure",
    members = {
        Url = schema.new({
            id = id.from(_N, "CreateOpenIDConnectProviderInput", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientIDList = schema.new({
            id = id.from(_N, "CreateOpenIDConnectProviderInput", "ClientIDList"),
            type = "list",
            name = "ClientIDList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ThumbprintList = schema.new({
            id = id.from(_N, "CreateOpenIDConnectProviderInput", "ThumbprintList"),
            type = "list",
            name = "ThumbprintList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateOpenIDConnectProviderInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateOpenIDConnectProviderOutput = schema.new({
    id = id.from(_N, "CreateOpenIDConnectProviderOutput"),
    type = "structure",
    members = {
        OpenIDConnectProviderArn = schema.new({
            id = id.from(_N, "CreateOpenIDConnectProviderOutput", "OpenIDConnectProviderArn"),
            type = "string",
            name = "OpenIDConnectProviderArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateOpenIDConnectProviderOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.OpenIdIdpCommunicationErrorException = schema.new({
    id = id.from(_N, "OpenIdIdpCommunicationErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OpenIdIdpCommunicationErrorException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePolicyInput = schema.new({
    id = id.from(_N, "CreatePolicyInput"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "CreatePolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Path = schema.new({
            id = id.from(_N, "CreatePolicyInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "CreatePolicyInput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreatePolicyInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePolicyInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.Policy = schema.new({
    id = id.from(_N, "Policy"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "Policy", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
        }),
        PolicyId = schema.new({
            id = id.from(_N, "Policy", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "Policy", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Path = schema.new({
            id = id.from(_N, "Policy", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        DefaultVersionId = schema.new({
            id = id.from(_N, "Policy", "DefaultVersionId"),
            type = "string",
            name = "DefaultVersionId",
            target_id = prelude.String.id,
        }),
        AttachmentCount = schema.new({
            id = id.from(_N, "Policy", "AttachmentCount"),
            type = "integer",
            name = "AttachmentCount",
            target_id = prelude.Integer.id,
        }),
        PermissionsBoundaryUsageCount = schema.new({
            id = id.from(_N, "Policy", "PermissionsBoundaryUsageCount"),
            type = "integer",
            name = "PermissionsBoundaryUsageCount",
            target_id = prelude.Integer.id,
        }),
        IsAttachable = schema.new({
            id = id.from(_N, "Policy", "IsAttachable"),
            type = "boolean",
            name = "IsAttachable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "Policy", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "Policy", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        UpdateDate = schema.new({
            id = id.from(_N, "Policy", "UpdateDate"),
            type = "timestamp",
            name = "UpdateDate",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Policy", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreatePolicyOutput = schema.new({
    id = id.from(_N, "CreatePolicyOutput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "Policy"),
            type = "structure",
            name = "Policy",
            target_id = id.from(_N, "Policy"),
            target = M.Policy,
        }),
    },
})

M.MalformedPolicyDocumentException = schema.new({
    id = id.from(_N, "MalformedPolicyDocumentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MalformedPolicyDocumentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePolicyVersionInput = schema.new({
    id = id.from(_N, "CreatePolicyVersionInput"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "CreatePolicyVersionInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "CreatePolicyVersionInput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SetAsDefault = schema.new({
            id = id.from(_N, "CreatePolicyVersionInput", "SetAsDefault"),
            type = "boolean",
            name = "SetAsDefault",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PolicyVersion = schema.new({
    id = id.from(_N, "PolicyVersion"),
    type = "structure",
    members = {
        Document = schema.new({
            id = id.from(_N, "PolicyVersion", "Document"),
            type = "string",
            name = "Document",
            target_id = prelude.String.id,
        }),
        VersionId = schema.new({
            id = id.from(_N, "PolicyVersion", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
        IsDefaultVersion = schema.new({
            id = id.from(_N, "PolicyVersion", "IsDefaultVersion"),
            type = "boolean",
            name = "IsDefaultVersion",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CreateDate = schema.new({
            id = id.from(_N, "PolicyVersion", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreatePolicyVersionOutput = schema.new({
    id = id.from(_N, "CreatePolicyVersionOutput"),
    type = "structure",
    members = {
        PolicyVersion = schema.new({
            id = id.from(_N, "CreatePolicyVersionOutput", "PolicyVersion"),
            type = "structure",
            name = "PolicyVersion",
            target_id = id.from(_N, "PolicyVersion"),
            target = M.PolicyVersion,
        }),
    },
})

M.CreateRoleInput = schema.new({
    id = id.from(_N, "CreateRoleInput"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "CreateRoleInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        RoleName = schema.new({
            id = id.from(_N, "CreateRoleInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssumeRolePolicyDocument = schema.new({
            id = id.from(_N, "CreateRoleInput", "AssumeRolePolicyDocument"),
            type = "string",
            name = "AssumeRolePolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateRoleInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        MaxSessionDuration = schema.new({
            id = id.from(_N, "CreateRoleInput", "MaxSessionDuration"),
            type = "integer",
            name = "MaxSessionDuration",
            target_id = prelude.Integer.id,
        }),
        PermissionsBoundary = schema.new({
            id = id.from(_N, "CreateRoleInput", "PermissionsBoundary"),
            type = "string",
            name = "PermissionsBoundary",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRoleInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateRoleOutput = schema.new({
    id = id.from(_N, "CreateRoleOutput"),
    type = "structure",
    members = {
        Role = schema.new({
            id = id.from(_N, "CreateRoleOutput", "Role"),
            type = "structure",
            name = "Role",
            target_id = id.from(_N, "Role"),
            target = M.Role,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateSAMLProviderInput = schema.new({
    id = id.from(_N, "CreateSAMLProviderInput"),
    type = "structure",
    members = {
        SAMLMetadataDocument = schema.new({
            id = id.from(_N, "CreateSAMLProviderInput", "SAMLMetadataDocument"),
            type = "string",
            name = "SAMLMetadataDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateSAMLProviderInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSAMLProviderInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AssertionEncryptionMode = schema.new({
            id = id.from(_N, "CreateSAMLProviderInput", "AssertionEncryptionMode"),
            type = "string",
            name = "AssertionEncryptionMode",
            target_id = prelude.String.id,
        }),
        AddPrivateKey = schema.new({
            id = id.from(_N, "CreateSAMLProviderInput", "AddPrivateKey"),
            type = "string",
            name = "AddPrivateKey",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSAMLProviderOutput = schema.new({
    id = id.from(_N, "CreateSAMLProviderOutput"),
    type = "structure",
    members = {
        SAMLProviderArn = schema.new({
            id = id.from(_N, "CreateSAMLProviderOutput", "SAMLProviderArn"),
            type = "string",
            name = "SAMLProviderArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSAMLProviderOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateServiceLinkedRoleInput = schema.new({
    id = id.from(_N, "CreateServiceLinkedRoleInput"),
    type = "structure",
    members = {
        AWSServiceName = schema.new({
            id = id.from(_N, "CreateServiceLinkedRoleInput", "AWSServiceName"),
            type = "string",
            name = "AWSServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateServiceLinkedRoleInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CustomSuffix = schema.new({
            id = id.from(_N, "CreateServiceLinkedRoleInput", "CustomSuffix"),
            type = "string",
            name = "CustomSuffix",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateServiceLinkedRoleOutput = schema.new({
    id = id.from(_N, "CreateServiceLinkedRoleOutput"),
    type = "structure",
    members = {
        Role = schema.new({
            id = id.from(_N, "CreateServiceLinkedRoleOutput", "Role"),
            type = "structure",
            name = "Role",
            target_id = id.from(_N, "Role"),
            target = M.Role,
        }),
    },
})

M.CreateServiceSpecificCredentialInput = schema.new({
    id = id.from(_N, "CreateServiceSpecificCredentialInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "CreateServiceSpecificCredentialInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceName = schema.new({
            id = id.from(_N, "CreateServiceSpecificCredentialInput", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CredentialAgeDays = schema.new({
            id = id.from(_N, "CreateServiceSpecificCredentialInput", "CredentialAgeDays"),
            type = "integer",
            name = "CredentialAgeDays",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ServiceSpecificCredential = schema.new({
    id = id.from(_N, "ServiceSpecificCredential"),
    type = "structure",
    members = {
        CreateDate = schema.new({
            id = id.from(_N, "ServiceSpecificCredential", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpirationDate = schema.new({
            id = id.from(_N, "ServiceSpecificCredential", "ExpirationDate"),
            type = "timestamp",
            name = "ExpirationDate",
            target_id = prelude.Timestamp.id,
        }),
        ServiceName = schema.new({
            id = id.from(_N, "ServiceSpecificCredential", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceUserName = schema.new({
            id = id.from(_N, "ServiceSpecificCredential", "ServiceUserName"),
            type = "string",
            name = "ServiceUserName",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
            },
        }),
        ServicePassword = schema.new({
            id = id.from(_N, "ServiceSpecificCredential", "ServicePassword"),
            type = "string",
            name = "ServicePassword",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
            },
        }),
        ServiceCredentialAlias = schema.new({
            id = id.from(_N, "ServiceSpecificCredential", "ServiceCredentialAlias"),
            type = "string",
            name = "ServiceCredentialAlias",
            target_id = prelude.String.id,
        }),
        ServiceCredentialSecret = schema.new({
            id = id.from(_N, "ServiceSpecificCredential", "ServiceCredentialSecret"),
            type = "string",
            name = "ServiceCredentialSecret",
            target_id = prelude.String.id,
        }),
        ServiceSpecificCredentialId = schema.new({
            id = id.from(_N, "ServiceSpecificCredential", "ServiceSpecificCredentialId"),
            type = "string",
            name = "ServiceSpecificCredentialId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "ServiceSpecificCredential", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ServiceSpecificCredential", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateServiceSpecificCredentialOutput = schema.new({
    id = id.from(_N, "CreateServiceSpecificCredentialOutput"),
    type = "structure",
    members = {
        ServiceSpecificCredential = schema.new({
            id = id.from(_N, "CreateServiceSpecificCredentialOutput", "ServiceSpecificCredential"),
            type = "structure",
            name = "ServiceSpecificCredential",
            target_id = id.from(_N, "ServiceSpecificCredential"),
            target = M.ServiceSpecificCredential,
        }),
    },
})

M.ServiceNotSupportedException = schema.new({
    id = id.from(_N, "ServiceNotSupportedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceNotSupportedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateUserInput = schema.new({
    id = id.from(_N, "CreateUserInput"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "CreateUserInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        UserName = schema.new({
            id = id.from(_N, "CreateUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionsBoundary = schema.new({
            id = id.from(_N, "CreateUserInput", "PermissionsBoundary"),
            type = "string",
            name = "PermissionsBoundary",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateUserInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.User = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "User", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "User", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "User", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "User", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateDate = schema.new({
            id = id.from(_N, "User", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PasswordLastUsed = schema.new({
            id = id.from(_N, "User", "PasswordLastUsed"),
            type = "timestamp",
            name = "PasswordLastUsed",
            target_id = prelude.Timestamp.id,
        }),
        PermissionsBoundary = schema.new({
            id = id.from(_N, "User", "PermissionsBoundary"),
            type = "structure",
            name = "PermissionsBoundary",
            target_id = id.from(_N, "AttachedPermissionsBoundary"),
            target = M.AttachedPermissionsBoundary,
        }),
        Tags = schema.new({
            id = id.from(_N, "User", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateUserOutput = schema.new({
    id = id.from(_N, "CreateUserOutput"),
    type = "structure",
    members = {
        User = schema.new({
            id = id.from(_N, "CreateUserOutput", "User"),
            type = "structure",
            name = "User",
            target_id = id.from(_N, "User"),
            target = M.User,
        }),
    },
})

M.CreateVirtualMFADeviceInput = schema.new({
    id = id.from(_N, "CreateVirtualMFADeviceInput"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "CreateVirtualMFADeviceInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        VirtualMFADeviceName = schema.new({
            id = id.from(_N, "CreateVirtualMFADeviceInput", "VirtualMFADeviceName"),
            type = "string",
            name = "VirtualMFADeviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateVirtualMFADeviceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.VirtualMFADevice = schema.new({
    id = id.from(_N, "VirtualMFADevice"),
    type = "structure",
    members = {
        SerialNumber = schema.new({
            id = id.from(_N, "VirtualMFADevice", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Base32StringSeed = schema.new({
            id = id.from(_N, "VirtualMFADevice", "Base32StringSeed"),
            type = "blob",
            name = "Base32StringSeed",
            target_id = prelude.Blob.id,
        }),
        QRCodePNG = schema.new({
            id = id.from(_N, "VirtualMFADevice", "QRCodePNG"),
            type = "blob",
            name = "QRCodePNG",
            target_id = prelude.Blob.id,
        }),
        User = schema.new({
            id = id.from(_N, "VirtualMFADevice", "User"),
            type = "structure",
            name = "User",
            target_id = id.from(_N, "User"),
            target = M.User,
        }),
        EnableDate = schema.new({
            id = id.from(_N, "VirtualMFADevice", "EnableDate"),
            type = "timestamp",
            name = "EnableDate",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "VirtualMFADevice", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateVirtualMFADeviceOutput = schema.new({
    id = id.from(_N, "CreateVirtualMFADeviceOutput"),
    type = "structure",
    members = {
        VirtualMFADevice = schema.new({
            id = id.from(_N, "CreateVirtualMFADeviceOutput", "VirtualMFADevice"),
            type = "structure",
            name = "VirtualMFADevice",
            target_id = id.from(_N, "VirtualMFADevice"),
            target = M.VirtualMFADevice,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeactivateMFADeviceInput = schema.new({
    id = id.from(_N, "DeactivateMFADeviceInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DeactivateMFADeviceInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "DeactivateMFADeviceInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeactivateMFADeviceOutput = schema.new({
    id = id.from(_N, "DeactivateMFADeviceOutput"),
    type = "structure",
})

M.DeleteAccessKeyInput = schema.new({
    id = id.from(_N, "DeleteAccessKeyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DeleteAccessKeyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        AccessKeyId = schema.new({
            id = id.from(_N, "DeleteAccessKeyInput", "AccessKeyId"),
            type = "string",
            name = "AccessKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAccessKeyOutput = schema.new({
    id = id.from(_N, "DeleteAccessKeyOutput"),
    type = "structure",
})

M.DeleteAccountAliasInput = schema.new({
    id = id.from(_N, "DeleteAccountAliasInput"),
    type = "structure",
    members = {
        AccountAlias = schema.new({
            id = id.from(_N, "DeleteAccountAliasInput", "AccountAlias"),
            type = "string",
            name = "AccountAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAccountAliasOutput = schema.new({
    id = id.from(_N, "DeleteAccountAliasOutput"),
    type = "structure",
})

M.DeleteAccountPasswordPolicyInput = schema.new({
    id = id.from(_N, "DeleteAccountPasswordPolicyInput"),
    type = "structure",
})

M.DeleteAccountPasswordPolicyOutput = schema.new({
    id = id.from(_N, "DeleteAccountPasswordPolicyOutput"),
    type = "structure",
})

M.DeleteConflictException = schema.new({
    id = id.from(_N, "DeleteConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DeleteConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteGroupInput = schema.new({
    id = id.from(_N, "DeleteGroupInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "DeleteGroupInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGroupOutput = schema.new({
    id = id.from(_N, "DeleteGroupOutput"),
    type = "structure",
})

M.DeleteGroupPolicyInput = schema.new({
    id = id.from(_N, "DeleteGroupPolicyInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "DeleteGroupPolicyInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "DeleteGroupPolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGroupPolicyOutput = schema.new({
    id = id.from(_N, "DeleteGroupPolicyOutput"),
    type = "structure",
})

M.DeleteInstanceProfileInput = schema.new({
    id = id.from(_N, "DeleteInstanceProfileInput"),
    type = "structure",
    members = {
        InstanceProfileName = schema.new({
            id = id.from(_N, "DeleteInstanceProfileInput", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteInstanceProfileOutput = schema.new({
    id = id.from(_N, "DeleteInstanceProfileOutput"),
    type = "structure",
})

M.DeleteLoginProfileInput = schema.new({
    id = id.from(_N, "DeleteLoginProfileInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DeleteLoginProfileInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteLoginProfileOutput = schema.new({
    id = id.from(_N, "DeleteLoginProfileOutput"),
    type = "structure",
})

M.DeleteOpenIDConnectProviderInput = schema.new({
    id = id.from(_N, "DeleteOpenIDConnectProviderInput"),
    type = "structure",
    members = {
        OpenIDConnectProviderArn = schema.new({
            id = id.from(_N, "DeleteOpenIDConnectProviderInput", "OpenIDConnectProviderArn"),
            type = "string",
            name = "OpenIDConnectProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteOpenIDConnectProviderOutput = schema.new({
    id = id.from(_N, "DeleteOpenIDConnectProviderOutput"),
    type = "structure",
})

M.DeletePolicyInput = schema.new({
    id = id.from(_N, "DeletePolicyInput"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "DeletePolicyInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
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

M.DeletePolicyVersionInput = schema.new({
    id = id.from(_N, "DeletePolicyVersionInput"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "DeletePolicyVersionInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "DeletePolicyVersionInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePolicyVersionOutput = schema.new({
    id = id.from(_N, "DeletePolicyVersionOutput"),
    type = "structure",
})

M.DeleteRoleInput = schema.new({
    id = id.from(_N, "DeleteRoleInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "DeleteRoleInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRoleOutput = schema.new({
    id = id.from(_N, "DeleteRoleOutput"),
    type = "structure",
})

M.DeleteRolePermissionsBoundaryInput = schema.new({
    id = id.from(_N, "DeleteRolePermissionsBoundaryInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "DeleteRolePermissionsBoundaryInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRolePermissionsBoundaryOutput = schema.new({
    id = id.from(_N, "DeleteRolePermissionsBoundaryOutput"),
    type = "structure",
})

M.DeleteRolePolicyInput = schema.new({
    id = id.from(_N, "DeleteRolePolicyInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "DeleteRolePolicyInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "DeleteRolePolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRolePolicyOutput = schema.new({
    id = id.from(_N, "DeleteRolePolicyOutput"),
    type = "structure",
})

M.DeleteSAMLProviderInput = schema.new({
    id = id.from(_N, "DeleteSAMLProviderInput"),
    type = "structure",
    members = {
        SAMLProviderArn = schema.new({
            id = id.from(_N, "DeleteSAMLProviderInput", "SAMLProviderArn"),
            type = "string",
            name = "SAMLProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSAMLProviderOutput = schema.new({
    id = id.from(_N, "DeleteSAMLProviderOutput"),
    type = "structure",
})

M.DeleteServerCertificateInput = schema.new({
    id = id.from(_N, "DeleteServerCertificateInput"),
    type = "structure",
    members = {
        ServerCertificateName = schema.new({
            id = id.from(_N, "DeleteServerCertificateInput", "ServerCertificateName"),
            type = "string",
            name = "ServerCertificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteServerCertificateOutput = schema.new({
    id = id.from(_N, "DeleteServerCertificateOutput"),
    type = "structure",
})

M.DeleteServiceLinkedRoleInput = schema.new({
    id = id.from(_N, "DeleteServiceLinkedRoleInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "DeleteServiceLinkedRoleInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteServiceLinkedRoleOutput = schema.new({
    id = id.from(_N, "DeleteServiceLinkedRoleOutput"),
    type = "structure",
    members = {
        DeletionTaskId = schema.new({
            id = id.from(_N, "DeleteServiceLinkedRoleOutput", "DeletionTaskId"),
            type = "string",
            name = "DeletionTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteServiceSpecificCredentialInput = schema.new({
    id = id.from(_N, "DeleteServiceSpecificCredentialInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DeleteServiceSpecificCredentialInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        ServiceSpecificCredentialId = schema.new({
            id = id.from(_N, "DeleteServiceSpecificCredentialInput", "ServiceSpecificCredentialId"),
            type = "string",
            name = "ServiceSpecificCredentialId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteServiceSpecificCredentialOutput = schema.new({
    id = id.from(_N, "DeleteServiceSpecificCredentialOutput"),
    type = "structure",
})

M.DeleteSigningCertificateInput = schema.new({
    id = id.from(_N, "DeleteSigningCertificateInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DeleteSigningCertificateInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        CertificateId = schema.new({
            id = id.from(_N, "DeleteSigningCertificateInput", "CertificateId"),
            type = "string",
            name = "CertificateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSigningCertificateOutput = schema.new({
    id = id.from(_N, "DeleteSigningCertificateOutput"),
    type = "structure",
})

M.DeleteSSHPublicKeyInput = schema.new({
    id = id.from(_N, "DeleteSSHPublicKeyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DeleteSSHPublicKeyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SSHPublicKeyId = schema.new({
            id = id.from(_N, "DeleteSSHPublicKeyInput", "SSHPublicKeyId"),
            type = "string",
            name = "SSHPublicKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSSHPublicKeyOutput = schema.new({
    id = id.from(_N, "DeleteSSHPublicKeyOutput"),
    type = "structure",
})

M.DeleteUserInput = schema.new({
    id = id.from(_N, "DeleteUserInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DeleteUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUserOutput = schema.new({
    id = id.from(_N, "DeleteUserOutput"),
    type = "structure",
})

M.DeleteUserPermissionsBoundaryInput = schema.new({
    id = id.from(_N, "DeleteUserPermissionsBoundaryInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DeleteUserPermissionsBoundaryInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUserPermissionsBoundaryOutput = schema.new({
    id = id.from(_N, "DeleteUserPermissionsBoundaryOutput"),
    type = "structure",
})

M.DeleteUserPolicyInput = schema.new({
    id = id.from(_N, "DeleteUserPolicyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DeleteUserPolicyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "DeleteUserPolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUserPolicyOutput = schema.new({
    id = id.from(_N, "DeleteUserPolicyOutput"),
    type = "structure",
})

M.DeleteVirtualMFADeviceInput = schema.new({
    id = id.from(_N, "DeleteVirtualMFADeviceInput"),
    type = "structure",
    members = {
        SerialNumber = schema.new({
            id = id.from(_N, "DeleteVirtualMFADeviceInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVirtualMFADeviceOutput = schema.new({
    id = id.from(_N, "DeleteVirtualMFADeviceOutput"),
    type = "structure",
})

M.DetachGroupPolicyInput = schema.new({
    id = id.from(_N, "DetachGroupPolicyInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "DetachGroupPolicyInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyArn = schema.new({
            id = id.from(_N, "DetachGroupPolicyInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachGroupPolicyOutput = schema.new({
    id = id.from(_N, "DetachGroupPolicyOutput"),
    type = "structure",
})

M.DetachRolePolicyInput = schema.new({
    id = id.from(_N, "DetachRolePolicyInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "DetachRolePolicyInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyArn = schema.new({
            id = id.from(_N, "DetachRolePolicyInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachRolePolicyOutput = schema.new({
    id = id.from(_N, "DetachRolePolicyOutput"),
    type = "structure",
})

M.DetachUserPolicyInput = schema.new({
    id = id.from(_N, "DetachUserPolicyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DetachUserPolicyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyArn = schema.new({
            id = id.from(_N, "DetachUserPolicyInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachUserPolicyOutput = schema.new({
    id = id.from(_N, "DetachUserPolicyOutput"),
    type = "structure",
})

M.DisableOrganizationsRootCredentialsManagementInput = schema.new({
    id = id.from(_N, "DisableOrganizationsRootCredentialsManagementInput"),
    type = "structure",
})

M.DisableOrganizationsRootCredentialsManagementOutput = schema.new({
    id = id.from(_N, "DisableOrganizationsRootCredentialsManagementOutput"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DisableOrganizationsRootCredentialsManagementOutput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        EnabledFeatures = schema.new({
            id = id.from(_N, "DisableOrganizationsRootCredentialsManagementOutput", "EnabledFeatures"),
            type = "list",
            name = "EnabledFeatures",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OrganizationNotFoundException = schema.new({
    id = id.from(_N, "OrganizationNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OrganizationNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OrganizationNotInAllFeaturesModeException = schema.new({
    id = id.from(_N, "OrganizationNotInAllFeaturesModeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OrganizationNotInAllFeaturesModeException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceAccessNotEnabledException = schema.new({
    id = id.from(_N, "ServiceAccessNotEnabledException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceAccessNotEnabledException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableOrganizationsRootSessionsInput = schema.new({
    id = id.from(_N, "DisableOrganizationsRootSessionsInput"),
    type = "structure",
})

M.DisableOrganizationsRootSessionsOutput = schema.new({
    id = id.from(_N, "DisableOrganizationsRootSessionsOutput"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DisableOrganizationsRootSessionsOutput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        EnabledFeatures = schema.new({
            id = id.from(_N, "DisableOrganizationsRootSessionsOutput", "EnabledFeatures"),
            type = "list",
            name = "EnabledFeatures",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DisableOutboundWebIdentityFederationInput = schema.new({
    id = id.from(_N, "DisableOutboundWebIdentityFederationInput"),
    type = "structure",
})

M.DisableOutboundWebIdentityFederationOutput = schema.new({
    id = id.from(_N, "DisableOutboundWebIdentityFederationOutput"),
    type = "structure",
})

M.FeatureDisabledException = schema.new({
    id = id.from(_N, "FeatureDisabledException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FeatureDisabledException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.EnableMFADeviceInput = schema.new({
    id = id.from(_N, "EnableMFADeviceInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "EnableMFADeviceInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "EnableMFADeviceInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationCode1 = schema.new({
            id = id.from(_N, "EnableMFADeviceInput", "AuthenticationCode1"),
            type = "string",
            name = "AuthenticationCode1",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationCode2 = schema.new({
            id = id.from(_N, "EnableMFADeviceInput", "AuthenticationCode2"),
            type = "string",
            name = "AuthenticationCode2",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableMFADeviceOutput = schema.new({
    id = id.from(_N, "EnableMFADeviceOutput"),
    type = "structure",
})

M.InvalidAuthenticationCodeException = schema.new({
    id = id.from(_N, "InvalidAuthenticationCodeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidAuthenticationCodeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CallerIsNotManagementAccountException = schema.new({
    id = id.from(_N, "CallerIsNotManagementAccountException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CallerIsNotManagementAccountException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.EnableOrganizationsRootCredentialsManagementInput = schema.new({
    id = id.from(_N, "EnableOrganizationsRootCredentialsManagementInput"),
    type = "structure",
})

M.EnableOrganizationsRootCredentialsManagementOutput = schema.new({
    id = id.from(_N, "EnableOrganizationsRootCredentialsManagementOutput"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "EnableOrganizationsRootCredentialsManagementOutput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        EnabledFeatures = schema.new({
            id = id.from(_N, "EnableOrganizationsRootCredentialsManagementOutput", "EnabledFeatures"),
            type = "list",
            name = "EnabledFeatures",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.EnableOrganizationsRootSessionsInput = schema.new({
    id = id.from(_N, "EnableOrganizationsRootSessionsInput"),
    type = "structure",
})

M.EnableOrganizationsRootSessionsOutput = schema.new({
    id = id.from(_N, "EnableOrganizationsRootSessionsOutput"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "EnableOrganizationsRootSessionsOutput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        EnabledFeatures = schema.new({
            id = id.from(_N, "EnableOrganizationsRootSessionsOutput", "EnabledFeatures"),
            type = "list",
            name = "EnabledFeatures",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.EnableOutboundWebIdentityFederationInput = schema.new({
    id = id.from(_N, "EnableOutboundWebIdentityFederationInput"),
    type = "structure",
})

M.EnableOutboundWebIdentityFederationOutput = schema.new({
    id = id.from(_N, "EnableOutboundWebIdentityFederationOutput"),
    type = "structure",
    members = {
        IssuerIdentifier = schema.new({
            id = id.from(_N, "EnableOutboundWebIdentityFederationOutput", "IssuerIdentifier"),
            type = "string",
            name = "IssuerIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.FeatureEnabledException = schema.new({
    id = id.from(_N, "FeatureEnabledException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FeatureEnabledException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GenerateCredentialReportInput = schema.new({
    id = id.from(_N, "GenerateCredentialReportInput"),
    type = "structure",
})

M.GenerateCredentialReportOutput = schema.new({
    id = id.from(_N, "GenerateCredentialReportOutput"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "GenerateCredentialReportOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GenerateCredentialReportOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.GenerateOrganizationsAccessReportInput = schema.new({
    id = id.from(_N, "GenerateOrganizationsAccessReportInput"),
    type = "structure",
    members = {
        EntityPath = schema.new({
            id = id.from(_N, "GenerateOrganizationsAccessReportInput", "EntityPath"),
            type = "string",
            name = "EntityPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OrganizationsPolicyId = schema.new({
            id = id.from(_N, "GenerateOrganizationsAccessReportInput", "OrganizationsPolicyId"),
            type = "string",
            name = "OrganizationsPolicyId",
            target_id = prelude.String.id,
        }),
    },
})

M.GenerateOrganizationsAccessReportOutput = schema.new({
    id = id.from(_N, "GenerateOrganizationsAccessReportOutput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "GenerateOrganizationsAccessReportOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
    },
})

M.ReportGenerationLimitExceededException = schema.new({
    id = id.from(_N, "ReportGenerationLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReportGenerationLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GenerateServiceLastAccessedDetailsInput = schema.new({
    id = id.from(_N, "GenerateServiceLastAccessedDetailsInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GenerateServiceLastAccessedDetailsInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Granularity = schema.new({
            id = id.from(_N, "GenerateServiceLastAccessedDetailsInput", "Granularity"),
            type = "string",
            name = "Granularity",
            target_id = prelude.String.id,
        }),
    },
})

M.GenerateServiceLastAccessedDetailsOutput = schema.new({
    id = id.from(_N, "GenerateServiceLastAccessedDetailsOutput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "GenerateServiceLastAccessedDetailsOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAccessKeyLastUsedInput = schema.new({
    id = id.from(_N, "GetAccessKeyLastUsedInput"),
    type = "structure",
    members = {
        AccessKeyId = schema.new({
            id = id.from(_N, "GetAccessKeyLastUsedInput", "AccessKeyId"),
            type = "string",
            name = "AccessKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAccessKeyLastUsedOutput = schema.new({
    id = id.from(_N, "GetAccessKeyLastUsedOutput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "GetAccessKeyLastUsedOutput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        AccessKeyLastUsed = schema.new({
            id = id.from(_N, "GetAccessKeyLastUsedOutput", "AccessKeyLastUsed"),
            type = "structure",
            name = "AccessKeyLastUsed",
            target_id = id.from(_N, "AccessKeyLastUsed"),
            target = M.AccessKeyLastUsed,
        }),
    },
})

M.GetAccountAuthorizationDetailsInput = schema.new({
    id = id.from(_N, "GetAccountAuthorizationDetailsInput"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "GetAccountAuthorizationDetailsInput", "Filter"),
            type = "list",
            name = "Filter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "GetAccountAuthorizationDetailsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "GetAccountAuthorizationDetailsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.PolicyDetail = schema.new({
    id = id.from(_N, "PolicyDetail"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "PolicyDetail", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "PolicyDetail", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
        }),
    },
})

M.GroupDetail = schema.new({
    id = id.from(_N, "GroupDetail"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "GroupDetail", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        GroupName = schema.new({
            id = id.from(_N, "GroupDetail", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        GroupId = schema.new({
            id = id.from(_N, "GroupDetail", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "GroupDetail", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "GroupDetail", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        GroupPolicyList = schema.new({
            id = id.from(_N, "GroupDetail", "GroupPolicyList"),
            type = "list",
            name = "GroupPolicyList",
            target_id = prelude.Document.id,
            list_member = M.PolicyDetail,
        }),
        AttachedManagedPolicies = schema.new({
            id = id.from(_N, "GroupDetail", "AttachedManagedPolicies"),
            type = "list",
            name = "AttachedManagedPolicies",
            target_id = prelude.Document.id,
            list_member = M.AttachedPolicy,
        }),
    },
})

M.ManagedPolicyDetail = schema.new({
    id = id.from(_N, "ManagedPolicyDetail"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
        }),
        PolicyId = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Path = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        DefaultVersionId = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "DefaultVersionId"),
            type = "string",
            name = "DefaultVersionId",
            target_id = prelude.String.id,
        }),
        AttachmentCount = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "AttachmentCount"),
            type = "integer",
            name = "AttachmentCount",
            target_id = prelude.Integer.id,
        }),
        PermissionsBoundaryUsageCount = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "PermissionsBoundaryUsageCount"),
            type = "integer",
            name = "PermissionsBoundaryUsageCount",
            target_id = prelude.Integer.id,
        }),
        IsAttachable = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "IsAttachable"),
            type = "boolean",
            name = "IsAttachable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        UpdateDate = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "UpdateDate"),
            type = "timestamp",
            name = "UpdateDate",
            target_id = prelude.Timestamp.id,
        }),
        PolicyVersionList = schema.new({
            id = id.from(_N, "ManagedPolicyDetail", "PolicyVersionList"),
            type = "list",
            name = "PolicyVersionList",
            target_id = prelude.Document.id,
            list_member = M.PolicyVersion,
        }),
    },
})

M.RoleDetail = schema.new({
    id = id.from(_N, "RoleDetail"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "RoleDetail", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        RoleName = schema.new({
            id = id.from(_N, "RoleDetail", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
        }),
        RoleId = schema.new({
            id = id.from(_N, "RoleDetail", "RoleId"),
            type = "string",
            name = "RoleId",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "RoleDetail", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "RoleDetail", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        AssumeRolePolicyDocument = schema.new({
            id = id.from(_N, "RoleDetail", "AssumeRolePolicyDocument"),
            type = "string",
            name = "AssumeRolePolicyDocument",
            target_id = prelude.String.id,
        }),
        InstanceProfileList = schema.new({
            id = id.from(_N, "RoleDetail", "InstanceProfileList"),
            type = "list",
            name = "InstanceProfileList",
            target_id = prelude.Document.id,
            list_member = M.InstanceProfile,
        }),
        RolePolicyList = schema.new({
            id = id.from(_N, "RoleDetail", "RolePolicyList"),
            type = "list",
            name = "RolePolicyList",
            target_id = prelude.Document.id,
            list_member = M.PolicyDetail,
        }),
        AttachedManagedPolicies = schema.new({
            id = id.from(_N, "RoleDetail", "AttachedManagedPolicies"),
            type = "list",
            name = "AttachedManagedPolicies",
            target_id = prelude.Document.id,
            list_member = M.AttachedPolicy,
        }),
        PermissionsBoundary = schema.new({
            id = id.from(_N, "RoleDetail", "PermissionsBoundary"),
            type = "structure",
            name = "PermissionsBoundary",
            target_id = id.from(_N, "AttachedPermissionsBoundary"),
            target = M.AttachedPermissionsBoundary,
        }),
        Tags = schema.new({
            id = id.from(_N, "RoleDetail", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        RoleLastUsed = schema.new({
            id = id.from(_N, "RoleDetail", "RoleLastUsed"),
            type = "structure",
            name = "RoleLastUsed",
            target_id = id.from(_N, "RoleLastUsed"),
            target = M.RoleLastUsed,
        }),
    },
})

M.UserDetail = schema.new({
    id = id.from(_N, "UserDetail"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "UserDetail", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        UserName = schema.new({
            id = id.from(_N, "UserDetail", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        UserId = schema.new({
            id = id.from(_N, "UserDetail", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "UserDetail", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "UserDetail", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        UserPolicyList = schema.new({
            id = id.from(_N, "UserDetail", "UserPolicyList"),
            type = "list",
            name = "UserPolicyList",
            target_id = prelude.Document.id,
            list_member = M.PolicyDetail,
        }),
        GroupList = schema.new({
            id = id.from(_N, "UserDetail", "GroupList"),
            type = "list",
            name = "GroupList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AttachedManagedPolicies = schema.new({
            id = id.from(_N, "UserDetail", "AttachedManagedPolicies"),
            type = "list",
            name = "AttachedManagedPolicies",
            target_id = prelude.Document.id,
            list_member = M.AttachedPolicy,
        }),
        PermissionsBoundary = schema.new({
            id = id.from(_N, "UserDetail", "PermissionsBoundary"),
            type = "structure",
            name = "PermissionsBoundary",
            target_id = id.from(_N, "AttachedPermissionsBoundary"),
            target = M.AttachedPermissionsBoundary,
        }),
        Tags = schema.new({
            id = id.from(_N, "UserDetail", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.GetAccountAuthorizationDetailsOutput = schema.new({
    id = id.from(_N, "GetAccountAuthorizationDetailsOutput"),
    type = "structure",
    members = {
        UserDetailList = schema.new({
            id = id.from(_N, "GetAccountAuthorizationDetailsOutput", "UserDetailList"),
            type = "list",
            name = "UserDetailList",
            target_id = prelude.Document.id,
            list_member = M.UserDetail,
        }),
        GroupDetailList = schema.new({
            id = id.from(_N, "GetAccountAuthorizationDetailsOutput", "GroupDetailList"),
            type = "list",
            name = "GroupDetailList",
            target_id = prelude.Document.id,
            list_member = M.GroupDetail,
        }),
        RoleDetailList = schema.new({
            id = id.from(_N, "GetAccountAuthorizationDetailsOutput", "RoleDetailList"),
            type = "list",
            name = "RoleDetailList",
            target_id = prelude.Document.id,
            list_member = M.RoleDetail,
        }),
        Policies = schema.new({
            id = id.from(_N, "GetAccountAuthorizationDetailsOutput", "Policies"),
            type = "list",
            name = "Policies",
            target_id = prelude.Document.id,
            list_member = M.ManagedPolicyDetail,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "GetAccountAuthorizationDetailsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "GetAccountAuthorizationDetailsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAccountPasswordPolicyInput = schema.new({
    id = id.from(_N, "GetAccountPasswordPolicyInput"),
    type = "structure",
})

M.PasswordPolicy = schema.new({
    id = id.from(_N, "PasswordPolicy"),
    type = "structure",
    members = {
        MinimumPasswordLength = schema.new({
            id = id.from(_N, "PasswordPolicy", "MinimumPasswordLength"),
            type = "integer",
            name = "MinimumPasswordLength",
            target_id = prelude.Integer.id,
        }),
        RequireSymbols = schema.new({
            id = id.from(_N, "PasswordPolicy", "RequireSymbols"),
            type = "boolean",
            name = "RequireSymbols",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RequireNumbers = schema.new({
            id = id.from(_N, "PasswordPolicy", "RequireNumbers"),
            type = "boolean",
            name = "RequireNumbers",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RequireUppercaseCharacters = schema.new({
            id = id.from(_N, "PasswordPolicy", "RequireUppercaseCharacters"),
            type = "boolean",
            name = "RequireUppercaseCharacters",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RequireLowercaseCharacters = schema.new({
            id = id.from(_N, "PasswordPolicy", "RequireLowercaseCharacters"),
            type = "boolean",
            name = "RequireLowercaseCharacters",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        AllowUsersToChangePassword = schema.new({
            id = id.from(_N, "PasswordPolicy", "AllowUsersToChangePassword"),
            type = "boolean",
            name = "AllowUsersToChangePassword",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ExpirePasswords = schema.new({
            id = id.from(_N, "PasswordPolicy", "ExpirePasswords"),
            type = "boolean",
            name = "ExpirePasswords",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        MaxPasswordAge = schema.new({
            id = id.from(_N, "PasswordPolicy", "MaxPasswordAge"),
            type = "integer",
            name = "MaxPasswordAge",
            target_id = prelude.Integer.id,
        }),
        PasswordReusePrevention = schema.new({
            id = id.from(_N, "PasswordPolicy", "PasswordReusePrevention"),
            type = "integer",
            name = "PasswordReusePrevention",
            target_id = prelude.Integer.id,
        }),
        HardExpiry = schema.new({
            id = id.from(_N, "PasswordPolicy", "HardExpiry"),
            type = "boolean",
            name = "HardExpiry",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetAccountPasswordPolicyOutput = schema.new({
    id = id.from(_N, "GetAccountPasswordPolicyOutput"),
    type = "structure",
    members = {
        PasswordPolicy = schema.new({
            id = id.from(_N, "GetAccountPasswordPolicyOutput", "PasswordPolicy"),
            type = "structure",
            name = "PasswordPolicy",
            target_id = id.from(_N, "PasswordPolicy"),
            target = M.PasswordPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAccountSummaryInput = schema.new({
    id = id.from(_N, "GetAccountSummaryInput"),
    type = "structure",
})

M.GetAccountSummaryOutput = schema.new({
    id = id.from(_N, "GetAccountSummaryOutput"),
    type = "structure",
    members = {
        SummaryMap = schema.new({
            id = id.from(_N, "GetAccountSummaryOutput", "SummaryMap"),
            type = "map",
            name = "SummaryMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Integer,
        }),
    },
})

M.GetContextKeysForCustomPolicyInput = schema.new({
    id = id.from(_N, "GetContextKeysForCustomPolicyInput"),
    type = "structure",
    members = {
        PolicyInputList = schema.new({
            id = id.from(_N, "GetContextKeysForCustomPolicyInput", "PolicyInputList"),
            type = "list",
            name = "PolicyInputList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetContextKeysForCustomPolicyOutput = schema.new({
    id = id.from(_N, "GetContextKeysForCustomPolicyOutput"),
    type = "structure",
    members = {
        ContextKeyNames = schema.new({
            id = id.from(_N, "GetContextKeysForCustomPolicyOutput", "ContextKeyNames"),
            type = "list",
            name = "ContextKeyNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetContextKeysForPrincipalPolicyInput = schema.new({
    id = id.from(_N, "GetContextKeysForPrincipalPolicyInput"),
    type = "structure",
    members = {
        PolicySourceArn = schema.new({
            id = id.from(_N, "GetContextKeysForPrincipalPolicyInput", "PolicySourceArn"),
            type = "string",
            name = "PolicySourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyInputList = schema.new({
            id = id.from(_N, "GetContextKeysForPrincipalPolicyInput", "PolicyInputList"),
            type = "list",
            name = "PolicyInputList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetContextKeysForPrincipalPolicyOutput = schema.new({
    id = id.from(_N, "GetContextKeysForPrincipalPolicyOutput"),
    type = "structure",
    members = {
        ContextKeyNames = schema.new({
            id = id.from(_N, "GetContextKeysForPrincipalPolicyOutput", "ContextKeyNames"),
            type = "list",
            name = "ContextKeyNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CredentialReportExpiredException = schema.new({
    id = id.from(_N, "CredentialReportExpiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CredentialReportExpiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CredentialReportNotPresentException = schema.new({
    id = id.from(_N, "CredentialReportNotPresentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CredentialReportNotPresentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CredentialReportNotReadyException = schema.new({
    id = id.from(_N, "CredentialReportNotReadyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CredentialReportNotReadyException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCredentialReportInput = schema.new({
    id = id.from(_N, "GetCredentialReportInput"),
    type = "structure",
})

M.GetCredentialReportOutput = schema.new({
    id = id.from(_N, "GetCredentialReportOutput"),
    type = "structure",
    members = {
        Content = schema.new({
            id = id.from(_N, "GetCredentialReportOutput", "Content"),
            type = "blob",
            name = "Content",
            target_id = prelude.Blob.id,
        }),
        ReportFormat = schema.new({
            id = id.from(_N, "GetCredentialReportOutput", "ReportFormat"),
            type = "string",
            name = "ReportFormat",
            target_id = prelude.String.id,
        }),
        GeneratedTime = schema.new({
            id = id.from(_N, "GetCredentialReportOutput", "GeneratedTime"),
            type = "timestamp",
            name = "GeneratedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetDelegationRequestInput = schema.new({
    id = id.from(_N, "GetDelegationRequestInput"),
    type = "structure",
    members = {
        DelegationRequestId = schema.new({
            id = id.from(_N, "GetDelegationRequestInput", "DelegationRequestId"),
            type = "string",
            name = "DelegationRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DelegationPermissionCheck = schema.new({
            id = id.from(_N, "GetDelegationRequestInput", "DelegationPermissionCheck"),
            type = "boolean",
            name = "DelegationPermissionCheck",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DelegationRequest = schema.new({
    id = id.from(_N, "DelegationRequest"),
    type = "structure",
    members = {
        DelegationRequestId = schema.new({
            id = id.from(_N, "DelegationRequest", "DelegationRequestId"),
            type = "string",
            name = "DelegationRequestId",
            target_id = prelude.String.id,
        }),
        OwnerAccountId = schema.new({
            id = id.from(_N, "DelegationRequest", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DelegationRequest", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RequestMessage = schema.new({
            id = id.from(_N, "DelegationRequest", "RequestMessage"),
            type = "string",
            name = "RequestMessage",
            target_id = prelude.String.id,
        }),
        Permissions = schema.new({
            id = id.from(_N, "DelegationRequest", "Permissions"),
            type = "structure",
            name = "Permissions",
            target_id = id.from(_N, "DelegationPermission"),
            target = M.DelegationPermission,
        }),
        PermissionPolicy = schema.new({
            id = id.from(_N, "DelegationRequest", "PermissionPolicy"),
            type = "string",
            name = "PermissionPolicy",
            target_id = prelude.String.id,
        }),
        RolePermissionRestrictionArns = schema.new({
            id = id.from(_N, "DelegationRequest", "RolePermissionRestrictionArns"),
            type = "list",
            name = "RolePermissionRestrictionArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "DelegationRequest", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        ApproverId = schema.new({
            id = id.from(_N, "DelegationRequest", "ApproverId"),
            type = "string",
            name = "ApproverId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "DelegationRequest", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        ExpirationTime = schema.new({
            id = id.from(_N, "DelegationRequest", "ExpirationTime"),
            type = "timestamp",
            name = "ExpirationTime",
            target_id = prelude.Timestamp.id,
        }),
        RequestorId = schema.new({
            id = id.from(_N, "DelegationRequest", "RequestorId"),
            type = "string",
            name = "RequestorId",
            target_id = prelude.String.id,
        }),
        RequestorName = schema.new({
            id = id.from(_N, "DelegationRequest", "RequestorName"),
            type = "string",
            name = "RequestorName",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "DelegationRequest", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        SessionDuration = schema.new({
            id = id.from(_N, "DelegationRequest", "SessionDuration"),
            type = "integer",
            name = "SessionDuration",
            target_id = prelude.Integer.id,
        }),
        RedirectUrl = schema.new({
            id = id.from(_N, "DelegationRequest", "RedirectUrl"),
            type = "string",
            name = "RedirectUrl",
            target_id = prelude.String.id,
        }),
        Notes = schema.new({
            id = id.from(_N, "DelegationRequest", "Notes"),
            type = "string",
            name = "Notes",
            target_id = prelude.String.id,
        }),
        RejectionReason = schema.new({
            id = id.from(_N, "DelegationRequest", "RejectionReason"),
            type = "string",
            name = "RejectionReason",
            target_id = prelude.String.id,
        }),
        OnlySendByOwner = schema.new({
            id = id.from(_N, "DelegationRequest", "OnlySendByOwner"),
            type = "boolean",
            name = "OnlySendByOwner",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        UpdatedTime = schema.new({
            id = id.from(_N, "DelegationRequest", "UpdatedTime"),
            type = "timestamp",
            name = "UpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetDelegationRequestOutput = schema.new({
    id = id.from(_N, "GetDelegationRequestOutput"),
    type = "structure",
    members = {
        DelegationRequest = schema.new({
            id = id.from(_N, "GetDelegationRequestOutput", "DelegationRequest"),
            type = "structure",
            name = "DelegationRequest",
            target_id = id.from(_N, "DelegationRequest"),
            target = M.DelegationRequest,
        }),
        PermissionCheckStatus = schema.new({
            id = id.from(_N, "GetDelegationRequestOutput", "PermissionCheckStatus"),
            type = "string",
            name = "PermissionCheckStatus",
            target_id = prelude.String.id,
        }),
        PermissionCheckResult = schema.new({
            id = id.from(_N, "GetDelegationRequestOutput", "PermissionCheckResult"),
            type = "string",
            name = "PermissionCheckResult",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGroupInput = schema.new({
    id = id.from(_N, "GetGroupInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "GetGroupInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "GetGroupInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "GetGroupInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetGroupOutput = schema.new({
    id = id.from(_N, "GetGroupOutput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "GetGroupOutput", "Group"),
            type = "structure",
            name = "Group",
            target_id = id.from(_N, "Group"),
            target = M.Group,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Users = schema.new({
            id = id.from(_N, "GetGroupOutput", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = M.User,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "GetGroupOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "GetGroupOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGroupPolicyInput = schema.new({
    id = id.from(_N, "GetGroupPolicyInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "GetGroupPolicyInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "GetGroupPolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetGroupPolicyOutput = schema.new({
    id = id.from(_N, "GetGroupPolicyOutput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "GetGroupPolicyOutput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "GetGroupPolicyOutput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "GetGroupPolicyOutput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetHumanReadableSummaryInput = schema.new({
    id = id.from(_N, "GetHumanReadableSummaryInput"),
    type = "structure",
    members = {
        EntityArn = schema.new({
            id = id.from(_N, "GetHumanReadableSummaryInput", "EntityArn"),
            type = "string",
            name = "EntityArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Locale = schema.new({
            id = id.from(_N, "GetHumanReadableSummaryInput", "Locale"),
            type = "string",
            name = "Locale",
            target_id = prelude.String.id,
        }),
    },
})

M.GetHumanReadableSummaryOutput = schema.new({
    id = id.from(_N, "GetHumanReadableSummaryOutput"),
    type = "structure",
    members = {
        SummaryContent = schema.new({
            id = id.from(_N, "GetHumanReadableSummaryOutput", "SummaryContent"),
            type = "string",
            name = "SummaryContent",
            target_id = prelude.String.id,
        }),
        Locale = schema.new({
            id = id.from(_N, "GetHumanReadableSummaryOutput", "Locale"),
            type = "string",
            name = "Locale",
            target_id = prelude.String.id,
        }),
        SummaryState = schema.new({
            id = id.from(_N, "GetHumanReadableSummaryOutput", "SummaryState"),
            type = "string",
            name = "SummaryState",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInstanceProfileInput = schema.new({
    id = id.from(_N, "GetInstanceProfileInput"),
    type = "structure",
    members = {
        InstanceProfileName = schema.new({
            id = id.from(_N, "GetInstanceProfileInput", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetInstanceProfileOutput = schema.new({
    id = id.from(_N, "GetInstanceProfileOutput"),
    type = "structure",
    members = {
        InstanceProfile = schema.new({
            id = id.from(_N, "GetInstanceProfileOutput", "InstanceProfile"),
            type = "structure",
            name = "InstanceProfile",
            target_id = id.from(_N, "InstanceProfile"),
            target = M.InstanceProfile,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetLoginProfileInput = schema.new({
    id = id.from(_N, "GetLoginProfileInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "GetLoginProfileInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetLoginProfileOutput = schema.new({
    id = id.from(_N, "GetLoginProfileOutput"),
    type = "structure",
    members = {
        LoginProfile = schema.new({
            id = id.from(_N, "GetLoginProfileOutput", "LoginProfile"),
            type = "structure",
            name = "LoginProfile",
            target_id = id.from(_N, "LoginProfile"),
            target = M.LoginProfile,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMFADeviceInput = schema.new({
    id = id.from(_N, "GetMFADeviceInput"),
    type = "structure",
    members = {
        SerialNumber = schema.new({
            id = id.from(_N, "GetMFADeviceInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "GetMFADeviceInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMFADeviceOutput = schema.new({
    id = id.from(_N, "GetMFADeviceOutput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "GetMFADeviceOutput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "GetMFADeviceOutput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnableDate = schema.new({
            id = id.from(_N, "GetMFADeviceOutput", "EnableDate"),
            type = "timestamp",
            name = "EnableDate",
            target_id = prelude.Timestamp.id,
        }),
        Certifications = schema.new({
            id = id.from(_N, "GetMFADeviceOutput", "Certifications"),
            type = "map",
            name = "Certifications",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetOpenIDConnectProviderInput = schema.new({
    id = id.from(_N, "GetOpenIDConnectProviderInput"),
    type = "structure",
    members = {
        OpenIDConnectProviderArn = schema.new({
            id = id.from(_N, "GetOpenIDConnectProviderInput", "OpenIDConnectProviderArn"),
            type = "string",
            name = "OpenIDConnectProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetOpenIDConnectProviderOutput = schema.new({
    id = id.from(_N, "GetOpenIDConnectProviderOutput"),
    type = "structure",
    members = {
        Url = schema.new({
            id = id.from(_N, "GetOpenIDConnectProviderOutput", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
        }),
        ClientIDList = schema.new({
            id = id.from(_N, "GetOpenIDConnectProviderOutput", "ClientIDList"),
            type = "list",
            name = "ClientIDList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ThumbprintList = schema.new({
            id = id.from(_N, "GetOpenIDConnectProviderOutput", "ThumbprintList"),
            type = "list",
            name = "ThumbprintList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "GetOpenIDConnectProviderOutput", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetOpenIDConnectProviderOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.GetOrganizationsAccessReportInput = schema.new({
    id = id.from(_N, "GetOrganizationsAccessReportInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        SortKey = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportInput", "SortKey"),
            type = "string",
            name = "SortKey",
            target_id = prelude.String.id,
        }),
    },
})

M.ErrorDetails = schema.new({
    id = id.from(_N, "ErrorDetails"),
    type = "structure",
    members = {
        Message = schema.new({
            id = id.from(_N, "ErrorDetails", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Code = schema.new({
            id = id.from(_N, "ErrorDetails", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetOrganizationsAccessReportOutput = schema.new({
    id = id.from(_N, "GetOrganizationsAccessReportOutput"),
    type = "structure",
    members = {
        JobStatus = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobCreationDate = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportOutput", "JobCreationDate"),
            type = "timestamp",
            name = "JobCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobCompletionDate = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportOutput", "JobCompletionDate"),
            type = "timestamp",
            name = "JobCompletionDate",
            target_id = prelude.Timestamp.id,
        }),
        NumberOfServicesAccessible = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportOutput", "NumberOfServicesAccessible"),
            type = "integer",
            name = "NumberOfServicesAccessible",
            target_id = prelude.Integer.id,
        }),
        NumberOfServicesNotAccessed = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportOutput", "NumberOfServicesNotAccessed"),
            type = "integer",
            name = "NumberOfServicesNotAccessed",
            target_id = prelude.Integer.id,
        }),
        AccessDetails = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportOutput", "AccessDetails"),
            type = "list",
            name = "AccessDetails",
            target_id = prelude.Document.id,
            list_member = M.AccessDetail,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ErrorDetails = schema.new({
            id = id.from(_N, "GetOrganizationsAccessReportOutput", "ErrorDetails"),
            type = "structure",
            name = "ErrorDetails",
            target_id = id.from(_N, "ErrorDetails"),
            target = M.ErrorDetails,
        }),
    },
})

M.GetOutboundWebIdentityFederationInfoInput = schema.new({
    id = id.from(_N, "GetOutboundWebIdentityFederationInfoInput"),
    type = "structure",
})

M.GetOutboundWebIdentityFederationInfoOutput = schema.new({
    id = id.from(_N, "GetOutboundWebIdentityFederationInfoOutput"),
    type = "structure",
    members = {
        IssuerIdentifier = schema.new({
            id = id.from(_N, "GetOutboundWebIdentityFederationInfoOutput", "IssuerIdentifier"),
            type = "string",
            name = "IssuerIdentifier",
            target_id = prelude.String.id,
        }),
        JwtVendingEnabled = schema.new({
            id = id.from(_N, "GetOutboundWebIdentityFederationInfoOutput", "JwtVendingEnabled"),
            type = "boolean",
            name = "JwtVendingEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetPolicyInput = schema.new({
    id = id.from(_N, "GetPolicyInput"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "GetPolicyInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
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
        Policy = schema.new({
            id = id.from(_N, "GetPolicyOutput", "Policy"),
            type = "structure",
            name = "Policy",
            target_id = id.from(_N, "Policy"),
            target = M.Policy,
        }),
    },
})

M.GetPolicyVersionInput = schema.new({
    id = id.from(_N, "GetPolicyVersionInput"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "GetPolicyVersionInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "GetPolicyVersionInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPolicyVersionOutput = schema.new({
    id = id.from(_N, "GetPolicyVersionOutput"),
    type = "structure",
    members = {
        PolicyVersion = schema.new({
            id = id.from(_N, "GetPolicyVersionOutput", "PolicyVersion"),
            type = "structure",
            name = "PolicyVersion",
            target_id = id.from(_N, "PolicyVersion"),
            target = M.PolicyVersion,
        }),
    },
})

M.GetRoleInput = schema.new({
    id = id.from(_N, "GetRoleInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "GetRoleInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRoleOutput = schema.new({
    id = id.from(_N, "GetRoleOutput"),
    type = "structure",
    members = {
        Role = schema.new({
            id = id.from(_N, "GetRoleOutput", "Role"),
            type = "structure",
            name = "Role",
            target_id = id.from(_N, "Role"),
            target = M.Role,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRolePolicyInput = schema.new({
    id = id.from(_N, "GetRolePolicyInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "GetRolePolicyInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "GetRolePolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRolePolicyOutput = schema.new({
    id = id.from(_N, "GetRolePolicyOutput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "GetRolePolicyOutput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "GetRolePolicyOutput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "GetRolePolicyOutput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSAMLProviderInput = schema.new({
    id = id.from(_N, "GetSAMLProviderInput"),
    type = "structure",
    members = {
        SAMLProviderArn = schema.new({
            id = id.from(_N, "GetSAMLProviderInput", "SAMLProviderArn"),
            type = "string",
            name = "SAMLProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SAMLPrivateKey = schema.new({
    id = id.from(_N, "SAMLPrivateKey"),
    type = "structure",
    members = {
        KeyId = schema.new({
            id = id.from(_N, "SAMLPrivateKey", "KeyId"),
            type = "string",
            name = "KeyId",
            target_id = prelude.String.id,
        }),
        Timestamp = schema.new({
            id = id.from(_N, "SAMLPrivateKey", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetSAMLProviderOutput = schema.new({
    id = id.from(_N, "GetSAMLProviderOutput"),
    type = "structure",
    members = {
        SAMLProviderUUID = schema.new({
            id = id.from(_N, "GetSAMLProviderOutput", "SAMLProviderUUID"),
            type = "string",
            name = "SAMLProviderUUID",
            target_id = prelude.String.id,
        }),
        SAMLMetadataDocument = schema.new({
            id = id.from(_N, "GetSAMLProviderOutput", "SAMLMetadataDocument"),
            type = "string",
            name = "SAMLMetadataDocument",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "GetSAMLProviderOutput", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        ValidUntil = schema.new({
            id = id.from(_N, "GetSAMLProviderOutput", "ValidUntil"),
            type = "timestamp",
            name = "ValidUntil",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetSAMLProviderOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AssertionEncryptionMode = schema.new({
            id = id.from(_N, "GetSAMLProviderOutput", "AssertionEncryptionMode"),
            type = "string",
            name = "AssertionEncryptionMode",
            target_id = prelude.String.id,
        }),
        PrivateKeyList = schema.new({
            id = id.from(_N, "GetSAMLProviderOutput", "PrivateKeyList"),
            type = "list",
            name = "PrivateKeyList",
            target_id = prelude.Document.id,
            list_member = M.SAMLPrivateKey,
        }),
    },
})

M.GetServerCertificateInput = schema.new({
    id = id.from(_N, "GetServerCertificateInput"),
    type = "structure",
    members = {
        ServerCertificateName = schema.new({
            id = id.from(_N, "GetServerCertificateInput", "ServerCertificateName"),
            type = "string",
            name = "ServerCertificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServerCertificateMetadata = schema.new({
    id = id.from(_N, "ServerCertificateMetadata"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "ServerCertificateMetadata", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServerCertificateName = schema.new({
            id = id.from(_N, "ServerCertificateMetadata", "ServerCertificateName"),
            type = "string",
            name = "ServerCertificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServerCertificateId = schema.new({
            id = id.from(_N, "ServerCertificateMetadata", "ServerCertificateId"),
            type = "string",
            name = "ServerCertificateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "ServerCertificateMetadata", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UploadDate = schema.new({
            id = id.from(_N, "ServerCertificateMetadata", "UploadDate"),
            type = "timestamp",
            name = "UploadDate",
            target_id = prelude.Timestamp.id,
        }),
        Expiration = schema.new({
            id = id.from(_N, "ServerCertificateMetadata", "Expiration"),
            type = "timestamp",
            name = "Expiration",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ServerCertificate = schema.new({
    id = id.from(_N, "ServerCertificate"),
    type = "structure",
    members = {
        ServerCertificateMetadata = schema.new({
            id = id.from(_N, "ServerCertificate", "ServerCertificateMetadata"),
            type = "structure",
            name = "ServerCertificateMetadata",
            target_id = id.from(_N, "ServerCertificateMetadata"),
            target = M.ServerCertificateMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificateBody = schema.new({
            id = id.from(_N, "ServerCertificate", "CertificateBody"),
            type = "string",
            name = "CertificateBody",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificateChain = schema.new({
            id = id.from(_N, "ServerCertificate", "CertificateChain"),
            type = "string",
            name = "CertificateChain",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ServerCertificate", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.GetServerCertificateOutput = schema.new({
    id = id.from(_N, "GetServerCertificateOutput"),
    type = "structure",
    members = {
        ServerCertificate = schema.new({
            id = id.from(_N, "GetServerCertificateOutput", "ServerCertificate"),
            type = "structure",
            name = "ServerCertificate",
            target_id = id.from(_N, "ServerCertificate"),
            target = M.ServerCertificate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetServiceLastAccessedDetailsInput = schema.new({
    id = id.from(_N, "GetServiceLastAccessedDetailsInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.TrackedActionLastAccessed = schema.new({
    id = id.from(_N, "TrackedActionLastAccessed"),
    type = "structure",
    members = {
        ActionName = schema.new({
            id = id.from(_N, "TrackedActionLastAccessed", "ActionName"),
            type = "string",
            name = "ActionName",
            target_id = prelude.String.id,
        }),
        LastAccessedEntity = schema.new({
            id = id.from(_N, "TrackedActionLastAccessed", "LastAccessedEntity"),
            type = "string",
            name = "LastAccessedEntity",
            target_id = prelude.String.id,
        }),
        LastAccessedTime = schema.new({
            id = id.from(_N, "TrackedActionLastAccessed", "LastAccessedTime"),
            type = "timestamp",
            name = "LastAccessedTime",
            target_id = prelude.Timestamp.id,
        }),
        LastAccessedRegion = schema.new({
            id = id.from(_N, "TrackedActionLastAccessed", "LastAccessedRegion"),
            type = "string",
            name = "LastAccessedRegion",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceLastAccessed = schema.new({
    id = id.from(_N, "ServiceLastAccessed"),
    type = "structure",
    members = {
        ServiceName = schema.new({
            id = id.from(_N, "ServiceLastAccessed", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastAuthenticated = schema.new({
            id = id.from(_N, "ServiceLastAccessed", "LastAuthenticated"),
            type = "timestamp",
            name = "LastAuthenticated",
            target_id = prelude.Timestamp.id,
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "ServiceLastAccessed", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastAuthenticatedEntity = schema.new({
            id = id.from(_N, "ServiceLastAccessed", "LastAuthenticatedEntity"),
            type = "string",
            name = "LastAuthenticatedEntity",
            target_id = prelude.String.id,
        }),
        LastAuthenticatedRegion = schema.new({
            id = id.from(_N, "ServiceLastAccessed", "LastAuthenticatedRegion"),
            type = "string",
            name = "LastAuthenticatedRegion",
            target_id = prelude.String.id,
        }),
        TotalAuthenticatedEntities = schema.new({
            id = id.from(_N, "ServiceLastAccessed", "TotalAuthenticatedEntities"),
            type = "integer",
            name = "TotalAuthenticatedEntities",
            target_id = prelude.Integer.id,
        }),
        TrackedActionsLastAccessed = schema.new({
            id = id.from(_N, "ServiceLastAccessed", "TrackedActionsLastAccessed"),
            type = "list",
            name = "TrackedActionsLastAccessed",
            target_id = prelude.Document.id,
            list_member = M.TrackedActionLastAccessed,
        }),
    },
})

M.GetServiceLastAccessedDetailsOutput = schema.new({
    id = id.from(_N, "GetServiceLastAccessedDetailsOutput"),
    type = "structure",
    members = {
        JobStatus = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobType = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsOutput", "JobType"),
            type = "string",
            name = "JobType",
            target_id = prelude.String.id,
        }),
        JobCreationDate = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsOutput", "JobCreationDate"),
            type = "timestamp",
            name = "JobCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServicesLastAccessed = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsOutput", "ServicesLastAccessed"),
            type = "list",
            name = "ServicesLastAccessed",
            target_id = prelude.Document.id,
            list_member = M.ServiceLastAccessed,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobCompletionDate = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsOutput", "JobCompletionDate"),
            type = "timestamp",
            name = "JobCompletionDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Error = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsOutput", "Error"),
            type = "structure",
            name = "Error",
            target_id = id.from(_N, "ErrorDetails"),
            target = M.ErrorDetails,
        }),
    },
})

M.GetServiceLastAccessedDetailsWithEntitiesInput = schema.new({
    id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityInfo = schema.new({
    id = id.from(_N, "EntityInfo"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "EntityInfo", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "EntityInfo", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "EntityInfo", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "EntityInfo", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Path = schema.new({
            id = id.from(_N, "EntityInfo", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityDetails = schema.new({
    id = id.from(_N, "EntityDetails"),
    type = "structure",
    members = {
        EntityInfo = schema.new({
            id = id.from(_N, "EntityDetails", "EntityInfo"),
            type = "structure",
            name = "EntityInfo",
            target_id = id.from(_N, "EntityInfo"),
            target = M.EntityInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastAuthenticated = schema.new({
            id = id.from(_N, "EntityDetails", "LastAuthenticated"),
            type = "timestamp",
            name = "LastAuthenticated",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetServiceLastAccessedDetailsWithEntitiesOutput = schema.new({
    id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesOutput"),
    type = "structure",
    members = {
        JobStatus = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobCreationDate = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesOutput", "JobCreationDate"),
            type = "timestamp",
            name = "JobCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobCompletionDate = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesOutput", "JobCompletionDate"),
            type = "timestamp",
            name = "JobCompletionDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityDetailsList = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesOutput", "EntityDetailsList"),
            type = "list",
            name = "EntityDetailsList",
            target_id = prelude.Document.id,
            list_member = M.EntityDetails,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Error = schema.new({
            id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesOutput", "Error"),
            type = "structure",
            name = "Error",
            target_id = id.from(_N, "ErrorDetails"),
            target = M.ErrorDetails,
        }),
    },
})

M.GetServiceLinkedRoleDeletionStatusInput = schema.new({
    id = id.from(_N, "GetServiceLinkedRoleDeletionStatusInput"),
    type = "structure",
    members = {
        DeletionTaskId = schema.new({
            id = id.from(_N, "GetServiceLinkedRoleDeletionStatusInput", "DeletionTaskId"),
            type = "string",
            name = "DeletionTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RoleUsageType = schema.new({
    id = id.from(_N, "RoleUsageType"),
    type = "structure",
    members = {
        Region = schema.new({
            id = id.from(_N, "RoleUsageType", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        Resources = schema.new({
            id = id.from(_N, "RoleUsageType", "Resources"),
            type = "list",
            name = "Resources",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DeletionTaskFailureReasonType = schema.new({
    id = id.from(_N, "DeletionTaskFailureReasonType"),
    type = "structure",
    members = {
        Reason = schema.new({
            id = id.from(_N, "DeletionTaskFailureReasonType", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        RoleUsageList = schema.new({
            id = id.from(_N, "DeletionTaskFailureReasonType", "RoleUsageList"),
            type = "list",
            name = "RoleUsageList",
            target_id = prelude.Document.id,
            list_member = M.RoleUsageType,
        }),
    },
})

M.GetServiceLinkedRoleDeletionStatusOutput = schema.new({
    id = id.from(_N, "GetServiceLinkedRoleDeletionStatusOutput"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "GetServiceLinkedRoleDeletionStatusOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "GetServiceLinkedRoleDeletionStatusOutput", "Reason"),
            type = "structure",
            name = "Reason",
            target_id = id.from(_N, "DeletionTaskFailureReasonType"),
            target = M.DeletionTaskFailureReasonType,
        }),
    },
})

M.GetSSHPublicKeyInput = schema.new({
    id = id.from(_N, "GetSSHPublicKeyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "GetSSHPublicKeyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SSHPublicKeyId = schema.new({
            id = id.from(_N, "GetSSHPublicKeyInput", "SSHPublicKeyId"),
            type = "string",
            name = "SSHPublicKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Encoding = schema.new({
            id = id.from(_N, "GetSSHPublicKeyInput", "Encoding"),
            type = "string",
            name = "Encoding",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SSHPublicKey = schema.new({
    id = id.from(_N, "SSHPublicKey"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "SSHPublicKey", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SSHPublicKeyId = schema.new({
            id = id.from(_N, "SSHPublicKey", "SSHPublicKeyId"),
            type = "string",
            name = "SSHPublicKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Fingerprint = schema.new({
            id = id.from(_N, "SSHPublicKey", "Fingerprint"),
            type = "string",
            name = "Fingerprint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SSHPublicKeyBody = schema.new({
            id = id.from(_N, "SSHPublicKey", "SSHPublicKeyBody"),
            type = "string",
            name = "SSHPublicKeyBody",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "SSHPublicKey", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UploadDate = schema.new({
            id = id.from(_N, "SSHPublicKey", "UploadDate"),
            type = "timestamp",
            name = "UploadDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetSSHPublicKeyOutput = schema.new({
    id = id.from(_N, "GetSSHPublicKeyOutput"),
    type = "structure",
    members = {
        SSHPublicKey = schema.new({
            id = id.from(_N, "GetSSHPublicKeyOutput", "SSHPublicKey"),
            type = "structure",
            name = "SSHPublicKey",
            target_id = id.from(_N, "SSHPublicKey"),
            target = M.SSHPublicKey,
        }),
    },
})

M.UnrecognizedPublicKeyEncodingException = schema.new({
    id = id.from(_N, "UnrecognizedPublicKeyEncodingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnrecognizedPublicKeyEncodingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetUserInput = schema.new({
    id = id.from(_N, "GetUserInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "GetUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetUserOutput = schema.new({
    id = id.from(_N, "GetUserOutput"),
    type = "structure",
    members = {
        User = schema.new({
            id = id.from(_N, "GetUserOutput", "User"),
            type = "structure",
            name = "User",
            target_id = id.from(_N, "User"),
            target = M.User,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetUserPolicyInput = schema.new({
    id = id.from(_N, "GetUserPolicyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "GetUserPolicyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "GetUserPolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetUserPolicyOutput = schema.new({
    id = id.from(_N, "GetUserPolicyOutput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "GetUserPolicyOutput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "GetUserPolicyOutput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "GetUserPolicyOutput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAccessKeysInput = schema.new({
    id = id.from(_N, "ListAccessKeysInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ListAccessKeysInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListAccessKeysInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListAccessKeysInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAccessKeysOutput = schema.new({
    id = id.from(_N, "ListAccessKeysOutput"),
    type = "structure",
    members = {
        AccessKeyMetadata = schema.new({
            id = id.from(_N, "ListAccessKeysOutput", "AccessKeyMetadata"),
            type = "list",
            name = "AccessKeyMetadata",
            target_id = prelude.Document.id,
            list_member = M.AccessKeyMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListAccessKeysOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListAccessKeysOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccountAliasesInput = schema.new({
    id = id.from(_N, "ListAccountAliasesInput"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListAccountAliasesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListAccountAliasesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAccountAliasesOutput = schema.new({
    id = id.from(_N, "ListAccountAliasesOutput"),
    type = "structure",
    members = {
        AccountAliases = schema.new({
            id = id.from(_N, "ListAccountAliasesOutput", "AccountAliases"),
            type = "list",
            name = "AccountAliases",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListAccountAliasesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListAccountAliasesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAttachedGroupPoliciesInput = schema.new({
    id = id.from(_N, "ListAttachedGroupPoliciesInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "ListAttachedGroupPoliciesInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PathPrefix = schema.new({
            id = id.from(_N, "ListAttachedGroupPoliciesInput", "PathPrefix"),
            type = "string",
            name = "PathPrefix",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListAttachedGroupPoliciesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListAttachedGroupPoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAttachedGroupPoliciesOutput = schema.new({
    id = id.from(_N, "ListAttachedGroupPoliciesOutput"),
    type = "structure",
    members = {
        AttachedPolicies = schema.new({
            id = id.from(_N, "ListAttachedGroupPoliciesOutput", "AttachedPolicies"),
            type = "list",
            name = "AttachedPolicies",
            target_id = prelude.Document.id,
            list_member = M.AttachedPolicy,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListAttachedGroupPoliciesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListAttachedGroupPoliciesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAttachedRolePoliciesInput = schema.new({
    id = id.from(_N, "ListAttachedRolePoliciesInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "ListAttachedRolePoliciesInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PathPrefix = schema.new({
            id = id.from(_N, "ListAttachedRolePoliciesInput", "PathPrefix"),
            type = "string",
            name = "PathPrefix",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListAttachedRolePoliciesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListAttachedRolePoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAttachedRolePoliciesOutput = schema.new({
    id = id.from(_N, "ListAttachedRolePoliciesOutput"),
    type = "structure",
    members = {
        AttachedPolicies = schema.new({
            id = id.from(_N, "ListAttachedRolePoliciesOutput", "AttachedPolicies"),
            type = "list",
            name = "AttachedPolicies",
            target_id = prelude.Document.id,
            list_member = M.AttachedPolicy,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListAttachedRolePoliciesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListAttachedRolePoliciesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAttachedUserPoliciesInput = schema.new({
    id = id.from(_N, "ListAttachedUserPoliciesInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ListAttachedUserPoliciesInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PathPrefix = schema.new({
            id = id.from(_N, "ListAttachedUserPoliciesInput", "PathPrefix"),
            type = "string",
            name = "PathPrefix",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListAttachedUserPoliciesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListAttachedUserPoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAttachedUserPoliciesOutput = schema.new({
    id = id.from(_N, "ListAttachedUserPoliciesOutput"),
    type = "structure",
    members = {
        AttachedPolicies = schema.new({
            id = id.from(_N, "ListAttachedUserPoliciesOutput", "AttachedPolicies"),
            type = "list",
            name = "AttachedPolicies",
            target_id = prelude.Document.id,
            list_member = M.AttachedPolicy,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListAttachedUserPoliciesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListAttachedUserPoliciesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDelegationRequestsInput = schema.new({
    id = id.from(_N, "ListDelegationRequestsInput"),
    type = "structure",
    members = {
        OwnerId = schema.new({
            id = id.from(_N, "ListDelegationRequestsInput", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListDelegationRequestsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDelegationRequestsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListDelegationRequestsOutput = schema.new({
    id = id.from(_N, "ListDelegationRequestsOutput"),
    type = "structure",
    members = {
        DelegationRequests = schema.new({
            id = id.from(_N, "ListDelegationRequestsOutput", "DelegationRequests"),
            type = "list",
            name = "DelegationRequests",
            target_id = prelude.Document.id,
            list_member = M.DelegationRequest,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListDelegationRequestsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        isTruncated = schema.new({
            id = id.from(_N, "ListDelegationRequestsOutput", "isTruncated"),
            type = "boolean",
            name = "isTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ListEntitiesForPolicyInput = schema.new({
    id = id.from(_N, "ListEntitiesForPolicyInput"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "ListEntitiesForPolicyInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityFilter = schema.new({
            id = id.from(_N, "ListEntitiesForPolicyInput", "EntityFilter"),
            type = "string",
            name = "EntityFilter",
            target_id = prelude.String.id,
        }),
        PathPrefix = schema.new({
            id = id.from(_N, "ListEntitiesForPolicyInput", "PathPrefix"),
            type = "string",
            name = "PathPrefix",
            target_id = prelude.String.id,
        }),
        PolicyUsageFilter = schema.new({
            id = id.from(_N, "ListEntitiesForPolicyInput", "PolicyUsageFilter"),
            type = "string",
            name = "PolicyUsageFilter",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListEntitiesForPolicyInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListEntitiesForPolicyInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PolicyGroup = schema.new({
    id = id.from(_N, "PolicyGroup"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "PolicyGroup", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        GroupId = schema.new({
            id = id.from(_N, "PolicyGroup", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
        }),
    },
})

M.PolicyRole = schema.new({
    id = id.from(_N, "PolicyRole"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "PolicyRole", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
        }),
        RoleId = schema.new({
            id = id.from(_N, "PolicyRole", "RoleId"),
            type = "string",
            name = "RoleId",
            target_id = prelude.String.id,
        }),
    },
})

M.PolicyUser = schema.new({
    id = id.from(_N, "PolicyUser"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "PolicyUser", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        UserId = schema.new({
            id = id.from(_N, "PolicyUser", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEntitiesForPolicyOutput = schema.new({
    id = id.from(_N, "ListEntitiesForPolicyOutput"),
    type = "structure",
    members = {
        PolicyGroups = schema.new({
            id = id.from(_N, "ListEntitiesForPolicyOutput", "PolicyGroups"),
            type = "list",
            name = "PolicyGroups",
            target_id = prelude.Document.id,
            list_member = M.PolicyGroup,
        }),
        PolicyUsers = schema.new({
            id = id.from(_N, "ListEntitiesForPolicyOutput", "PolicyUsers"),
            type = "list",
            name = "PolicyUsers",
            target_id = prelude.Document.id,
            list_member = M.PolicyUser,
        }),
        PolicyRoles = schema.new({
            id = id.from(_N, "ListEntitiesForPolicyOutput", "PolicyRoles"),
            type = "list",
            name = "PolicyRoles",
            target_id = prelude.Document.id,
            list_member = M.PolicyRole,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListEntitiesForPolicyOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListEntitiesForPolicyOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupPoliciesInput = schema.new({
    id = id.from(_N, "ListGroupPoliciesInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "ListGroupPoliciesInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListGroupPoliciesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListGroupPoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListGroupPoliciesOutput = schema.new({
    id = id.from(_N, "ListGroupPoliciesOutput"),
    type = "structure",
    members = {
        PolicyNames = schema.new({
            id = id.from(_N, "ListGroupPoliciesOutput", "PolicyNames"),
            type = "list",
            name = "PolicyNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListGroupPoliciesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListGroupPoliciesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupsInput = schema.new({
    id = id.from(_N, "ListGroupsInput"),
    type = "structure",
    members = {
        PathPrefix = schema.new({
            id = id.from(_N, "ListGroupsInput", "PathPrefix"),
            type = "string",
            name = "PathPrefix",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListGroupsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListGroupsOutput = schema.new({
    id = id.from(_N, "ListGroupsOutput"),
    type = "structure",
    members = {
        Groups = schema.new({
            id = id.from(_N, "ListGroupsOutput", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = M.Group,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListGroupsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupsForUserInput = schema.new({
    id = id.from(_N, "ListGroupsForUserInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ListGroupsForUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListGroupsForUserInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListGroupsForUserInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListGroupsForUserOutput = schema.new({
    id = id.from(_N, "ListGroupsForUserOutput"),
    type = "structure",
    members = {
        Groups = schema.new({
            id = id.from(_N, "ListGroupsForUserOutput", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = M.Group,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListGroupsForUserOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListGroupsForUserOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInstanceProfilesInput = schema.new({
    id = id.from(_N, "ListInstanceProfilesInput"),
    type = "structure",
    members = {
        PathPrefix = schema.new({
            id = id.from(_N, "ListInstanceProfilesInput", "PathPrefix"),
            type = "string",
            name = "PathPrefix",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstanceProfilesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListInstanceProfilesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListInstanceProfilesOutput = schema.new({
    id = id.from(_N, "ListInstanceProfilesOutput"),
    type = "structure",
    members = {
        InstanceProfiles = schema.new({
            id = id.from(_N, "ListInstanceProfilesOutput", "InstanceProfiles"),
            type = "list",
            name = "InstanceProfiles",
            target_id = prelude.Document.id,
            list_member = M.InstanceProfile,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListInstanceProfilesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstanceProfilesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInstanceProfilesForRoleInput = schema.new({
    id = id.from(_N, "ListInstanceProfilesForRoleInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "ListInstanceProfilesForRoleInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstanceProfilesForRoleInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListInstanceProfilesForRoleInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListInstanceProfilesForRoleOutput = schema.new({
    id = id.from(_N, "ListInstanceProfilesForRoleOutput"),
    type = "structure",
    members = {
        InstanceProfiles = schema.new({
            id = id.from(_N, "ListInstanceProfilesForRoleOutput", "InstanceProfiles"),
            type = "list",
            name = "InstanceProfiles",
            target_id = prelude.Document.id,
            list_member = M.InstanceProfile,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListInstanceProfilesForRoleOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstanceProfilesForRoleOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInstanceProfileTagsInput = schema.new({
    id = id.from(_N, "ListInstanceProfileTagsInput"),
    type = "structure",
    members = {
        InstanceProfileName = schema.new({
            id = id.from(_N, "ListInstanceProfileTagsInput", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstanceProfileTagsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListInstanceProfileTagsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListInstanceProfileTagsOutput = schema.new({
    id = id.from(_N, "ListInstanceProfileTagsOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListInstanceProfileTagsOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListInstanceProfileTagsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstanceProfileTagsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMFADevicesInput = schema.new({
    id = id.from(_N, "ListMFADevicesInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ListMFADevicesInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListMFADevicesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListMFADevicesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.MFADevice = schema.new({
    id = id.from(_N, "MFADevice"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "MFADevice", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "MFADevice", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnableDate = schema.new({
            id = id.from(_N, "MFADevice", "EnableDate"),
            type = "timestamp",
            name = "EnableDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListMFADevicesOutput = schema.new({
    id = id.from(_N, "ListMFADevicesOutput"),
    type = "structure",
    members = {
        MFADevices = schema.new({
            id = id.from(_N, "ListMFADevicesOutput", "MFADevices"),
            type = "list",
            name = "MFADevices",
            target_id = prelude.Document.id,
            list_member = M.MFADevice,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListMFADevicesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListMFADevicesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMFADeviceTagsInput = schema.new({
    id = id.from(_N, "ListMFADeviceTagsInput"),
    type = "structure",
    members = {
        SerialNumber = schema.new({
            id = id.from(_N, "ListMFADeviceTagsInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListMFADeviceTagsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListMFADeviceTagsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListMFADeviceTagsOutput = schema.new({
    id = id.from(_N, "ListMFADeviceTagsOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListMFADeviceTagsOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListMFADeviceTagsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListMFADeviceTagsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOpenIDConnectProvidersInput = schema.new({
    id = id.from(_N, "ListOpenIDConnectProvidersInput"),
    type = "structure",
})

M.OpenIDConnectProviderListEntry = schema.new({
    id = id.from(_N, "OpenIDConnectProviderListEntry"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "OpenIDConnectProviderListEntry", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOpenIDConnectProvidersOutput = schema.new({
    id = id.from(_N, "ListOpenIDConnectProvidersOutput"),
    type = "structure",
    members = {
        OpenIDConnectProviderList = schema.new({
            id = id.from(_N, "ListOpenIDConnectProvidersOutput", "OpenIDConnectProviderList"),
            type = "list",
            name = "OpenIDConnectProviderList",
            target_id = prelude.Document.id,
            list_member = M.OpenIDConnectProviderListEntry,
        }),
    },
})

M.ListOpenIDConnectProviderTagsInput = schema.new({
    id = id.from(_N, "ListOpenIDConnectProviderTagsInput"),
    type = "structure",
    members = {
        OpenIDConnectProviderArn = schema.new({
            id = id.from(_N, "ListOpenIDConnectProviderTagsInput", "OpenIDConnectProviderArn"),
            type = "string",
            name = "OpenIDConnectProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListOpenIDConnectProviderTagsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListOpenIDConnectProviderTagsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListOpenIDConnectProviderTagsOutput = schema.new({
    id = id.from(_N, "ListOpenIDConnectProviderTagsOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListOpenIDConnectProviderTagsOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListOpenIDConnectProviderTagsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListOpenIDConnectProviderTagsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOrganizationsFeaturesInput = schema.new({
    id = id.from(_N, "ListOrganizationsFeaturesInput"),
    type = "structure",
})

M.ListOrganizationsFeaturesOutput = schema.new({
    id = id.from(_N, "ListOrganizationsFeaturesOutput"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListOrganizationsFeaturesOutput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        EnabledFeatures = schema.new({
            id = id.from(_N, "ListOrganizationsFeaturesOutput", "EnabledFeatures"),
            type = "list",
            name = "EnabledFeatures",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListPoliciesInput = schema.new({
    id = id.from(_N, "ListPoliciesInput"),
    type = "structure",
    members = {
        Scope = schema.new({
            id = id.from(_N, "ListPoliciesInput", "Scope"),
            type = "string",
            name = "Scope",
            target_id = prelude.String.id,
        }),
        OnlyAttached = schema.new({
            id = id.from(_N, "ListPoliciesInput", "OnlyAttached"),
            type = "boolean",
            name = "OnlyAttached",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        PathPrefix = schema.new({
            id = id.from(_N, "ListPoliciesInput", "PathPrefix"),
            type = "string",
            name = "PathPrefix",
            target_id = prelude.String.id,
        }),
        PolicyUsageFilter = schema.new({
            id = id.from(_N, "ListPoliciesInput", "PolicyUsageFilter"),
            type = "string",
            name = "PolicyUsageFilter",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListPoliciesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListPoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListPoliciesOutput = schema.new({
    id = id.from(_N, "ListPoliciesOutput"),
    type = "structure",
    members = {
        Policies = schema.new({
            id = id.from(_N, "ListPoliciesOutput", "Policies"),
            type = "list",
            name = "Policies",
            target_id = prelude.Document.id,
            list_member = M.Policy,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListPoliciesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListPoliciesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPoliciesGrantingServiceAccessInput = schema.new({
    id = id.from(_N, "ListPoliciesGrantingServiceAccessInput"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListPoliciesGrantingServiceAccessInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "ListPoliciesGrantingServiceAccessInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceNamespaces = schema.new({
            id = id.from(_N, "ListPoliciesGrantingServiceAccessInput", "ServiceNamespaces"),
            type = "list",
            name = "ServiceNamespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PolicyGrantingServiceAccess = schema.new({
    id = id.from(_N, "PolicyGrantingServiceAccess"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "PolicyGrantingServiceAccess", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyType = schema.new({
            id = id.from(_N, "PolicyGrantingServiceAccess", "PolicyType"),
            type = "string",
            name = "PolicyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyArn = schema.new({
            id = id.from(_N, "PolicyGrantingServiceAccess", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
        }),
        EntityType = schema.new({
            id = id.from(_N, "PolicyGrantingServiceAccess", "EntityType"),
            type = "string",
            name = "EntityType",
            target_id = prelude.String.id,
        }),
        EntityName = schema.new({
            id = id.from(_N, "PolicyGrantingServiceAccess", "EntityName"),
            type = "string",
            name = "EntityName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPoliciesGrantingServiceAccessEntry = schema.new({
    id = id.from(_N, "ListPoliciesGrantingServiceAccessEntry"),
    type = "structure",
    members = {
        ServiceNamespace = schema.new({
            id = id.from(_N, "ListPoliciesGrantingServiceAccessEntry", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
        }),
        Policies = schema.new({
            id = id.from(_N, "ListPoliciesGrantingServiceAccessEntry", "Policies"),
            type = "list",
            name = "Policies",
            target_id = prelude.Document.id,
            list_member = M.PolicyGrantingServiceAccess,
        }),
    },
})

M.ListPoliciesGrantingServiceAccessOutput = schema.new({
    id = id.from(_N, "ListPoliciesGrantingServiceAccessOutput"),
    type = "structure",
    members = {
        PoliciesGrantingServiceAccess = schema.new({
            id = id.from(_N, "ListPoliciesGrantingServiceAccessOutput", "PoliciesGrantingServiceAccess"),
            type = "list",
            name = "PoliciesGrantingServiceAccess",
            target_id = prelude.Document.id,
            list_member = M.ListPoliciesGrantingServiceAccessEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListPoliciesGrantingServiceAccessOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListPoliciesGrantingServiceAccessOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPolicyTagsInput = schema.new({
    id = id.from(_N, "ListPolicyTagsInput"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "ListPolicyTagsInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListPolicyTagsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListPolicyTagsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListPolicyTagsOutput = schema.new({
    id = id.from(_N, "ListPolicyTagsOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListPolicyTagsOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListPolicyTagsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListPolicyTagsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPolicyVersionsInput = schema.new({
    id = id.from(_N, "ListPolicyVersionsInput"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "ListPolicyVersionsInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListPolicyVersionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListPolicyVersionsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListPolicyVersionsOutput = schema.new({
    id = id.from(_N, "ListPolicyVersionsOutput"),
    type = "structure",
    members = {
        Versions = schema.new({
            id = id.from(_N, "ListPolicyVersionsOutput", "Versions"),
            type = "list",
            name = "Versions",
            target_id = prelude.Document.id,
            list_member = M.PolicyVersion,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListPolicyVersionsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListPolicyVersionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRolePoliciesInput = schema.new({
    id = id.from(_N, "ListRolePoliciesInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "ListRolePoliciesInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListRolePoliciesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListRolePoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListRolePoliciesOutput = schema.new({
    id = id.from(_N, "ListRolePoliciesOutput"),
    type = "structure",
    members = {
        PolicyNames = schema.new({
            id = id.from(_N, "ListRolePoliciesOutput", "PolicyNames"),
            type = "list",
            name = "PolicyNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListRolePoliciesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListRolePoliciesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRolesInput = schema.new({
    id = id.from(_N, "ListRolesInput"),
    type = "structure",
    members = {
        PathPrefix = schema.new({
            id = id.from(_N, "ListRolesInput", "PathPrefix"),
            type = "string",
            name = "PathPrefix",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListRolesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListRolesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListRolesOutput = schema.new({
    id = id.from(_N, "ListRolesOutput"),
    type = "structure",
    members = {
        Roles = schema.new({
            id = id.from(_N, "ListRolesOutput", "Roles"),
            type = "list",
            name = "Roles",
            target_id = prelude.Document.id,
            list_member = M.Role,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListRolesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListRolesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRoleTagsInput = schema.new({
    id = id.from(_N, "ListRoleTagsInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "ListRoleTagsInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListRoleTagsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListRoleTagsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListRoleTagsOutput = schema.new({
    id = id.from(_N, "ListRoleTagsOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListRoleTagsOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListRoleTagsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListRoleTagsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSAMLProvidersInput = schema.new({
    id = id.from(_N, "ListSAMLProvidersInput"),
    type = "structure",
})

M.SAMLProviderListEntry = schema.new({
    id = id.from(_N, "SAMLProviderListEntry"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "SAMLProviderListEntry", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ValidUntil = schema.new({
            id = id.from(_N, "SAMLProviderListEntry", "ValidUntil"),
            type = "timestamp",
            name = "ValidUntil",
            target_id = prelude.Timestamp.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "SAMLProviderListEntry", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListSAMLProvidersOutput = schema.new({
    id = id.from(_N, "ListSAMLProvidersOutput"),
    type = "structure",
    members = {
        SAMLProviderList = schema.new({
            id = id.from(_N, "ListSAMLProvidersOutput", "SAMLProviderList"),
            type = "list",
            name = "SAMLProviderList",
            target_id = prelude.Document.id,
            list_member = M.SAMLProviderListEntry,
        }),
    },
})

M.ListSAMLProviderTagsInput = schema.new({
    id = id.from(_N, "ListSAMLProviderTagsInput"),
    type = "structure",
    members = {
        SAMLProviderArn = schema.new({
            id = id.from(_N, "ListSAMLProviderTagsInput", "SAMLProviderArn"),
            type = "string",
            name = "SAMLProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListSAMLProviderTagsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListSAMLProviderTagsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListSAMLProviderTagsOutput = schema.new({
    id = id.from(_N, "ListSAMLProviderTagsOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListSAMLProviderTagsOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListSAMLProviderTagsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListSAMLProviderTagsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServerCertificatesInput = schema.new({
    id = id.from(_N, "ListServerCertificatesInput"),
    type = "structure",
    members = {
        PathPrefix = schema.new({
            id = id.from(_N, "ListServerCertificatesInput", "PathPrefix"),
            type = "string",
            name = "PathPrefix",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListServerCertificatesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListServerCertificatesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListServerCertificatesOutput = schema.new({
    id = id.from(_N, "ListServerCertificatesOutput"),
    type = "structure",
    members = {
        ServerCertificateMetadataList = schema.new({
            id = id.from(_N, "ListServerCertificatesOutput", "ServerCertificateMetadataList"),
            type = "list",
            name = "ServerCertificateMetadataList",
            target_id = prelude.Document.id,
            list_member = M.ServerCertificateMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListServerCertificatesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListServerCertificatesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServerCertificateTagsInput = schema.new({
    id = id.from(_N, "ListServerCertificateTagsInput"),
    type = "structure",
    members = {
        ServerCertificateName = schema.new({
            id = id.from(_N, "ListServerCertificateTagsInput", "ServerCertificateName"),
            type = "string",
            name = "ServerCertificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListServerCertificateTagsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListServerCertificateTagsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListServerCertificateTagsOutput = schema.new({
    id = id.from(_N, "ListServerCertificateTagsOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListServerCertificateTagsOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListServerCertificateTagsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListServerCertificateTagsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServiceSpecificCredentialsInput = schema.new({
    id = id.from(_N, "ListServiceSpecificCredentialsInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ListServiceSpecificCredentialsInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        ServiceName = schema.new({
            id = id.from(_N, "ListServiceSpecificCredentialsInput", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
        AllUsers = schema.new({
            id = id.from(_N, "ListServiceSpecificCredentialsInput", "AllUsers"),
            type = "boolean",
            name = "AllUsers",
            target_id = prelude.Boolean.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListServiceSpecificCredentialsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListServiceSpecificCredentialsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ServiceSpecificCredentialMetadata = schema.new({
    id = id.from(_N, "ServiceSpecificCredentialMetadata"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ServiceSpecificCredentialMetadata", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ServiceSpecificCredentialMetadata", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceUserName = schema.new({
            id = id.from(_N, "ServiceSpecificCredentialMetadata", "ServiceUserName"),
            type = "string",
            name = "ServiceUserName",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
            },
        }),
        ServiceCredentialAlias = schema.new({
            id = id.from(_N, "ServiceSpecificCredentialMetadata", "ServiceCredentialAlias"),
            type = "string",
            name = "ServiceCredentialAlias",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "ServiceSpecificCredentialMetadata", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpirationDate = schema.new({
            id = id.from(_N, "ServiceSpecificCredentialMetadata", "ExpirationDate"),
            type = "timestamp",
            name = "ExpirationDate",
            target_id = prelude.Timestamp.id,
        }),
        ServiceSpecificCredentialId = schema.new({
            id = id.from(_N, "ServiceSpecificCredentialMetadata", "ServiceSpecificCredentialId"),
            type = "string",
            name = "ServiceSpecificCredentialId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceName = schema.new({
            id = id.from(_N, "ServiceSpecificCredentialMetadata", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListServiceSpecificCredentialsOutput = schema.new({
    id = id.from(_N, "ListServiceSpecificCredentialsOutput"),
    type = "structure",
    members = {
        ServiceSpecificCredentials = schema.new({
            id = id.from(_N, "ListServiceSpecificCredentialsOutput", "ServiceSpecificCredentials"),
            type = "list",
            name = "ServiceSpecificCredentials",
            target_id = prelude.Document.id,
            list_member = M.ServiceSpecificCredentialMetadata,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListServiceSpecificCredentialsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListServiceSpecificCredentialsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ListSigningCertificatesInput = schema.new({
    id = id.from(_N, "ListSigningCertificatesInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ListSigningCertificatesInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListSigningCertificatesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListSigningCertificatesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SigningCertificate = schema.new({
    id = id.from(_N, "SigningCertificate"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "SigningCertificate", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificateId = schema.new({
            id = id.from(_N, "SigningCertificate", "CertificateId"),
            type = "string",
            name = "CertificateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificateBody = schema.new({
            id = id.from(_N, "SigningCertificate", "CertificateBody"),
            type = "string",
            name = "CertificateBody",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "SigningCertificate", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UploadDate = schema.new({
            id = id.from(_N, "SigningCertificate", "UploadDate"),
            type = "timestamp",
            name = "UploadDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListSigningCertificatesOutput = schema.new({
    id = id.from(_N, "ListSigningCertificatesOutput"),
    type = "structure",
    members = {
        Certificates = schema.new({
            id = id.from(_N, "ListSigningCertificatesOutput", "Certificates"),
            type = "list",
            name = "Certificates",
            target_id = prelude.Document.id,
            list_member = M.SigningCertificate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListSigningCertificatesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListSigningCertificatesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSSHPublicKeysInput = schema.new({
    id = id.from(_N, "ListSSHPublicKeysInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ListSSHPublicKeysInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListSSHPublicKeysInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListSSHPublicKeysInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SSHPublicKeyMetadata = schema.new({
    id = id.from(_N, "SSHPublicKeyMetadata"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "SSHPublicKeyMetadata", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SSHPublicKeyId = schema.new({
            id = id.from(_N, "SSHPublicKeyMetadata", "SSHPublicKeyId"),
            type = "string",
            name = "SSHPublicKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "SSHPublicKeyMetadata", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UploadDate = schema.new({
            id = id.from(_N, "SSHPublicKeyMetadata", "UploadDate"),
            type = "timestamp",
            name = "UploadDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListSSHPublicKeysOutput = schema.new({
    id = id.from(_N, "ListSSHPublicKeysOutput"),
    type = "structure",
    members = {
        SSHPublicKeys = schema.new({
            id = id.from(_N, "ListSSHPublicKeysOutput", "SSHPublicKeys"),
            type = "list",
            name = "SSHPublicKeys",
            target_id = prelude.Document.id,
            list_member = M.SSHPublicKeyMetadata,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListSSHPublicKeysOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListSSHPublicKeysOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUserPoliciesInput = schema.new({
    id = id.from(_N, "ListUserPoliciesInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ListUserPoliciesInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListUserPoliciesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListUserPoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListUserPoliciesOutput = schema.new({
    id = id.from(_N, "ListUserPoliciesOutput"),
    type = "structure",
    members = {
        PolicyNames = schema.new({
            id = id.from(_N, "ListUserPoliciesOutput", "PolicyNames"),
            type = "list",
            name = "PolicyNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListUserPoliciesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListUserPoliciesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUsersInput = schema.new({
    id = id.from(_N, "ListUsersInput"),
    type = "structure",
    members = {
        PathPrefix = schema.new({
            id = id.from(_N, "ListUsersInput", "PathPrefix"),
            type = "string",
            name = "PathPrefix",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListUsersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListUsersInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListUsersOutput = schema.new({
    id = id.from(_N, "ListUsersOutput"),
    type = "structure",
    members = {
        Users = schema.new({
            id = id.from(_N, "ListUsersOutput", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = M.User,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListUsersOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListUsersOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUserTagsInput = schema.new({
    id = id.from(_N, "ListUserTagsInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ListUserTagsInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListUserTagsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListUserTagsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListUserTagsOutput = schema.new({
    id = id.from(_N, "ListUserTagsOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListUserTagsOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListUserTagsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListUserTagsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVirtualMFADevicesInput = schema.new({
    id = id.from(_N, "ListVirtualMFADevicesInput"),
    type = "structure",
    members = {
        AssignmentStatus = schema.new({
            id = id.from(_N, "ListVirtualMFADevicesInput", "AssignmentStatus"),
            type = "string",
            name = "AssignmentStatus",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListVirtualMFADevicesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListVirtualMFADevicesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListVirtualMFADevicesOutput = schema.new({
    id = id.from(_N, "ListVirtualMFADevicesOutput"),
    type = "structure",
    members = {
        VirtualMFADevices = schema.new({
            id = id.from(_N, "ListVirtualMFADevicesOutput", "VirtualMFADevices"),
            type = "list",
            name = "VirtualMFADevices",
            target_id = prelude.Document.id,
            list_member = M.VirtualMFADevice,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListVirtualMFADevicesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListVirtualMFADevicesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.PutGroupPolicyInput = schema.new({
    id = id.from(_N, "PutGroupPolicyInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "PutGroupPolicyInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "PutGroupPolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "PutGroupPolicyInput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutGroupPolicyOutput = schema.new({
    id = id.from(_N, "PutGroupPolicyOutput"),
    type = "structure",
})

M.PutRolePermissionsBoundaryInput = schema.new({
    id = id.from(_N, "PutRolePermissionsBoundaryInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "PutRolePermissionsBoundaryInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionsBoundary = schema.new({
            id = id.from(_N, "PutRolePermissionsBoundaryInput", "PermissionsBoundary"),
            type = "string",
            name = "PermissionsBoundary",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutRolePermissionsBoundaryOutput = schema.new({
    id = id.from(_N, "PutRolePermissionsBoundaryOutput"),
    type = "structure",
})

M.PutRolePolicyInput = schema.new({
    id = id.from(_N, "PutRolePolicyInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "PutRolePolicyInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "PutRolePolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "PutRolePolicyInput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutRolePolicyOutput = schema.new({
    id = id.from(_N, "PutRolePolicyOutput"),
    type = "structure",
})

M.PutUserPermissionsBoundaryInput = schema.new({
    id = id.from(_N, "PutUserPermissionsBoundaryInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "PutUserPermissionsBoundaryInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionsBoundary = schema.new({
            id = id.from(_N, "PutUserPermissionsBoundaryInput", "PermissionsBoundary"),
            type = "string",
            name = "PermissionsBoundary",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutUserPermissionsBoundaryOutput = schema.new({
    id = id.from(_N, "PutUserPermissionsBoundaryOutput"),
    type = "structure",
})

M.PutUserPolicyInput = schema.new({
    id = id.from(_N, "PutUserPolicyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "PutUserPolicyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "PutUserPolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "PutUserPolicyInput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutUserPolicyOutput = schema.new({
    id = id.from(_N, "PutUserPolicyOutput"),
    type = "structure",
})

M.RejectDelegationRequestInput = schema.new({
    id = id.from(_N, "RejectDelegationRequestInput"),
    type = "structure",
    members = {
        DelegationRequestId = schema.new({
            id = id.from(_N, "RejectDelegationRequestInput", "DelegationRequestId"),
            type = "string",
            name = "DelegationRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notes = schema.new({
            id = id.from(_N, "RejectDelegationRequestInput", "Notes"),
            type = "string",
            name = "Notes",
            target_id = prelude.String.id,
        }),
    },
})

M.RejectDelegationRequestOutput = schema.new({
    id = id.from(_N, "RejectDelegationRequestOutput"),
    type = "structure",
})

M.RemoveClientIDFromOpenIDConnectProviderInput = schema.new({
    id = id.from(_N, "RemoveClientIDFromOpenIDConnectProviderInput"),
    type = "structure",
    members = {
        OpenIDConnectProviderArn = schema.new({
            id = id.from(_N, "RemoveClientIDFromOpenIDConnectProviderInput", "OpenIDConnectProviderArn"),
            type = "string",
            name = "OpenIDConnectProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientID = schema.new({
            id = id.from(_N, "RemoveClientIDFromOpenIDConnectProviderInput", "ClientID"),
            type = "string",
            name = "ClientID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveClientIDFromOpenIDConnectProviderOutput = schema.new({
    id = id.from(_N, "RemoveClientIDFromOpenIDConnectProviderOutput"),
    type = "structure",
})

M.RemoveRoleFromInstanceProfileInput = schema.new({
    id = id.from(_N, "RemoveRoleFromInstanceProfileInput"),
    type = "structure",
    members = {
        InstanceProfileName = schema.new({
            id = id.from(_N, "RemoveRoleFromInstanceProfileInput", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleName = schema.new({
            id = id.from(_N, "RemoveRoleFromInstanceProfileInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveRoleFromInstanceProfileOutput = schema.new({
    id = id.from(_N, "RemoveRoleFromInstanceProfileOutput"),
    type = "structure",
})

M.RemoveUserFromGroupInput = schema.new({
    id = id.from(_N, "RemoveUserFromGroupInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "RemoveUserFromGroupInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "RemoveUserFromGroupInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveUserFromGroupOutput = schema.new({
    id = id.from(_N, "RemoveUserFromGroupOutput"),
    type = "structure",
})

M.ResetServiceSpecificCredentialInput = schema.new({
    id = id.from(_N, "ResetServiceSpecificCredentialInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ResetServiceSpecificCredentialInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        ServiceSpecificCredentialId = schema.new({
            id = id.from(_N, "ResetServiceSpecificCredentialInput", "ServiceSpecificCredentialId"),
            type = "string",
            name = "ServiceSpecificCredentialId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResetServiceSpecificCredentialOutput = schema.new({
    id = id.from(_N, "ResetServiceSpecificCredentialOutput"),
    type = "structure",
    members = {
        ServiceSpecificCredential = schema.new({
            id = id.from(_N, "ResetServiceSpecificCredentialOutput", "ServiceSpecificCredential"),
            type = "structure",
            name = "ServiceSpecificCredential",
            target_id = id.from(_N, "ServiceSpecificCredential"),
            target = M.ServiceSpecificCredential,
        }),
    },
})

M.ResyncMFADeviceInput = schema.new({
    id = id.from(_N, "ResyncMFADeviceInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "ResyncMFADeviceInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "ResyncMFADeviceInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationCode1 = schema.new({
            id = id.from(_N, "ResyncMFADeviceInput", "AuthenticationCode1"),
            type = "string",
            name = "AuthenticationCode1",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationCode2 = schema.new({
            id = id.from(_N, "ResyncMFADeviceInput", "AuthenticationCode2"),
            type = "string",
            name = "AuthenticationCode2",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResyncMFADeviceOutput = schema.new({
    id = id.from(_N, "ResyncMFADeviceOutput"),
    type = "structure",
})

M.SendDelegationTokenInput = schema.new({
    id = id.from(_N, "SendDelegationTokenInput"),
    type = "structure",
    members = {
        DelegationRequestId = schema.new({
            id = id.from(_N, "SendDelegationTokenInput", "DelegationRequestId"),
            type = "string",
            name = "DelegationRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SendDelegationTokenOutput = schema.new({
    id = id.from(_N, "SendDelegationTokenOutput"),
    type = "structure",
})

M.SetDefaultPolicyVersionInput = schema.new({
    id = id.from(_N, "SetDefaultPolicyVersionInput"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "SetDefaultPolicyVersionInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "SetDefaultPolicyVersionInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetDefaultPolicyVersionOutput = schema.new({
    id = id.from(_N, "SetDefaultPolicyVersionOutput"),
    type = "structure",
})

M.SetSecurityTokenServicePreferencesInput = schema.new({
    id = id.from(_N, "SetSecurityTokenServicePreferencesInput"),
    type = "structure",
    members = {
        GlobalEndpointTokenVersion = schema.new({
            id = id.from(_N, "SetSecurityTokenServicePreferencesInput", "GlobalEndpointTokenVersion"),
            type = "string",
            name = "GlobalEndpointTokenVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetSecurityTokenServicePreferencesOutput = schema.new({
    id = id.from(_N, "SetSecurityTokenServicePreferencesOutput"),
    type = "structure",
})

M.PolicyEvaluationException = schema.new({
    id = id.from(_N, "PolicyEvaluationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PolicyEvaluationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ContextEntry = schema.new({
    id = id.from(_N, "ContextEntry"),
    type = "structure",
    members = {
        ContextKeyName = schema.new({
            id = id.from(_N, "ContextEntry", "ContextKeyName"),
            type = "string",
            name = "ContextKeyName",
            target_id = prelude.String.id,
        }),
        ContextKeyValues = schema.new({
            id = id.from(_N, "ContextEntry", "ContextKeyValues"),
            type = "list",
            name = "ContextKeyValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ContextKeyType = schema.new({
            id = id.from(_N, "ContextEntry", "ContextKeyType"),
            type = "string",
            name = "ContextKeyType",
            target_id = prelude.String.id,
        }),
    },
})

M.SimulateCustomPolicyInput = schema.new({
    id = id.from(_N, "SimulateCustomPolicyInput"),
    type = "structure",
    members = {
        PolicyInputList = schema.new({
            id = id.from(_N, "SimulateCustomPolicyInput", "PolicyInputList"),
            type = "list",
            name = "PolicyInputList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionsBoundaryPolicyInputList = schema.new({
            id = id.from(_N, "SimulateCustomPolicyInput", "PermissionsBoundaryPolicyInputList"),
            type = "list",
            name = "PermissionsBoundaryPolicyInputList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ActionNames = schema.new({
            id = id.from(_N, "SimulateCustomPolicyInput", "ActionNames"),
            type = "list",
            name = "ActionNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArns = schema.new({
            id = id.from(_N, "SimulateCustomPolicyInput", "ResourceArns"),
            type = "list",
            name = "ResourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ResourcePolicy = schema.new({
            id = id.from(_N, "SimulateCustomPolicyInput", "ResourcePolicy"),
            type = "string",
            name = "ResourcePolicy",
            target_id = prelude.String.id,
        }),
        ResourceOwner = schema.new({
            id = id.from(_N, "SimulateCustomPolicyInput", "ResourceOwner"),
            type = "string",
            name = "ResourceOwner",
            target_id = prelude.String.id,
        }),
        CallerArn = schema.new({
            id = id.from(_N, "SimulateCustomPolicyInput", "CallerArn"),
            type = "string",
            name = "CallerArn",
            target_id = prelude.String.id,
        }),
        ContextEntries = schema.new({
            id = id.from(_N, "SimulateCustomPolicyInput", "ContextEntries"),
            type = "list",
            name = "ContextEntries",
            target_id = prelude.Document.id,
            list_member = M.ContextEntry,
        }),
        ResourceHandlingOption = schema.new({
            id = id.from(_N, "SimulateCustomPolicyInput", "ResourceHandlingOption"),
            type = "string",
            name = "ResourceHandlingOption",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "SimulateCustomPolicyInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "SimulateCustomPolicyInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.Position = schema.new({
    id = id.from(_N, "Position"),
    type = "structure",
    members = {
        Line = schema.new({
            id = id.from(_N, "Position", "Line"),
            type = "integer",
            name = "Line",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Column = schema.new({
            id = id.from(_N, "Position", "Column"),
            type = "integer",
            name = "Column",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.Statement = schema.new({
    id = id.from(_N, "Statement"),
    type = "structure",
    members = {
        SourcePolicyId = schema.new({
            id = id.from(_N, "Statement", "SourcePolicyId"),
            type = "string",
            name = "SourcePolicyId",
            target_id = prelude.String.id,
        }),
        SourcePolicyType = schema.new({
            id = id.from(_N, "Statement", "SourcePolicyType"),
            type = "string",
            name = "SourcePolicyType",
            target_id = prelude.String.id,
        }),
        StartPosition = schema.new({
            id = id.from(_N, "Statement", "StartPosition"),
            type = "structure",
            name = "StartPosition",
            target_id = id.from(_N, "Position"),
            target = M.Position,
        }),
        EndPosition = schema.new({
            id = id.from(_N, "Statement", "EndPosition"),
            type = "structure",
            name = "EndPosition",
            target_id = id.from(_N, "Position"),
            target = M.Position,
        }),
    },
})

M.OrganizationsDecisionDetail = schema.new({
    id = id.from(_N, "OrganizationsDecisionDetail"),
    type = "structure",
    members = {
        AllowedByOrganizations = schema.new({
            id = id.from(_N, "OrganizationsDecisionDetail", "AllowedByOrganizations"),
            type = "boolean",
            name = "AllowedByOrganizations",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PermissionsBoundaryDecisionDetail = schema.new({
    id = id.from(_N, "PermissionsBoundaryDecisionDetail"),
    type = "structure",
    members = {
        AllowedByPermissionsBoundary = schema.new({
            id = id.from(_N, "PermissionsBoundaryDecisionDetail", "AllowedByPermissionsBoundary"),
            type = "boolean",
            name = "AllowedByPermissionsBoundary",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ResourceSpecificResult = schema.new({
    id = id.from(_N, "ResourceSpecificResult"),
    type = "structure",
    members = {
        EvalResourceName = schema.new({
            id = id.from(_N, "ResourceSpecificResult", "EvalResourceName"),
            type = "string",
            name = "EvalResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EvalResourceDecision = schema.new({
            id = id.from(_N, "ResourceSpecificResult", "EvalResourceDecision"),
            type = "string",
            name = "EvalResourceDecision",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MatchedStatements = schema.new({
            id = id.from(_N, "ResourceSpecificResult", "MatchedStatements"),
            type = "list",
            name = "MatchedStatements",
            target_id = prelude.Document.id,
            list_member = M.Statement,
        }),
        MissingContextValues = schema.new({
            id = id.from(_N, "ResourceSpecificResult", "MissingContextValues"),
            type = "list",
            name = "MissingContextValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        EvalDecisionDetails = schema.new({
            id = id.from(_N, "ResourceSpecificResult", "EvalDecisionDetails"),
            type = "map",
            name = "EvalDecisionDetails",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        PermissionsBoundaryDecisionDetail = schema.new({
            id = id.from(_N, "ResourceSpecificResult", "PermissionsBoundaryDecisionDetail"),
            type = "structure",
            name = "PermissionsBoundaryDecisionDetail",
            target_id = id.from(_N, "PermissionsBoundaryDecisionDetail"),
            target = M.PermissionsBoundaryDecisionDetail,
        }),
    },
})

M.EvaluationResult = schema.new({
    id = id.from(_N, "EvaluationResult"),
    type = "structure",
    members = {
        EvalActionName = schema.new({
            id = id.from(_N, "EvaluationResult", "EvalActionName"),
            type = "string",
            name = "EvalActionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EvalResourceName = schema.new({
            id = id.from(_N, "EvaluationResult", "EvalResourceName"),
            type = "string",
            name = "EvalResourceName",
            target_id = prelude.String.id,
        }),
        EvalDecision = schema.new({
            id = id.from(_N, "EvaluationResult", "EvalDecision"),
            type = "string",
            name = "EvalDecision",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MatchedStatements = schema.new({
            id = id.from(_N, "EvaluationResult", "MatchedStatements"),
            type = "list",
            name = "MatchedStatements",
            target_id = prelude.Document.id,
            list_member = M.Statement,
        }),
        MissingContextValues = schema.new({
            id = id.from(_N, "EvaluationResult", "MissingContextValues"),
            type = "list",
            name = "MissingContextValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OrganizationsDecisionDetail = schema.new({
            id = id.from(_N, "EvaluationResult", "OrganizationsDecisionDetail"),
            type = "structure",
            name = "OrganizationsDecisionDetail",
            target_id = id.from(_N, "OrganizationsDecisionDetail"),
            target = M.OrganizationsDecisionDetail,
        }),
        PermissionsBoundaryDecisionDetail = schema.new({
            id = id.from(_N, "EvaluationResult", "PermissionsBoundaryDecisionDetail"),
            type = "structure",
            name = "PermissionsBoundaryDecisionDetail",
            target_id = id.from(_N, "PermissionsBoundaryDecisionDetail"),
            target = M.PermissionsBoundaryDecisionDetail,
        }),
        EvalDecisionDetails = schema.new({
            id = id.from(_N, "EvaluationResult", "EvalDecisionDetails"),
            type = "map",
            name = "EvalDecisionDetails",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ResourceSpecificResults = schema.new({
            id = id.from(_N, "EvaluationResult", "ResourceSpecificResults"),
            type = "list",
            name = "ResourceSpecificResults",
            target_id = prelude.Document.id,
            list_member = M.ResourceSpecificResult,
        }),
    },
})

M.SimulateCustomPolicyOutput = schema.new({
    id = id.from(_N, "SimulateCustomPolicyOutput"),
    type = "structure",
    members = {
        EvaluationResults = schema.new({
            id = id.from(_N, "SimulateCustomPolicyOutput", "EvaluationResults"),
            type = "list",
            name = "EvaluationResults",
            target_id = prelude.Document.id,
            list_member = M.EvaluationResult,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "SimulateCustomPolicyOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "SimulateCustomPolicyOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.SimulatePrincipalPolicyInput = schema.new({
    id = id.from(_N, "SimulatePrincipalPolicyInput"),
    type = "structure",
    members = {
        PolicySourceArn = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "PolicySourceArn"),
            type = "string",
            name = "PolicySourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyInputList = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "PolicyInputList"),
            type = "list",
            name = "PolicyInputList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PermissionsBoundaryPolicyInputList = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "PermissionsBoundaryPolicyInputList"),
            type = "list",
            name = "PermissionsBoundaryPolicyInputList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ActionNames = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "ActionNames"),
            type = "list",
            name = "ActionNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArns = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "ResourceArns"),
            type = "list",
            name = "ResourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ResourcePolicy = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "ResourcePolicy"),
            type = "string",
            name = "ResourcePolicy",
            target_id = prelude.String.id,
        }),
        ResourceOwner = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "ResourceOwner"),
            type = "string",
            name = "ResourceOwner",
            target_id = prelude.String.id,
        }),
        CallerArn = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "CallerArn"),
            type = "string",
            name = "CallerArn",
            target_id = prelude.String.id,
        }),
        ContextEntries = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "ContextEntries"),
            type = "list",
            name = "ContextEntries",
            target_id = prelude.Document.id,
            list_member = M.ContextEntry,
        }),
        ResourceHandlingOption = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "ResourceHandlingOption"),
            type = "string",
            name = "ResourceHandlingOption",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.SimulatePrincipalPolicyOutput = schema.new({
    id = id.from(_N, "SimulatePrincipalPolicyOutput"),
    type = "structure",
    members = {
        EvaluationResults = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyOutput", "EvaluationResults"),
            type = "list",
            name = "EvaluationResults",
            target_id = prelude.Document.id,
            list_member = M.EvaluationResult,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "SimulatePrincipalPolicyOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.TagInstanceProfileInput = schema.new({
    id = id.from(_N, "TagInstanceProfileInput"),
    type = "structure",
    members = {
        InstanceProfileName = schema.new({
            id = id.from(_N, "TagInstanceProfileInput", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagInstanceProfileInput", "Tags"),
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

M.TagInstanceProfileOutput = schema.new({
    id = id.from(_N, "TagInstanceProfileOutput"),
    type = "structure",
})

M.TagMFADeviceInput = schema.new({
    id = id.from(_N, "TagMFADeviceInput"),
    type = "structure",
    members = {
        SerialNumber = schema.new({
            id = id.from(_N, "TagMFADeviceInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagMFADeviceInput", "Tags"),
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

M.TagMFADeviceOutput = schema.new({
    id = id.from(_N, "TagMFADeviceOutput"),
    type = "structure",
})

M.TagOpenIDConnectProviderInput = schema.new({
    id = id.from(_N, "TagOpenIDConnectProviderInput"),
    type = "structure",
    members = {
        OpenIDConnectProviderArn = schema.new({
            id = id.from(_N, "TagOpenIDConnectProviderInput", "OpenIDConnectProviderArn"),
            type = "string",
            name = "OpenIDConnectProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagOpenIDConnectProviderInput", "Tags"),
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

M.TagOpenIDConnectProviderOutput = schema.new({
    id = id.from(_N, "TagOpenIDConnectProviderOutput"),
    type = "structure",
})

M.TagPolicyInput = schema.new({
    id = id.from(_N, "TagPolicyInput"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "TagPolicyInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagPolicyInput", "Tags"),
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

M.TagPolicyOutput = schema.new({
    id = id.from(_N, "TagPolicyOutput"),
    type = "structure",
})

M.TagRoleInput = schema.new({
    id = id.from(_N, "TagRoleInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "TagRoleInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagRoleInput", "Tags"),
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

M.TagRoleOutput = schema.new({
    id = id.from(_N, "TagRoleOutput"),
    type = "structure",
})

M.TagSAMLProviderInput = schema.new({
    id = id.from(_N, "TagSAMLProviderInput"),
    type = "structure",
    members = {
        SAMLProviderArn = schema.new({
            id = id.from(_N, "TagSAMLProviderInput", "SAMLProviderArn"),
            type = "string",
            name = "SAMLProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagSAMLProviderInput", "Tags"),
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

M.TagSAMLProviderOutput = schema.new({
    id = id.from(_N, "TagSAMLProviderOutput"),
    type = "structure",
})

M.TagServerCertificateInput = schema.new({
    id = id.from(_N, "TagServerCertificateInput"),
    type = "structure",
    members = {
        ServerCertificateName = schema.new({
            id = id.from(_N, "TagServerCertificateInput", "ServerCertificateName"),
            type = "string",
            name = "ServerCertificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagServerCertificateInput", "Tags"),
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

M.TagServerCertificateOutput = schema.new({
    id = id.from(_N, "TagServerCertificateOutput"),
    type = "structure",
})

M.TagUserInput = schema.new({
    id = id.from(_N, "TagUserInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "TagUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagUserInput", "Tags"),
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

M.TagUserOutput = schema.new({
    id = id.from(_N, "TagUserOutput"),
    type = "structure",
})

M.UntagInstanceProfileInput = schema.new({
    id = id.from(_N, "UntagInstanceProfileInput"),
    type = "structure",
    members = {
        InstanceProfileName = schema.new({
            id = id.from(_N, "UntagInstanceProfileInput", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagInstanceProfileInput", "TagKeys"),
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

M.UntagInstanceProfileOutput = schema.new({
    id = id.from(_N, "UntagInstanceProfileOutput"),
    type = "structure",
})

M.UntagMFADeviceInput = schema.new({
    id = id.from(_N, "UntagMFADeviceInput"),
    type = "structure",
    members = {
        SerialNumber = schema.new({
            id = id.from(_N, "UntagMFADeviceInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagMFADeviceInput", "TagKeys"),
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

M.UntagMFADeviceOutput = schema.new({
    id = id.from(_N, "UntagMFADeviceOutput"),
    type = "structure",
})

M.UntagOpenIDConnectProviderInput = schema.new({
    id = id.from(_N, "UntagOpenIDConnectProviderInput"),
    type = "structure",
    members = {
        OpenIDConnectProviderArn = schema.new({
            id = id.from(_N, "UntagOpenIDConnectProviderInput", "OpenIDConnectProviderArn"),
            type = "string",
            name = "OpenIDConnectProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagOpenIDConnectProviderInput", "TagKeys"),
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

M.UntagOpenIDConnectProviderOutput = schema.new({
    id = id.from(_N, "UntagOpenIDConnectProviderOutput"),
    type = "structure",
})

M.UntagPolicyInput = schema.new({
    id = id.from(_N, "UntagPolicyInput"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "UntagPolicyInput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagPolicyInput", "TagKeys"),
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

M.UntagPolicyOutput = schema.new({
    id = id.from(_N, "UntagPolicyOutput"),
    type = "structure",
})

M.UntagRoleInput = schema.new({
    id = id.from(_N, "UntagRoleInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "UntagRoleInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagRoleInput", "TagKeys"),
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

M.UntagRoleOutput = schema.new({
    id = id.from(_N, "UntagRoleOutput"),
    type = "structure",
})

M.UntagSAMLProviderInput = schema.new({
    id = id.from(_N, "UntagSAMLProviderInput"),
    type = "structure",
    members = {
        SAMLProviderArn = schema.new({
            id = id.from(_N, "UntagSAMLProviderInput", "SAMLProviderArn"),
            type = "string",
            name = "SAMLProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagSAMLProviderInput", "TagKeys"),
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

M.UntagSAMLProviderOutput = schema.new({
    id = id.from(_N, "UntagSAMLProviderOutput"),
    type = "structure",
})

M.UntagServerCertificateInput = schema.new({
    id = id.from(_N, "UntagServerCertificateInput"),
    type = "structure",
    members = {
        ServerCertificateName = schema.new({
            id = id.from(_N, "UntagServerCertificateInput", "ServerCertificateName"),
            type = "string",
            name = "ServerCertificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagServerCertificateInput", "TagKeys"),
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

M.UntagServerCertificateOutput = schema.new({
    id = id.from(_N, "UntagServerCertificateOutput"),
    type = "structure",
})

M.UntagUserInput = schema.new({
    id = id.from(_N, "UntagUserInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "UntagUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagUserInput", "TagKeys"),
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

M.UntagUserOutput = schema.new({
    id = id.from(_N, "UntagUserOutput"),
    type = "structure",
})

M.UpdateAccessKeyInput = schema.new({
    id = id.from(_N, "UpdateAccessKeyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "UpdateAccessKeyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        AccessKeyId = schema.new({
            id = id.from(_N, "UpdateAccessKeyInput", "AccessKeyId"),
            type = "string",
            name = "AccessKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateAccessKeyInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAccessKeyOutput = schema.new({
    id = id.from(_N, "UpdateAccessKeyOutput"),
    type = "structure",
})

M.UpdateAccountPasswordPolicyInput = schema.new({
    id = id.from(_N, "UpdateAccountPasswordPolicyInput"),
    type = "structure",
    members = {
        MinimumPasswordLength = schema.new({
            id = id.from(_N, "UpdateAccountPasswordPolicyInput", "MinimumPasswordLength"),
            type = "integer",
            name = "MinimumPasswordLength",
            target_id = prelude.Integer.id,
        }),
        RequireSymbols = schema.new({
            id = id.from(_N, "UpdateAccountPasswordPolicyInput", "RequireSymbols"),
            type = "boolean",
            name = "RequireSymbols",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RequireNumbers = schema.new({
            id = id.from(_N, "UpdateAccountPasswordPolicyInput", "RequireNumbers"),
            type = "boolean",
            name = "RequireNumbers",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RequireUppercaseCharacters = schema.new({
            id = id.from(_N, "UpdateAccountPasswordPolicyInput", "RequireUppercaseCharacters"),
            type = "boolean",
            name = "RequireUppercaseCharacters",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RequireLowercaseCharacters = schema.new({
            id = id.from(_N, "UpdateAccountPasswordPolicyInput", "RequireLowercaseCharacters"),
            type = "boolean",
            name = "RequireLowercaseCharacters",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        AllowUsersToChangePassword = schema.new({
            id = id.from(_N, "UpdateAccountPasswordPolicyInput", "AllowUsersToChangePassword"),
            type = "boolean",
            name = "AllowUsersToChangePassword",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        MaxPasswordAge = schema.new({
            id = id.from(_N, "UpdateAccountPasswordPolicyInput", "MaxPasswordAge"),
            type = "integer",
            name = "MaxPasswordAge",
            target_id = prelude.Integer.id,
        }),
        PasswordReusePrevention = schema.new({
            id = id.from(_N, "UpdateAccountPasswordPolicyInput", "PasswordReusePrevention"),
            type = "integer",
            name = "PasswordReusePrevention",
            target_id = prelude.Integer.id,
        }),
        HardExpiry = schema.new({
            id = id.from(_N, "UpdateAccountPasswordPolicyInput", "HardExpiry"),
            type = "boolean",
            name = "HardExpiry",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateAccountPasswordPolicyOutput = schema.new({
    id = id.from(_N, "UpdateAccountPasswordPolicyOutput"),
    type = "structure",
})

M.UpdateAssumeRolePolicyInput = schema.new({
    id = id.from(_N, "UpdateAssumeRolePolicyInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "UpdateAssumeRolePolicyInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "UpdateAssumeRolePolicyInput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAssumeRolePolicyOutput = schema.new({
    id = id.from(_N, "UpdateAssumeRolePolicyOutput"),
    type = "structure",
})

M.UpdateDelegationRequestInput = schema.new({
    id = id.from(_N, "UpdateDelegationRequestInput"),
    type = "structure",
    members = {
        DelegationRequestId = schema.new({
            id = id.from(_N, "UpdateDelegationRequestInput", "DelegationRequestId"),
            type = "string",
            name = "DelegationRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notes = schema.new({
            id = id.from(_N, "UpdateDelegationRequestInput", "Notes"),
            type = "string",
            name = "Notes",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDelegationRequestOutput = schema.new({
    id = id.from(_N, "UpdateDelegationRequestOutput"),
    type = "structure",
})

M.UpdateGroupInput = schema.new({
    id = id.from(_N, "UpdateGroupInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "UpdateGroupInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewPath = schema.new({
            id = id.from(_N, "UpdateGroupInput", "NewPath"),
            type = "string",
            name = "NewPath",
            target_id = prelude.String.id,
        }),
        NewGroupName = schema.new({
            id = id.from(_N, "UpdateGroupInput", "NewGroupName"),
            type = "string",
            name = "NewGroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGroupOutput = schema.new({
    id = id.from(_N, "UpdateGroupOutput"),
    type = "structure",
})

M.UpdateLoginProfileInput = schema.new({
    id = id.from(_N, "UpdateLoginProfileInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "UpdateLoginProfileInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Password = schema.new({
            id = id.from(_N, "UpdateLoginProfileInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        PasswordResetRequired = schema.new({
            id = id.from(_N, "UpdateLoginProfileInput", "PasswordResetRequired"),
            type = "boolean",
            name = "PasswordResetRequired",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateLoginProfileOutput = schema.new({
    id = id.from(_N, "UpdateLoginProfileOutput"),
    type = "structure",
})

M.UpdateOpenIDConnectProviderThumbprintInput = schema.new({
    id = id.from(_N, "UpdateOpenIDConnectProviderThumbprintInput"),
    type = "structure",
    members = {
        OpenIDConnectProviderArn = schema.new({
            id = id.from(_N, "UpdateOpenIDConnectProviderThumbprintInput", "OpenIDConnectProviderArn"),
            type = "string",
            name = "OpenIDConnectProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ThumbprintList = schema.new({
            id = id.from(_N, "UpdateOpenIDConnectProviderThumbprintInput", "ThumbprintList"),
            type = "list",
            name = "ThumbprintList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateOpenIDConnectProviderThumbprintOutput = schema.new({
    id = id.from(_N, "UpdateOpenIDConnectProviderThumbprintOutput"),
    type = "structure",
})

M.UpdateRoleInput = schema.new({
    id = id.from(_N, "UpdateRoleInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "UpdateRoleInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateRoleInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        MaxSessionDuration = schema.new({
            id = id.from(_N, "UpdateRoleInput", "MaxSessionDuration"),
            type = "integer",
            name = "MaxSessionDuration",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateRoleOutput = schema.new({
    id = id.from(_N, "UpdateRoleOutput"),
    type = "structure",
})

M.UpdateRoleDescriptionInput = schema.new({
    id = id.from(_N, "UpdateRoleDescriptionInput"),
    type = "structure",
    members = {
        RoleName = schema.new({
            id = id.from(_N, "UpdateRoleDescriptionInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateRoleDescriptionInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRoleDescriptionOutput = schema.new({
    id = id.from(_N, "UpdateRoleDescriptionOutput"),
    type = "structure",
    members = {
        Role = schema.new({
            id = id.from(_N, "UpdateRoleDescriptionOutput", "Role"),
            type = "structure",
            name = "Role",
            target_id = id.from(_N, "Role"),
            target = M.Role,
        }),
    },
})

M.UpdateSAMLProviderInput = schema.new({
    id = id.from(_N, "UpdateSAMLProviderInput"),
    type = "structure",
    members = {
        SAMLMetadataDocument = schema.new({
            id = id.from(_N, "UpdateSAMLProviderInput", "SAMLMetadataDocument"),
            type = "string",
            name = "SAMLMetadataDocument",
            target_id = prelude.String.id,
        }),
        SAMLProviderArn = schema.new({
            id = id.from(_N, "UpdateSAMLProviderInput", "SAMLProviderArn"),
            type = "string",
            name = "SAMLProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssertionEncryptionMode = schema.new({
            id = id.from(_N, "UpdateSAMLProviderInput", "AssertionEncryptionMode"),
            type = "string",
            name = "AssertionEncryptionMode",
            target_id = prelude.String.id,
        }),
        AddPrivateKey = schema.new({
            id = id.from(_N, "UpdateSAMLProviderInput", "AddPrivateKey"),
            type = "string",
            name = "AddPrivateKey",
            target_id = prelude.String.id,
        }),
        RemovePrivateKey = schema.new({
            id = id.from(_N, "UpdateSAMLProviderInput", "RemovePrivateKey"),
            type = "string",
            name = "RemovePrivateKey",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSAMLProviderOutput = schema.new({
    id = id.from(_N, "UpdateSAMLProviderOutput"),
    type = "structure",
    members = {
        SAMLProviderArn = schema.new({
            id = id.from(_N, "UpdateSAMLProviderOutput", "SAMLProviderArn"),
            type = "string",
            name = "SAMLProviderArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateServerCertificateInput = schema.new({
    id = id.from(_N, "UpdateServerCertificateInput"),
    type = "structure",
    members = {
        ServerCertificateName = schema.new({
            id = id.from(_N, "UpdateServerCertificateInput", "ServerCertificateName"),
            type = "string",
            name = "ServerCertificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewPath = schema.new({
            id = id.from(_N, "UpdateServerCertificateInput", "NewPath"),
            type = "string",
            name = "NewPath",
            target_id = prelude.String.id,
        }),
        NewServerCertificateName = schema.new({
            id = id.from(_N, "UpdateServerCertificateInput", "NewServerCertificateName"),
            type = "string",
            name = "NewServerCertificateName",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateServerCertificateOutput = schema.new({
    id = id.from(_N, "UpdateServerCertificateOutput"),
    type = "structure",
})

M.UpdateServiceSpecificCredentialInput = schema.new({
    id = id.from(_N, "UpdateServiceSpecificCredentialInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "UpdateServiceSpecificCredentialInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        ServiceSpecificCredentialId = schema.new({
            id = id.from(_N, "UpdateServiceSpecificCredentialInput", "ServiceSpecificCredentialId"),
            type = "string",
            name = "ServiceSpecificCredentialId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateServiceSpecificCredentialInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateServiceSpecificCredentialOutput = schema.new({
    id = id.from(_N, "UpdateServiceSpecificCredentialOutput"),
    type = "structure",
})

M.UpdateSigningCertificateInput = schema.new({
    id = id.from(_N, "UpdateSigningCertificateInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "UpdateSigningCertificateInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        CertificateId = schema.new({
            id = id.from(_N, "UpdateSigningCertificateInput", "CertificateId"),
            type = "string",
            name = "CertificateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateSigningCertificateInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSigningCertificateOutput = schema.new({
    id = id.from(_N, "UpdateSigningCertificateOutput"),
    type = "structure",
})

M.UpdateSSHPublicKeyInput = schema.new({
    id = id.from(_N, "UpdateSSHPublicKeyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "UpdateSSHPublicKeyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SSHPublicKeyId = schema.new({
            id = id.from(_N, "UpdateSSHPublicKeyInput", "SSHPublicKeyId"),
            type = "string",
            name = "SSHPublicKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateSSHPublicKeyInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSSHPublicKeyOutput = schema.new({
    id = id.from(_N, "UpdateSSHPublicKeyOutput"),
    type = "structure",
})

M.UpdateUserInput = schema.new({
    id = id.from(_N, "UpdateUserInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "UpdateUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewPath = schema.new({
            id = id.from(_N, "UpdateUserInput", "NewPath"),
            type = "string",
            name = "NewPath",
            target_id = prelude.String.id,
        }),
        NewUserName = schema.new({
            id = id.from(_N, "UpdateUserInput", "NewUserName"),
            type = "string",
            name = "NewUserName",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateUserOutput = schema.new({
    id = id.from(_N, "UpdateUserOutput"),
    type = "structure",
})

M.KeyPairMismatchException = schema.new({
    id = id.from(_N, "KeyPairMismatchException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KeyPairMismatchException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MalformedCertificateException = schema.new({
    id = id.from(_N, "MalformedCertificateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MalformedCertificateException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UploadServerCertificateInput = schema.new({
    id = id.from(_N, "UploadServerCertificateInput"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "UploadServerCertificateInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        ServerCertificateName = schema.new({
            id = id.from(_N, "UploadServerCertificateInput", "ServerCertificateName"),
            type = "string",
            name = "ServerCertificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificateBody = schema.new({
            id = id.from(_N, "UploadServerCertificateInput", "CertificateBody"),
            type = "string",
            name = "CertificateBody",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrivateKey = schema.new({
            id = id.from(_N, "UploadServerCertificateInput", "PrivateKey"),
            type = "string",
            name = "PrivateKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificateChain = schema.new({
            id = id.from(_N, "UploadServerCertificateInput", "CertificateChain"),
            type = "string",
            name = "CertificateChain",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "UploadServerCertificateInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.UploadServerCertificateOutput = schema.new({
    id = id.from(_N, "UploadServerCertificateOutput"),
    type = "structure",
    members = {
        ServerCertificateMetadata = schema.new({
            id = id.from(_N, "UploadServerCertificateOutput", "ServerCertificateMetadata"),
            type = "structure",
            name = "ServerCertificateMetadata",
            target_id = id.from(_N, "ServerCertificateMetadata"),
            target = M.ServerCertificateMetadata,
        }),
        Tags = schema.new({
            id = id.from(_N, "UploadServerCertificateOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.DuplicateCertificateException = schema.new({
    id = id.from(_N, "DuplicateCertificateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DuplicateCertificateException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidCertificateException = schema.new({
    id = id.from(_N, "InvalidCertificateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidCertificateException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UploadSigningCertificateInput = schema.new({
    id = id.from(_N, "UploadSigningCertificateInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "UploadSigningCertificateInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        CertificateBody = schema.new({
            id = id.from(_N, "UploadSigningCertificateInput", "CertificateBody"),
            type = "string",
            name = "CertificateBody",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UploadSigningCertificateOutput = schema.new({
    id = id.from(_N, "UploadSigningCertificateOutput"),
    type = "structure",
    members = {
        Certificate = schema.new({
            id = id.from(_N, "UploadSigningCertificateOutput", "Certificate"),
            type = "structure",
            name = "Certificate",
            target_id = id.from(_N, "SigningCertificate"),
            target = M.SigningCertificate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DuplicateSSHPublicKeyException = schema.new({
    id = id.from(_N, "DuplicateSSHPublicKeyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DuplicateSSHPublicKeyException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPublicKeyException = schema.new({
    id = id.from(_N, "InvalidPublicKeyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidPublicKeyException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UploadSSHPublicKeyInput = schema.new({
    id = id.from(_N, "UploadSSHPublicKeyInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "UploadSSHPublicKeyInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SSHPublicKeyBody = schema.new({
            id = id.from(_N, "UploadSSHPublicKeyInput", "SSHPublicKeyBody"),
            type = "string",
            name = "SSHPublicKeyBody",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UploadSSHPublicKeyOutput = schema.new({
    id = id.from(_N, "UploadSSHPublicKeyOutput"),
    type = "structure",
    members = {
        SSHPublicKey = schema.new({
            id = id.from(_N, "UploadSSHPublicKeyOutput", "SSHPublicKey"),
            type = "structure",
            name = "SSHPublicKey",
            target_id = id.from(_N, "SSHPublicKey"),
            target = M.SSHPublicKey,
        }),
    },
})

return M
