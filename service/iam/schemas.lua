

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.iam"

local M = {}

M.tagListType = schema.new({ type = "list", list_member = M.Tag })

M.clientIDListType = schema.new({ type = "list", list_member = prelude.String })

M.thumbprintListType = schema.new({ type = "list", list_member = prelude.String })

M.FeaturesListType = schema.new({ type = "list", list_member = prelude.String })

M.entityListType = schema.new({ type = "list", list_member = prelude.String })

M.userDetailListType = schema.new({ type = "list", list_member = M.UserDetail })

M.groupDetailListType = schema.new({ type = "list", list_member = M.GroupDetail })

M.roleDetailListType = schema.new({ type = "list", list_member = M.RoleDetail })

M.ManagedPolicyDetailListType = schema.new({ type = "list", list_member = M.ManagedPolicyDetail })

M.summaryMapType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Integer })

M.SimulationPolicyListType = schema.new({ type = "list", list_member = prelude.String })

M.ContextKeyNamesResultListType = schema.new({ type = "list", list_member = prelude.String })

M.userListType = schema.new({ type = "list", list_member = M.User })

M.CertificationMapType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AccessDetails = schema.new({ type = "list", list_member = M.AccessDetail })

M.privateKeyList = schema.new({ type = "list", list_member = M.SAMLPrivateKey })

M.ServicesLastAccessed = schema.new({ type = "list", list_member = M.ServiceLastAccessed })

M.entityDetailsListType = schema.new({ type = "list", list_member = M.EntityDetails })

M.accessKeyMetadataListType = schema.new({ type = "list", list_member = M.AccessKeyMetadata })

M.accountAliasListType = schema.new({ type = "list", list_member = prelude.String })

M.attachedPoliciesListType = schema.new({ type = "list", list_member = M.AttachedPolicy })

M.delegationRequestsListType = schema.new({ type = "list", list_member = M.DelegationRequest })

M.PolicyGroupListType = schema.new({ type = "list", list_member = M.PolicyGroup })

M.PolicyUserListType = schema.new({ type = "list", list_member = M.PolicyUser })

M.PolicyRoleListType = schema.new({ type = "list", list_member = M.PolicyRole })

M.policyNameListType = schema.new({ type = "list", list_member = prelude.String })

M.groupListType = schema.new({ type = "list", list_member = M.Group })

M.instanceProfileListType = schema.new({ type = "list", list_member = M.InstanceProfile })

M.mfaDeviceListType = schema.new({ type = "list", list_member = M.MFADevice })

M.OpenIDConnectProviderListType = schema.new({ type = "list", list_member = M.OpenIDConnectProviderListEntry })

M.policyListType = schema.new({ type = "list", list_member = M.Policy })

M.serviceNamespaceListType = schema.new({ type = "list", list_member = prelude.String })

M.listPolicyGrantingServiceAccessResponseListType = schema.new({ type = "list", list_member = M.ListPoliciesGrantingServiceAccessEntry })

M.policyDocumentVersionListType = schema.new({ type = "list", list_member = M.PolicyVersion })

M.roleListType = schema.new({ type = "list", list_member = M.Role })

M.SAMLProviderListType = schema.new({ type = "list", list_member = M.SAMLProviderListEntry })

M.serverCertificateMetadataListType = schema.new({ type = "list", list_member = M.ServerCertificateMetadata })

M.ServiceSpecificCredentialsListType = schema.new({ type = "list", list_member = M.ServiceSpecificCredentialMetadata })

M.certificateListType = schema.new({ type = "list", list_member = M.SigningCertificate })

M.SSHPublicKeyListType = schema.new({ type = "list", list_member = M.SSHPublicKeyMetadata })

M.virtualMFADeviceListType = schema.new({ type = "list", list_member = M.VirtualMFADevice })

M.ActionNameListType = schema.new({ type = "list", list_member = prelude.String })

M.ResourceNameListType = schema.new({ type = "list", list_member = prelude.String })

M.ContextEntryListType = schema.new({ type = "list", list_member = M.ContextEntry })

M.EvaluationResultsListType = schema.new({ type = "list", list_member = M.EvaluationResult })

M.tagKeyListType = schema.new({ type = "list", list_member = prelude.String })

M.policyParameterListType = schema.new({ type = "list", list_member = M.PolicyParameter })

M.rolePermissionRestrictionArnListType = schema.new({ type = "list", list_member = prelude.String })

M.RoleUsageListType = schema.new({ type = "list", list_member = M.RoleUsageType })

M.policyDetailListType = schema.new({ type = "list", list_member = M.PolicyDetail })

M.groupNameListType = schema.new({ type = "list", list_member = prelude.String })

M.TrackedActionsLastAccessed = schema.new({ type = "list", list_member = M.TrackedActionLastAccessed })

M.policyGrantingServiceAccessListType = schema.new({ type = "list", list_member = M.PolicyGrantingServiceAccess })

M.ContextKeyValueListType = schema.new({ type = "list", list_member = prelude.String })

M.StatementListType = schema.new({ type = "list", list_member = M.Statement })

M.EvalDecisionDetailsType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ResourceSpecificResultListType = schema.new({ type = "list", list_member = M.ResourceSpecificResult })

M.policyParameterValuesListType = schema.new({ type = "list", list_member = prelude.String })

M.ArnListType = schema.new({ type = "list", list_member = prelude.String })

M.AcceptDelegationRequestInput = schema.new({
   id = id.from(_N, "AcceptDelegationRequestRequest"),
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

M.AcceptDelegationRequestOutput = prelude.Unit

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
   id = id.from(_N, "AddClientIDToOpenIDConnectProviderRequest"),
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

M.AddClientIDToOpenIDConnectProviderOutput = prelude.Unit

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
   id = id.from(_N, "AddRoleToInstanceProfileRequest"),
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

M.AddRoleToInstanceProfileOutput = prelude.Unit

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
   id = id.from(_N, "AddUserToGroupRequest"),
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

M.AddUserToGroupOutput = prelude.Unit

M.AssociateDelegationRequestInput = schema.new({
   id = id.from(_N, "AssociateDelegationRequestRequest"),
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

M.AssociateDelegationRequestOutput = prelude.Unit

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
   id = id.from(_N, "AttachGroupPolicyRequest"),
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

M.AttachGroupPolicyOutput = prelude.Unit

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
   id = id.from(_N, "AttachRolePolicyRequest"),
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

M.AttachRolePolicyOutput = prelude.Unit

M.AttachUserPolicyInput = schema.new({
   id = id.from(_N, "AttachUserPolicyRequest"),
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

M.AttachUserPolicyOutput = prelude.Unit

M.ChangePasswordInput = schema.new({
   id = id.from(_N, "ChangePasswordRequest"),
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

M.ChangePasswordOutput = prelude.Unit

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
   id = id.from(_N, "CreateAccessKeyRequest"),
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
   id = id.from(_N, "CreateAccessKeyResponse"),
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
   id = id.from(_N, "CreateAccountAliasRequest"),
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

M.CreateAccountAliasOutput = prelude.Unit

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
   id = id.from(_N, "CreateDelegationRequestRequest"),
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
   id = id.from(_N, "CreateDelegationRequestResponse"),
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
   id = id.from(_N, "CreateGroupRequest"),
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
   id = id.from(_N, "CreateGroupResponse"),
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
   id = id.from(_N, "CreateInstanceProfileRequest"),
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
   id = id.from(_N, "CreateInstanceProfileResponse"),
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
   id = id.from(_N, "CreateLoginProfileRequest"),
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
   id = id.from(_N, "CreateLoginProfileResponse"),
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
   id = id.from(_N, "CreateOpenIDConnectProviderRequest"),
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
   id = id.from(_N, "CreateOpenIDConnectProviderResponse"),
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
   id = id.from(_N, "CreatePolicyRequest"),
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
   id = id.from(_N, "CreatePolicyResponse"),
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
   id = id.from(_N, "CreatePolicyVersionRequest"),
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
   id = id.from(_N, "CreatePolicyVersionResponse"),
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
   id = id.from(_N, "CreateRoleRequest"),
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
   id = id.from(_N, "CreateRoleResponse"),
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
   id = id.from(_N, "CreateSAMLProviderRequest"),
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
   id = id.from(_N, "CreateSAMLProviderResponse"),
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
   id = id.from(_N, "CreateServiceLinkedRoleRequest"),
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
   id = id.from(_N, "CreateServiceLinkedRoleResponse"),
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
   id = id.from(_N, "CreateServiceSpecificCredentialRequest"),
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
   id = id.from(_N, "CreateServiceSpecificCredentialResponse"),
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
   id = id.from(_N, "CreateUserRequest"),
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
   id = id.from(_N, "CreateUserResponse"),
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
   id = id.from(_N, "CreateVirtualMFADeviceRequest"),
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
   id = id.from(_N, "CreateVirtualMFADeviceResponse"),
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
   id = id.from(_N, "DeactivateMFADeviceRequest"),
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

M.DeactivateMFADeviceOutput = prelude.Unit

M.DeleteAccessKeyInput = schema.new({
   id = id.from(_N, "DeleteAccessKeyRequest"),
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

M.DeleteAccessKeyOutput = prelude.Unit

M.DeleteAccountAliasInput = schema.new({
   id = id.from(_N, "DeleteAccountAliasRequest"),
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

M.DeleteAccountAliasOutput = prelude.Unit

M.DeleteAccountPasswordPolicyInput = prelude.Unit

M.DeleteAccountPasswordPolicyOutput = prelude.Unit

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
   id = id.from(_N, "DeleteGroupRequest"),
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

M.DeleteGroupOutput = prelude.Unit

M.DeleteGroupPolicyInput = schema.new({
   id = id.from(_N, "DeleteGroupPolicyRequest"),
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

M.DeleteGroupPolicyOutput = prelude.Unit

M.DeleteInstanceProfileInput = schema.new({
   id = id.from(_N, "DeleteInstanceProfileRequest"),
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

M.DeleteInstanceProfileOutput = prelude.Unit

M.DeleteLoginProfileInput = schema.new({
   id = id.from(_N, "DeleteLoginProfileRequest"),
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

M.DeleteLoginProfileOutput = prelude.Unit

M.DeleteOpenIDConnectProviderInput = schema.new({
   id = id.from(_N, "DeleteOpenIDConnectProviderRequest"),
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

M.DeleteOpenIDConnectProviderOutput = prelude.Unit

M.DeletePolicyInput = schema.new({
   id = id.from(_N, "DeletePolicyRequest"),
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

M.DeletePolicyOutput = prelude.Unit

M.DeletePolicyVersionInput = schema.new({
   id = id.from(_N, "DeletePolicyVersionRequest"),
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

M.DeletePolicyVersionOutput = prelude.Unit

M.DeleteRoleInput = schema.new({
   id = id.from(_N, "DeleteRoleRequest"),
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

M.DeleteRoleOutput = prelude.Unit

M.DeleteRolePermissionsBoundaryInput = schema.new({
   id = id.from(_N, "DeleteRolePermissionsBoundaryRequest"),
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

M.DeleteRolePermissionsBoundaryOutput = prelude.Unit

M.DeleteRolePolicyInput = schema.new({
   id = id.from(_N, "DeleteRolePolicyRequest"),
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

M.DeleteRolePolicyOutput = prelude.Unit

M.DeleteSAMLProviderInput = schema.new({
   id = id.from(_N, "DeleteSAMLProviderRequest"),
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

M.DeleteSAMLProviderOutput = prelude.Unit

M.DeleteServerCertificateInput = schema.new({
   id = id.from(_N, "DeleteServerCertificateRequest"),
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

M.DeleteServerCertificateOutput = prelude.Unit

M.DeleteServiceLinkedRoleInput = schema.new({
   id = id.from(_N, "DeleteServiceLinkedRoleRequest"),
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
   id = id.from(_N, "DeleteServiceLinkedRoleResponse"),
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
   id = id.from(_N, "DeleteServiceSpecificCredentialRequest"),
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

M.DeleteServiceSpecificCredentialOutput = prelude.Unit

M.DeleteSigningCertificateInput = schema.new({
   id = id.from(_N, "DeleteSigningCertificateRequest"),
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

M.DeleteSigningCertificateOutput = prelude.Unit

M.DeleteSSHPublicKeyInput = schema.new({
   id = id.from(_N, "DeleteSSHPublicKeyRequest"),
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

M.DeleteSSHPublicKeyOutput = prelude.Unit

M.DeleteUserInput = schema.new({
   id = id.from(_N, "DeleteUserRequest"),
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

M.DeleteUserOutput = prelude.Unit

M.DeleteUserPermissionsBoundaryInput = schema.new({
   id = id.from(_N, "DeleteUserPermissionsBoundaryRequest"),
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

M.DeleteUserPermissionsBoundaryOutput = prelude.Unit

M.DeleteUserPolicyInput = schema.new({
   id = id.from(_N, "DeleteUserPolicyRequest"),
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

M.DeleteUserPolicyOutput = prelude.Unit

M.DeleteVirtualMFADeviceInput = schema.new({
   id = id.from(_N, "DeleteVirtualMFADeviceRequest"),
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

M.DeleteVirtualMFADeviceOutput = prelude.Unit

M.DetachGroupPolicyInput = schema.new({
   id = id.from(_N, "DetachGroupPolicyRequest"),
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

M.DetachGroupPolicyOutput = prelude.Unit

M.DetachRolePolicyInput = schema.new({
   id = id.from(_N, "DetachRolePolicyRequest"),
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

M.DetachRolePolicyOutput = prelude.Unit

M.DetachUserPolicyInput = schema.new({
   id = id.from(_N, "DetachUserPolicyRequest"),
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

M.DetachUserPolicyOutput = prelude.Unit

M.DisableOrganizationsRootCredentialsManagementInput = schema.new({
   id = id.from(_N, "DisableOrganizationsRootCredentialsManagementRequest"),
   type = "structure",
})

M.DisableOrganizationsRootCredentialsManagementOutput = schema.new({
   id = id.from(_N, "DisableOrganizationsRootCredentialsManagementResponse"),
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
   id = id.from(_N, "DisableOrganizationsRootSessionsRequest"),
   type = "structure",
})

M.DisableOrganizationsRootSessionsOutput = schema.new({
   id = id.from(_N, "DisableOrganizationsRootSessionsResponse"),
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

M.DisableOutboundWebIdentityFederationInput = prelude.Unit

M.DisableOutboundWebIdentityFederationOutput = prelude.Unit

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
   id = id.from(_N, "EnableMFADeviceRequest"),
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

M.EnableMFADeviceOutput = prelude.Unit

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
   id = id.from(_N, "EnableOrganizationsRootCredentialsManagementRequest"),
   type = "structure",
})

M.EnableOrganizationsRootCredentialsManagementOutput = schema.new({
   id = id.from(_N, "EnableOrganizationsRootCredentialsManagementResponse"),
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
   id = id.from(_N, "EnableOrganizationsRootSessionsRequest"),
   type = "structure",
})

M.EnableOrganizationsRootSessionsOutput = schema.new({
   id = id.from(_N, "EnableOrganizationsRootSessionsResponse"),
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

M.EnableOutboundWebIdentityFederationInput = prelude.Unit

M.EnableOutboundWebIdentityFederationOutput = schema.new({
   id = id.from(_N, "EnableOutboundWebIdentityFederationResponse"),
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

M.GenerateCredentialReportInput = prelude.Unit

M.GenerateCredentialReportOutput = schema.new({
   id = id.from(_N, "GenerateCredentialReportResponse"),
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
   id = id.from(_N, "GenerateOrganizationsAccessReportRequest"),
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
   id = id.from(_N, "GenerateOrganizationsAccessReportResponse"),
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
   id = id.from(_N, "GenerateServiceLastAccessedDetailsRequest"),
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
   id = id.from(_N, "GenerateServiceLastAccessedDetailsResponse"),
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
   id = id.from(_N, "GetAccessKeyLastUsedRequest"),
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
   id = id.from(_N, "GetAccessKeyLastUsedResponse"),
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
   id = id.from(_N, "GetAccountAuthorizationDetailsRequest"),
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
   id = id.from(_N, "GetAccountAuthorizationDetailsResponse"),
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

M.GetAccountPasswordPolicyInput = prelude.Unit

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
   id = id.from(_N, "GetAccountPasswordPolicyResponse"),
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

M.GetAccountSummaryInput = prelude.Unit

M.GetAccountSummaryOutput = schema.new({
   id = id.from(_N, "GetAccountSummaryResponse"),
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
   id = id.from(_N, "GetContextKeysForCustomPolicyRequest"),
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
   id = id.from(_N, "GetContextKeysForPolicyResponse"),
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
   id = id.from(_N, "GetContextKeysForPrincipalPolicyRequest"),
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
   id = id.from(_N, "GetContextKeysForPolicyResponse"),
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

M.GetCredentialReportInput = prelude.Unit

M.GetCredentialReportOutput = schema.new({
   id = id.from(_N, "GetCredentialReportResponse"),
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
   id = id.from(_N, "GetDelegationRequestRequest"),
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
   id = id.from(_N, "GetDelegationRequestResponse"),
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
   id = id.from(_N, "GetGroupRequest"),
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
   id = id.from(_N, "GetGroupResponse"),
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
   id = id.from(_N, "GetGroupPolicyRequest"),
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
   id = id.from(_N, "GetGroupPolicyResponse"),
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
   id = id.from(_N, "GetHumanReadableSummaryRequest"),
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
   id = id.from(_N, "GetHumanReadableSummaryResponse"),
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
   id = id.from(_N, "GetInstanceProfileRequest"),
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
   id = id.from(_N, "GetInstanceProfileResponse"),
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
   id = id.from(_N, "GetLoginProfileRequest"),
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
   id = id.from(_N, "GetLoginProfileResponse"),
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
   id = id.from(_N, "GetMFADeviceRequest"),
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
   id = id.from(_N, "GetMFADeviceResponse"),
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
   id = id.from(_N, "GetOpenIDConnectProviderRequest"),
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
   id = id.from(_N, "GetOpenIDConnectProviderResponse"),
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
   id = id.from(_N, "GetOrganizationsAccessReportRequest"),
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
   id = id.from(_N, "GetOrganizationsAccessReportResponse"),
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

M.GetOutboundWebIdentityFederationInfoInput = prelude.Unit

M.GetOutboundWebIdentityFederationInfoOutput = schema.new({
   id = id.from(_N, "GetOutboundWebIdentityFederationInfoResponse"),
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
   id = id.from(_N, "GetPolicyRequest"),
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
   id = id.from(_N, "GetPolicyResponse"),
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
   id = id.from(_N, "GetPolicyVersionRequest"),
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
   id = id.from(_N, "GetPolicyVersionResponse"),
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
   id = id.from(_N, "GetRoleRequest"),
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
   id = id.from(_N, "GetRoleResponse"),
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
   id = id.from(_N, "GetRolePolicyRequest"),
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
   id = id.from(_N, "GetRolePolicyResponse"),
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
   id = id.from(_N, "GetSAMLProviderRequest"),
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
   id = id.from(_N, "GetSAMLProviderResponse"),
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
   id = id.from(_N, "GetServerCertificateRequest"),
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
   id = id.from(_N, "GetServerCertificateResponse"),
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
   id = id.from(_N, "GetServiceLastAccessedDetailsRequest"),
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
   id = id.from(_N, "GetServiceLastAccessedDetailsResponse"),
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
   id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesRequest"),
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
   id = id.from(_N, "GetServiceLastAccessedDetailsWithEntitiesResponse"),
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
   id = id.from(_N, "GetServiceLinkedRoleDeletionStatusRequest"),
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
   id = id.from(_N, "GetServiceLinkedRoleDeletionStatusResponse"),
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
   id = id.from(_N, "GetSSHPublicKeyRequest"),
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
   id = id.from(_N, "GetSSHPublicKeyResponse"),
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
   id = id.from(_N, "GetUserRequest"),
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
   id = id.from(_N, "GetUserResponse"),
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
   id = id.from(_N, "GetUserPolicyRequest"),
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
   id = id.from(_N, "GetUserPolicyResponse"),
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
   id = id.from(_N, "ListAccessKeysRequest"),
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
   id = id.from(_N, "ListAccessKeysResponse"),
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
   id = id.from(_N, "ListAccountAliasesRequest"),
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
   id = id.from(_N, "ListAccountAliasesResponse"),
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
   id = id.from(_N, "ListAttachedGroupPoliciesRequest"),
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
   id = id.from(_N, "ListAttachedGroupPoliciesResponse"),
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
   id = id.from(_N, "ListAttachedRolePoliciesRequest"),
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
   id = id.from(_N, "ListAttachedRolePoliciesResponse"),
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
   id = id.from(_N, "ListAttachedUserPoliciesRequest"),
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
   id = id.from(_N, "ListAttachedUserPoliciesResponse"),
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
   id = id.from(_N, "ListDelegationRequestsRequest"),
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
   id = id.from(_N, "ListDelegationRequestsResponse"),
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
   id = id.from(_N, "ListEntitiesForPolicyRequest"),
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
   id = id.from(_N, "ListEntitiesForPolicyResponse"),
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
   id = id.from(_N, "ListGroupPoliciesRequest"),
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
   id = id.from(_N, "ListGroupPoliciesResponse"),
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
   id = id.from(_N, "ListGroupsRequest"),
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
   id = id.from(_N, "ListGroupsResponse"),
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
   id = id.from(_N, "ListGroupsForUserRequest"),
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
   id = id.from(_N, "ListGroupsForUserResponse"),
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
   id = id.from(_N, "ListInstanceProfilesRequest"),
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
   id = id.from(_N, "ListInstanceProfilesResponse"),
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
   id = id.from(_N, "ListInstanceProfilesForRoleRequest"),
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
   id = id.from(_N, "ListInstanceProfilesForRoleResponse"),
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
   id = id.from(_N, "ListInstanceProfileTagsRequest"),
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
   id = id.from(_N, "ListInstanceProfileTagsResponse"),
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
   id = id.from(_N, "ListMFADevicesRequest"),
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
   id = id.from(_N, "ListMFADevicesResponse"),
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
   id = id.from(_N, "ListMFADeviceTagsRequest"),
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
   id = id.from(_N, "ListMFADeviceTagsResponse"),
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
   id = id.from(_N, "ListOpenIDConnectProvidersRequest"),
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
   id = id.from(_N, "ListOpenIDConnectProvidersResponse"),
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
   id = id.from(_N, "ListOpenIDConnectProviderTagsRequest"),
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
   id = id.from(_N, "ListOpenIDConnectProviderTagsResponse"),
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
   id = id.from(_N, "ListOrganizationsFeaturesRequest"),
   type = "structure",
})

M.ListOrganizationsFeaturesOutput = schema.new({
   id = id.from(_N, "ListOrganizationsFeaturesResponse"),
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
   id = id.from(_N, "ListPoliciesRequest"),
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
   id = id.from(_N, "ListPoliciesResponse"),
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
   id = id.from(_N, "ListPoliciesGrantingServiceAccessRequest"),
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
   id = id.from(_N, "ListPoliciesGrantingServiceAccessResponse"),
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
   id = id.from(_N, "ListPolicyTagsRequest"),
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
   id = id.from(_N, "ListPolicyTagsResponse"),
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
   id = id.from(_N, "ListPolicyVersionsRequest"),
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
   id = id.from(_N, "ListPolicyVersionsResponse"),
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
   id = id.from(_N, "ListRolePoliciesRequest"),
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
   id = id.from(_N, "ListRolePoliciesResponse"),
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
   id = id.from(_N, "ListRolesRequest"),
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
   id = id.from(_N, "ListRolesResponse"),
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
   id = id.from(_N, "ListRoleTagsRequest"),
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
   id = id.from(_N, "ListRoleTagsResponse"),
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
   id = id.from(_N, "ListSAMLProvidersRequest"),
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
   id = id.from(_N, "ListSAMLProvidersResponse"),
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
   id = id.from(_N, "ListSAMLProviderTagsRequest"),
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
   id = id.from(_N, "ListSAMLProviderTagsResponse"),
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
   id = id.from(_N, "ListServerCertificatesRequest"),
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
   id = id.from(_N, "ListServerCertificatesResponse"),
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
   id = id.from(_N, "ListServerCertificateTagsRequest"),
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
   id = id.from(_N, "ListServerCertificateTagsResponse"),
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
   id = id.from(_N, "ListServiceSpecificCredentialsRequest"),
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
   id = id.from(_N, "ListServiceSpecificCredentialsResponse"),
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
   id = id.from(_N, "ListSigningCertificatesRequest"),
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
   id = id.from(_N, "ListSigningCertificatesResponse"),
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
   id = id.from(_N, "ListSSHPublicKeysRequest"),
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
   id = id.from(_N, "ListSSHPublicKeysResponse"),
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
   id = id.from(_N, "ListUserPoliciesRequest"),
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
   id = id.from(_N, "ListUserPoliciesResponse"),
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
   id = id.from(_N, "ListUsersRequest"),
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
   id = id.from(_N, "ListUsersResponse"),
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
   id = id.from(_N, "ListUserTagsRequest"),
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
   id = id.from(_N, "ListUserTagsResponse"),
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
   id = id.from(_N, "ListVirtualMFADevicesRequest"),
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
   id = id.from(_N, "ListVirtualMFADevicesResponse"),
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
   id = id.from(_N, "PutGroupPolicyRequest"),
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

M.PutGroupPolicyOutput = prelude.Unit

M.PutRolePermissionsBoundaryInput = schema.new({
   id = id.from(_N, "PutRolePermissionsBoundaryRequest"),
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

M.PutRolePermissionsBoundaryOutput = prelude.Unit

M.PutRolePolicyInput = schema.new({
   id = id.from(_N, "PutRolePolicyRequest"),
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

M.PutRolePolicyOutput = prelude.Unit

M.PutUserPermissionsBoundaryInput = schema.new({
   id = id.from(_N, "PutUserPermissionsBoundaryRequest"),
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

M.PutUserPermissionsBoundaryOutput = prelude.Unit

M.PutUserPolicyInput = schema.new({
   id = id.from(_N, "PutUserPolicyRequest"),
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

M.PutUserPolicyOutput = prelude.Unit

M.RejectDelegationRequestInput = schema.new({
   id = id.from(_N, "RejectDelegationRequestRequest"),
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

M.RejectDelegationRequestOutput = prelude.Unit

M.RemoveClientIDFromOpenIDConnectProviderInput = schema.new({
   id = id.from(_N, "RemoveClientIDFromOpenIDConnectProviderRequest"),
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

M.RemoveClientIDFromOpenIDConnectProviderOutput = prelude.Unit

M.RemoveRoleFromInstanceProfileInput = schema.new({
   id = id.from(_N, "RemoveRoleFromInstanceProfileRequest"),
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

M.RemoveRoleFromInstanceProfileOutput = prelude.Unit

M.RemoveUserFromGroupInput = schema.new({
   id = id.from(_N, "RemoveUserFromGroupRequest"),
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

M.RemoveUserFromGroupOutput = prelude.Unit

M.ResetServiceSpecificCredentialInput = schema.new({
   id = id.from(_N, "ResetServiceSpecificCredentialRequest"),
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
   id = id.from(_N, "ResetServiceSpecificCredentialResponse"),
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
   id = id.from(_N, "ResyncMFADeviceRequest"),
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

M.ResyncMFADeviceOutput = prelude.Unit

M.SendDelegationTokenInput = schema.new({
   id = id.from(_N, "SendDelegationTokenRequest"),
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

M.SendDelegationTokenOutput = prelude.Unit

M.SetDefaultPolicyVersionInput = schema.new({
   id = id.from(_N, "SetDefaultPolicyVersionRequest"),
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

M.SetDefaultPolicyVersionOutput = prelude.Unit

M.SetSecurityTokenServicePreferencesInput = schema.new({
   id = id.from(_N, "SetSecurityTokenServicePreferencesRequest"),
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

M.SetSecurityTokenServicePreferencesOutput = prelude.Unit

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
   id = id.from(_N, "SimulateCustomPolicyRequest"),
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
   id = id.from(_N, "SimulatePolicyResponse"),
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
   id = id.from(_N, "SimulatePrincipalPolicyRequest"),
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
   id = id.from(_N, "SimulatePolicyResponse"),
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
   id = id.from(_N, "TagInstanceProfileRequest"),
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

M.TagInstanceProfileOutput = prelude.Unit

M.TagMFADeviceInput = schema.new({
   id = id.from(_N, "TagMFADeviceRequest"),
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

M.TagMFADeviceOutput = prelude.Unit

M.TagOpenIDConnectProviderInput = schema.new({
   id = id.from(_N, "TagOpenIDConnectProviderRequest"),
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

M.TagOpenIDConnectProviderOutput = prelude.Unit

M.TagPolicyInput = schema.new({
   id = id.from(_N, "TagPolicyRequest"),
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

M.TagPolicyOutput = prelude.Unit

M.TagRoleInput = schema.new({
   id = id.from(_N, "TagRoleRequest"),
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

M.TagRoleOutput = prelude.Unit

M.TagSAMLProviderInput = schema.new({
   id = id.from(_N, "TagSAMLProviderRequest"),
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

M.TagSAMLProviderOutput = prelude.Unit

M.TagServerCertificateInput = schema.new({
   id = id.from(_N, "TagServerCertificateRequest"),
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

M.TagServerCertificateOutput = prelude.Unit

M.TagUserInput = schema.new({
   id = id.from(_N, "TagUserRequest"),
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

M.TagUserOutput = prelude.Unit

M.UntagInstanceProfileInput = schema.new({
   id = id.from(_N, "UntagInstanceProfileRequest"),
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

M.UntagInstanceProfileOutput = prelude.Unit

M.UntagMFADeviceInput = schema.new({
   id = id.from(_N, "UntagMFADeviceRequest"),
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

M.UntagMFADeviceOutput = prelude.Unit

M.UntagOpenIDConnectProviderInput = schema.new({
   id = id.from(_N, "UntagOpenIDConnectProviderRequest"),
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

M.UntagOpenIDConnectProviderOutput = prelude.Unit

M.UntagPolicyInput = schema.new({
   id = id.from(_N, "UntagPolicyRequest"),
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

M.UntagPolicyOutput = prelude.Unit

M.UntagRoleInput = schema.new({
   id = id.from(_N, "UntagRoleRequest"),
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

M.UntagRoleOutput = prelude.Unit

M.UntagSAMLProviderInput = schema.new({
   id = id.from(_N, "UntagSAMLProviderRequest"),
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

M.UntagSAMLProviderOutput = prelude.Unit

M.UntagServerCertificateInput = schema.new({
   id = id.from(_N, "UntagServerCertificateRequest"),
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

M.UntagServerCertificateOutput = prelude.Unit

M.UntagUserInput = schema.new({
   id = id.from(_N, "UntagUserRequest"),
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

M.UntagUserOutput = prelude.Unit

M.UpdateAccessKeyInput = schema.new({
   id = id.from(_N, "UpdateAccessKeyRequest"),
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

M.UpdateAccessKeyOutput = prelude.Unit

M.UpdateAccountPasswordPolicyInput = schema.new({
   id = id.from(_N, "UpdateAccountPasswordPolicyRequest"),
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

M.UpdateAccountPasswordPolicyOutput = prelude.Unit

M.UpdateAssumeRolePolicyInput = schema.new({
   id = id.from(_N, "UpdateAssumeRolePolicyRequest"),
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

M.UpdateAssumeRolePolicyOutput = prelude.Unit

M.UpdateDelegationRequestInput = schema.new({
   id = id.from(_N, "UpdateDelegationRequestRequest"),
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

M.UpdateDelegationRequestOutput = prelude.Unit

M.UpdateGroupInput = schema.new({
   id = id.from(_N, "UpdateGroupRequest"),
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

M.UpdateGroupOutput = prelude.Unit

M.UpdateLoginProfileInput = schema.new({
   id = id.from(_N, "UpdateLoginProfileRequest"),
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

M.UpdateLoginProfileOutput = prelude.Unit

M.UpdateOpenIDConnectProviderThumbprintInput = schema.new({
   id = id.from(_N, "UpdateOpenIDConnectProviderThumbprintRequest"),
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

M.UpdateOpenIDConnectProviderThumbprintOutput = prelude.Unit

M.UpdateRoleInput = schema.new({
   id = id.from(_N, "UpdateRoleRequest"),
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
   id = id.from(_N, "UpdateRoleResponse"),
   type = "structure",
})

M.UpdateRoleDescriptionInput = schema.new({
   id = id.from(_N, "UpdateRoleDescriptionRequest"),
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
   id = id.from(_N, "UpdateRoleDescriptionResponse"),
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
   id = id.from(_N, "UpdateSAMLProviderRequest"),
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
   id = id.from(_N, "UpdateSAMLProviderResponse"),
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
   id = id.from(_N, "UpdateServerCertificateRequest"),
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

M.UpdateServerCertificateOutput = prelude.Unit

M.UpdateServiceSpecificCredentialInput = schema.new({
   id = id.from(_N, "UpdateServiceSpecificCredentialRequest"),
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

M.UpdateServiceSpecificCredentialOutput = prelude.Unit

M.UpdateSigningCertificateInput = schema.new({
   id = id.from(_N, "UpdateSigningCertificateRequest"),
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

M.UpdateSigningCertificateOutput = prelude.Unit

M.UpdateSSHPublicKeyInput = schema.new({
   id = id.from(_N, "UpdateSSHPublicKeyRequest"),
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

M.UpdateSSHPublicKeyOutput = prelude.Unit

M.UpdateUserInput = schema.new({
   id = id.from(_N, "UpdateUserRequest"),
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

M.UpdateUserOutput = prelude.Unit

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
   id = id.from(_N, "UploadServerCertificateRequest"),
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
   id = id.from(_N, "UploadServerCertificateResponse"),
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
   id = id.from(_N, "UploadSigningCertificateRequest"),
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
   id = id.from(_N, "UploadSigningCertificateResponse"),
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
   id = id.from(_N, "UploadSSHPublicKeyRequest"),
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
   id = id.from(_N, "UploadSSHPublicKeyResponse"),
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

M.Service = schema.service({
   id = id.from("com.amazonaws.iam", "AWSIdentityManagementV20100508"),
   version = "2010-05-08",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AcceptDelegationRequest = schema.operation({
   id = id.from("com.amazonaws.iam", "AcceptDelegationRequest"),
   input = M.AcceptDelegationRequestInput,
   output = M.AcceptDelegationRequestOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddClientIDToOpenIDConnectProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "AddClientIDToOpenIDConnectProvider"),
   input = M.AddClientIDToOpenIDConnectProviderInput,
   output = M.AddClientIDToOpenIDConnectProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddRoleToInstanceProfile = schema.operation({
   id = id.from("com.amazonaws.iam", "AddRoleToInstanceProfile"),
   input = M.AddRoleToInstanceProfileInput,
   output = M.AddRoleToInstanceProfileOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddUserToGroup = schema.operation({
   id = id.from("com.amazonaws.iam", "AddUserToGroup"),
   input = M.AddUserToGroupInput,
   output = M.AddUserToGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateDelegationRequest = schema.operation({
   id = id.from("com.amazonaws.iam", "AssociateDelegationRequest"),
   input = M.AssociateDelegationRequestInput,
   output = M.AssociateDelegationRequestOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AttachGroupPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "AttachGroupPolicy"),
   input = M.AttachGroupPolicyInput,
   output = M.AttachGroupPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AttachRolePolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "AttachRolePolicy"),
   input = M.AttachRolePolicyInput,
   output = M.AttachRolePolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AttachUserPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "AttachUserPolicy"),
   input = M.AttachUserPolicyInput,
   output = M.AttachUserPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ChangePassword = schema.operation({
   id = id.from("com.amazonaws.iam", "ChangePassword"),
   input = M.ChangePasswordInput,
   output = M.ChangePasswordOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAccessKey = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateAccessKey"),
   input = M.CreateAccessKeyInput,
   output = M.CreateAccessKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAccountAlias = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateAccountAlias"),
   input = M.CreateAccountAliasInput,
   output = M.CreateAccountAliasOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDelegationRequest = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateDelegationRequest"),
   input = M.CreateDelegationRequestInput,
   output = M.CreateDelegationRequestOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateGroup = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateGroup"),
   input = M.CreateGroupInput,
   output = M.CreateGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateInstanceProfile = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateInstanceProfile"),
   input = M.CreateInstanceProfileInput,
   output = M.CreateInstanceProfileOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateLoginProfile = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateLoginProfile"),
   input = M.CreateLoginProfileInput,
   output = M.CreateLoginProfileOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateOpenIDConnectProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateOpenIDConnectProvider"),
   input = M.CreateOpenIDConnectProviderInput,
   output = M.CreateOpenIDConnectProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "CreatePolicy"),
   input = M.CreatePolicyInput,
   output = M.CreatePolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePolicyVersion = schema.operation({
   id = id.from("com.amazonaws.iam", "CreatePolicyVersion"),
   input = M.CreatePolicyVersionInput,
   output = M.CreatePolicyVersionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRole = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateRole"),
   input = M.CreateRoleInput,
   output = M.CreateRoleOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSAMLProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateSAMLProvider"),
   input = M.CreateSAMLProviderInput,
   output = M.CreateSAMLProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateServiceLinkedRole = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateServiceLinkedRole"),
   input = M.CreateServiceLinkedRoleInput,
   output = M.CreateServiceLinkedRoleOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateServiceSpecificCredential = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateServiceSpecificCredential"),
   input = M.CreateServiceSpecificCredentialInput,
   output = M.CreateServiceSpecificCredentialOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateUser = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateUser"),
   input = M.CreateUserInput,
   output = M.CreateUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateVirtualMFADevice = schema.operation({
   id = id.from("com.amazonaws.iam", "CreateVirtualMFADevice"),
   input = M.CreateVirtualMFADeviceInput,
   output = M.CreateVirtualMFADeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeactivateMFADevice = schema.operation({
   id = id.from("com.amazonaws.iam", "DeactivateMFADevice"),
   input = M.DeactivateMFADeviceInput,
   output = M.DeactivateMFADeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAccessKey = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteAccessKey"),
   input = M.DeleteAccessKeyInput,
   output = M.DeleteAccessKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAccountAlias = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteAccountAlias"),
   input = M.DeleteAccountAliasInput,
   output = M.DeleteAccountAliasOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAccountPasswordPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteAccountPasswordPolicy"),
   input = M.DeleteAccountPasswordPolicyInput,
   output = M.DeleteAccountPasswordPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteGroup = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteGroup"),
   input = M.DeleteGroupInput,
   output = M.DeleteGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteGroupPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteGroupPolicy"),
   input = M.DeleteGroupPolicyInput,
   output = M.DeleteGroupPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteInstanceProfile = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteInstanceProfile"),
   input = M.DeleteInstanceProfileInput,
   output = M.DeleteInstanceProfileOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteLoginProfile = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteLoginProfile"),
   input = M.DeleteLoginProfileInput,
   output = M.DeleteLoginProfileOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteOpenIDConnectProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteOpenIDConnectProvider"),
   input = M.DeleteOpenIDConnectProviderInput,
   output = M.DeleteOpenIDConnectProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "DeletePolicy"),
   input = M.DeletePolicyInput,
   output = M.DeletePolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePolicyVersion = schema.operation({
   id = id.from("com.amazonaws.iam", "DeletePolicyVersion"),
   input = M.DeletePolicyVersionInput,
   output = M.DeletePolicyVersionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRole = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteRole"),
   input = M.DeleteRoleInput,
   output = M.DeleteRoleOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRolePermissionsBoundary = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteRolePermissionsBoundary"),
   input = M.DeleteRolePermissionsBoundaryInput,
   output = M.DeleteRolePermissionsBoundaryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRolePolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteRolePolicy"),
   input = M.DeleteRolePolicyInput,
   output = M.DeleteRolePolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSAMLProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteSAMLProvider"),
   input = M.DeleteSAMLProviderInput,
   output = M.DeleteSAMLProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteServerCertificate = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteServerCertificate"),
   input = M.DeleteServerCertificateInput,
   output = M.DeleteServerCertificateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteServiceLinkedRole = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteServiceLinkedRole"),
   input = M.DeleteServiceLinkedRoleInput,
   output = M.DeleteServiceLinkedRoleOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteServiceSpecificCredential = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteServiceSpecificCredential"),
   input = M.DeleteServiceSpecificCredentialInput,
   output = M.DeleteServiceSpecificCredentialOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSigningCertificate = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteSigningCertificate"),
   input = M.DeleteSigningCertificateInput,
   output = M.DeleteSigningCertificateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSSHPublicKey = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteSSHPublicKey"),
   input = M.DeleteSSHPublicKeyInput,
   output = M.DeleteSSHPublicKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteUser = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteUser"),
   input = M.DeleteUserInput,
   output = M.DeleteUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteUserPermissionsBoundary = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteUserPermissionsBoundary"),
   input = M.DeleteUserPermissionsBoundaryInput,
   output = M.DeleteUserPermissionsBoundaryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteUserPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteUserPolicy"),
   input = M.DeleteUserPolicyInput,
   output = M.DeleteUserPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVirtualMFADevice = schema.operation({
   id = id.from("com.amazonaws.iam", "DeleteVirtualMFADevice"),
   input = M.DeleteVirtualMFADeviceInput,
   output = M.DeleteVirtualMFADeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DetachGroupPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "DetachGroupPolicy"),
   input = M.DetachGroupPolicyInput,
   output = M.DetachGroupPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DetachRolePolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "DetachRolePolicy"),
   input = M.DetachRolePolicyInput,
   output = M.DetachRolePolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DetachUserPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "DetachUserPolicy"),
   input = M.DetachUserPolicyInput,
   output = M.DetachUserPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisableOrganizationsRootCredentialsManagement = schema.operation({
   id = id.from("com.amazonaws.iam", "DisableOrganizationsRootCredentialsManagement"),
   input = M.DisableOrganizationsRootCredentialsManagementInput,
   output = M.DisableOrganizationsRootCredentialsManagementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisableOrganizationsRootSessions = schema.operation({
   id = id.from("com.amazonaws.iam", "DisableOrganizationsRootSessions"),
   input = M.DisableOrganizationsRootSessionsInput,
   output = M.DisableOrganizationsRootSessionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisableOutboundWebIdentityFederation = schema.operation({
   id = id.from("com.amazonaws.iam", "DisableOutboundWebIdentityFederation"),
   input = M.DisableOutboundWebIdentityFederationInput,
   output = M.DisableOutboundWebIdentityFederationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableMFADevice = schema.operation({
   id = id.from("com.amazonaws.iam", "EnableMFADevice"),
   input = M.EnableMFADeviceInput,
   output = M.EnableMFADeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableOrganizationsRootCredentialsManagement = schema.operation({
   id = id.from("com.amazonaws.iam", "EnableOrganizationsRootCredentialsManagement"),
   input = M.EnableOrganizationsRootCredentialsManagementInput,
   output = M.EnableOrganizationsRootCredentialsManagementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableOrganizationsRootSessions = schema.operation({
   id = id.from("com.amazonaws.iam", "EnableOrganizationsRootSessions"),
   input = M.EnableOrganizationsRootSessionsInput,
   output = M.EnableOrganizationsRootSessionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableOutboundWebIdentityFederation = schema.operation({
   id = id.from("com.amazonaws.iam", "EnableOutboundWebIdentityFederation"),
   input = M.EnableOutboundWebIdentityFederationInput,
   output = M.EnableOutboundWebIdentityFederationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateCredentialReport = schema.operation({
   id = id.from("com.amazonaws.iam", "GenerateCredentialReport"),
   input = M.GenerateCredentialReportInput,
   output = M.GenerateCredentialReportOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateOrganizationsAccessReport = schema.operation({
   id = id.from("com.amazonaws.iam", "GenerateOrganizationsAccessReport"),
   input = M.GenerateOrganizationsAccessReportInput,
   output = M.GenerateOrganizationsAccessReportOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateServiceLastAccessedDetails = schema.operation({
   id = id.from("com.amazonaws.iam", "GenerateServiceLastAccessedDetails"),
   input = M.GenerateServiceLastAccessedDetailsInput,
   output = M.GenerateServiceLastAccessedDetailsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAccessKeyLastUsed = schema.operation({
   id = id.from("com.amazonaws.iam", "GetAccessKeyLastUsed"),
   input = M.GetAccessKeyLastUsedInput,
   output = M.GetAccessKeyLastUsedOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAccountAuthorizationDetails = schema.operation({
   id = id.from("com.amazonaws.iam", "GetAccountAuthorizationDetails"),
   input = M.GetAccountAuthorizationDetailsInput,
   output = M.GetAccountAuthorizationDetailsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAccountPasswordPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "GetAccountPasswordPolicy"),
   input = M.GetAccountPasswordPolicyInput,
   output = M.GetAccountPasswordPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAccountSummary = schema.operation({
   id = id.from("com.amazonaws.iam", "GetAccountSummary"),
   input = M.GetAccountSummaryInput,
   output = M.GetAccountSummaryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetContextKeysForCustomPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "GetContextKeysForCustomPolicy"),
   input = M.GetContextKeysForCustomPolicyInput,
   output = M.GetContextKeysForCustomPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetContextKeysForPrincipalPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "GetContextKeysForPrincipalPolicy"),
   input = M.GetContextKeysForPrincipalPolicyInput,
   output = M.GetContextKeysForPrincipalPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCredentialReport = schema.operation({
   id = id.from("com.amazonaws.iam", "GetCredentialReport"),
   input = M.GetCredentialReportInput,
   output = M.GetCredentialReportOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDelegationRequest = schema.operation({
   id = id.from("com.amazonaws.iam", "GetDelegationRequest"),
   input = M.GetDelegationRequestInput,
   output = M.GetDelegationRequestOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetGroup = schema.operation({
   id = id.from("com.amazonaws.iam", "GetGroup"),
   input = M.GetGroupInput,
   output = M.GetGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetGroupPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "GetGroupPolicy"),
   input = M.GetGroupPolicyInput,
   output = M.GetGroupPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetHumanReadableSummary = schema.operation({
   id = id.from("com.amazonaws.iam", "GetHumanReadableSummary"),
   input = M.GetHumanReadableSummaryInput,
   output = M.GetHumanReadableSummaryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetInstanceProfile = schema.operation({
   id = id.from("com.amazonaws.iam", "GetInstanceProfile"),
   input = M.GetInstanceProfileInput,
   output = M.GetInstanceProfileOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetLoginProfile = schema.operation({
   id = id.from("com.amazonaws.iam", "GetLoginProfile"),
   input = M.GetLoginProfileInput,
   output = M.GetLoginProfileOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetMFADevice = schema.operation({
   id = id.from("com.amazonaws.iam", "GetMFADevice"),
   input = M.GetMFADeviceInput,
   output = M.GetMFADeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetOpenIDConnectProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "GetOpenIDConnectProvider"),
   input = M.GetOpenIDConnectProviderInput,
   output = M.GetOpenIDConnectProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetOrganizationsAccessReport = schema.operation({
   id = id.from("com.amazonaws.iam", "GetOrganizationsAccessReport"),
   input = M.GetOrganizationsAccessReportInput,
   output = M.GetOrganizationsAccessReportOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetOutboundWebIdentityFederationInfo = schema.operation({
   id = id.from("com.amazonaws.iam", "GetOutboundWebIdentityFederationInfo"),
   input = M.GetOutboundWebIdentityFederationInfoInput,
   output = M.GetOutboundWebIdentityFederationInfoOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "GetPolicy"),
   input = M.GetPolicyInput,
   output = M.GetPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPolicyVersion = schema.operation({
   id = id.from("com.amazonaws.iam", "GetPolicyVersion"),
   input = M.GetPolicyVersionInput,
   output = M.GetPolicyVersionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRole = schema.operation({
   id = id.from("com.amazonaws.iam", "GetRole"),
   input = M.GetRoleInput,
   output = M.GetRoleOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRolePolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "GetRolePolicy"),
   input = M.GetRolePolicyInput,
   output = M.GetRolePolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSAMLProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "GetSAMLProvider"),
   input = M.GetSAMLProviderInput,
   output = M.GetSAMLProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetServerCertificate = schema.operation({
   id = id.from("com.amazonaws.iam", "GetServerCertificate"),
   input = M.GetServerCertificateInput,
   output = M.GetServerCertificateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetServiceLastAccessedDetails = schema.operation({
   id = id.from("com.amazonaws.iam", "GetServiceLastAccessedDetails"),
   input = M.GetServiceLastAccessedDetailsInput,
   output = M.GetServiceLastAccessedDetailsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetServiceLastAccessedDetailsWithEntities = schema.operation({
   id = id.from("com.amazonaws.iam", "GetServiceLastAccessedDetailsWithEntities"),
   input = M.GetServiceLastAccessedDetailsWithEntitiesInput,
   output = M.GetServiceLastAccessedDetailsWithEntitiesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetServiceLinkedRoleDeletionStatus = schema.operation({
   id = id.from("com.amazonaws.iam", "GetServiceLinkedRoleDeletionStatus"),
   input = M.GetServiceLinkedRoleDeletionStatusInput,
   output = M.GetServiceLinkedRoleDeletionStatusOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSSHPublicKey = schema.operation({
   id = id.from("com.amazonaws.iam", "GetSSHPublicKey"),
   input = M.GetSSHPublicKeyInput,
   output = M.GetSSHPublicKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetUser = schema.operation({
   id = id.from("com.amazonaws.iam", "GetUser"),
   input = M.GetUserInput,
   output = M.GetUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetUserPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "GetUserPolicy"),
   input = M.GetUserPolicyInput,
   output = M.GetUserPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAccessKeys = schema.operation({
   id = id.from("com.amazonaws.iam", "ListAccessKeys"),
   input = M.ListAccessKeysInput,
   output = M.ListAccessKeysOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAccountAliases = schema.operation({
   id = id.from("com.amazonaws.iam", "ListAccountAliases"),
   input = M.ListAccountAliasesInput,
   output = M.ListAccountAliasesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAttachedGroupPolicies = schema.operation({
   id = id.from("com.amazonaws.iam", "ListAttachedGroupPolicies"),
   input = M.ListAttachedGroupPoliciesInput,
   output = M.ListAttachedGroupPoliciesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAttachedRolePolicies = schema.operation({
   id = id.from("com.amazonaws.iam", "ListAttachedRolePolicies"),
   input = M.ListAttachedRolePoliciesInput,
   output = M.ListAttachedRolePoliciesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAttachedUserPolicies = schema.operation({
   id = id.from("com.amazonaws.iam", "ListAttachedUserPolicies"),
   input = M.ListAttachedUserPoliciesInput,
   output = M.ListAttachedUserPoliciesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDelegationRequests = schema.operation({
   id = id.from("com.amazonaws.iam", "ListDelegationRequests"),
   input = M.ListDelegationRequestsInput,
   output = M.ListDelegationRequestsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEntitiesForPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "ListEntitiesForPolicy"),
   input = M.ListEntitiesForPolicyInput,
   output = M.ListEntitiesForPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListGroupPolicies = schema.operation({
   id = id.from("com.amazonaws.iam", "ListGroupPolicies"),
   input = M.ListGroupPoliciesInput,
   output = M.ListGroupPoliciesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListGroups = schema.operation({
   id = id.from("com.amazonaws.iam", "ListGroups"),
   input = M.ListGroupsInput,
   output = M.ListGroupsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListGroupsForUser = schema.operation({
   id = id.from("com.amazonaws.iam", "ListGroupsForUser"),
   input = M.ListGroupsForUserInput,
   output = M.ListGroupsForUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInstanceProfiles = schema.operation({
   id = id.from("com.amazonaws.iam", "ListInstanceProfiles"),
   input = M.ListInstanceProfilesInput,
   output = M.ListInstanceProfilesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInstanceProfilesForRole = schema.operation({
   id = id.from("com.amazonaws.iam", "ListInstanceProfilesForRole"),
   input = M.ListInstanceProfilesForRoleInput,
   output = M.ListInstanceProfilesForRoleOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInstanceProfileTags = schema.operation({
   id = id.from("com.amazonaws.iam", "ListInstanceProfileTags"),
   input = M.ListInstanceProfileTagsInput,
   output = M.ListInstanceProfileTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListMFADevices = schema.operation({
   id = id.from("com.amazonaws.iam", "ListMFADevices"),
   input = M.ListMFADevicesInput,
   output = M.ListMFADevicesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListMFADeviceTags = schema.operation({
   id = id.from("com.amazonaws.iam", "ListMFADeviceTags"),
   input = M.ListMFADeviceTagsInput,
   output = M.ListMFADeviceTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListOpenIDConnectProviders = schema.operation({
   id = id.from("com.amazonaws.iam", "ListOpenIDConnectProviders"),
   input = M.ListOpenIDConnectProvidersInput,
   output = M.ListOpenIDConnectProvidersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListOpenIDConnectProviderTags = schema.operation({
   id = id.from("com.amazonaws.iam", "ListOpenIDConnectProviderTags"),
   input = M.ListOpenIDConnectProviderTagsInput,
   output = M.ListOpenIDConnectProviderTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListOrganizationsFeatures = schema.operation({
   id = id.from("com.amazonaws.iam", "ListOrganizationsFeatures"),
   input = M.ListOrganizationsFeaturesInput,
   output = M.ListOrganizationsFeaturesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPolicies = schema.operation({
   id = id.from("com.amazonaws.iam", "ListPolicies"),
   input = M.ListPoliciesInput,
   output = M.ListPoliciesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPoliciesGrantingServiceAccess = schema.operation({
   id = id.from("com.amazonaws.iam", "ListPoliciesGrantingServiceAccess"),
   input = M.ListPoliciesGrantingServiceAccessInput,
   output = M.ListPoliciesGrantingServiceAccessOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPolicyTags = schema.operation({
   id = id.from("com.amazonaws.iam", "ListPolicyTags"),
   input = M.ListPolicyTagsInput,
   output = M.ListPolicyTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPolicyVersions = schema.operation({
   id = id.from("com.amazonaws.iam", "ListPolicyVersions"),
   input = M.ListPolicyVersionsInput,
   output = M.ListPolicyVersionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRolePolicies = schema.operation({
   id = id.from("com.amazonaws.iam", "ListRolePolicies"),
   input = M.ListRolePoliciesInput,
   output = M.ListRolePoliciesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRoles = schema.operation({
   id = id.from("com.amazonaws.iam", "ListRoles"),
   input = M.ListRolesInput,
   output = M.ListRolesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRoleTags = schema.operation({
   id = id.from("com.amazonaws.iam", "ListRoleTags"),
   input = M.ListRoleTagsInput,
   output = M.ListRoleTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSAMLProviders = schema.operation({
   id = id.from("com.amazonaws.iam", "ListSAMLProviders"),
   input = M.ListSAMLProvidersInput,
   output = M.ListSAMLProvidersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSAMLProviderTags = schema.operation({
   id = id.from("com.amazonaws.iam", "ListSAMLProviderTags"),
   input = M.ListSAMLProviderTagsInput,
   output = M.ListSAMLProviderTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListServerCertificates = schema.operation({
   id = id.from("com.amazonaws.iam", "ListServerCertificates"),
   input = M.ListServerCertificatesInput,
   output = M.ListServerCertificatesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListServerCertificateTags = schema.operation({
   id = id.from("com.amazonaws.iam", "ListServerCertificateTags"),
   input = M.ListServerCertificateTagsInput,
   output = M.ListServerCertificateTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListServiceSpecificCredentials = schema.operation({
   id = id.from("com.amazonaws.iam", "ListServiceSpecificCredentials"),
   input = M.ListServiceSpecificCredentialsInput,
   output = M.ListServiceSpecificCredentialsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSigningCertificates = schema.operation({
   id = id.from("com.amazonaws.iam", "ListSigningCertificates"),
   input = M.ListSigningCertificatesInput,
   output = M.ListSigningCertificatesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSSHPublicKeys = schema.operation({
   id = id.from("com.amazonaws.iam", "ListSSHPublicKeys"),
   input = M.ListSSHPublicKeysInput,
   output = M.ListSSHPublicKeysOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUserPolicies = schema.operation({
   id = id.from("com.amazonaws.iam", "ListUserPolicies"),
   input = M.ListUserPoliciesInput,
   output = M.ListUserPoliciesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUsers = schema.operation({
   id = id.from("com.amazonaws.iam", "ListUsers"),
   input = M.ListUsersInput,
   output = M.ListUsersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUserTags = schema.operation({
   id = id.from("com.amazonaws.iam", "ListUserTags"),
   input = M.ListUserTagsInput,
   output = M.ListUserTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListVirtualMFADevices = schema.operation({
   id = id.from("com.amazonaws.iam", "ListVirtualMFADevices"),
   input = M.ListVirtualMFADevicesInput,
   output = M.ListVirtualMFADevicesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutGroupPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "PutGroupPolicy"),
   input = M.PutGroupPolicyInput,
   output = M.PutGroupPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutRolePermissionsBoundary = schema.operation({
   id = id.from("com.amazonaws.iam", "PutRolePermissionsBoundary"),
   input = M.PutRolePermissionsBoundaryInput,
   output = M.PutRolePermissionsBoundaryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutRolePolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "PutRolePolicy"),
   input = M.PutRolePolicyInput,
   output = M.PutRolePolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutUserPermissionsBoundary = schema.operation({
   id = id.from("com.amazonaws.iam", "PutUserPermissionsBoundary"),
   input = M.PutUserPermissionsBoundaryInput,
   output = M.PutUserPermissionsBoundaryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutUserPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "PutUserPolicy"),
   input = M.PutUserPolicyInput,
   output = M.PutUserPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RejectDelegationRequest = schema.operation({
   id = id.from("com.amazonaws.iam", "RejectDelegationRequest"),
   input = M.RejectDelegationRequestInput,
   output = M.RejectDelegationRequestOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveClientIDFromOpenIDConnectProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "RemoveClientIDFromOpenIDConnectProvider"),
   input = M.RemoveClientIDFromOpenIDConnectProviderInput,
   output = M.RemoveClientIDFromOpenIDConnectProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveRoleFromInstanceProfile = schema.operation({
   id = id.from("com.amazonaws.iam", "RemoveRoleFromInstanceProfile"),
   input = M.RemoveRoleFromInstanceProfileInput,
   output = M.RemoveRoleFromInstanceProfileOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveUserFromGroup = schema.operation({
   id = id.from("com.amazonaws.iam", "RemoveUserFromGroup"),
   input = M.RemoveUserFromGroupInput,
   output = M.RemoveUserFromGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ResetServiceSpecificCredential = schema.operation({
   id = id.from("com.amazonaws.iam", "ResetServiceSpecificCredential"),
   input = M.ResetServiceSpecificCredentialInput,
   output = M.ResetServiceSpecificCredentialOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ResyncMFADevice = schema.operation({
   id = id.from("com.amazonaws.iam", "ResyncMFADevice"),
   input = M.ResyncMFADeviceInput,
   output = M.ResyncMFADeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendDelegationToken = schema.operation({
   id = id.from("com.amazonaws.iam", "SendDelegationToken"),
   input = M.SendDelegationTokenInput,
   output = M.SendDelegationTokenOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetDefaultPolicyVersion = schema.operation({
   id = id.from("com.amazonaws.iam", "SetDefaultPolicyVersion"),
   input = M.SetDefaultPolicyVersionInput,
   output = M.SetDefaultPolicyVersionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetSecurityTokenServicePreferences = schema.operation({
   id = id.from("com.amazonaws.iam", "SetSecurityTokenServicePreferences"),
   input = M.SetSecurityTokenServicePreferencesInput,
   output = M.SetSecurityTokenServicePreferencesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SimulateCustomPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "SimulateCustomPolicy"),
   input = M.SimulateCustomPolicyInput,
   output = M.SimulateCustomPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SimulatePrincipalPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "SimulatePrincipalPolicy"),
   input = M.SimulatePrincipalPolicyInput,
   output = M.SimulatePrincipalPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagInstanceProfile = schema.operation({
   id = id.from("com.amazonaws.iam", "TagInstanceProfile"),
   input = M.TagInstanceProfileInput,
   output = M.TagInstanceProfileOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagMFADevice = schema.operation({
   id = id.from("com.amazonaws.iam", "TagMFADevice"),
   input = M.TagMFADeviceInput,
   output = M.TagMFADeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagOpenIDConnectProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "TagOpenIDConnectProvider"),
   input = M.TagOpenIDConnectProviderInput,
   output = M.TagOpenIDConnectProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "TagPolicy"),
   input = M.TagPolicyInput,
   output = M.TagPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagRole = schema.operation({
   id = id.from("com.amazonaws.iam", "TagRole"),
   input = M.TagRoleInput,
   output = M.TagRoleOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagSAMLProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "TagSAMLProvider"),
   input = M.TagSAMLProviderInput,
   output = M.TagSAMLProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagServerCertificate = schema.operation({
   id = id.from("com.amazonaws.iam", "TagServerCertificate"),
   input = M.TagServerCertificateInput,
   output = M.TagServerCertificateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagUser = schema.operation({
   id = id.from("com.amazonaws.iam", "TagUser"),
   input = M.TagUserInput,
   output = M.TagUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagInstanceProfile = schema.operation({
   id = id.from("com.amazonaws.iam", "UntagInstanceProfile"),
   input = M.UntagInstanceProfileInput,
   output = M.UntagInstanceProfileOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagMFADevice = schema.operation({
   id = id.from("com.amazonaws.iam", "UntagMFADevice"),
   input = M.UntagMFADeviceInput,
   output = M.UntagMFADeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagOpenIDConnectProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "UntagOpenIDConnectProvider"),
   input = M.UntagOpenIDConnectProviderInput,
   output = M.UntagOpenIDConnectProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "UntagPolicy"),
   input = M.UntagPolicyInput,
   output = M.UntagPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagRole = schema.operation({
   id = id.from("com.amazonaws.iam", "UntagRole"),
   input = M.UntagRoleInput,
   output = M.UntagRoleOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagSAMLProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "UntagSAMLProvider"),
   input = M.UntagSAMLProviderInput,
   output = M.UntagSAMLProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagServerCertificate = schema.operation({
   id = id.from("com.amazonaws.iam", "UntagServerCertificate"),
   input = M.UntagServerCertificateInput,
   output = M.UntagServerCertificateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagUser = schema.operation({
   id = id.from("com.amazonaws.iam", "UntagUser"),
   input = M.UntagUserInput,
   output = M.UntagUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAccessKey = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateAccessKey"),
   input = M.UpdateAccessKeyInput,
   output = M.UpdateAccessKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAccountPasswordPolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateAccountPasswordPolicy"),
   input = M.UpdateAccountPasswordPolicyInput,
   output = M.UpdateAccountPasswordPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAssumeRolePolicy = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateAssumeRolePolicy"),
   input = M.UpdateAssumeRolePolicyInput,
   output = M.UpdateAssumeRolePolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDelegationRequest = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateDelegationRequest"),
   input = M.UpdateDelegationRequestInput,
   output = M.UpdateDelegationRequestOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateGroup = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateGroup"),
   input = M.UpdateGroupInput,
   output = M.UpdateGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateLoginProfile = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateLoginProfile"),
   input = M.UpdateLoginProfileInput,
   output = M.UpdateLoginProfileOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateOpenIDConnectProviderThumbprint = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateOpenIDConnectProviderThumbprint"),
   input = M.UpdateOpenIDConnectProviderThumbprintInput,
   output = M.UpdateOpenIDConnectProviderThumbprintOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRole = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateRole"),
   input = M.UpdateRoleInput,
   output = M.UpdateRoleOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRoleDescription = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateRoleDescription"),
   input = M.UpdateRoleDescriptionInput,
   output = M.UpdateRoleDescriptionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSAMLProvider = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateSAMLProvider"),
   input = M.UpdateSAMLProviderInput,
   output = M.UpdateSAMLProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateServerCertificate = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateServerCertificate"),
   input = M.UpdateServerCertificateInput,
   output = M.UpdateServerCertificateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateServiceSpecificCredential = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateServiceSpecificCredential"),
   input = M.UpdateServiceSpecificCredentialInput,
   output = M.UpdateServiceSpecificCredentialOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSigningCertificate = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateSigningCertificate"),
   input = M.UpdateSigningCertificateInput,
   output = M.UpdateSigningCertificateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSSHPublicKey = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateSSHPublicKey"),
   input = M.UpdateSSHPublicKeyInput,
   output = M.UpdateSSHPublicKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateUser = schema.operation({
   id = id.from("com.amazonaws.iam", "UpdateUser"),
   input = M.UpdateUserInput,
   output = M.UpdateUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UploadServerCertificate = schema.operation({
   id = id.from("com.amazonaws.iam", "UploadServerCertificate"),
   input = M.UploadServerCertificateInput,
   output = M.UploadServerCertificateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UploadSigningCertificate = schema.operation({
   id = id.from("com.amazonaws.iam", "UploadSigningCertificate"),
   input = M.UploadSigningCertificateInput,
   output = M.UploadSigningCertificateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UploadSSHPublicKey = schema.operation({
   id = id.from("com.amazonaws.iam", "UploadSSHPublicKey"),
   input = M.UploadSSHPublicKeyInput,
   output = M.UploadSSHPublicKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
