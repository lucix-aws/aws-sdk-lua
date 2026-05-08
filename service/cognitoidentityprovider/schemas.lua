

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.cognitoidentityprovider"

local M = {}

M.CustomAttributesListType = schema.new({ type = "list", list_member = M.SchemaAttributeType })

M.ClientMetadataType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AttributeListType = schema.new({ type = "list", list_member = M.AttributeType })

M.DeliveryMediumListType = schema.new({ type = "list", list_member = prelude.String })

M.AttributeNameListType = schema.new({ type = "list", list_member = prelude.String })

M.MFAOptionListType = schema.new({ type = "list", list_member = M.MFAOptionType })

M.UserMFASettingListType = schema.new({ type = "list", list_member = prelude.String })

M.AuthParametersType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ChallengeParametersType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AvailableChallengeListType = schema.new({ type = "list", list_member = prelude.String })

M.DeviceListType = schema.new({ type = "list", list_member = M.DeviceType })

M.GroupListType = schema.new({ type = "list", list_member = M.GroupType })

M.AuthEventsType = schema.new({ type = "list", list_member = M.AuthEventType })

M.ChallengeResponsesType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ProviderDetailsType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AttributeMappingType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.IdpIdentifiersListType = schema.new({ type = "list", list_member = prelude.String })

M.AssetListType = schema.new({ type = "list", list_member = M.AssetType })

M.ResourceServerScopeListType = schema.new({ type = "list", list_member = M.ResourceServerScopeType })

M.LinksType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.VerifiedAttributesListType = schema.new({ type = "list", list_member = prelude.String })

M.AliasAttributesListType = schema.new({ type = "list", list_member = prelude.String })

M.UsernameAttributesListType = schema.new({ type = "list", list_member = prelude.String })

M.UserPoolTagsType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.SchemaAttributesListType = schema.new({ type = "list", list_member = M.SchemaAttributeType })

M.ClientPermissionListType = schema.new({ type = "list", list_member = prelude.String })

M.ExplicitAuthFlowsListType = schema.new({ type = "list", list_member = prelude.String })

M.SupportedIdentityProvidersListType = schema.new({ type = "list", list_member = prelude.String })

M.CallbackURLsListType = schema.new({ type = "list", list_member = prelude.String })

M.LogoutURLsListType = schema.new({ type = "list", list_member = prelude.String })

M.OAuthFlowsType = schema.new({ type = "list", list_member = prelude.String })

M.ScopeListType = schema.new({ type = "list", list_member = prelude.String })

M.ListOfStringTypes = schema.new({ type = "list", list_member = prelude.String })

M.ConfiguredUserAuthFactorsListType = schema.new({ type = "list", list_member = prelude.String })

M.ProvidersListType = schema.new({ type = "list", list_member = M.ProviderDescription })

M.ResourceServersListType = schema.new({ type = "list", list_member = M.ResourceServerType })

M.TermsDescriptionListType = schema.new({ type = "list", list_member = M.TermsDescriptionType })

M.UserImportJobsListType = schema.new({ type = "list", list_member = M.UserImportJobType })

M.UserPoolClientListType = schema.new({ type = "list", list_member = M.UserPoolClientDescription })

M.ClientSecretDescriptorListType = schema.new({ type = "list", list_member = M.ClientSecretDescriptorType })

M.UserPoolListType = schema.new({ type = "list", list_member = M.UserPoolDescriptionType })

M.SearchedAttributeNamesListType = schema.new({ type = "list", list_member = prelude.String })

M.UsersListType = schema.new({ type = "list", list_member = M.UserType })

M.WebAuthnCredentialDescriptionListType = schema.new({ type = "list", list_member = M.WebAuthnCredentialDescription })

M.LogConfigurationListType = schema.new({ type = "list", list_member = M.LogConfigurationType })

M.UserPoolTagsListType = schema.new({ type = "list", list_member = prelude.String })

M.CodeDeliveryDetailsListType = schema.new({ type = "list", list_member = M.CodeDeliveryDetailsType })

M.HttpHeaderList = schema.new({ type = "list", list_member = M.HttpHeader })

M.AttributesRequireVerificationBeforeUpdateType = schema.new({ type = "list", list_member = prelude.String })

M.RecoveryMechanismsType = schema.new({ type = "list", list_member = M.RecoveryOptionType })

M.EventFiltersType = schema.new({ type = "list", list_member = prelude.String })

M.BlockedIPRangeListType = schema.new({ type = "list", list_member = prelude.String })

M.SkippedIPRangeListType = schema.new({ type = "list", list_member = prelude.String })

M.ChallengeResponseListType = schema.new({ type = "list", list_member = M.ChallengeResponseType })

M.AllowedFirstAuthFactorsListType = schema.new({ type = "list", list_member = prelude.String })

M.WebAuthnAuthenticatorTransportsList = schema.new({ type = "list", list_member = prelude.String })

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

M.RecoveryOptionType = schema.new({
   id = id.from(_N, "RecoveryOptionType"),
   type = "structure",
   members = {
      Priority = schema.new({
         id = id.from(_N, "RecoveryOptionType", "Priority"),
         type = "integer",
         name = "Priority",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "RecoveryOptionType", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AccountRecoverySettingType = schema.new({
   id = id.from(_N, "AccountRecoverySettingType"),
   type = "structure",
   members = {
      RecoveryMechanisms = schema.new({
         id = id.from(_N, "AccountRecoverySettingType", "RecoveryMechanisms"),
         type = "list",
         name = "RecoveryMechanisms",
         target_id = prelude.Document.id,
         list_member = M.RecoveryOptionType,
      }),
   },
})

M.AccountTakeoverActionType = schema.new({
   id = id.from(_N, "AccountTakeoverActionType"),
   type = "structure",
   members = {
      Notify = schema.new({
         id = id.from(_N, "AccountTakeoverActionType", "Notify"),
         type = "boolean",
         name = "Notify",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      EventAction = schema.new({
         id = id.from(_N, "AccountTakeoverActionType", "EventAction"),
         type = "string",
         name = "EventAction",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AccountTakeoverActionsType = schema.new({
   id = id.from(_N, "AccountTakeoverActionsType"),
   type = "structure",
   members = {
      LowAction = schema.new({
         id = id.from(_N, "AccountTakeoverActionsType", "LowAction"),
         type = "structure",
         name = "LowAction",
         target_id = id.from(_N, "AccountTakeoverActionType"),
         target = M.AccountTakeoverActionType,
      }),
      MediumAction = schema.new({
         id = id.from(_N, "AccountTakeoverActionsType", "MediumAction"),
         type = "structure",
         name = "MediumAction",
         target_id = id.from(_N, "AccountTakeoverActionType"),
         target = M.AccountTakeoverActionType,
      }),
      HighAction = schema.new({
         id = id.from(_N, "AccountTakeoverActionsType", "HighAction"),
         type = "structure",
         name = "HighAction",
         target_id = id.from(_N, "AccountTakeoverActionType"),
         target = M.AccountTakeoverActionType,
      }),
   },
})

M.NotifyEmailType = schema.new({
   id = id.from(_N, "NotifyEmailType"),
   type = "structure",
   members = {
      Subject = schema.new({
         id = id.from(_N, "NotifyEmailType", "Subject"),
         type = "string",
         name = "Subject",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      HtmlBody = schema.new({
         id = id.from(_N, "NotifyEmailType", "HtmlBody"),
         type = "string",
         name = "HtmlBody",
         target_id = prelude.String.id,
      }),
      TextBody = schema.new({
         id = id.from(_N, "NotifyEmailType", "TextBody"),
         type = "string",
         name = "TextBody",
         target_id = prelude.String.id,
      }),
   },
})

M.NotifyConfigurationType = schema.new({
   id = id.from(_N, "NotifyConfigurationType"),
   type = "structure",
   members = {
      From = schema.new({
         id = id.from(_N, "NotifyConfigurationType", "From"),
         type = "string",
         name = "From",
         target_id = prelude.String.id,
      }),
      ReplyTo = schema.new({
         id = id.from(_N, "NotifyConfigurationType", "ReplyTo"),
         type = "string",
         name = "ReplyTo",
         target_id = prelude.String.id,
      }),
      SourceArn = schema.new({
         id = id.from(_N, "NotifyConfigurationType", "SourceArn"),
         type = "string",
         name = "SourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BlockEmail = schema.new({
         id = id.from(_N, "NotifyConfigurationType", "BlockEmail"),
         type = "structure",
         name = "BlockEmail",
         target_id = id.from(_N, "NotifyEmailType"),
         target = M.NotifyEmailType,
      }),
      NoActionEmail = schema.new({
         id = id.from(_N, "NotifyConfigurationType", "NoActionEmail"),
         type = "structure",
         name = "NoActionEmail",
         target_id = id.from(_N, "NotifyEmailType"),
         target = M.NotifyEmailType,
      }),
      MfaEmail = schema.new({
         id = id.from(_N, "NotifyConfigurationType", "MfaEmail"),
         type = "structure",
         name = "MfaEmail",
         target_id = id.from(_N, "NotifyEmailType"),
         target = M.NotifyEmailType,
      }),
   },
})

M.AccountTakeoverRiskConfigurationType = schema.new({
   id = id.from(_N, "AccountTakeoverRiskConfigurationType"),
   type = "structure",
   members = {
      NotifyConfiguration = schema.new({
         id = id.from(_N, "AccountTakeoverRiskConfigurationType", "NotifyConfiguration"),
         type = "structure",
         name = "NotifyConfiguration",
         target_id = id.from(_N, "NotifyConfigurationType"),
         target = M.NotifyConfigurationType,
      }),
      Actions = schema.new({
         id = id.from(_N, "AccountTakeoverRiskConfigurationType", "Actions"),
         type = "structure",
         name = "Actions",
         target_id = id.from(_N, "AccountTakeoverActionsType"),
         target = M.AccountTakeoverActionsType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NumberAttributeConstraintsType = schema.new({
   id = id.from(_N, "NumberAttributeConstraintsType"),
   type = "structure",
   members = {
      MinValue = schema.new({
         id = id.from(_N, "NumberAttributeConstraintsType", "MinValue"),
         type = "string",
         name = "MinValue",
         target_id = prelude.String.id,
      }),
      MaxValue = schema.new({
         id = id.from(_N, "NumberAttributeConstraintsType", "MaxValue"),
         type = "string",
         name = "MaxValue",
         target_id = prelude.String.id,
      }),
   },
})

M.StringAttributeConstraintsType = schema.new({
   id = id.from(_N, "StringAttributeConstraintsType"),
   type = "structure",
   members = {
      MinLength = schema.new({
         id = id.from(_N, "StringAttributeConstraintsType", "MinLength"),
         type = "string",
         name = "MinLength",
         target_id = prelude.String.id,
      }),
      MaxLength = schema.new({
         id = id.from(_N, "StringAttributeConstraintsType", "MaxLength"),
         type = "string",
         name = "MaxLength",
         target_id = prelude.String.id,
      }),
   },
})

M.SchemaAttributeType = schema.new({
   id = id.from(_N, "SchemaAttributeType"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "SchemaAttributeType", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      AttributeDataType = schema.new({
         id = id.from(_N, "SchemaAttributeType", "AttributeDataType"),
         type = "string",
         name = "AttributeDataType",
         target_id = prelude.String.id,
      }),
      DeveloperOnlyAttribute = schema.new({
         id = id.from(_N, "SchemaAttributeType", "DeveloperOnlyAttribute"),
         type = "boolean",
         name = "DeveloperOnlyAttribute",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      Mutable = schema.new({
         id = id.from(_N, "SchemaAttributeType", "Mutable"),
         type = "boolean",
         name = "Mutable",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      Required = schema.new({
         id = id.from(_N, "SchemaAttributeType", "Required"),
         type = "boolean",
         name = "Required",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      NumberAttributeConstraints = schema.new({
         id = id.from(_N, "SchemaAttributeType", "NumberAttributeConstraints"),
         type = "structure",
         name = "NumberAttributeConstraints",
         target_id = id.from(_N, "NumberAttributeConstraintsType"),
         target = M.NumberAttributeConstraintsType,
      }),
      StringAttributeConstraints = schema.new({
         id = id.from(_N, "SchemaAttributeType", "StringAttributeConstraints"),
         type = "structure",
         name = "StringAttributeConstraints",
         target_id = id.from(_N, "StringAttributeConstraintsType"),
         target = M.StringAttributeConstraintsType,
      }),
   },
})

M.AddCustomAttributesInput = schema.new({
   id = id.from(_N, "AddCustomAttributesRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AddCustomAttributesInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CustomAttributes = schema.new({
         id = id.from(_N, "AddCustomAttributesInput", "CustomAttributes"),
         type = "list",
         name = "CustomAttributes",
         target_id = prelude.Document.id,
         list_member = M.SchemaAttributeType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AddCustomAttributesOutput = schema.new({
   id = id.from(_N, "AddCustomAttributesResponse"),
   type = "structure",
})

M.InternalErrorException = schema.new({
   id = id.from(_N, "InternalErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InternalErrorException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
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
      message = schema.new({
         id = id.from(_N, "InvalidParameterException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      reasonCode = schema.new({
         id = id.from(_N, "InvalidParameterException", "reasonCode"),
         type = "string",
         name = "reasonCode",
         target_id = prelude.String.id,
      }),
   },
})

M.NotAuthorizedException = schema.new({
   id = id.from(_N, "NotAuthorizedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "NotAuthorizedException", "message"),
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
      message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.TooManyRequestsException = schema.new({
   id = id.from(_N, "TooManyRequestsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TooManyRequestsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UserImportInProgressException = schema.new({
   id = id.from(_N, "UserImportInProgressException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UserImportInProgressException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AddUserPoolClientSecretInput = schema.new({
   id = id.from(_N, "AddUserPoolClientSecretRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AddUserPoolClientSecretInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "AddUserPoolClientSecretInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientSecret = schema.new({
         id = id.from(_N, "AddUserPoolClientSecretInput", "ClientSecret"),
         type = "string",
         name = "ClientSecret",
         target_id = prelude.String.id,
      }),
   },
})

M.ClientSecretDescriptorType = schema.new({
   id = id.from(_N, "ClientSecretDescriptorType"),
   type = "structure",
   members = {
      ClientSecretId = schema.new({
         id = id.from(_N, "ClientSecretDescriptorType", "ClientSecretId"),
         type = "string",
         name = "ClientSecretId",
         target_id = prelude.String.id,
      }),
      ClientSecretValue = schema.new({
         id = id.from(_N, "ClientSecretDescriptorType", "ClientSecretValue"),
         type = "string",
         name = "ClientSecretValue",
         target_id = prelude.String.id,
      }),
      ClientSecretCreateDate = schema.new({
         id = id.from(_N, "ClientSecretDescriptorType", "ClientSecretCreateDate"),
         type = "timestamp",
         name = "ClientSecretCreateDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AddUserPoolClientSecretOutput = schema.new({
   id = id.from(_N, "AddUserPoolClientSecretResponse"),
   type = "structure",
   members = {
      ClientSecretDescriptor = schema.new({
         id = id.from(_N, "AddUserPoolClientSecretOutput", "ClientSecretDescriptor"),
         type = "structure",
         name = "ClientSecretDescriptor",
         target_id = id.from(_N, "ClientSecretDescriptorType"),
         target = M.ClientSecretDescriptorType,
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

M.AdminAddUserToGroupInput = schema.new({
   id = id.from(_N, "AdminAddUserToGroupRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminAddUserToGroupInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminAddUserToGroupInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GroupName = schema.new({
         id = id.from(_N, "AdminAddUserToGroupInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminAddUserToGroupOutput = prelude.Unit

M.UserNotFoundException = schema.new({
   id = id.from(_N, "UserNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UserNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminConfirmSignUpInput = schema.new({
   id = id.from(_N, "AdminConfirmSignUpRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminConfirmSignUpInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminConfirmSignUpInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "AdminConfirmSignUpInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AdminConfirmSignUpOutput = schema.new({
   id = id.from(_N, "AdminConfirmSignUpResponse"),
   type = "structure",
})

M.InvalidLambdaResponseException = schema.new({
   id = id.from(_N, "InvalidLambdaResponseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidLambdaResponseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.TooManyFailedAttemptsException = schema.new({
   id = id.from(_N, "TooManyFailedAttemptsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TooManyFailedAttemptsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UnexpectedLambdaException = schema.new({
   id = id.from(_N, "UnexpectedLambdaException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UnexpectedLambdaException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UserLambdaValidationException = schema.new({
   id = id.from(_N, "UserLambdaValidationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UserLambdaValidationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AttributeType = schema.new({
   id = id.from(_N, "AttributeType"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "AttributeType", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "AttributeType", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminCreateUserInput = schema.new({
   id = id.from(_N, "AdminCreateUserRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminCreateUserInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminCreateUserInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserAttributes = schema.new({
         id = id.from(_N, "AdminCreateUserInput", "UserAttributes"),
         type = "list",
         name = "UserAttributes",
         target_id = prelude.Document.id,
         list_member = M.AttributeType,
      }),
      ValidationData = schema.new({
         id = id.from(_N, "AdminCreateUserInput", "ValidationData"),
         type = "list",
         name = "ValidationData",
         target_id = prelude.Document.id,
         list_member = M.AttributeType,
      }),
      TemporaryPassword = schema.new({
         id = id.from(_N, "AdminCreateUserInput", "TemporaryPassword"),
         type = "string",
         name = "TemporaryPassword",
         target_id = prelude.String.id,
      }),
      ForceAliasCreation = schema.new({
         id = id.from(_N, "AdminCreateUserInput", "ForceAliasCreation"),
         type = "boolean",
         name = "ForceAliasCreation",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      MessageAction = schema.new({
         id = id.from(_N, "AdminCreateUserInput", "MessageAction"),
         type = "string",
         name = "MessageAction",
         target_id = prelude.String.id,
      }),
      DesiredDeliveryMediums = schema.new({
         id = id.from(_N, "AdminCreateUserInput", "DesiredDeliveryMediums"),
         type = "list",
         name = "DesiredDeliveryMediums",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "AdminCreateUserInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.MFAOptionType = schema.new({
   id = id.from(_N, "MFAOptionType"),
   type = "structure",
   members = {
      DeliveryMedium = schema.new({
         id = id.from(_N, "MFAOptionType", "DeliveryMedium"),
         type = "string",
         name = "DeliveryMedium",
         target_id = prelude.String.id,
      }),
      AttributeName = schema.new({
         id = id.from(_N, "MFAOptionType", "AttributeName"),
         type = "string",
         name = "AttributeName",
         target_id = prelude.String.id,
      }),
   },
})

M.UserType = schema.new({
   id = id.from(_N, "UserType"),
   type = "structure",
   members = {
      Username = schema.new({
         id = id.from(_N, "UserType", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "UserType", "Attributes"),
         type = "list",
         name = "Attributes",
         target_id = prelude.Document.id,
         list_member = M.AttributeType,
      }),
      UserCreateDate = schema.new({
         id = id.from(_N, "UserType", "UserCreateDate"),
         type = "timestamp",
         name = "UserCreateDate",
         target_id = prelude.Timestamp.id,
      }),
      UserLastModifiedDate = schema.new({
         id = id.from(_N, "UserType", "UserLastModifiedDate"),
         type = "timestamp",
         name = "UserLastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "UserType", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      UserStatus = schema.new({
         id = id.from(_N, "UserType", "UserStatus"),
         type = "string",
         name = "UserStatus",
         target_id = prelude.String.id,
      }),
      MFAOptions = schema.new({
         id = id.from(_N, "UserType", "MFAOptions"),
         type = "list",
         name = "MFAOptions",
         target_id = prelude.Document.id,
         list_member = M.MFAOptionType,
      }),
   },
})

M.AdminCreateUserOutput = schema.new({
   id = id.from(_N, "AdminCreateUserResponse"),
   type = "structure",
   members = {
      User = schema.new({
         id = id.from(_N, "AdminCreateUserOutput", "User"),
         type = "structure",
         name = "User",
         target_id = id.from(_N, "UserType"),
         target = M.UserType,
      }),
   },
})

M.CodeDeliveryFailureException = schema.new({
   id = id.from(_N, "CodeDeliveryFailureException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CodeDeliveryFailureException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidPasswordException = schema.new({
   id = id.from(_N, "InvalidPasswordException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidPasswordException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidSmsRoleAccessPolicyException = schema.new({
   id = id.from(_N, "InvalidSmsRoleAccessPolicyException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidSmsRoleAccessPolicyException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidSmsRoleTrustRelationshipException = schema.new({
   id = id.from(_N, "InvalidSmsRoleTrustRelationshipException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidSmsRoleTrustRelationshipException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.PreconditionNotMetException = schema.new({
   id = id.from(_N, "PreconditionNotMetException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "PreconditionNotMetException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UnsupportedUserStateException = schema.new({
   id = id.from(_N, "UnsupportedUserStateException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UnsupportedUserStateException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UsernameExistsException = schema.new({
   id = id.from(_N, "UsernameExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UsernameExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.MessageTemplateType = schema.new({
   id = id.from(_N, "MessageTemplateType"),
   type = "structure",
   members = {
      SMSMessage = schema.new({
         id = id.from(_N, "MessageTemplateType", "SMSMessage"),
         type = "string",
         name = "SMSMessage",
         target_id = prelude.String.id,
      }),
      EmailMessage = schema.new({
         id = id.from(_N, "MessageTemplateType", "EmailMessage"),
         type = "string",
         name = "EmailMessage",
         target_id = prelude.String.id,
      }),
      EmailSubject = schema.new({
         id = id.from(_N, "MessageTemplateType", "EmailSubject"),
         type = "string",
         name = "EmailSubject",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminCreateUserConfigType = schema.new({
   id = id.from(_N, "AdminCreateUserConfigType"),
   type = "structure",
   members = {
      AllowAdminCreateUserOnly = schema.new({
         id = id.from(_N, "AdminCreateUserConfigType", "AllowAdminCreateUserOnly"),
         type = "boolean",
         name = "AllowAdminCreateUserOnly",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      UnusedAccountValidityDays = schema.new({
         id = id.from(_N, "AdminCreateUserConfigType", "UnusedAccountValidityDays"),
         type = "integer",
         name = "UnusedAccountValidityDays",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      InviteMessageTemplate = schema.new({
         id = id.from(_N, "AdminCreateUserConfigType", "InviteMessageTemplate"),
         type = "structure",
         name = "InviteMessageTemplate",
         target_id = id.from(_N, "MessageTemplateType"),
         target = M.MessageTemplateType,
      }),
   },
})

M.AdminDeleteUserInput = schema.new({
   id = id.from(_N, "AdminDeleteUserRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminDeleteUserInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminDeleteUserInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminDeleteUserOutput = prelude.Unit

M.AdminDeleteUserAttributesInput = schema.new({
   id = id.from(_N, "AdminDeleteUserAttributesRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminDeleteUserAttributesInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminDeleteUserAttributesInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserAttributeNames = schema.new({
         id = id.from(_N, "AdminDeleteUserAttributesInput", "UserAttributeNames"),
         type = "list",
         name = "UserAttributeNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminDeleteUserAttributesOutput = schema.new({
   id = id.from(_N, "AdminDeleteUserAttributesResponse"),
   type = "structure",
})

M.ProviderUserIdentifierType = schema.new({
   id = id.from(_N, "ProviderUserIdentifierType"),
   type = "structure",
   members = {
      ProviderName = schema.new({
         id = id.from(_N, "ProviderUserIdentifierType", "ProviderName"),
         type = "string",
         name = "ProviderName",
         target_id = prelude.String.id,
      }),
      ProviderAttributeName = schema.new({
         id = id.from(_N, "ProviderUserIdentifierType", "ProviderAttributeName"),
         type = "string",
         name = "ProviderAttributeName",
         target_id = prelude.String.id,
      }),
      ProviderAttributeValue = schema.new({
         id = id.from(_N, "ProviderUserIdentifierType", "ProviderAttributeValue"),
         type = "string",
         name = "ProviderAttributeValue",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminDisableProviderForUserInput = schema.new({
   id = id.from(_N, "AdminDisableProviderForUserRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminDisableProviderForUserInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      User = schema.new({
         id = id.from(_N, "AdminDisableProviderForUserInput", "User"),
         type = "structure",
         name = "User",
         target_id = id.from(_N, "ProviderUserIdentifierType"),
         target = M.ProviderUserIdentifierType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminDisableProviderForUserOutput = schema.new({
   id = id.from(_N, "AdminDisableProviderForUserResponse"),
   type = "structure",
})

M.AliasExistsException = schema.new({
   id = id.from(_N, "AliasExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "AliasExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminDisableUserInput = schema.new({
   id = id.from(_N, "AdminDisableUserRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminDisableUserInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminDisableUserInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminDisableUserOutput = schema.new({
   id = id.from(_N, "AdminDisableUserResponse"),
   type = "structure",
})

M.AdminEnableUserInput = schema.new({
   id = id.from(_N, "AdminEnableUserRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminEnableUserInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminEnableUserInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminEnableUserOutput = schema.new({
   id = id.from(_N, "AdminEnableUserResponse"),
   type = "structure",
})

M.AdminForgetDeviceInput = schema.new({
   id = id.from(_N, "AdminForgetDeviceRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminForgetDeviceInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminForgetDeviceInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeviceKey = schema.new({
         id = id.from(_N, "AdminForgetDeviceInput", "DeviceKey"),
         type = "string",
         name = "DeviceKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminForgetDeviceOutput = prelude.Unit

M.InvalidUserPoolConfigurationException = schema.new({
   id = id.from(_N, "InvalidUserPoolConfigurationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidUserPoolConfigurationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminGetDeviceInput = schema.new({
   id = id.from(_N, "AdminGetDeviceRequest"),
   type = "structure",
   members = {
      DeviceKey = schema.new({
         id = id.from(_N, "AdminGetDeviceInput", "DeviceKey"),
         type = "string",
         name = "DeviceKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "AdminGetDeviceInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminGetDeviceInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeviceType = schema.new({
   id = id.from(_N, "DeviceType"),
   type = "structure",
   members = {
      DeviceKey = schema.new({
         id = id.from(_N, "DeviceType", "DeviceKey"),
         type = "string",
         name = "DeviceKey",
         target_id = prelude.String.id,
      }),
      DeviceAttributes = schema.new({
         id = id.from(_N, "DeviceType", "DeviceAttributes"),
         type = "list",
         name = "DeviceAttributes",
         target_id = prelude.Document.id,
         list_member = M.AttributeType,
      }),
      DeviceCreateDate = schema.new({
         id = id.from(_N, "DeviceType", "DeviceCreateDate"),
         type = "timestamp",
         name = "DeviceCreateDate",
         target_id = prelude.Timestamp.id,
      }),
      DeviceLastModifiedDate = schema.new({
         id = id.from(_N, "DeviceType", "DeviceLastModifiedDate"),
         type = "timestamp",
         name = "DeviceLastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      DeviceLastAuthenticatedDate = schema.new({
         id = id.from(_N, "DeviceType", "DeviceLastAuthenticatedDate"),
         type = "timestamp",
         name = "DeviceLastAuthenticatedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AdminGetDeviceOutput = schema.new({
   id = id.from(_N, "AdminGetDeviceResponse"),
   type = "structure",
   members = {
      Device = schema.new({
         id = id.from(_N, "AdminGetDeviceOutput", "Device"),
         type = "structure",
         name = "Device",
         target_id = id.from(_N, "DeviceType"),
         target = M.DeviceType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminGetUserInput = schema.new({
   id = id.from(_N, "AdminGetUserRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminGetUserInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminGetUserInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminGetUserOutput = schema.new({
   id = id.from(_N, "AdminGetUserResponse"),
   type = "structure",
   members = {
      Username = schema.new({
         id = id.from(_N, "AdminGetUserOutput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserAttributes = schema.new({
         id = id.from(_N, "AdminGetUserOutput", "UserAttributes"),
         type = "list",
         name = "UserAttributes",
         target_id = prelude.Document.id,
         list_member = M.AttributeType,
      }),
      UserCreateDate = schema.new({
         id = id.from(_N, "AdminGetUserOutput", "UserCreateDate"),
         type = "timestamp",
         name = "UserCreateDate",
         target_id = prelude.Timestamp.id,
      }),
      UserLastModifiedDate = schema.new({
         id = id.from(_N, "AdminGetUserOutput", "UserLastModifiedDate"),
         type = "timestamp",
         name = "UserLastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "AdminGetUserOutput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      UserStatus = schema.new({
         id = id.from(_N, "AdminGetUserOutput", "UserStatus"),
         type = "string",
         name = "UserStatus",
         target_id = prelude.String.id,
      }),
      MFAOptions = schema.new({
         id = id.from(_N, "AdminGetUserOutput", "MFAOptions"),
         type = "list",
         name = "MFAOptions",
         target_id = prelude.Document.id,
         list_member = M.MFAOptionType,
      }),
      PreferredMfaSetting = schema.new({
         id = id.from(_N, "AdminGetUserOutput", "PreferredMfaSetting"),
         type = "string",
         name = "PreferredMfaSetting",
         target_id = prelude.String.id,
      }),
      UserMFASettingList = schema.new({
         id = id.from(_N, "AdminGetUserOutput", "UserMFASettingList"),
         type = "list",
         name = "UserMFASettingList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.AnalyticsMetadataType = schema.new({
   id = id.from(_N, "AnalyticsMetadataType"),
   type = "structure",
   members = {
      AnalyticsEndpointId = schema.new({
         id = id.from(_N, "AnalyticsMetadataType", "AnalyticsEndpointId"),
         type = "string",
         name = "AnalyticsEndpointId",
         target_id = prelude.String.id,
      }),
   },
})

M.HttpHeader = schema.new({
   id = id.from(_N, "HttpHeader"),
   type = "structure",
   members = {
      headerName = schema.new({
         id = id.from(_N, "HttpHeader", "headerName"),
         type = "string",
         name = "headerName",
         target_id = prelude.String.id,
      }),
      headerValue = schema.new({
         id = id.from(_N, "HttpHeader", "headerValue"),
         type = "string",
         name = "headerValue",
         target_id = prelude.String.id,
      }),
   },
})

M.ContextDataType = schema.new({
   id = id.from(_N, "ContextDataType"),
   type = "structure",
   members = {
      IpAddress = schema.new({
         id = id.from(_N, "ContextDataType", "IpAddress"),
         type = "string",
         name = "IpAddress",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ServerName = schema.new({
         id = id.from(_N, "ContextDataType", "ServerName"),
         type = "string",
         name = "ServerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ServerPath = schema.new({
         id = id.from(_N, "ContextDataType", "ServerPath"),
         type = "string",
         name = "ServerPath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      HttpHeaders = schema.new({
         id = id.from(_N, "ContextDataType", "HttpHeaders"),
         type = "list",
         name = "HttpHeaders",
         target_id = prelude.Document.id,
         list_member = M.HttpHeader,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EncodedData = schema.new({
         id = id.from(_N, "ContextDataType", "EncodedData"),
         type = "string",
         name = "EncodedData",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminInitiateAuthInput = schema.new({
   id = id.from(_N, "AdminInitiateAuthRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminInitiateAuthInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "AdminInitiateAuthInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthFlow = schema.new({
         id = id.from(_N, "AdminInitiateAuthInput", "AuthFlow"),
         type = "string",
         name = "AuthFlow",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthParameters = schema.new({
         id = id.from(_N, "AdminInitiateAuthInput", "AuthParameters"),
         type = "map",
         name = "AuthParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "AdminInitiateAuthInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AnalyticsMetadata = schema.new({
         id = id.from(_N, "AdminInitiateAuthInput", "AnalyticsMetadata"),
         type = "structure",
         name = "AnalyticsMetadata",
         target_id = id.from(_N, "AnalyticsMetadataType"),
         target = M.AnalyticsMetadataType,
      }),
      ContextData = schema.new({
         id = id.from(_N, "AdminInitiateAuthInput", "ContextData"),
         type = "structure",
         name = "ContextData",
         target_id = id.from(_N, "ContextDataType"),
         target = M.ContextDataType,
      }),
      Session = schema.new({
         id = id.from(_N, "AdminInitiateAuthInput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
   },
})

M.NewDeviceMetadataType = schema.new({
   id = id.from(_N, "NewDeviceMetadataType"),
   type = "structure",
   members = {
      DeviceKey = schema.new({
         id = id.from(_N, "NewDeviceMetadataType", "DeviceKey"),
         type = "string",
         name = "DeviceKey",
         target_id = prelude.String.id,
      }),
      DeviceGroupKey = schema.new({
         id = id.from(_N, "NewDeviceMetadataType", "DeviceGroupKey"),
         type = "string",
         name = "DeviceGroupKey",
         target_id = prelude.String.id,
      }),
   },
})

M.AuthenticationResultType = schema.new({
   id = id.from(_N, "AuthenticationResultType"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "AuthenticationResultType", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
      }),
      ExpiresIn = schema.new({
         id = id.from(_N, "AuthenticationResultType", "ExpiresIn"),
         type = "integer",
         name = "ExpiresIn",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      TokenType = schema.new({
         id = id.from(_N, "AuthenticationResultType", "TokenType"),
         type = "string",
         name = "TokenType",
         target_id = prelude.String.id,
      }),
      RefreshToken = schema.new({
         id = id.from(_N, "AuthenticationResultType", "RefreshToken"),
         type = "string",
         name = "RefreshToken",
         target_id = prelude.String.id,
      }),
      IdToken = schema.new({
         id = id.from(_N, "AuthenticationResultType", "IdToken"),
         type = "string",
         name = "IdToken",
         target_id = prelude.String.id,
      }),
      NewDeviceMetadata = schema.new({
         id = id.from(_N, "AuthenticationResultType", "NewDeviceMetadata"),
         type = "structure",
         name = "NewDeviceMetadata",
         target_id = id.from(_N, "NewDeviceMetadataType"),
         target = M.NewDeviceMetadataType,
      }),
   },
})

M.AdminInitiateAuthOutput = schema.new({
   id = id.from(_N, "AdminInitiateAuthResponse"),
   type = "structure",
   members = {
      ChallengeName = schema.new({
         id = id.from(_N, "AdminInitiateAuthOutput", "ChallengeName"),
         type = "string",
         name = "ChallengeName",
         target_id = prelude.String.id,
      }),
      Session = schema.new({
         id = id.from(_N, "AdminInitiateAuthOutput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
      ChallengeParameters = schema.new({
         id = id.from(_N, "AdminInitiateAuthOutput", "ChallengeParameters"),
         type = "map",
         name = "ChallengeParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AuthenticationResult = schema.new({
         id = id.from(_N, "AdminInitiateAuthOutput", "AuthenticationResult"),
         type = "structure",
         name = "AuthenticationResult",
         target_id = id.from(_N, "AuthenticationResultType"),
         target = M.AuthenticationResultType,
      }),
      AvailableChallenges = schema.new({
         id = id.from(_N, "AdminInitiateAuthOutput", "AvailableChallenges"),
         type = "list",
         name = "AvailableChallenges",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.InvalidEmailRoleAccessPolicyException = schema.new({
   id = id.from(_N, "InvalidEmailRoleAccessPolicyException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidEmailRoleAccessPolicyException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.MFAMethodNotFoundException = schema.new({
   id = id.from(_N, "MFAMethodNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "MFAMethodNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.PasswordResetRequiredException = schema.new({
   id = id.from(_N, "PasswordResetRequiredException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "PasswordResetRequiredException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UnsupportedOperationException = schema.new({
   id = id.from(_N, "UnsupportedOperationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UnsupportedOperationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UserNotConfirmedException = schema.new({
   id = id.from(_N, "UserNotConfirmedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UserNotConfirmedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminLinkProviderForUserInput = schema.new({
   id = id.from(_N, "AdminLinkProviderForUserRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminLinkProviderForUserInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationUser = schema.new({
         id = id.from(_N, "AdminLinkProviderForUserInput", "DestinationUser"),
         type = "structure",
         name = "DestinationUser",
         target_id = id.from(_N, "ProviderUserIdentifierType"),
         target = M.ProviderUserIdentifierType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SourceUser = schema.new({
         id = id.from(_N, "AdminLinkProviderForUserInput", "SourceUser"),
         type = "structure",
         name = "SourceUser",
         target_id = id.from(_N, "ProviderUserIdentifierType"),
         target = M.ProviderUserIdentifierType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminLinkProviderForUserOutput = schema.new({
   id = id.from(_N, "AdminLinkProviderForUserResponse"),
   type = "structure",
})

M.AdminListDevicesInput = schema.new({
   id = id.from(_N, "AdminListDevicesRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminListDevicesInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminListDevicesInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Limit = schema.new({
         id = id.from(_N, "AdminListDevicesInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "AdminListDevicesInput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminListDevicesOutput = schema.new({
   id = id.from(_N, "AdminListDevicesResponse"),
   type = "structure",
   members = {
      Devices = schema.new({
         id = id.from(_N, "AdminListDevicesOutput", "Devices"),
         type = "list",
         name = "Devices",
         target_id = prelude.Document.id,
         list_member = M.DeviceType,
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "AdminListDevicesOutput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminListGroupsForUserInput = schema.new({
   id = id.from(_N, "AdminListGroupsForUserRequest"),
   type = "structure",
   members = {
      Username = schema.new({
         id = id.from(_N, "AdminListGroupsForUserInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "AdminListGroupsForUserInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Limit = schema.new({
         id = id.from(_N, "AdminListGroupsForUserInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "AdminListGroupsForUserInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GroupType = schema.new({
   id = id.from(_N, "GroupType"),
   type = "structure",
   members = {
      GroupName = schema.new({
         id = id.from(_N, "GroupType", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "GroupType", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GroupType", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "GroupType", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      Precedence = schema.new({
         id = id.from(_N, "GroupType", "Precedence"),
         type = "integer",
         name = "Precedence",
         target_id = prelude.Integer.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "GroupType", "LastModifiedDate"),
         type = "timestamp",
         name = "LastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "GroupType", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AdminListGroupsForUserOutput = schema.new({
   id = id.from(_N, "AdminListGroupsForUserResponse"),
   type = "structure",
   members = {
      Groups = schema.new({
         id = id.from(_N, "AdminListGroupsForUserOutput", "Groups"),
         type = "list",
         name = "Groups",
         target_id = prelude.Document.id,
         list_member = M.GroupType,
      }),
      NextToken = schema.new({
         id = id.from(_N, "AdminListGroupsForUserOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminListUserAuthEventsInput = schema.new({
   id = id.from(_N, "AdminListUserAuthEventsRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminListUserAuthEventsInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminListUserAuthEventsInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "AdminListUserAuthEventsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "AdminListUserAuthEventsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ChallengeResponseType = schema.new({
   id = id.from(_N, "ChallengeResponseType"),
   type = "structure",
   members = {
      ChallengeName = schema.new({
         id = id.from(_N, "ChallengeResponseType", "ChallengeName"),
         type = "string",
         name = "ChallengeName",
         target_id = prelude.String.id,
      }),
      ChallengeResponse = schema.new({
         id = id.from(_N, "ChallengeResponseType", "ChallengeResponse"),
         type = "string",
         name = "ChallengeResponse",
         target_id = prelude.String.id,
      }),
   },
})

M.EventContextDataType = schema.new({
   id = id.from(_N, "EventContextDataType"),
   type = "structure",
   members = {
      IpAddress = schema.new({
         id = id.from(_N, "EventContextDataType", "IpAddress"),
         type = "string",
         name = "IpAddress",
         target_id = prelude.String.id,
      }),
      DeviceName = schema.new({
         id = id.from(_N, "EventContextDataType", "DeviceName"),
         type = "string",
         name = "DeviceName",
         target_id = prelude.String.id,
      }),
      Timezone = schema.new({
         id = id.from(_N, "EventContextDataType", "Timezone"),
         type = "string",
         name = "Timezone",
         target_id = prelude.String.id,
      }),
      City = schema.new({
         id = id.from(_N, "EventContextDataType", "City"),
         type = "string",
         name = "City",
         target_id = prelude.String.id,
      }),
      Country = schema.new({
         id = id.from(_N, "EventContextDataType", "Country"),
         type = "string",
         name = "Country",
         target_id = prelude.String.id,
      }),
   },
})

M.EventFeedbackType = schema.new({
   id = id.from(_N, "EventFeedbackType"),
   type = "structure",
   members = {
      FeedbackValue = schema.new({
         id = id.from(_N, "EventFeedbackType", "FeedbackValue"),
         type = "string",
         name = "FeedbackValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Provider = schema.new({
         id = id.from(_N, "EventFeedbackType", "Provider"),
         type = "string",
         name = "Provider",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FeedbackDate = schema.new({
         id = id.from(_N, "EventFeedbackType", "FeedbackDate"),
         type = "timestamp",
         name = "FeedbackDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.EventRiskType = schema.new({
   id = id.from(_N, "EventRiskType"),
   type = "structure",
   members = {
      RiskDecision = schema.new({
         id = id.from(_N, "EventRiskType", "RiskDecision"),
         type = "string",
         name = "RiskDecision",
         target_id = prelude.String.id,
      }),
      RiskLevel = schema.new({
         id = id.from(_N, "EventRiskType", "RiskLevel"),
         type = "string",
         name = "RiskLevel",
         target_id = prelude.String.id,
      }),
      CompromisedCredentialsDetected = schema.new({
         id = id.from(_N, "EventRiskType", "CompromisedCredentialsDetected"),
         type = "boolean",
         name = "CompromisedCredentialsDetected",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AuthEventType = schema.new({
   id = id.from(_N, "AuthEventType"),
   type = "structure",
   members = {
      EventId = schema.new({
         id = id.from(_N, "AuthEventType", "EventId"),
         type = "string",
         name = "EventId",
         target_id = prelude.String.id,
      }),
      EventType = schema.new({
         id = id.from(_N, "AuthEventType", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "AuthEventType", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      EventResponse = schema.new({
         id = id.from(_N, "AuthEventType", "EventResponse"),
         type = "string",
         name = "EventResponse",
         target_id = prelude.String.id,
      }),
      EventRisk = schema.new({
         id = id.from(_N, "AuthEventType", "EventRisk"),
         type = "structure",
         name = "EventRisk",
         target_id = id.from(_N, "EventRiskType"),
         target = M.EventRiskType,
      }),
      ChallengeResponses = schema.new({
         id = id.from(_N, "AuthEventType", "ChallengeResponses"),
         type = "list",
         name = "ChallengeResponses",
         target_id = prelude.Document.id,
         list_member = M.ChallengeResponseType,
      }),
      EventContextData = schema.new({
         id = id.from(_N, "AuthEventType", "EventContextData"),
         type = "structure",
         name = "EventContextData",
         target_id = id.from(_N, "EventContextDataType"),
         target = M.EventContextDataType,
      }),
      EventFeedback = schema.new({
         id = id.from(_N, "AuthEventType", "EventFeedback"),
         type = "structure",
         name = "EventFeedback",
         target_id = id.from(_N, "EventFeedbackType"),
         target = M.EventFeedbackType,
      }),
   },
})

M.AdminListUserAuthEventsOutput = schema.new({
   id = id.from(_N, "AdminListUserAuthEventsResponse"),
   type = "structure",
   members = {
      AuthEvents = schema.new({
         id = id.from(_N, "AdminListUserAuthEventsOutput", "AuthEvents"),
         type = "list",
         name = "AuthEvents",
         target_id = prelude.Document.id,
         list_member = M.AuthEventType,
      }),
      NextToken = schema.new({
         id = id.from(_N, "AdminListUserAuthEventsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UserPoolAddOnNotEnabledException = schema.new({
   id = id.from(_N, "UserPoolAddOnNotEnabledException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UserPoolAddOnNotEnabledException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminRemoveUserFromGroupInput = schema.new({
   id = id.from(_N, "AdminRemoveUserFromGroupRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminRemoveUserFromGroupInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminRemoveUserFromGroupInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GroupName = schema.new({
         id = id.from(_N, "AdminRemoveUserFromGroupInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminRemoveUserFromGroupOutput = prelude.Unit

M.AdminResetUserPasswordInput = schema.new({
   id = id.from(_N, "AdminResetUserPasswordRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminResetUserPasswordInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminResetUserPasswordInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "AdminResetUserPasswordInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AdminResetUserPasswordOutput = schema.new({
   id = id.from(_N, "AdminResetUserPasswordResponse"),
   type = "structure",
})

M.AdminRespondToAuthChallengeInput = schema.new({
   id = id.from(_N, "AdminRespondToAuthChallengeRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ChallengeName = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeInput", "ChallengeName"),
         type = "string",
         name = "ChallengeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ChallengeResponses = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeInput", "ChallengeResponses"),
         type = "map",
         name = "ChallengeResponses",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Session = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeInput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
      AnalyticsMetadata = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeInput", "AnalyticsMetadata"),
         type = "structure",
         name = "AnalyticsMetadata",
         target_id = id.from(_N, "AnalyticsMetadataType"),
         target = M.AnalyticsMetadataType,
      }),
      ContextData = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeInput", "ContextData"),
         type = "structure",
         name = "ContextData",
         target_id = id.from(_N, "ContextDataType"),
         target = M.ContextDataType,
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AdminRespondToAuthChallengeOutput = schema.new({
   id = id.from(_N, "AdminRespondToAuthChallengeResponse"),
   type = "structure",
   members = {
      ChallengeName = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeOutput", "ChallengeName"),
         type = "string",
         name = "ChallengeName",
         target_id = prelude.String.id,
      }),
      Session = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeOutput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
      ChallengeParameters = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeOutput", "ChallengeParameters"),
         type = "map",
         name = "ChallengeParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AuthenticationResult = schema.new({
         id = id.from(_N, "AdminRespondToAuthChallengeOutput", "AuthenticationResult"),
         type = "structure",
         name = "AuthenticationResult",
         target_id = id.from(_N, "AuthenticationResultType"),
         target = M.AuthenticationResultType,
      }),
   },
})

M.CodeMismatchException = schema.new({
   id = id.from(_N, "CodeMismatchException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CodeMismatchException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ExpiredCodeException = schema.new({
   id = id.from(_N, "ExpiredCodeException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ExpiredCodeException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.PasswordHistoryPolicyViolationException = schema.new({
   id = id.from(_N, "PasswordHistoryPolicyViolationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "PasswordHistoryPolicyViolationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.SoftwareTokenMFANotFoundException = schema.new({
   id = id.from(_N, "SoftwareTokenMFANotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "SoftwareTokenMFANotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.EmailMfaSettingsType = schema.new({
   id = id.from(_N, "EmailMfaSettingsType"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "EmailMfaSettingsType", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      PreferredMfa = schema.new({
         id = id.from(_N, "EmailMfaSettingsType", "PreferredMfa"),
         type = "boolean",
         name = "PreferredMfa",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.SMSMfaSettingsType = schema.new({
   id = id.from(_N, "SMSMfaSettingsType"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "SMSMfaSettingsType", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      PreferredMfa = schema.new({
         id = id.from(_N, "SMSMfaSettingsType", "PreferredMfa"),
         type = "boolean",
         name = "PreferredMfa",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.SoftwareTokenMfaSettingsType = schema.new({
   id = id.from(_N, "SoftwareTokenMfaSettingsType"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "SoftwareTokenMfaSettingsType", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      PreferredMfa = schema.new({
         id = id.from(_N, "SoftwareTokenMfaSettingsType", "PreferredMfa"),
         type = "boolean",
         name = "PreferredMfa",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.WebAuthnMfaSettingsType = schema.new({
   id = id.from(_N, "WebAuthnMfaSettingsType"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "WebAuthnMfaSettingsType", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.AdminSetUserMFAPreferenceInput = schema.new({
   id = id.from(_N, "AdminSetUserMFAPreferenceRequest"),
   type = "structure",
   members = {
      SMSMfaSettings = schema.new({
         id = id.from(_N, "AdminSetUserMFAPreferenceInput", "SMSMfaSettings"),
         type = "structure",
         name = "SMSMfaSettings",
         target_id = id.from(_N, "SMSMfaSettingsType"),
         target = M.SMSMfaSettingsType,
      }),
      SoftwareTokenMfaSettings = schema.new({
         id = id.from(_N, "AdminSetUserMFAPreferenceInput", "SoftwareTokenMfaSettings"),
         type = "structure",
         name = "SoftwareTokenMfaSettings",
         target_id = id.from(_N, "SoftwareTokenMfaSettingsType"),
         target = M.SoftwareTokenMfaSettingsType,
      }),
      EmailMfaSettings = schema.new({
         id = id.from(_N, "AdminSetUserMFAPreferenceInput", "EmailMfaSettings"),
         type = "structure",
         name = "EmailMfaSettings",
         target_id = id.from(_N, "EmailMfaSettingsType"),
         target = M.EmailMfaSettingsType,
      }),
      WebAuthnMfaSettings = schema.new({
         id = id.from(_N, "AdminSetUserMFAPreferenceInput", "WebAuthnMfaSettings"),
         type = "structure",
         name = "WebAuthnMfaSettings",
         target_id = id.from(_N, "WebAuthnMfaSettingsType"),
         target = M.WebAuthnMfaSettingsType,
      }),
      Username = schema.new({
         id = id.from(_N, "AdminSetUserMFAPreferenceInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "AdminSetUserMFAPreferenceInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminSetUserMFAPreferenceOutput = schema.new({
   id = id.from(_N, "AdminSetUserMFAPreferenceResponse"),
   type = "structure",
})

M.AdminSetUserPasswordInput = schema.new({
   id = id.from(_N, "AdminSetUserPasswordRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminSetUserPasswordInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminSetUserPasswordInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Password = schema.new({
         id = id.from(_N, "AdminSetUserPasswordInput", "Password"),
         type = "string",
         name = "Password",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Permanent = schema.new({
         id = id.from(_N, "AdminSetUserPasswordInput", "Permanent"),
         type = "boolean",
         name = "Permanent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.AdminSetUserPasswordOutput = schema.new({
   id = id.from(_N, "AdminSetUserPasswordResponse"),
   type = "structure",
})

M.AdminSetUserSettingsInput = schema.new({
   id = id.from(_N, "AdminSetUserSettingsRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminSetUserSettingsInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminSetUserSettingsInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MFAOptions = schema.new({
         id = id.from(_N, "AdminSetUserSettingsInput", "MFAOptions"),
         type = "list",
         name = "MFAOptions",
         target_id = prelude.Document.id,
         list_member = M.MFAOptionType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminSetUserSettingsOutput = schema.new({
   id = id.from(_N, "AdminSetUserSettingsResponse"),
   type = "structure",
})

M.AdminUpdateAuthEventFeedbackInput = schema.new({
   id = id.from(_N, "AdminUpdateAuthEventFeedbackRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminUpdateAuthEventFeedbackInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminUpdateAuthEventFeedbackInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventId = schema.new({
         id = id.from(_N, "AdminUpdateAuthEventFeedbackInput", "EventId"),
         type = "string",
         name = "EventId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FeedbackValue = schema.new({
         id = id.from(_N, "AdminUpdateAuthEventFeedbackInput", "FeedbackValue"),
         type = "string",
         name = "FeedbackValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminUpdateAuthEventFeedbackOutput = schema.new({
   id = id.from(_N, "AdminUpdateAuthEventFeedbackResponse"),
   type = "structure",
})

M.AdminUpdateDeviceStatusInput = schema.new({
   id = id.from(_N, "AdminUpdateDeviceStatusRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminUpdateDeviceStatusInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminUpdateDeviceStatusInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeviceKey = schema.new({
         id = id.from(_N, "AdminUpdateDeviceStatusInput", "DeviceKey"),
         type = "string",
         name = "DeviceKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeviceRememberedStatus = schema.new({
         id = id.from(_N, "AdminUpdateDeviceStatusInput", "DeviceRememberedStatus"),
         type = "string",
         name = "DeviceRememberedStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminUpdateDeviceStatusOutput = schema.new({
   id = id.from(_N, "AdminUpdateDeviceStatusResponse"),
   type = "structure",
})

M.AdminUpdateUserAttributesInput = schema.new({
   id = id.from(_N, "AdminUpdateUserAttributesRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminUpdateUserAttributesInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminUpdateUserAttributesInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserAttributes = schema.new({
         id = id.from(_N, "AdminUpdateUserAttributesInput", "UserAttributes"),
         type = "list",
         name = "UserAttributes",
         target_id = prelude.Document.id,
         list_member = M.AttributeType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "AdminUpdateUserAttributesInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AdminUpdateUserAttributesOutput = schema.new({
   id = id.from(_N, "AdminUpdateUserAttributesResponse"),
   type = "structure",
})

M.AdminUserGlobalSignOutInput = schema.new({
   id = id.from(_N, "AdminUserGlobalSignOutRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "AdminUserGlobalSignOutInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "AdminUserGlobalSignOutInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AdminUserGlobalSignOutOutput = schema.new({
   id = id.from(_N, "AdminUserGlobalSignOutResponse"),
   type = "structure",
})

M.AdvancedSecurityAdditionalFlowsType = schema.new({
   id = id.from(_N, "AdvancedSecurityAdditionalFlowsType"),
   type = "structure",
   members = {
      CustomAuthMode = schema.new({
         id = id.from(_N, "AdvancedSecurityAdditionalFlowsType", "CustomAuthMode"),
         type = "string",
         name = "CustomAuthMode",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsConfigurationType = schema.new({
   id = id.from(_N, "AnalyticsConfigurationType"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "AnalyticsConfigurationType", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      ApplicationArn = schema.new({
         id = id.from(_N, "AnalyticsConfigurationType", "ApplicationArn"),
         type = "string",
         name = "ApplicationArn",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "AnalyticsConfigurationType", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      ExternalId = schema.new({
         id = id.from(_N, "AnalyticsConfigurationType", "ExternalId"),
         type = "string",
         name = "ExternalId",
         target_id = prelude.String.id,
      }),
      UserDataShared = schema.new({
         id = id.from(_N, "AnalyticsConfigurationType", "UserDataShared"),
         type = "boolean",
         name = "UserDataShared",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.AssetType = schema.new({
   id = id.from(_N, "AssetType"),
   type = "structure",
   members = {
      Category = schema.new({
         id = id.from(_N, "AssetType", "Category"),
         type = "string",
         name = "Category",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ColorMode = schema.new({
         id = id.from(_N, "AssetType", "ColorMode"),
         type = "string",
         name = "ColorMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Extension = schema.new({
         id = id.from(_N, "AssetType", "Extension"),
         type = "string",
         name = "Extension",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Bytes = schema.new({
         id = id.from(_N, "AssetType", "Bytes"),
         type = "blob",
         name = "Bytes",
         target_id = prelude.Blob.id,
      }),
      ResourceId = schema.new({
         id = id.from(_N, "AssetType", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateSoftwareTokenInput = schema.new({
   id = id.from(_N, "AssociateSoftwareTokenRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "AssociateSoftwareTokenInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
      }),
      Session = schema.new({
         id = id.from(_N, "AssociateSoftwareTokenInput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateSoftwareTokenOutput = schema.new({
   id = id.from(_N, "AssociateSoftwareTokenResponse"),
   type = "structure",
   members = {
      SecretCode = schema.new({
         id = id.from(_N, "AssociateSoftwareTokenOutput", "SecretCode"),
         type = "string",
         name = "SecretCode",
         target_id = prelude.String.id,
      }),
      Session = schema.new({
         id = id.from(_N, "AssociateSoftwareTokenOutput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
   },
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

M.ForbiddenException = schema.new({
   id = id.from(_N, "ForbiddenException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ForbiddenException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ChangePasswordInput = schema.new({
   id = id.from(_N, "ChangePasswordRequest"),
   type = "structure",
   members = {
      PreviousPassword = schema.new({
         id = id.from(_N, "ChangePasswordInput", "PreviousPassword"),
         type = "string",
         name = "PreviousPassword",
         target_id = prelude.String.id,
      }),
      ProposedPassword = schema.new({
         id = id.from(_N, "ChangePasswordInput", "ProposedPassword"),
         type = "string",
         name = "ProposedPassword",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccessToken = schema.new({
         id = id.from(_N, "ChangePasswordInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ChangePasswordOutput = schema.new({
   id = id.from(_N, "ChangePasswordResponse"),
   type = "structure",
})

M.CompleteWebAuthnRegistrationInput = schema.new({
   id = id.from(_N, "CompleteWebAuthnRegistrationRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "CompleteWebAuthnRegistrationInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Credential = schema.new({
         id = id.from(_N, "CompleteWebAuthnRegistrationInput", "Credential"),
         type = "document",
         name = "Credential",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CompleteWebAuthnRegistrationOutput = schema.new({
   id = id.from(_N, "CompleteWebAuthnRegistrationResponse"),
   type = "structure",
})

M.WebAuthnChallengeNotFoundException = schema.new({
   id = id.from(_N, "WebAuthnChallengeNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "WebAuthnChallengeNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.WebAuthnClientMismatchException = schema.new({
   id = id.from(_N, "WebAuthnClientMismatchException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "WebAuthnClientMismatchException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.WebAuthnCredentialNotSupportedException = schema.new({
   id = id.from(_N, "WebAuthnCredentialNotSupportedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "WebAuthnCredentialNotSupportedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.WebAuthnNotEnabledException = schema.new({
   id = id.from(_N, "WebAuthnNotEnabledException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "WebAuthnNotEnabledException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.WebAuthnOriginNotAllowedException = schema.new({
   id = id.from(_N, "WebAuthnOriginNotAllowedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "WebAuthnOriginNotAllowedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.WebAuthnRelyingPartyMismatchException = schema.new({
   id = id.from(_N, "WebAuthnRelyingPartyMismatchException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "WebAuthnRelyingPartyMismatchException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeviceSecretVerifierConfigType = schema.new({
   id = id.from(_N, "DeviceSecretVerifierConfigType"),
   type = "structure",
   members = {
      PasswordVerifier = schema.new({
         id = id.from(_N, "DeviceSecretVerifierConfigType", "PasswordVerifier"),
         type = "string",
         name = "PasswordVerifier",
         target_id = prelude.String.id,
      }),
      Salt = schema.new({
         id = id.from(_N, "DeviceSecretVerifierConfigType", "Salt"),
         type = "string",
         name = "Salt",
         target_id = prelude.String.id,
      }),
   },
})

M.ConfirmDeviceInput = schema.new({
   id = id.from(_N, "ConfirmDeviceRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "ConfirmDeviceInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeviceKey = schema.new({
         id = id.from(_N, "ConfirmDeviceInput", "DeviceKey"),
         type = "string",
         name = "DeviceKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeviceSecretVerifierConfig = schema.new({
         id = id.from(_N, "ConfirmDeviceInput", "DeviceSecretVerifierConfig"),
         type = "structure",
         name = "DeviceSecretVerifierConfig",
         target_id = id.from(_N, "DeviceSecretVerifierConfigType"),
         target = M.DeviceSecretVerifierConfigType,
      }),
      DeviceName = schema.new({
         id = id.from(_N, "ConfirmDeviceInput", "DeviceName"),
         type = "string",
         name = "DeviceName",
         target_id = prelude.String.id,
      }),
   },
})

M.ConfirmDeviceOutput = schema.new({
   id = id.from(_N, "ConfirmDeviceResponse"),
   type = "structure",
   members = {
      UserConfirmationNecessary = schema.new({
         id = id.from(_N, "ConfirmDeviceOutput", "UserConfirmationNecessary"),
         type = "boolean",
         name = "UserConfirmationNecessary",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.DeviceKeyExistsException = schema.new({
   id = id.from(_N, "DeviceKeyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "DeviceKeyExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UserContextDataType = schema.new({
   id = id.from(_N, "UserContextDataType"),
   type = "structure",
   members = {
      IpAddress = schema.new({
         id = id.from(_N, "UserContextDataType", "IpAddress"),
         type = "string",
         name = "IpAddress",
         target_id = prelude.String.id,
      }),
      EncodedData = schema.new({
         id = id.from(_N, "UserContextDataType", "EncodedData"),
         type = "string",
         name = "EncodedData",
         target_id = prelude.String.id,
      }),
   },
})

M.ConfirmForgotPasswordInput = schema.new({
   id = id.from(_N, "ConfirmForgotPasswordRequest"),
   type = "structure",
   members = {
      ClientId = schema.new({
         id = id.from(_N, "ConfirmForgotPasswordInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SecretHash = schema.new({
         id = id.from(_N, "ConfirmForgotPasswordInput", "SecretHash"),
         type = "string",
         name = "SecretHash",
         target_id = prelude.String.id,
      }),
      Username = schema.new({
         id = id.from(_N, "ConfirmForgotPasswordInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConfirmationCode = schema.new({
         id = id.from(_N, "ConfirmForgotPasswordInput", "ConfirmationCode"),
         type = "string",
         name = "ConfirmationCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Password = schema.new({
         id = id.from(_N, "ConfirmForgotPasswordInput", "Password"),
         type = "string",
         name = "Password",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AnalyticsMetadata = schema.new({
         id = id.from(_N, "ConfirmForgotPasswordInput", "AnalyticsMetadata"),
         type = "structure",
         name = "AnalyticsMetadata",
         target_id = id.from(_N, "AnalyticsMetadataType"),
         target = M.AnalyticsMetadataType,
      }),
      UserContextData = schema.new({
         id = id.from(_N, "ConfirmForgotPasswordInput", "UserContextData"),
         type = "structure",
         name = "UserContextData",
         target_id = id.from(_N, "UserContextDataType"),
         target = M.UserContextDataType,
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "ConfirmForgotPasswordInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ConfirmForgotPasswordOutput = schema.new({
   id = id.from(_N, "ConfirmForgotPasswordResponse"),
   type = "structure",
})

M.ConfirmSignUpInput = schema.new({
   id = id.from(_N, "ConfirmSignUpRequest"),
   type = "structure",
   members = {
      ClientId = schema.new({
         id = id.from(_N, "ConfirmSignUpInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SecretHash = schema.new({
         id = id.from(_N, "ConfirmSignUpInput", "SecretHash"),
         type = "string",
         name = "SecretHash",
         target_id = prelude.String.id,
      }),
      Username = schema.new({
         id = id.from(_N, "ConfirmSignUpInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConfirmationCode = schema.new({
         id = id.from(_N, "ConfirmSignUpInput", "ConfirmationCode"),
         type = "string",
         name = "ConfirmationCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ForceAliasCreation = schema.new({
         id = id.from(_N, "ConfirmSignUpInput", "ForceAliasCreation"),
         type = "boolean",
         name = "ForceAliasCreation",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      AnalyticsMetadata = schema.new({
         id = id.from(_N, "ConfirmSignUpInput", "AnalyticsMetadata"),
         type = "structure",
         name = "AnalyticsMetadata",
         target_id = id.from(_N, "AnalyticsMetadataType"),
         target = M.AnalyticsMetadataType,
      }),
      UserContextData = schema.new({
         id = id.from(_N, "ConfirmSignUpInput", "UserContextData"),
         type = "structure",
         name = "UserContextData",
         target_id = id.from(_N, "UserContextDataType"),
         target = M.UserContextDataType,
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "ConfirmSignUpInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Session = schema.new({
         id = id.from(_N, "ConfirmSignUpInput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
   },
})

M.ConfirmSignUpOutput = schema.new({
   id = id.from(_N, "ConfirmSignUpResponse"),
   type = "structure",
   members = {
      Session = schema.new({
         id = id.from(_N, "ConfirmSignUpOutput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateGroupInput = schema.new({
   id = id.from(_N, "CreateGroupRequest"),
   type = "structure",
   members = {
      GroupName = schema.new({
         id = id.from(_N, "CreateGroupInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "CreateGroupInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateGroupInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "CreateGroupInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      Precedence = schema.new({
         id = id.from(_N, "CreateGroupInput", "Precedence"),
         type = "integer",
         name = "Precedence",
         target_id = prelude.Integer.id,
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
         target_id = id.from(_N, "GroupType"),
         target = M.GroupType,
      }),
   },
})

M.GroupExistsException = schema.new({
   id = id.from(_N, "GroupExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "GroupExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateIdentityProviderInput = schema.new({
   id = id.from(_N, "CreateIdentityProviderRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "CreateIdentityProviderInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProviderName = schema.new({
         id = id.from(_N, "CreateIdentityProviderInput", "ProviderName"),
         type = "string",
         name = "ProviderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProviderType = schema.new({
         id = id.from(_N, "CreateIdentityProviderInput", "ProviderType"),
         type = "string",
         name = "ProviderType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProviderDetails = schema.new({
         id = id.from(_N, "CreateIdentityProviderInput", "ProviderDetails"),
         type = "map",
         name = "ProviderDetails",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AttributeMapping = schema.new({
         id = id.from(_N, "CreateIdentityProviderInput", "AttributeMapping"),
         type = "map",
         name = "AttributeMapping",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      IdpIdentifiers = schema.new({
         id = id.from(_N, "CreateIdentityProviderInput", "IdpIdentifiers"),
         type = "list",
         name = "IdpIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.IdentityProviderType = schema.new({
   id = id.from(_N, "IdentityProviderType"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "IdentityProviderType", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      ProviderName = schema.new({
         id = id.from(_N, "IdentityProviderType", "ProviderName"),
         type = "string",
         name = "ProviderName",
         target_id = prelude.String.id,
      }),
      ProviderType = schema.new({
         id = id.from(_N, "IdentityProviderType", "ProviderType"),
         type = "string",
         name = "ProviderType",
         target_id = prelude.String.id,
      }),
      ProviderDetails = schema.new({
         id = id.from(_N, "IdentityProviderType", "ProviderDetails"),
         type = "map",
         name = "ProviderDetails",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AttributeMapping = schema.new({
         id = id.from(_N, "IdentityProviderType", "AttributeMapping"),
         type = "map",
         name = "AttributeMapping",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      IdpIdentifiers = schema.new({
         id = id.from(_N, "IdentityProviderType", "IdpIdentifiers"),
         type = "list",
         name = "IdpIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "IdentityProviderType", "LastModifiedDate"),
         type = "timestamp",
         name = "LastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "IdentityProviderType", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateIdentityProviderOutput = schema.new({
   id = id.from(_N, "CreateIdentityProviderResponse"),
   type = "structure",
   members = {
      IdentityProvider = schema.new({
         id = id.from(_N, "CreateIdentityProviderOutput", "IdentityProvider"),
         type = "structure",
         name = "IdentityProvider",
         target_id = id.from(_N, "IdentityProviderType"),
         target = M.IdentityProviderType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DuplicateProviderException = schema.new({
   id = id.from(_N, "DuplicateProviderException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "DuplicateProviderException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateManagedLoginBrandingInput = schema.new({
   id = id.from(_N, "CreateManagedLoginBrandingRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "CreateManagedLoginBrandingInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "CreateManagedLoginBrandingInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UseCognitoProvidedValues = schema.new({
         id = id.from(_N, "CreateManagedLoginBrandingInput", "UseCognitoProvidedValues"),
         type = "boolean",
         name = "UseCognitoProvidedValues",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      Settings = schema.new({
         id = id.from(_N, "CreateManagedLoginBrandingInput", "Settings"),
         type = "document",
         name = "Settings",
         target_id = prelude.Document.id,
      }),
      Assets = schema.new({
         id = id.from(_N, "CreateManagedLoginBrandingInput", "Assets"),
         type = "list",
         name = "Assets",
         target_id = prelude.Document.id,
         list_member = M.AssetType,
      }),
   },
})

M.ManagedLoginBrandingType = schema.new({
   id = id.from(_N, "ManagedLoginBrandingType"),
   type = "structure",
   members = {
      ManagedLoginBrandingId = schema.new({
         id = id.from(_N, "ManagedLoginBrandingType", "ManagedLoginBrandingId"),
         type = "string",
         name = "ManagedLoginBrandingId",
         target_id = prelude.String.id,
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "ManagedLoginBrandingType", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      UseCognitoProvidedValues = schema.new({
         id = id.from(_N, "ManagedLoginBrandingType", "UseCognitoProvidedValues"),
         type = "boolean",
         name = "UseCognitoProvidedValues",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      Settings = schema.new({
         id = id.from(_N, "ManagedLoginBrandingType", "Settings"),
         type = "document",
         name = "Settings",
         target_id = prelude.Document.id,
      }),
      Assets = schema.new({
         id = id.from(_N, "ManagedLoginBrandingType", "Assets"),
         type = "list",
         name = "Assets",
         target_id = prelude.Document.id,
         list_member = M.AssetType,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "ManagedLoginBrandingType", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "ManagedLoginBrandingType", "LastModifiedDate"),
         type = "timestamp",
         name = "LastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateManagedLoginBrandingOutput = schema.new({
   id = id.from(_N, "CreateManagedLoginBrandingResponse"),
   type = "structure",
   members = {
      ManagedLoginBranding = schema.new({
         id = id.from(_N, "CreateManagedLoginBrandingOutput", "ManagedLoginBranding"),
         type = "structure",
         name = "ManagedLoginBranding",
         target_id = id.from(_N, "ManagedLoginBrandingType"),
         target = M.ManagedLoginBrandingType,
      }),
   },
})

M.ManagedLoginBrandingExistsException = schema.new({
   id = id.from(_N, "ManagedLoginBrandingExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ManagedLoginBrandingExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ResourceServerScopeType = schema.new({
   id = id.from(_N, "ResourceServerScopeType"),
   type = "structure",
   members = {
      ScopeName = schema.new({
         id = id.from(_N, "ResourceServerScopeType", "ScopeName"),
         type = "string",
         name = "ScopeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScopeDescription = schema.new({
         id = id.from(_N, "ResourceServerScopeType", "ScopeDescription"),
         type = "string",
         name = "ScopeDescription",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateResourceServerInput = schema.new({
   id = id.from(_N, "CreateResourceServerRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "CreateResourceServerInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "CreateResourceServerInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateResourceServerInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Scopes = schema.new({
         id = id.from(_N, "CreateResourceServerInput", "Scopes"),
         type = "list",
         name = "Scopes",
         target_id = prelude.Document.id,
         list_member = M.ResourceServerScopeType,
      }),
   },
})

M.ResourceServerType = schema.new({
   id = id.from(_N, "ResourceServerType"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "ResourceServerType", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      Identifier = schema.new({
         id = id.from(_N, "ResourceServerType", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "ResourceServerType", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Scopes = schema.new({
         id = id.from(_N, "ResourceServerType", "Scopes"),
         type = "list",
         name = "Scopes",
         target_id = prelude.Document.id,
         list_member = M.ResourceServerScopeType,
      }),
   },
})

M.CreateResourceServerOutput = schema.new({
   id = id.from(_N, "CreateResourceServerResponse"),
   type = "structure",
   members = {
      ResourceServer = schema.new({
         id = id.from(_N, "CreateResourceServerOutput", "ResourceServer"),
         type = "structure",
         name = "ResourceServer",
         target_id = id.from(_N, "ResourceServerType"),
         target = M.ResourceServerType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateTermsInput = schema.new({
   id = id.from(_N, "CreateTermsRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "CreateTermsInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "CreateTermsInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TermsName = schema.new({
         id = id.from(_N, "CreateTermsInput", "TermsName"),
         type = "string",
         name = "TermsName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TermsSource = schema.new({
         id = id.from(_N, "CreateTermsInput", "TermsSource"),
         type = "string",
         name = "TermsSource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Enforcement = schema.new({
         id = id.from(_N, "CreateTermsInput", "Enforcement"),
         type = "string",
         name = "Enforcement",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Links = schema.new({
         id = id.from(_N, "CreateTermsInput", "Links"),
         type = "map",
         name = "Links",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.TermsType = schema.new({
   id = id.from(_N, "TermsType"),
   type = "structure",
   members = {
      TermsId = schema.new({
         id = id.from(_N, "TermsType", "TermsId"),
         type = "string",
         name = "TermsId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "TermsType", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "TermsType", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TermsName = schema.new({
         id = id.from(_N, "TermsType", "TermsName"),
         type = "string",
         name = "TermsName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TermsSource = schema.new({
         id = id.from(_N, "TermsType", "TermsSource"),
         type = "string",
         name = "TermsSource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Enforcement = schema.new({
         id = id.from(_N, "TermsType", "Enforcement"),
         type = "string",
         name = "Enforcement",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Links = schema.new({
         id = id.from(_N, "TermsType", "Links"),
         type = "map",
         name = "Links",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreationDate = schema.new({
         id = id.from(_N, "TermsType", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "TermsType", "LastModifiedDate"),
         type = "timestamp",
         name = "LastModifiedDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateTermsOutput = schema.new({
   id = id.from(_N, "CreateTermsResponse"),
   type = "structure",
   members = {
      Terms = schema.new({
         id = id.from(_N, "CreateTermsOutput", "Terms"),
         type = "structure",
         name = "Terms",
         target_id = id.from(_N, "TermsType"),
         target = M.TermsType,
      }),
   },
})

M.TermsExistsException = schema.new({
   id = id.from(_N, "TermsExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TermsExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateUserImportJobInput = schema.new({
   id = id.from(_N, "CreateUserImportJobRequest"),
   type = "structure",
   members = {
      JobName = schema.new({
         id = id.from(_N, "CreateUserImportJobInput", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "CreateUserImportJobInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CloudWatchLogsRoleArn = schema.new({
         id = id.from(_N, "CreateUserImportJobInput", "CloudWatchLogsRoleArn"),
         type = "string",
         name = "CloudWatchLogsRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UserImportJobType = schema.new({
   id = id.from(_N, "UserImportJobType"),
   type = "structure",
   members = {
      JobName = schema.new({
         id = id.from(_N, "UserImportJobType", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      JobId = schema.new({
         id = id.from(_N, "UserImportJobType", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "UserImportJobType", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      PreSignedUrl = schema.new({
         id = id.from(_N, "UserImportJobType", "PreSignedUrl"),
         type = "string",
         name = "PreSignedUrl",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "UserImportJobType", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      StartDate = schema.new({
         id = id.from(_N, "UserImportJobType", "StartDate"),
         type = "timestamp",
         name = "StartDate",
         target_id = prelude.Timestamp.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "UserImportJobType", "CompletionDate"),
         type = "timestamp",
         name = "CompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "UserImportJobType", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      CloudWatchLogsRoleArn = schema.new({
         id = id.from(_N, "UserImportJobType", "CloudWatchLogsRoleArn"),
         type = "string",
         name = "CloudWatchLogsRoleArn",
         target_id = prelude.String.id,
      }),
      ImportedUsers = schema.new({
         id = id.from(_N, "UserImportJobType", "ImportedUsers"),
         type = "long",
         name = "ImportedUsers",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      SkippedUsers = schema.new({
         id = id.from(_N, "UserImportJobType", "SkippedUsers"),
         type = "long",
         name = "SkippedUsers",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      FailedUsers = schema.new({
         id = id.from(_N, "UserImportJobType", "FailedUsers"),
         type = "long",
         name = "FailedUsers",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      CompletionMessage = schema.new({
         id = id.from(_N, "UserImportJobType", "CompletionMessage"),
         type = "string",
         name = "CompletionMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateUserImportJobOutput = schema.new({
   id = id.from(_N, "CreateUserImportJobResponse"),
   type = "structure",
   members = {
      UserImportJob = schema.new({
         id = id.from(_N, "CreateUserImportJobOutput", "UserImportJob"),
         type = "structure",
         name = "UserImportJob",
         target_id = id.from(_N, "UserImportJobType"),
         target = M.UserImportJobType,
      }),
   },
})

M.DeviceConfigurationType = schema.new({
   id = id.from(_N, "DeviceConfigurationType"),
   type = "structure",
   members = {
      ChallengeRequiredOnNewDevice = schema.new({
         id = id.from(_N, "DeviceConfigurationType", "ChallengeRequiredOnNewDevice"),
         type = "boolean",
         name = "ChallengeRequiredOnNewDevice",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      DeviceOnlyRememberedOnUserPrompt = schema.new({
         id = id.from(_N, "DeviceConfigurationType", "DeviceOnlyRememberedOnUserPrompt"),
         type = "boolean",
         name = "DeviceOnlyRememberedOnUserPrompt",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.EmailConfigurationType = schema.new({
   id = id.from(_N, "EmailConfigurationType"),
   type = "structure",
   members = {
      SourceArn = schema.new({
         id = id.from(_N, "EmailConfigurationType", "SourceArn"),
         type = "string",
         name = "SourceArn",
         target_id = prelude.String.id,
      }),
      ReplyToEmailAddress = schema.new({
         id = id.from(_N, "EmailConfigurationType", "ReplyToEmailAddress"),
         type = "string",
         name = "ReplyToEmailAddress",
         target_id = prelude.String.id,
      }),
      EmailSendingAccount = schema.new({
         id = id.from(_N, "EmailConfigurationType", "EmailSendingAccount"),
         type = "string",
         name = "EmailSendingAccount",
         target_id = prelude.String.id,
      }),
      From = schema.new({
         id = id.from(_N, "EmailConfigurationType", "From"),
         type = "string",
         name = "From",
         target_id = prelude.String.id,
      }),
      ConfigurationSet = schema.new({
         id = id.from(_N, "EmailConfigurationType", "ConfigurationSet"),
         type = "string",
         name = "ConfigurationSet",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomEmailLambdaVersionConfigType = schema.new({
   id = id.from(_N, "CustomEmailLambdaVersionConfigType"),
   type = "structure",
   members = {
      LambdaVersion = schema.new({
         id = id.from(_N, "CustomEmailLambdaVersionConfigType", "LambdaVersion"),
         type = "string",
         name = "LambdaVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LambdaArn = schema.new({
         id = id.from(_N, "CustomEmailLambdaVersionConfigType", "LambdaArn"),
         type = "string",
         name = "LambdaArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CustomSMSLambdaVersionConfigType = schema.new({
   id = id.from(_N, "CustomSMSLambdaVersionConfigType"),
   type = "structure",
   members = {
      LambdaVersion = schema.new({
         id = id.from(_N, "CustomSMSLambdaVersionConfigType", "LambdaVersion"),
         type = "string",
         name = "LambdaVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LambdaArn = schema.new({
         id = id.from(_N, "CustomSMSLambdaVersionConfigType", "LambdaArn"),
         type = "string",
         name = "LambdaArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InboundFederationLambdaType = schema.new({
   id = id.from(_N, "InboundFederationLambdaType"),
   type = "structure",
   members = {
      LambdaVersion = schema.new({
         id = id.from(_N, "InboundFederationLambdaType", "LambdaVersion"),
         type = "string",
         name = "LambdaVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LambdaArn = schema.new({
         id = id.from(_N, "InboundFederationLambdaType", "LambdaArn"),
         type = "string",
         name = "LambdaArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PreTokenGenerationVersionConfigType = schema.new({
   id = id.from(_N, "PreTokenGenerationVersionConfigType"),
   type = "structure",
   members = {
      LambdaVersion = schema.new({
         id = id.from(_N, "PreTokenGenerationVersionConfigType", "LambdaVersion"),
         type = "string",
         name = "LambdaVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LambdaArn = schema.new({
         id = id.from(_N, "PreTokenGenerationVersionConfigType", "LambdaArn"),
         type = "string",
         name = "LambdaArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LambdaConfigType = schema.new({
   id = id.from(_N, "LambdaConfigType"),
   type = "structure",
   members = {
      PreSignUp = schema.new({
         id = id.from(_N, "LambdaConfigType", "PreSignUp"),
         type = "string",
         name = "PreSignUp",
         target_id = prelude.String.id,
      }),
      CustomMessage = schema.new({
         id = id.from(_N, "LambdaConfigType", "CustomMessage"),
         type = "string",
         name = "CustomMessage",
         target_id = prelude.String.id,
      }),
      PostConfirmation = schema.new({
         id = id.from(_N, "LambdaConfigType", "PostConfirmation"),
         type = "string",
         name = "PostConfirmation",
         target_id = prelude.String.id,
      }),
      PreAuthentication = schema.new({
         id = id.from(_N, "LambdaConfigType", "PreAuthentication"),
         type = "string",
         name = "PreAuthentication",
         target_id = prelude.String.id,
      }),
      PostAuthentication = schema.new({
         id = id.from(_N, "LambdaConfigType", "PostAuthentication"),
         type = "string",
         name = "PostAuthentication",
         target_id = prelude.String.id,
      }),
      DefineAuthChallenge = schema.new({
         id = id.from(_N, "LambdaConfigType", "DefineAuthChallenge"),
         type = "string",
         name = "DefineAuthChallenge",
         target_id = prelude.String.id,
      }),
      CreateAuthChallenge = schema.new({
         id = id.from(_N, "LambdaConfigType", "CreateAuthChallenge"),
         type = "string",
         name = "CreateAuthChallenge",
         target_id = prelude.String.id,
      }),
      VerifyAuthChallengeResponse = schema.new({
         id = id.from(_N, "LambdaConfigType", "VerifyAuthChallengeResponse"),
         type = "string",
         name = "VerifyAuthChallengeResponse",
         target_id = prelude.String.id,
      }),
      PreTokenGeneration = schema.new({
         id = id.from(_N, "LambdaConfigType", "PreTokenGeneration"),
         type = "string",
         name = "PreTokenGeneration",
         target_id = prelude.String.id,
      }),
      UserMigration = schema.new({
         id = id.from(_N, "LambdaConfigType", "UserMigration"),
         type = "string",
         name = "UserMigration",
         target_id = prelude.String.id,
      }),
      PreTokenGenerationConfig = schema.new({
         id = id.from(_N, "LambdaConfigType", "PreTokenGenerationConfig"),
         type = "structure",
         name = "PreTokenGenerationConfig",
         target_id = id.from(_N, "PreTokenGenerationVersionConfigType"),
         target = M.PreTokenGenerationVersionConfigType,
      }),
      CustomSMSSender = schema.new({
         id = id.from(_N, "LambdaConfigType", "CustomSMSSender"),
         type = "structure",
         name = "CustomSMSSender",
         target_id = id.from(_N, "CustomSMSLambdaVersionConfigType"),
         target = M.CustomSMSLambdaVersionConfigType,
      }),
      CustomEmailSender = schema.new({
         id = id.from(_N, "LambdaConfigType", "CustomEmailSender"),
         type = "structure",
         name = "CustomEmailSender",
         target_id = id.from(_N, "CustomEmailLambdaVersionConfigType"),
         target = M.CustomEmailLambdaVersionConfigType,
      }),
      KMSKeyID = schema.new({
         id = id.from(_N, "LambdaConfigType", "KMSKeyID"),
         type = "string",
         name = "KMSKeyID",
         target_id = prelude.String.id,
      }),
      InboundFederation = schema.new({
         id = id.from(_N, "LambdaConfigType", "InboundFederation"),
         type = "structure",
         name = "InboundFederation",
         target_id = id.from(_N, "InboundFederationLambdaType"),
         target = M.InboundFederationLambdaType,
      }),
   },
})

M.PasswordPolicyType = schema.new({
   id = id.from(_N, "PasswordPolicyType"),
   type = "structure",
   members = {
      MinimumLength = schema.new({
         id = id.from(_N, "PasswordPolicyType", "MinimumLength"),
         type = "integer",
         name = "MinimumLength",
         target_id = prelude.Integer.id,
      }),
      RequireUppercase = schema.new({
         id = id.from(_N, "PasswordPolicyType", "RequireUppercase"),
         type = "boolean",
         name = "RequireUppercase",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      RequireLowercase = schema.new({
         id = id.from(_N, "PasswordPolicyType", "RequireLowercase"),
         type = "boolean",
         name = "RequireLowercase",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      RequireNumbers = schema.new({
         id = id.from(_N, "PasswordPolicyType", "RequireNumbers"),
         type = "boolean",
         name = "RequireNumbers",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      RequireSymbols = schema.new({
         id = id.from(_N, "PasswordPolicyType", "RequireSymbols"),
         type = "boolean",
         name = "RequireSymbols",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      PasswordHistorySize = schema.new({
         id = id.from(_N, "PasswordPolicyType", "PasswordHistorySize"),
         type = "integer",
         name = "PasswordHistorySize",
         target_id = prelude.Integer.id,
      }),
      TemporaryPasswordValidityDays = schema.new({
         id = id.from(_N, "PasswordPolicyType", "TemporaryPasswordValidityDays"),
         type = "integer",
         name = "TemporaryPasswordValidityDays",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.SignInPolicyType = schema.new({
   id = id.from(_N, "SignInPolicyType"),
   type = "structure",
   members = {
      AllowedFirstAuthFactors = schema.new({
         id = id.from(_N, "SignInPolicyType", "AllowedFirstAuthFactors"),
         type = "list",
         name = "AllowedFirstAuthFactors",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.UserPoolPolicyType = schema.new({
   id = id.from(_N, "UserPoolPolicyType"),
   type = "structure",
   members = {
      PasswordPolicy = schema.new({
         id = id.from(_N, "UserPoolPolicyType", "PasswordPolicy"),
         type = "structure",
         name = "PasswordPolicy",
         target_id = id.from(_N, "PasswordPolicyType"),
         target = M.PasswordPolicyType,
      }),
      SignInPolicy = schema.new({
         id = id.from(_N, "UserPoolPolicyType", "SignInPolicy"),
         type = "structure",
         name = "SignInPolicy",
         target_id = id.from(_N, "SignInPolicyType"),
         target = M.SignInPolicyType,
      }),
   },
})

M.SmsConfigurationType = schema.new({
   id = id.from(_N, "SmsConfigurationType"),
   type = "structure",
   members = {
      SnsCallerArn = schema.new({
         id = id.from(_N, "SmsConfigurationType", "SnsCallerArn"),
         type = "string",
         name = "SnsCallerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExternalId = schema.new({
         id = id.from(_N, "SmsConfigurationType", "ExternalId"),
         type = "string",
         name = "ExternalId",
         target_id = prelude.String.id,
      }),
      SnsRegion = schema.new({
         id = id.from(_N, "SmsConfigurationType", "SnsRegion"),
         type = "string",
         name = "SnsRegion",
         target_id = prelude.String.id,
      }),
   },
})

M.UserAttributeUpdateSettingsType = schema.new({
   id = id.from(_N, "UserAttributeUpdateSettingsType"),
   type = "structure",
   members = {
      AttributesRequireVerificationBeforeUpdate = schema.new({
         id = id.from(_N, "UserAttributeUpdateSettingsType", "AttributesRequireVerificationBeforeUpdate"),
         type = "list",
         name = "AttributesRequireVerificationBeforeUpdate",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.UsernameConfigurationType = schema.new({
   id = id.from(_N, "UsernameConfigurationType"),
   type = "structure",
   members = {
      CaseSensitive = schema.new({
         id = id.from(_N, "UsernameConfigurationType", "CaseSensitive"),
         type = "boolean",
         name = "CaseSensitive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UserPoolAddOnsType = schema.new({
   id = id.from(_N, "UserPoolAddOnsType"),
   type = "structure",
   members = {
      AdvancedSecurityMode = schema.new({
         id = id.from(_N, "UserPoolAddOnsType", "AdvancedSecurityMode"),
         type = "string",
         name = "AdvancedSecurityMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AdvancedSecurityAdditionalFlows = schema.new({
         id = id.from(_N, "UserPoolAddOnsType", "AdvancedSecurityAdditionalFlows"),
         type = "structure",
         name = "AdvancedSecurityAdditionalFlows",
         target_id = id.from(_N, "AdvancedSecurityAdditionalFlowsType"),
         target = M.AdvancedSecurityAdditionalFlowsType,
      }),
   },
})

M.VerificationMessageTemplateType = schema.new({
   id = id.from(_N, "VerificationMessageTemplateType"),
   type = "structure",
   members = {
      SmsMessage = schema.new({
         id = id.from(_N, "VerificationMessageTemplateType", "SmsMessage"),
         type = "string",
         name = "SmsMessage",
         target_id = prelude.String.id,
      }),
      EmailMessage = schema.new({
         id = id.from(_N, "VerificationMessageTemplateType", "EmailMessage"),
         type = "string",
         name = "EmailMessage",
         target_id = prelude.String.id,
      }),
      EmailSubject = schema.new({
         id = id.from(_N, "VerificationMessageTemplateType", "EmailSubject"),
         type = "string",
         name = "EmailSubject",
         target_id = prelude.String.id,
      }),
      EmailMessageByLink = schema.new({
         id = id.from(_N, "VerificationMessageTemplateType", "EmailMessageByLink"),
         type = "string",
         name = "EmailMessageByLink",
         target_id = prelude.String.id,
      }),
      EmailSubjectByLink = schema.new({
         id = id.from(_N, "VerificationMessageTemplateType", "EmailSubjectByLink"),
         type = "string",
         name = "EmailSubjectByLink",
         target_id = prelude.String.id,
      }),
      DefaultEmailOption = schema.new({
         id = id.from(_N, "VerificationMessageTemplateType", "DefaultEmailOption"),
         type = "string",
         name = "DefaultEmailOption",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateUserPoolInput = schema.new({
   id = id.from(_N, "CreateUserPoolRequest"),
   type = "structure",
   members = {
      PoolName = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "PoolName"),
         type = "string",
         name = "PoolName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Policies = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "Policies"),
         type = "structure",
         name = "Policies",
         target_id = id.from(_N, "UserPoolPolicyType"),
         target = M.UserPoolPolicyType,
      }),
      DeletionProtection = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "DeletionProtection"),
         type = "string",
         name = "DeletionProtection",
         target_id = prelude.String.id,
      }),
      LambdaConfig = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "LambdaConfig"),
         type = "structure",
         name = "LambdaConfig",
         target_id = id.from(_N, "LambdaConfigType"),
         target = M.LambdaConfigType,
      }),
      AutoVerifiedAttributes = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "AutoVerifiedAttributes"),
         type = "list",
         name = "AutoVerifiedAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AliasAttributes = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "AliasAttributes"),
         type = "list",
         name = "AliasAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      UsernameAttributes = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "UsernameAttributes"),
         type = "list",
         name = "UsernameAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SmsVerificationMessage = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "SmsVerificationMessage"),
         type = "string",
         name = "SmsVerificationMessage",
         target_id = prelude.String.id,
      }),
      EmailVerificationMessage = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "EmailVerificationMessage"),
         type = "string",
         name = "EmailVerificationMessage",
         target_id = prelude.String.id,
      }),
      EmailVerificationSubject = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "EmailVerificationSubject"),
         type = "string",
         name = "EmailVerificationSubject",
         target_id = prelude.String.id,
      }),
      VerificationMessageTemplate = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "VerificationMessageTemplate"),
         type = "structure",
         name = "VerificationMessageTemplate",
         target_id = id.from(_N, "VerificationMessageTemplateType"),
         target = M.VerificationMessageTemplateType,
      }),
      SmsAuthenticationMessage = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "SmsAuthenticationMessage"),
         type = "string",
         name = "SmsAuthenticationMessage",
         target_id = prelude.String.id,
      }),
      MfaConfiguration = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "MfaConfiguration"),
         type = "string",
         name = "MfaConfiguration",
         target_id = prelude.String.id,
      }),
      UserAttributeUpdateSettings = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "UserAttributeUpdateSettings"),
         type = "structure",
         name = "UserAttributeUpdateSettings",
         target_id = id.from(_N, "UserAttributeUpdateSettingsType"),
         target = M.UserAttributeUpdateSettingsType,
      }),
      DeviceConfiguration = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "DeviceConfiguration"),
         type = "structure",
         name = "DeviceConfiguration",
         target_id = id.from(_N, "DeviceConfigurationType"),
         target = M.DeviceConfigurationType,
      }),
      EmailConfiguration = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "EmailConfiguration"),
         type = "structure",
         name = "EmailConfiguration",
         target_id = id.from(_N, "EmailConfigurationType"),
         target = M.EmailConfigurationType,
      }),
      SmsConfiguration = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "SmsConfiguration"),
         type = "structure",
         name = "SmsConfiguration",
         target_id = id.from(_N, "SmsConfigurationType"),
         target = M.SmsConfigurationType,
      }),
      UserPoolTags = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "UserPoolTags"),
         type = "map",
         name = "UserPoolTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AdminCreateUserConfig = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "AdminCreateUserConfig"),
         type = "structure",
         name = "AdminCreateUserConfig",
         target_id = id.from(_N, "AdminCreateUserConfigType"),
         target = M.AdminCreateUserConfigType,
      }),
      Schema = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "Schema"),
         type = "list",
         name = "Schema",
         target_id = prelude.Document.id,
         list_member = M.SchemaAttributeType,
      }),
      UserPoolAddOns = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "UserPoolAddOns"),
         type = "structure",
         name = "UserPoolAddOns",
         target_id = id.from(_N, "UserPoolAddOnsType"),
         target = M.UserPoolAddOnsType,
      }),
      UsernameConfiguration = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "UsernameConfiguration"),
         type = "structure",
         name = "UsernameConfiguration",
         target_id = id.from(_N, "UsernameConfigurationType"),
         target = M.UsernameConfigurationType,
      }),
      AccountRecoverySetting = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "AccountRecoverySetting"),
         type = "structure",
         name = "AccountRecoverySetting",
         target_id = id.from(_N, "AccountRecoverySettingType"),
         target = M.AccountRecoverySettingType,
      }),
      UserPoolTier = schema.new({
         id = id.from(_N, "CreateUserPoolInput", "UserPoolTier"),
         type = "string",
         name = "UserPoolTier",
         target_id = prelude.String.id,
      }),
   },
})

M.UserPoolType = schema.new({
   id = id.from(_N, "UserPoolType"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "UserPoolType", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UserPoolType", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Policies = schema.new({
         id = id.from(_N, "UserPoolType", "Policies"),
         type = "structure",
         name = "Policies",
         target_id = id.from(_N, "UserPoolPolicyType"),
         target = M.UserPoolPolicyType,
      }),
      DeletionProtection = schema.new({
         id = id.from(_N, "UserPoolType", "DeletionProtection"),
         type = "string",
         name = "DeletionProtection",
         target_id = prelude.String.id,
      }),
      LambdaConfig = schema.new({
         id = id.from(_N, "UserPoolType", "LambdaConfig"),
         type = "structure",
         name = "LambdaConfig",
         target_id = id.from(_N, "LambdaConfigType"),
         target = M.LambdaConfigType,
      }),
      Status = schema.new({
         id = id.from(_N, "UserPoolType", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "UserPoolType", "LastModifiedDate"),
         type = "timestamp",
         name = "LastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "UserPoolType", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      SchemaAttributes = schema.new({
         id = id.from(_N, "UserPoolType", "SchemaAttributes"),
         type = "list",
         name = "SchemaAttributes",
         target_id = prelude.Document.id,
         list_member = M.SchemaAttributeType,
      }),
      AutoVerifiedAttributes = schema.new({
         id = id.from(_N, "UserPoolType", "AutoVerifiedAttributes"),
         type = "list",
         name = "AutoVerifiedAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AliasAttributes = schema.new({
         id = id.from(_N, "UserPoolType", "AliasAttributes"),
         type = "list",
         name = "AliasAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      UsernameAttributes = schema.new({
         id = id.from(_N, "UserPoolType", "UsernameAttributes"),
         type = "list",
         name = "UsernameAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SmsVerificationMessage = schema.new({
         id = id.from(_N, "UserPoolType", "SmsVerificationMessage"),
         type = "string",
         name = "SmsVerificationMessage",
         target_id = prelude.String.id,
      }),
      EmailVerificationMessage = schema.new({
         id = id.from(_N, "UserPoolType", "EmailVerificationMessage"),
         type = "string",
         name = "EmailVerificationMessage",
         target_id = prelude.String.id,
      }),
      EmailVerificationSubject = schema.new({
         id = id.from(_N, "UserPoolType", "EmailVerificationSubject"),
         type = "string",
         name = "EmailVerificationSubject",
         target_id = prelude.String.id,
      }),
      VerificationMessageTemplate = schema.new({
         id = id.from(_N, "UserPoolType", "VerificationMessageTemplate"),
         type = "structure",
         name = "VerificationMessageTemplate",
         target_id = id.from(_N, "VerificationMessageTemplateType"),
         target = M.VerificationMessageTemplateType,
      }),
      SmsAuthenticationMessage = schema.new({
         id = id.from(_N, "UserPoolType", "SmsAuthenticationMessage"),
         type = "string",
         name = "SmsAuthenticationMessage",
         target_id = prelude.String.id,
      }),
      UserAttributeUpdateSettings = schema.new({
         id = id.from(_N, "UserPoolType", "UserAttributeUpdateSettings"),
         type = "structure",
         name = "UserAttributeUpdateSettings",
         target_id = id.from(_N, "UserAttributeUpdateSettingsType"),
         target = M.UserAttributeUpdateSettingsType,
      }),
      MfaConfiguration = schema.new({
         id = id.from(_N, "UserPoolType", "MfaConfiguration"),
         type = "string",
         name = "MfaConfiguration",
         target_id = prelude.String.id,
      }),
      DeviceConfiguration = schema.new({
         id = id.from(_N, "UserPoolType", "DeviceConfiguration"),
         type = "structure",
         name = "DeviceConfiguration",
         target_id = id.from(_N, "DeviceConfigurationType"),
         target = M.DeviceConfigurationType,
      }),
      EstimatedNumberOfUsers = schema.new({
         id = id.from(_N, "UserPoolType", "EstimatedNumberOfUsers"),
         type = "integer",
         name = "EstimatedNumberOfUsers",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      EmailConfiguration = schema.new({
         id = id.from(_N, "UserPoolType", "EmailConfiguration"),
         type = "structure",
         name = "EmailConfiguration",
         target_id = id.from(_N, "EmailConfigurationType"),
         target = M.EmailConfigurationType,
      }),
      SmsConfiguration = schema.new({
         id = id.from(_N, "UserPoolType", "SmsConfiguration"),
         type = "structure",
         name = "SmsConfiguration",
         target_id = id.from(_N, "SmsConfigurationType"),
         target = M.SmsConfigurationType,
      }),
      UserPoolTags = schema.new({
         id = id.from(_N, "UserPoolType", "UserPoolTags"),
         type = "map",
         name = "UserPoolTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      SmsConfigurationFailure = schema.new({
         id = id.from(_N, "UserPoolType", "SmsConfigurationFailure"),
         type = "string",
         name = "SmsConfigurationFailure",
         target_id = prelude.String.id,
      }),
      EmailConfigurationFailure = schema.new({
         id = id.from(_N, "UserPoolType", "EmailConfigurationFailure"),
         type = "string",
         name = "EmailConfigurationFailure",
         target_id = prelude.String.id,
      }),
      Domain = schema.new({
         id = id.from(_N, "UserPoolType", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
      }),
      CustomDomain = schema.new({
         id = id.from(_N, "UserPoolType", "CustomDomain"),
         type = "string",
         name = "CustomDomain",
         target_id = prelude.String.id,
      }),
      AdminCreateUserConfig = schema.new({
         id = id.from(_N, "UserPoolType", "AdminCreateUserConfig"),
         type = "structure",
         name = "AdminCreateUserConfig",
         target_id = id.from(_N, "AdminCreateUserConfigType"),
         target = M.AdminCreateUserConfigType,
      }),
      UserPoolAddOns = schema.new({
         id = id.from(_N, "UserPoolType", "UserPoolAddOns"),
         type = "structure",
         name = "UserPoolAddOns",
         target_id = id.from(_N, "UserPoolAddOnsType"),
         target = M.UserPoolAddOnsType,
      }),
      UsernameConfiguration = schema.new({
         id = id.from(_N, "UserPoolType", "UsernameConfiguration"),
         type = "structure",
         name = "UsernameConfiguration",
         target_id = id.from(_N, "UsernameConfigurationType"),
         target = M.UsernameConfigurationType,
      }),
      Arn = schema.new({
         id = id.from(_N, "UserPoolType", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      AccountRecoverySetting = schema.new({
         id = id.from(_N, "UserPoolType", "AccountRecoverySetting"),
         type = "structure",
         name = "AccountRecoverySetting",
         target_id = id.from(_N, "AccountRecoverySettingType"),
         target = M.AccountRecoverySettingType,
      }),
      UserPoolTier = schema.new({
         id = id.from(_N, "UserPoolType", "UserPoolTier"),
         type = "string",
         name = "UserPoolTier",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateUserPoolOutput = schema.new({
   id = id.from(_N, "CreateUserPoolResponse"),
   type = "structure",
   members = {
      UserPool = schema.new({
         id = id.from(_N, "CreateUserPoolOutput", "UserPool"),
         type = "structure",
         name = "UserPool",
         target_id = id.from(_N, "UserPoolType"),
         target = M.UserPoolType,
      }),
   },
})

M.FeatureUnavailableInTierException = schema.new({
   id = id.from(_N, "FeatureUnavailableInTierException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "FeatureUnavailableInTierException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.TierChangeNotAllowedException = schema.new({
   id = id.from(_N, "TierChangeNotAllowedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TierChangeNotAllowedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UserPoolTaggingException = schema.new({
   id = id.from(_N, "UserPoolTaggingException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UserPoolTaggingException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.RefreshTokenRotationType = schema.new({
   id = id.from(_N, "RefreshTokenRotationType"),
   type = "structure",
   members = {
      Feature = schema.new({
         id = id.from(_N, "RefreshTokenRotationType", "Feature"),
         type = "string",
         name = "Feature",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RetryGracePeriodSeconds = schema.new({
         id = id.from(_N, "RefreshTokenRotationType", "RetryGracePeriodSeconds"),
         type = "integer",
         name = "RetryGracePeriodSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.TokenValidityUnitsType = schema.new({
   id = id.from(_N, "TokenValidityUnitsType"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "TokenValidityUnitsType", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
      }),
      IdToken = schema.new({
         id = id.from(_N, "TokenValidityUnitsType", "IdToken"),
         type = "string",
         name = "IdToken",
         target_id = prelude.String.id,
      }),
      RefreshToken = schema.new({
         id = id.from(_N, "TokenValidityUnitsType", "RefreshToken"),
         type = "string",
         name = "RefreshToken",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateUserPoolClientInput = schema.new({
   id = id.from(_N, "CreateUserPoolClientRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientName = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "ClientName"),
         type = "string",
         name = "ClientName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GenerateSecret = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "GenerateSecret"),
         type = "boolean",
         name = "GenerateSecret",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      ClientSecret = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "ClientSecret"),
         type = "string",
         name = "ClientSecret",
         target_id = prelude.String.id,
      }),
      RefreshTokenValidity = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "RefreshTokenValidity"),
         type = "integer",
         name = "RefreshTokenValidity",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      AccessTokenValidity = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "AccessTokenValidity"),
         type = "integer",
         name = "AccessTokenValidity",
         target_id = prelude.Integer.id,
      }),
      IdTokenValidity = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "IdTokenValidity"),
         type = "integer",
         name = "IdTokenValidity",
         target_id = prelude.Integer.id,
      }),
      TokenValidityUnits = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "TokenValidityUnits"),
         type = "structure",
         name = "TokenValidityUnits",
         target_id = id.from(_N, "TokenValidityUnitsType"),
         target = M.TokenValidityUnitsType,
      }),
      ReadAttributes = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "ReadAttributes"),
         type = "list",
         name = "ReadAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      WriteAttributes = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "WriteAttributes"),
         type = "list",
         name = "WriteAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ExplicitAuthFlows = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "ExplicitAuthFlows"),
         type = "list",
         name = "ExplicitAuthFlows",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SupportedIdentityProviders = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "SupportedIdentityProviders"),
         type = "list",
         name = "SupportedIdentityProviders",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      CallbackURLs = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "CallbackURLs"),
         type = "list",
         name = "CallbackURLs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      LogoutURLs = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "LogoutURLs"),
         type = "list",
         name = "LogoutURLs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DefaultRedirectURI = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "DefaultRedirectURI"),
         type = "string",
         name = "DefaultRedirectURI",
         target_id = prelude.String.id,
      }),
      AllowedOAuthFlows = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "AllowedOAuthFlows"),
         type = "list",
         name = "AllowedOAuthFlows",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AllowedOAuthScopes = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "AllowedOAuthScopes"),
         type = "list",
         name = "AllowedOAuthScopes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AllowedOAuthFlowsUserPoolClient = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "AllowedOAuthFlowsUserPoolClient"),
         type = "boolean",
         name = "AllowedOAuthFlowsUserPoolClient",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      AnalyticsConfiguration = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "AnalyticsConfiguration"),
         type = "structure",
         name = "AnalyticsConfiguration",
         target_id = id.from(_N, "AnalyticsConfigurationType"),
         target = M.AnalyticsConfigurationType,
      }),
      PreventUserExistenceErrors = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "PreventUserExistenceErrors"),
         type = "string",
         name = "PreventUserExistenceErrors",
         target_id = prelude.String.id,
      }),
      EnableTokenRevocation = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "EnableTokenRevocation"),
         type = "boolean",
         name = "EnableTokenRevocation",
         target_id = prelude.Boolean.id,
      }),
      EnablePropagateAdditionalUserContextData = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "EnablePropagateAdditionalUserContextData"),
         type = "boolean",
         name = "EnablePropagateAdditionalUserContextData",
         target_id = prelude.Boolean.id,
      }),
      AuthSessionValidity = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "AuthSessionValidity"),
         type = "integer",
         name = "AuthSessionValidity",
         target_id = prelude.Integer.id,
      }),
      RefreshTokenRotation = schema.new({
         id = id.from(_N, "CreateUserPoolClientInput", "RefreshTokenRotation"),
         type = "structure",
         name = "RefreshTokenRotation",
         target_id = id.from(_N, "RefreshTokenRotationType"),
         target = M.RefreshTokenRotationType,
      }),
   },
})

M.UserPoolClientType = schema.new({
   id = id.from(_N, "UserPoolClientType"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "UserPoolClientType", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      ClientName = schema.new({
         id = id.from(_N, "UserPoolClientType", "ClientName"),
         type = "string",
         name = "ClientName",
         target_id = prelude.String.id,
      }),
      ClientId = schema.new({
         id = id.from(_N, "UserPoolClientType", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
      }),
      ClientSecret = schema.new({
         id = id.from(_N, "UserPoolClientType", "ClientSecret"),
         type = "string",
         name = "ClientSecret",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "UserPoolClientType", "LastModifiedDate"),
         type = "timestamp",
         name = "LastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "UserPoolClientType", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      RefreshTokenValidity = schema.new({
         id = id.from(_N, "UserPoolClientType", "RefreshTokenValidity"),
         type = "integer",
         name = "RefreshTokenValidity",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      AccessTokenValidity = schema.new({
         id = id.from(_N, "UserPoolClientType", "AccessTokenValidity"),
         type = "integer",
         name = "AccessTokenValidity",
         target_id = prelude.Integer.id,
      }),
      IdTokenValidity = schema.new({
         id = id.from(_N, "UserPoolClientType", "IdTokenValidity"),
         type = "integer",
         name = "IdTokenValidity",
         target_id = prelude.Integer.id,
      }),
      TokenValidityUnits = schema.new({
         id = id.from(_N, "UserPoolClientType", "TokenValidityUnits"),
         type = "structure",
         name = "TokenValidityUnits",
         target_id = id.from(_N, "TokenValidityUnitsType"),
         target = M.TokenValidityUnitsType,
      }),
      ReadAttributes = schema.new({
         id = id.from(_N, "UserPoolClientType", "ReadAttributes"),
         type = "list",
         name = "ReadAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      WriteAttributes = schema.new({
         id = id.from(_N, "UserPoolClientType", "WriteAttributes"),
         type = "list",
         name = "WriteAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ExplicitAuthFlows = schema.new({
         id = id.from(_N, "UserPoolClientType", "ExplicitAuthFlows"),
         type = "list",
         name = "ExplicitAuthFlows",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SupportedIdentityProviders = schema.new({
         id = id.from(_N, "UserPoolClientType", "SupportedIdentityProviders"),
         type = "list",
         name = "SupportedIdentityProviders",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      CallbackURLs = schema.new({
         id = id.from(_N, "UserPoolClientType", "CallbackURLs"),
         type = "list",
         name = "CallbackURLs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      LogoutURLs = schema.new({
         id = id.from(_N, "UserPoolClientType", "LogoutURLs"),
         type = "list",
         name = "LogoutURLs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DefaultRedirectURI = schema.new({
         id = id.from(_N, "UserPoolClientType", "DefaultRedirectURI"),
         type = "string",
         name = "DefaultRedirectURI",
         target_id = prelude.String.id,
      }),
      AllowedOAuthFlows = schema.new({
         id = id.from(_N, "UserPoolClientType", "AllowedOAuthFlows"),
         type = "list",
         name = "AllowedOAuthFlows",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AllowedOAuthScopes = schema.new({
         id = id.from(_N, "UserPoolClientType", "AllowedOAuthScopes"),
         type = "list",
         name = "AllowedOAuthScopes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AllowedOAuthFlowsUserPoolClient = schema.new({
         id = id.from(_N, "UserPoolClientType", "AllowedOAuthFlowsUserPoolClient"),
         type = "boolean",
         name = "AllowedOAuthFlowsUserPoolClient",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      AnalyticsConfiguration = schema.new({
         id = id.from(_N, "UserPoolClientType", "AnalyticsConfiguration"),
         type = "structure",
         name = "AnalyticsConfiguration",
         target_id = id.from(_N, "AnalyticsConfigurationType"),
         target = M.AnalyticsConfigurationType,
      }),
      PreventUserExistenceErrors = schema.new({
         id = id.from(_N, "UserPoolClientType", "PreventUserExistenceErrors"),
         type = "string",
         name = "PreventUserExistenceErrors",
         target_id = prelude.String.id,
      }),
      EnableTokenRevocation = schema.new({
         id = id.from(_N, "UserPoolClientType", "EnableTokenRevocation"),
         type = "boolean",
         name = "EnableTokenRevocation",
         target_id = prelude.Boolean.id,
      }),
      EnablePropagateAdditionalUserContextData = schema.new({
         id = id.from(_N, "UserPoolClientType", "EnablePropagateAdditionalUserContextData"),
         type = "boolean",
         name = "EnablePropagateAdditionalUserContextData",
         target_id = prelude.Boolean.id,
      }),
      AuthSessionValidity = schema.new({
         id = id.from(_N, "UserPoolClientType", "AuthSessionValidity"),
         type = "integer",
         name = "AuthSessionValidity",
         target_id = prelude.Integer.id,
      }),
      RefreshTokenRotation = schema.new({
         id = id.from(_N, "UserPoolClientType", "RefreshTokenRotation"),
         type = "structure",
         name = "RefreshTokenRotation",
         target_id = id.from(_N, "RefreshTokenRotationType"),
         target = M.RefreshTokenRotationType,
      }),
   },
})

M.CreateUserPoolClientOutput = schema.new({
   id = id.from(_N, "CreateUserPoolClientResponse"),
   type = "structure",
   members = {
      UserPoolClient = schema.new({
         id = id.from(_N, "CreateUserPoolClientOutput", "UserPoolClient"),
         type = "structure",
         name = "UserPoolClient",
         target_id = id.from(_N, "UserPoolClientType"),
         target = M.UserPoolClientType,
      }),
   },
})

M.InvalidOAuthFlowException = schema.new({
   id = id.from(_N, "InvalidOAuthFlowException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidOAuthFlowException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ScopeDoesNotExistException = schema.new({
   id = id.from(_N, "ScopeDoesNotExistException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ScopeDoesNotExistException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomDomainConfigType = schema.new({
   id = id.from(_N, "CustomDomainConfigType"),
   type = "structure",
   members = {
      CertificateArn = schema.new({
         id = id.from(_N, "CustomDomainConfigType", "CertificateArn"),
         type = "string",
         name = "CertificateArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateUserPoolDomainInput = schema.new({
   id = id.from(_N, "CreateUserPoolDomainRequest"),
   type = "structure",
   members = {
      Domain = schema.new({
         id = id.from(_N, "CreateUserPoolDomainInput", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "CreateUserPoolDomainInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ManagedLoginVersion = schema.new({
         id = id.from(_N, "CreateUserPoolDomainInput", "ManagedLoginVersion"),
         type = "integer",
         name = "ManagedLoginVersion",
         target_id = prelude.Integer.id,
      }),
      CustomDomainConfig = schema.new({
         id = id.from(_N, "CreateUserPoolDomainInput", "CustomDomainConfig"),
         type = "structure",
         name = "CustomDomainConfig",
         target_id = id.from(_N, "CustomDomainConfigType"),
         target = M.CustomDomainConfigType,
      }),
   },
})

M.CreateUserPoolDomainOutput = schema.new({
   id = id.from(_N, "CreateUserPoolDomainResponse"),
   type = "structure",
   members = {
      ManagedLoginVersion = schema.new({
         id = id.from(_N, "CreateUserPoolDomainOutput", "ManagedLoginVersion"),
         type = "integer",
         name = "ManagedLoginVersion",
         target_id = prelude.Integer.id,
      }),
      CloudFrontDomain = schema.new({
         id = id.from(_N, "CreateUserPoolDomainOutput", "CloudFrontDomain"),
         type = "string",
         name = "CloudFrontDomain",
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
      UserPoolId = schema.new({
         id = id.from(_N, "DeleteGroupInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteGroupOutput = prelude.Unit

M.DeleteIdentityProviderInput = schema.new({
   id = id.from(_N, "DeleteIdentityProviderRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DeleteIdentityProviderInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProviderName = schema.new({
         id = id.from(_N, "DeleteIdentityProviderInput", "ProviderName"),
         type = "string",
         name = "ProviderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteIdentityProviderOutput = prelude.Unit

M.UnsupportedIdentityProviderException = schema.new({
   id = id.from(_N, "UnsupportedIdentityProviderException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UnsupportedIdentityProviderException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteManagedLoginBrandingInput = schema.new({
   id = id.from(_N, "DeleteManagedLoginBrandingRequest"),
   type = "structure",
   members = {
      ManagedLoginBrandingId = schema.new({
         id = id.from(_N, "DeleteManagedLoginBrandingInput", "ManagedLoginBrandingId"),
         type = "string",
         name = "ManagedLoginBrandingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "DeleteManagedLoginBrandingInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteManagedLoginBrandingOutput = prelude.Unit

M.DeleteResourceServerInput = schema.new({
   id = id.from(_N, "DeleteResourceServerRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DeleteResourceServerInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "DeleteResourceServerInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteResourceServerOutput = prelude.Unit

M.DeleteTermsInput = schema.new({
   id = id.from(_N, "DeleteTermsRequest"),
   type = "structure",
   members = {
      TermsId = schema.new({
         id = id.from(_N, "DeleteTermsInput", "TermsId"),
         type = "string",
         name = "TermsId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "DeleteTermsInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteTermsOutput = prelude.Unit

M.DeleteUserInput = schema.new({
   id = id.from(_N, "DeleteUserRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "DeleteUserInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteUserOutput = prelude.Unit

M.DeleteUserAttributesInput = schema.new({
   id = id.from(_N, "DeleteUserAttributesRequest"),
   type = "structure",
   members = {
      UserAttributeNames = schema.new({
         id = id.from(_N, "DeleteUserAttributesInput", "UserAttributeNames"),
         type = "list",
         name = "UserAttributeNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccessToken = schema.new({
         id = id.from(_N, "DeleteUserAttributesInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteUserAttributesOutput = schema.new({
   id = id.from(_N, "DeleteUserAttributesResponse"),
   type = "structure",
})

M.DeleteUserPoolInput = schema.new({
   id = id.from(_N, "DeleteUserPoolRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DeleteUserPoolInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteUserPoolOutput = prelude.Unit

M.DeleteUserPoolClientInput = schema.new({
   id = id.from(_N, "DeleteUserPoolClientRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DeleteUserPoolClientInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "DeleteUserPoolClientInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteUserPoolClientOutput = prelude.Unit

M.DeleteUserPoolClientSecretInput = schema.new({
   id = id.from(_N, "DeleteUserPoolClientSecretRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DeleteUserPoolClientSecretInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "DeleteUserPoolClientSecretInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientSecretId = schema.new({
         id = id.from(_N, "DeleteUserPoolClientSecretInput", "ClientSecretId"),
         type = "string",
         name = "ClientSecretId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteUserPoolClientSecretOutput = schema.new({
   id = id.from(_N, "DeleteUserPoolClientSecretResponse"),
   type = "structure",
})

M.DeleteUserPoolDomainInput = schema.new({
   id = id.from(_N, "DeleteUserPoolDomainRequest"),
   type = "structure",
   members = {
      Domain = schema.new({
         id = id.from(_N, "DeleteUserPoolDomainInput", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "DeleteUserPoolDomainInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteUserPoolDomainOutput = schema.new({
   id = id.from(_N, "DeleteUserPoolDomainResponse"),
   type = "structure",
})

M.DeleteWebAuthnCredentialInput = schema.new({
   id = id.from(_N, "DeleteWebAuthnCredentialRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "DeleteWebAuthnCredentialInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CredentialId = schema.new({
         id = id.from(_N, "DeleteWebAuthnCredentialInput", "CredentialId"),
         type = "string",
         name = "CredentialId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteWebAuthnCredentialOutput = schema.new({
   id = id.from(_N, "DeleteWebAuthnCredentialResponse"),
   type = "structure",
})

M.DescribeIdentityProviderInput = schema.new({
   id = id.from(_N, "DescribeIdentityProviderRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DescribeIdentityProviderInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProviderName = schema.new({
         id = id.from(_N, "DescribeIdentityProviderInput", "ProviderName"),
         type = "string",
         name = "ProviderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeIdentityProviderOutput = schema.new({
   id = id.from(_N, "DescribeIdentityProviderResponse"),
   type = "structure",
   members = {
      IdentityProvider = schema.new({
         id = id.from(_N, "DescribeIdentityProviderOutput", "IdentityProvider"),
         type = "structure",
         name = "IdentityProvider",
         target_id = id.from(_N, "IdentityProviderType"),
         target = M.IdentityProviderType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeManagedLoginBrandingInput = schema.new({
   id = id.from(_N, "DescribeManagedLoginBrandingRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DescribeManagedLoginBrandingInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ManagedLoginBrandingId = schema.new({
         id = id.from(_N, "DescribeManagedLoginBrandingInput", "ManagedLoginBrandingId"),
         type = "string",
         name = "ManagedLoginBrandingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ReturnMergedResources = schema.new({
         id = id.from(_N, "DescribeManagedLoginBrandingInput", "ReturnMergedResources"),
         type = "boolean",
         name = "ReturnMergedResources",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.DescribeManagedLoginBrandingOutput = schema.new({
   id = id.from(_N, "DescribeManagedLoginBrandingResponse"),
   type = "structure",
   members = {
      ManagedLoginBranding = schema.new({
         id = id.from(_N, "DescribeManagedLoginBrandingOutput", "ManagedLoginBranding"),
         type = "structure",
         name = "ManagedLoginBranding",
         target_id = id.from(_N, "ManagedLoginBrandingType"),
         target = M.ManagedLoginBrandingType,
      }),
   },
})

M.DescribeManagedLoginBrandingByClientInput = schema.new({
   id = id.from(_N, "DescribeManagedLoginBrandingByClientRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DescribeManagedLoginBrandingByClientInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "DescribeManagedLoginBrandingByClientInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ReturnMergedResources = schema.new({
         id = id.from(_N, "DescribeManagedLoginBrandingByClientInput", "ReturnMergedResources"),
         type = "boolean",
         name = "ReturnMergedResources",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.DescribeManagedLoginBrandingByClientOutput = schema.new({
   id = id.from(_N, "DescribeManagedLoginBrandingByClientResponse"),
   type = "structure",
   members = {
      ManagedLoginBranding = schema.new({
         id = id.from(_N, "DescribeManagedLoginBrandingByClientOutput", "ManagedLoginBranding"),
         type = "structure",
         name = "ManagedLoginBranding",
         target_id = id.from(_N, "ManagedLoginBrandingType"),
         target = M.ManagedLoginBrandingType,
      }),
   },
})

M.DescribeResourceServerInput = schema.new({
   id = id.from(_N, "DescribeResourceServerRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DescribeResourceServerInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "DescribeResourceServerInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeResourceServerOutput = schema.new({
   id = id.from(_N, "DescribeResourceServerResponse"),
   type = "structure",
   members = {
      ResourceServer = schema.new({
         id = id.from(_N, "DescribeResourceServerOutput", "ResourceServer"),
         type = "structure",
         name = "ResourceServer",
         target_id = id.from(_N, "ResourceServerType"),
         target = M.ResourceServerType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeRiskConfigurationInput = schema.new({
   id = id.from(_N, "DescribeRiskConfigurationRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DescribeRiskConfigurationInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "DescribeRiskConfigurationInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
      }),
   },
})

M.CompromisedCredentialsActionsType = schema.new({
   id = id.from(_N, "CompromisedCredentialsActionsType"),
   type = "structure",
   members = {
      EventAction = schema.new({
         id = id.from(_N, "CompromisedCredentialsActionsType", "EventAction"),
         type = "string",
         name = "EventAction",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CompromisedCredentialsRiskConfigurationType = schema.new({
   id = id.from(_N, "CompromisedCredentialsRiskConfigurationType"),
   type = "structure",
   members = {
      EventFilter = schema.new({
         id = id.from(_N, "CompromisedCredentialsRiskConfigurationType", "EventFilter"),
         type = "list",
         name = "EventFilter",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Actions = schema.new({
         id = id.from(_N, "CompromisedCredentialsRiskConfigurationType", "Actions"),
         type = "structure",
         name = "Actions",
         target_id = id.from(_N, "CompromisedCredentialsActionsType"),
         target = M.CompromisedCredentialsActionsType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RiskExceptionConfigurationType = schema.new({
   id = id.from(_N, "RiskExceptionConfigurationType"),
   type = "structure",
   members = {
      BlockedIPRangeList = schema.new({
         id = id.from(_N, "RiskExceptionConfigurationType", "BlockedIPRangeList"),
         type = "list",
         name = "BlockedIPRangeList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SkippedIPRangeList = schema.new({
         id = id.from(_N, "RiskExceptionConfigurationType", "SkippedIPRangeList"),
         type = "list",
         name = "SkippedIPRangeList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.RiskConfigurationType = schema.new({
   id = id.from(_N, "RiskConfigurationType"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "RiskConfigurationType", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      ClientId = schema.new({
         id = id.from(_N, "RiskConfigurationType", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
      }),
      CompromisedCredentialsRiskConfiguration = schema.new({
         id = id.from(_N, "RiskConfigurationType", "CompromisedCredentialsRiskConfiguration"),
         type = "structure",
         name = "CompromisedCredentialsRiskConfiguration",
         target_id = id.from(_N, "CompromisedCredentialsRiskConfigurationType"),
         target = M.CompromisedCredentialsRiskConfigurationType,
      }),
      AccountTakeoverRiskConfiguration = schema.new({
         id = id.from(_N, "RiskConfigurationType", "AccountTakeoverRiskConfiguration"),
         type = "structure",
         name = "AccountTakeoverRiskConfiguration",
         target_id = id.from(_N, "AccountTakeoverRiskConfigurationType"),
         target = M.AccountTakeoverRiskConfigurationType,
      }),
      RiskExceptionConfiguration = schema.new({
         id = id.from(_N, "RiskConfigurationType", "RiskExceptionConfiguration"),
         type = "structure",
         name = "RiskExceptionConfiguration",
         target_id = id.from(_N, "RiskExceptionConfigurationType"),
         target = M.RiskExceptionConfigurationType,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "RiskConfigurationType", "LastModifiedDate"),
         type = "timestamp",
         name = "LastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeRiskConfigurationOutput = schema.new({
   id = id.from(_N, "DescribeRiskConfigurationResponse"),
   type = "structure",
   members = {
      RiskConfiguration = schema.new({
         id = id.from(_N, "DescribeRiskConfigurationOutput", "RiskConfiguration"),
         type = "structure",
         name = "RiskConfiguration",
         target_id = id.from(_N, "RiskConfigurationType"),
         target = M.RiskConfigurationType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeTermsInput = schema.new({
   id = id.from(_N, "DescribeTermsRequest"),
   type = "structure",
   members = {
      TermsId = schema.new({
         id = id.from(_N, "DescribeTermsInput", "TermsId"),
         type = "string",
         name = "TermsId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "DescribeTermsInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeTermsOutput = schema.new({
   id = id.from(_N, "DescribeTermsResponse"),
   type = "structure",
   members = {
      Terms = schema.new({
         id = id.from(_N, "DescribeTermsOutput", "Terms"),
         type = "structure",
         name = "Terms",
         target_id = id.from(_N, "TermsType"),
         target = M.TermsType,
      }),
   },
})

M.DescribeUserImportJobInput = schema.new({
   id = id.from(_N, "DescribeUserImportJobRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DescribeUserImportJobInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "DescribeUserImportJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeUserImportJobOutput = schema.new({
   id = id.from(_N, "DescribeUserImportJobResponse"),
   type = "structure",
   members = {
      UserImportJob = schema.new({
         id = id.from(_N, "DescribeUserImportJobOutput", "UserImportJob"),
         type = "structure",
         name = "UserImportJob",
         target_id = id.from(_N, "UserImportJobType"),
         target = M.UserImportJobType,
      }),
   },
})

M.DescribeUserPoolInput = schema.new({
   id = id.from(_N, "DescribeUserPoolRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DescribeUserPoolInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeUserPoolOutput = schema.new({
   id = id.from(_N, "DescribeUserPoolResponse"),
   type = "structure",
   members = {
      UserPool = schema.new({
         id = id.from(_N, "DescribeUserPoolOutput", "UserPool"),
         type = "structure",
         name = "UserPool",
         target_id = id.from(_N, "UserPoolType"),
         target = M.UserPoolType,
      }),
   },
})

M.DescribeUserPoolClientInput = schema.new({
   id = id.from(_N, "DescribeUserPoolClientRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DescribeUserPoolClientInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "DescribeUserPoolClientInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeUserPoolClientOutput = schema.new({
   id = id.from(_N, "DescribeUserPoolClientResponse"),
   type = "structure",
   members = {
      UserPoolClient = schema.new({
         id = id.from(_N, "DescribeUserPoolClientOutput", "UserPoolClient"),
         type = "structure",
         name = "UserPoolClient",
         target_id = id.from(_N, "UserPoolClientType"),
         target = M.UserPoolClientType,
      }),
   },
})

M.DescribeUserPoolDomainInput = schema.new({
   id = id.from(_N, "DescribeUserPoolDomainRequest"),
   type = "structure",
   members = {
      Domain = schema.new({
         id = id.from(_N, "DescribeUserPoolDomainInput", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DomainDescriptionType = schema.new({
   id = id.from(_N, "DomainDescriptionType"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "DomainDescriptionType", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      AWSAccountId = schema.new({
         id = id.from(_N, "DomainDescriptionType", "AWSAccountId"),
         type = "string",
         name = "AWSAccountId",
         target_id = prelude.String.id,
      }),
      Domain = schema.new({
         id = id.from(_N, "DomainDescriptionType", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
      }),
      S3Bucket = schema.new({
         id = id.from(_N, "DomainDescriptionType", "S3Bucket"),
         type = "string",
         name = "S3Bucket",
         target_id = prelude.String.id,
      }),
      CloudFrontDistribution = schema.new({
         id = id.from(_N, "DomainDescriptionType", "CloudFrontDistribution"),
         type = "string",
         name = "CloudFrontDistribution",
         target_id = prelude.String.id,
      }),
      Version = schema.new({
         id = id.from(_N, "DomainDescriptionType", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DomainDescriptionType", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      CustomDomainConfig = schema.new({
         id = id.from(_N, "DomainDescriptionType", "CustomDomainConfig"),
         type = "structure",
         name = "CustomDomainConfig",
         target_id = id.from(_N, "CustomDomainConfigType"),
         target = M.CustomDomainConfigType,
      }),
      ManagedLoginVersion = schema.new({
         id = id.from(_N, "DomainDescriptionType", "ManagedLoginVersion"),
         type = "integer",
         name = "ManagedLoginVersion",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DescribeUserPoolDomainOutput = schema.new({
   id = id.from(_N, "DescribeUserPoolDomainResponse"),
   type = "structure",
   members = {
      DomainDescription = schema.new({
         id = id.from(_N, "DescribeUserPoolDomainOutput", "DomainDescription"),
         type = "structure",
         name = "DomainDescription",
         target_id = id.from(_N, "DomainDescriptionType"),
         target = M.DomainDescriptionType,
      }),
   },
})

M.ForgetDeviceInput = schema.new({
   id = id.from(_N, "ForgetDeviceRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "ForgetDeviceInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
      }),
      DeviceKey = schema.new({
         id = id.from(_N, "ForgetDeviceInput", "DeviceKey"),
         type = "string",
         name = "DeviceKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ForgetDeviceOutput = prelude.Unit

M.ForgotPasswordInput = schema.new({
   id = id.from(_N, "ForgotPasswordRequest"),
   type = "structure",
   members = {
      ClientId = schema.new({
         id = id.from(_N, "ForgotPasswordInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SecretHash = schema.new({
         id = id.from(_N, "ForgotPasswordInput", "SecretHash"),
         type = "string",
         name = "SecretHash",
         target_id = prelude.String.id,
      }),
      UserContextData = schema.new({
         id = id.from(_N, "ForgotPasswordInput", "UserContextData"),
         type = "structure",
         name = "UserContextData",
         target_id = id.from(_N, "UserContextDataType"),
         target = M.UserContextDataType,
      }),
      Username = schema.new({
         id = id.from(_N, "ForgotPasswordInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AnalyticsMetadata = schema.new({
         id = id.from(_N, "ForgotPasswordInput", "AnalyticsMetadata"),
         type = "structure",
         name = "AnalyticsMetadata",
         target_id = id.from(_N, "AnalyticsMetadataType"),
         target = M.AnalyticsMetadataType,
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "ForgotPasswordInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CodeDeliveryDetailsType = schema.new({
   id = id.from(_N, "CodeDeliveryDetailsType"),
   type = "structure",
   members = {
      Destination = schema.new({
         id = id.from(_N, "CodeDeliveryDetailsType", "Destination"),
         type = "string",
         name = "Destination",
         target_id = prelude.String.id,
      }),
      DeliveryMedium = schema.new({
         id = id.from(_N, "CodeDeliveryDetailsType", "DeliveryMedium"),
         type = "string",
         name = "DeliveryMedium",
         target_id = prelude.String.id,
      }),
      AttributeName = schema.new({
         id = id.from(_N, "CodeDeliveryDetailsType", "AttributeName"),
         type = "string",
         name = "AttributeName",
         target_id = prelude.String.id,
      }),
   },
})

M.ForgotPasswordOutput = schema.new({
   id = id.from(_N, "ForgotPasswordResponse"),
   type = "structure",
   members = {
      CodeDeliveryDetails = schema.new({
         id = id.from(_N, "ForgotPasswordOutput", "CodeDeliveryDetails"),
         type = "structure",
         name = "CodeDeliveryDetails",
         target_id = id.from(_N, "CodeDeliveryDetailsType"),
         target = M.CodeDeliveryDetailsType,
      }),
   },
})

M.GetCSVHeaderInput = schema.new({
   id = id.from(_N, "GetCSVHeaderRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "GetCSVHeaderInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetCSVHeaderOutput = schema.new({
   id = id.from(_N, "GetCSVHeaderResponse"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "GetCSVHeaderOutput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      CSVHeader = schema.new({
         id = id.from(_N, "GetCSVHeaderOutput", "CSVHeader"),
         type = "list",
         name = "CSVHeader",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetDeviceInput = schema.new({
   id = id.from(_N, "GetDeviceRequest"),
   type = "structure",
   members = {
      DeviceKey = schema.new({
         id = id.from(_N, "GetDeviceInput", "DeviceKey"),
         type = "string",
         name = "DeviceKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccessToken = schema.new({
         id = id.from(_N, "GetDeviceInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetDeviceOutput = schema.new({
   id = id.from(_N, "GetDeviceResponse"),
   type = "structure",
   members = {
      Device = schema.new({
         id = id.from(_N, "GetDeviceOutput", "Device"),
         type = "structure",
         name = "Device",
         target_id = id.from(_N, "DeviceType"),
         target = M.DeviceType,
         traits = {
            [traits.REQUIRED] = {},
         },
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
      UserPoolId = schema.new({
         id = id.from(_N, "GetGroupInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
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
         target_id = id.from(_N, "GroupType"),
         target = M.GroupType,
      }),
   },
})

M.GetIdentityProviderByIdentifierInput = schema.new({
   id = id.from(_N, "GetIdentityProviderByIdentifierRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "GetIdentityProviderByIdentifierInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IdpIdentifier = schema.new({
         id = id.from(_N, "GetIdentityProviderByIdentifierInput", "IdpIdentifier"),
         type = "string",
         name = "IdpIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetIdentityProviderByIdentifierOutput = schema.new({
   id = id.from(_N, "GetIdentityProviderByIdentifierResponse"),
   type = "structure",
   members = {
      IdentityProvider = schema.new({
         id = id.from(_N, "GetIdentityProviderByIdentifierOutput", "IdentityProvider"),
         type = "structure",
         name = "IdentityProvider",
         target_id = id.from(_N, "IdentityProviderType"),
         target = M.IdentityProviderType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetLogDeliveryConfigurationInput = schema.new({
   id = id.from(_N, "GetLogDeliveryConfigurationRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "GetLogDeliveryConfigurationInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CloudWatchLogsConfigurationType = schema.new({
   id = id.from(_N, "CloudWatchLogsConfigurationType"),
   type = "structure",
   members = {
      LogGroupArn = schema.new({
         id = id.from(_N, "CloudWatchLogsConfigurationType", "LogGroupArn"),
         type = "string",
         name = "LogGroupArn",
         target_id = prelude.String.id,
      }),
   },
})

M.FirehoseConfigurationType = schema.new({
   id = id.from(_N, "FirehoseConfigurationType"),
   type = "structure",
   members = {
      StreamArn = schema.new({
         id = id.from(_N, "FirehoseConfigurationType", "StreamArn"),
         type = "string",
         name = "StreamArn",
         target_id = prelude.String.id,
      }),
   },
})

M.S3ConfigurationType = schema.new({
   id = id.from(_N, "S3ConfigurationType"),
   type = "structure",
   members = {
      BucketArn = schema.new({
         id = id.from(_N, "S3ConfigurationType", "BucketArn"),
         type = "string",
         name = "BucketArn",
         target_id = prelude.String.id,
      }),
   },
})

M.LogConfigurationType = schema.new({
   id = id.from(_N, "LogConfigurationType"),
   type = "structure",
   members = {
      LogLevel = schema.new({
         id = id.from(_N, "LogConfigurationType", "LogLevel"),
         type = "string",
         name = "LogLevel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventSource = schema.new({
         id = id.from(_N, "LogConfigurationType", "EventSource"),
         type = "string",
         name = "EventSource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CloudWatchLogsConfiguration = schema.new({
         id = id.from(_N, "LogConfigurationType", "CloudWatchLogsConfiguration"),
         type = "structure",
         name = "CloudWatchLogsConfiguration",
         target_id = id.from(_N, "CloudWatchLogsConfigurationType"),
         target = M.CloudWatchLogsConfigurationType,
      }),
      S3Configuration = schema.new({
         id = id.from(_N, "LogConfigurationType", "S3Configuration"),
         type = "structure",
         name = "S3Configuration",
         target_id = id.from(_N, "S3ConfigurationType"),
         target = M.S3ConfigurationType,
      }),
      FirehoseConfiguration = schema.new({
         id = id.from(_N, "LogConfigurationType", "FirehoseConfiguration"),
         type = "structure",
         name = "FirehoseConfiguration",
         target_id = id.from(_N, "FirehoseConfigurationType"),
         target = M.FirehoseConfigurationType,
      }),
   },
})

M.LogDeliveryConfigurationType = schema.new({
   id = id.from(_N, "LogDeliveryConfigurationType"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "LogDeliveryConfigurationType", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LogConfigurations = schema.new({
         id = id.from(_N, "LogDeliveryConfigurationType", "LogConfigurations"),
         type = "list",
         name = "LogConfigurations",
         target_id = prelude.Document.id,
         list_member = M.LogConfigurationType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetLogDeliveryConfigurationOutput = schema.new({
   id = id.from(_N, "GetLogDeliveryConfigurationResponse"),
   type = "structure",
   members = {
      LogDeliveryConfiguration = schema.new({
         id = id.from(_N, "GetLogDeliveryConfigurationOutput", "LogDeliveryConfiguration"),
         type = "structure",
         name = "LogDeliveryConfiguration",
         target_id = id.from(_N, "LogDeliveryConfigurationType"),
         target = M.LogDeliveryConfigurationType,
      }),
   },
})

M.GetSigningCertificateInput = schema.new({
   id = id.from(_N, "GetSigningCertificateRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "GetSigningCertificateInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetSigningCertificateOutput = schema.new({
   id = id.from(_N, "GetSigningCertificateResponse"),
   type = "structure",
   members = {
      Certificate = schema.new({
         id = id.from(_N, "GetSigningCertificateOutput", "Certificate"),
         type = "string",
         name = "Certificate",
         target_id = prelude.String.id,
      }),
   },
})

M.GetTokensFromRefreshTokenInput = schema.new({
   id = id.from(_N, "GetTokensFromRefreshTokenRequest"),
   type = "structure",
   members = {
      RefreshToken = schema.new({
         id = id.from(_N, "GetTokensFromRefreshTokenInput", "RefreshToken"),
         type = "string",
         name = "RefreshToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "GetTokensFromRefreshTokenInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientSecret = schema.new({
         id = id.from(_N, "GetTokensFromRefreshTokenInput", "ClientSecret"),
         type = "string",
         name = "ClientSecret",
         target_id = prelude.String.id,
      }),
      DeviceKey = schema.new({
         id = id.from(_N, "GetTokensFromRefreshTokenInput", "DeviceKey"),
         type = "string",
         name = "DeviceKey",
         target_id = prelude.String.id,
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "GetTokensFromRefreshTokenInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetTokensFromRefreshTokenOutput = schema.new({
   id = id.from(_N, "GetTokensFromRefreshTokenResponse"),
   type = "structure",
   members = {
      AuthenticationResult = schema.new({
         id = id.from(_N, "GetTokensFromRefreshTokenOutput", "AuthenticationResult"),
         type = "structure",
         name = "AuthenticationResult",
         target_id = id.from(_N, "AuthenticationResultType"),
         target = M.AuthenticationResultType,
      }),
   },
})

M.RefreshTokenReuseException = schema.new({
   id = id.from(_N, "RefreshTokenReuseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "RefreshTokenReuseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.GetUICustomizationInput = schema.new({
   id = id.from(_N, "GetUICustomizationRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "GetUICustomizationInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "GetUICustomizationInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
      }),
   },
})

M.UICustomizationType = schema.new({
   id = id.from(_N, "UICustomizationType"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "UICustomizationType", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      ClientId = schema.new({
         id = id.from(_N, "UICustomizationType", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
      }),
      ImageUrl = schema.new({
         id = id.from(_N, "UICustomizationType", "ImageUrl"),
         type = "string",
         name = "ImageUrl",
         target_id = prelude.String.id,
      }),
      CSS = schema.new({
         id = id.from(_N, "UICustomizationType", "CSS"),
         type = "string",
         name = "CSS",
         target_id = prelude.String.id,
      }),
      CSSVersion = schema.new({
         id = id.from(_N, "UICustomizationType", "CSSVersion"),
         type = "string",
         name = "CSSVersion",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "UICustomizationType", "LastModifiedDate"),
         type = "timestamp",
         name = "LastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "UICustomizationType", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetUICustomizationOutput = schema.new({
   id = id.from(_N, "GetUICustomizationResponse"),
   type = "structure",
   members = {
      UICustomization = schema.new({
         id = id.from(_N, "GetUICustomizationOutput", "UICustomization"),
         type = "structure",
         name = "UICustomization",
         target_id = id.from(_N, "UICustomizationType"),
         target = M.UICustomizationType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetUserInput = schema.new({
   id = id.from(_N, "GetUserRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "GetUserInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetUserOutput = schema.new({
   id = id.from(_N, "GetUserResponse"),
   type = "structure",
   members = {
      Username = schema.new({
         id = id.from(_N, "GetUserOutput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserAttributes = schema.new({
         id = id.from(_N, "GetUserOutput", "UserAttributes"),
         type = "list",
         name = "UserAttributes",
         target_id = prelude.Document.id,
         list_member = M.AttributeType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MFAOptions = schema.new({
         id = id.from(_N, "GetUserOutput", "MFAOptions"),
         type = "list",
         name = "MFAOptions",
         target_id = prelude.Document.id,
         list_member = M.MFAOptionType,
      }),
      PreferredMfaSetting = schema.new({
         id = id.from(_N, "GetUserOutput", "PreferredMfaSetting"),
         type = "string",
         name = "PreferredMfaSetting",
         target_id = prelude.String.id,
      }),
      UserMFASettingList = schema.new({
         id = id.from(_N, "GetUserOutput", "UserMFASettingList"),
         type = "list",
         name = "UserMFASettingList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetUserAttributeVerificationCodeInput = schema.new({
   id = id.from(_N, "GetUserAttributeVerificationCodeRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "GetUserAttributeVerificationCodeInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AttributeName = schema.new({
         id = id.from(_N, "GetUserAttributeVerificationCodeInput", "AttributeName"),
         type = "string",
         name = "AttributeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "GetUserAttributeVerificationCodeInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetUserAttributeVerificationCodeOutput = schema.new({
   id = id.from(_N, "GetUserAttributeVerificationCodeResponse"),
   type = "structure",
   members = {
      CodeDeliveryDetails = schema.new({
         id = id.from(_N, "GetUserAttributeVerificationCodeOutput", "CodeDeliveryDetails"),
         type = "structure",
         name = "CodeDeliveryDetails",
         target_id = id.from(_N, "CodeDeliveryDetailsType"),
         target = M.CodeDeliveryDetailsType,
      }),
   },
})

M.GetUserAuthFactorsInput = schema.new({
   id = id.from(_N, "GetUserAuthFactorsRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "GetUserAuthFactorsInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetUserAuthFactorsOutput = schema.new({
   id = id.from(_N, "GetUserAuthFactorsResponse"),
   type = "structure",
   members = {
      Username = schema.new({
         id = id.from(_N, "GetUserAuthFactorsOutput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PreferredMfaSetting = schema.new({
         id = id.from(_N, "GetUserAuthFactorsOutput", "PreferredMfaSetting"),
         type = "string",
         name = "PreferredMfaSetting",
         target_id = prelude.String.id,
      }),
      UserMFASettingList = schema.new({
         id = id.from(_N, "GetUserAuthFactorsOutput", "UserMFASettingList"),
         type = "list",
         name = "UserMFASettingList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ConfiguredUserAuthFactors = schema.new({
         id = id.from(_N, "GetUserAuthFactorsOutput", "ConfiguredUserAuthFactors"),
         type = "list",
         name = "ConfiguredUserAuthFactors",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetUserPoolMfaConfigInput = schema.new({
   id = id.from(_N, "GetUserPoolMfaConfigRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "GetUserPoolMfaConfigInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EmailMfaConfigType = schema.new({
   id = id.from(_N, "EmailMfaConfigType"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "EmailMfaConfigType", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Subject = schema.new({
         id = id.from(_N, "EmailMfaConfigType", "Subject"),
         type = "string",
         name = "Subject",
         target_id = prelude.String.id,
      }),
   },
})

M.SmsMfaConfigType = schema.new({
   id = id.from(_N, "SmsMfaConfigType"),
   type = "structure",
   members = {
      SmsAuthenticationMessage = schema.new({
         id = id.from(_N, "SmsMfaConfigType", "SmsAuthenticationMessage"),
         type = "string",
         name = "SmsAuthenticationMessage",
         target_id = prelude.String.id,
      }),
      SmsConfiguration = schema.new({
         id = id.from(_N, "SmsMfaConfigType", "SmsConfiguration"),
         type = "structure",
         name = "SmsConfiguration",
         target_id = id.from(_N, "SmsConfigurationType"),
         target = M.SmsConfigurationType,
      }),
   },
})

M.SoftwareTokenMfaConfigType = schema.new({
   id = id.from(_N, "SoftwareTokenMfaConfigType"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "SoftwareTokenMfaConfigType", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.WebAuthnConfigurationType = schema.new({
   id = id.from(_N, "WebAuthnConfigurationType"),
   type = "structure",
   members = {
      RelyingPartyId = schema.new({
         id = id.from(_N, "WebAuthnConfigurationType", "RelyingPartyId"),
         type = "string",
         name = "RelyingPartyId",
         target_id = prelude.String.id,
      }),
      UserVerification = schema.new({
         id = id.from(_N, "WebAuthnConfigurationType", "UserVerification"),
         type = "string",
         name = "UserVerification",
         target_id = prelude.String.id,
      }),
      FactorConfiguration = schema.new({
         id = id.from(_N, "WebAuthnConfigurationType", "FactorConfiguration"),
         type = "string",
         name = "FactorConfiguration",
         target_id = prelude.String.id,
      }),
   },
})

M.GetUserPoolMfaConfigOutput = schema.new({
   id = id.from(_N, "GetUserPoolMfaConfigResponse"),
   type = "structure",
   members = {
      SmsMfaConfiguration = schema.new({
         id = id.from(_N, "GetUserPoolMfaConfigOutput", "SmsMfaConfiguration"),
         type = "structure",
         name = "SmsMfaConfiguration",
         target_id = id.from(_N, "SmsMfaConfigType"),
         target = M.SmsMfaConfigType,
      }),
      SoftwareTokenMfaConfiguration = schema.new({
         id = id.from(_N, "GetUserPoolMfaConfigOutput", "SoftwareTokenMfaConfiguration"),
         type = "structure",
         name = "SoftwareTokenMfaConfiguration",
         target_id = id.from(_N, "SoftwareTokenMfaConfigType"),
         target = M.SoftwareTokenMfaConfigType,
      }),
      EmailMfaConfiguration = schema.new({
         id = id.from(_N, "GetUserPoolMfaConfigOutput", "EmailMfaConfiguration"),
         type = "structure",
         name = "EmailMfaConfiguration",
         target_id = id.from(_N, "EmailMfaConfigType"),
         target = M.EmailMfaConfigType,
      }),
      MfaConfiguration = schema.new({
         id = id.from(_N, "GetUserPoolMfaConfigOutput", "MfaConfiguration"),
         type = "string",
         name = "MfaConfiguration",
         target_id = prelude.String.id,
      }),
      WebAuthnConfiguration = schema.new({
         id = id.from(_N, "GetUserPoolMfaConfigOutput", "WebAuthnConfiguration"),
         type = "structure",
         name = "WebAuthnConfiguration",
         target_id = id.from(_N, "WebAuthnConfigurationType"),
         target = M.WebAuthnConfigurationType,
      }),
   },
})

M.GlobalSignOutInput = schema.new({
   id = id.from(_N, "GlobalSignOutRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "GlobalSignOutInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GlobalSignOutOutput = schema.new({
   id = id.from(_N, "GlobalSignOutResponse"),
   type = "structure",
})

M.InitiateAuthInput = schema.new({
   id = id.from(_N, "InitiateAuthRequest"),
   type = "structure",
   members = {
      AuthFlow = schema.new({
         id = id.from(_N, "InitiateAuthInput", "AuthFlow"),
         type = "string",
         name = "AuthFlow",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthParameters = schema.new({
         id = id.from(_N, "InitiateAuthInput", "AuthParameters"),
         type = "map",
         name = "AuthParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "InitiateAuthInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ClientId = schema.new({
         id = id.from(_N, "InitiateAuthInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AnalyticsMetadata = schema.new({
         id = id.from(_N, "InitiateAuthInput", "AnalyticsMetadata"),
         type = "structure",
         name = "AnalyticsMetadata",
         target_id = id.from(_N, "AnalyticsMetadataType"),
         target = M.AnalyticsMetadataType,
      }),
      UserContextData = schema.new({
         id = id.from(_N, "InitiateAuthInput", "UserContextData"),
         type = "structure",
         name = "UserContextData",
         target_id = id.from(_N, "UserContextDataType"),
         target = M.UserContextDataType,
      }),
      Session = schema.new({
         id = id.from(_N, "InitiateAuthInput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
   },
})

M.InitiateAuthOutput = schema.new({
   id = id.from(_N, "InitiateAuthResponse"),
   type = "structure",
   members = {
      ChallengeName = schema.new({
         id = id.from(_N, "InitiateAuthOutput", "ChallengeName"),
         type = "string",
         name = "ChallengeName",
         target_id = prelude.String.id,
      }),
      Session = schema.new({
         id = id.from(_N, "InitiateAuthOutput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
      ChallengeParameters = schema.new({
         id = id.from(_N, "InitiateAuthOutput", "ChallengeParameters"),
         type = "map",
         name = "ChallengeParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AuthenticationResult = schema.new({
         id = id.from(_N, "InitiateAuthOutput", "AuthenticationResult"),
         type = "structure",
         name = "AuthenticationResult",
         target_id = id.from(_N, "AuthenticationResultType"),
         target = M.AuthenticationResultType,
      }),
      AvailableChallenges = schema.new({
         id = id.from(_N, "InitiateAuthOutput", "AvailableChallenges"),
         type = "list",
         name = "AvailableChallenges",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListDevicesInput = schema.new({
   id = id.from(_N, "ListDevicesRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "ListDevicesInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Limit = schema.new({
         id = id.from(_N, "ListDevicesInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "ListDevicesInput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDevicesOutput = schema.new({
   id = id.from(_N, "ListDevicesResponse"),
   type = "structure",
   members = {
      Devices = schema.new({
         id = id.from(_N, "ListDevicesOutput", "Devices"),
         type = "list",
         name = "Devices",
         target_id = prelude.Document.id,
         list_member = M.DeviceType,
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "ListDevicesOutput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListGroupsInput = schema.new({
   id = id.from(_N, "ListGroupsRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "ListGroupsInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Limit = schema.new({
         id = id.from(_N, "ListGroupsInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListGroupsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
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
         list_member = M.GroupType,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListGroupsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIdentityProvidersInput = schema.new({
   id = id.from(_N, "ListIdentityProvidersRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "ListIdentityProvidersInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListIdentityProvidersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListIdentityProvidersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ProviderDescription = schema.new({
   id = id.from(_N, "ProviderDescription"),
   type = "structure",
   members = {
      ProviderName = schema.new({
         id = id.from(_N, "ProviderDescription", "ProviderName"),
         type = "string",
         name = "ProviderName",
         target_id = prelude.String.id,
      }),
      ProviderType = schema.new({
         id = id.from(_N, "ProviderDescription", "ProviderType"),
         type = "string",
         name = "ProviderType",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "ProviderDescription", "LastModifiedDate"),
         type = "timestamp",
         name = "LastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "ProviderDescription", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListIdentityProvidersOutput = schema.new({
   id = id.from(_N, "ListIdentityProvidersResponse"),
   type = "structure",
   members = {
      Providers = schema.new({
         id = id.from(_N, "ListIdentityProvidersOutput", "Providers"),
         type = "list",
         name = "Providers",
         target_id = prelude.Document.id,
         list_member = M.ProviderDescription,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListIdentityProvidersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListResourceServersInput = schema.new({
   id = id.from(_N, "ListResourceServersRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "ListResourceServersInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListResourceServersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListResourceServersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListResourceServersOutput = schema.new({
   id = id.from(_N, "ListResourceServersResponse"),
   type = "structure",
   members = {
      ResourceServers = schema.new({
         id = id.from(_N, "ListResourceServersOutput", "ResourceServers"),
         type = "list",
         name = "ResourceServers",
         target_id = prelude.Document.id,
         list_member = M.ResourceServerType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListResourceServersOutput", "NextToken"),
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
      ResourceArn = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResponse"),
   type = "structure",
   members = {
      Tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListTermsInput = schema.new({
   id = id.from(_N, "ListTermsRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "ListTermsInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListTermsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTermsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.TermsDescriptionType = schema.new({
   id = id.from(_N, "TermsDescriptionType"),
   type = "structure",
   members = {
      TermsId = schema.new({
         id = id.from(_N, "TermsDescriptionType", "TermsId"),
         type = "string",
         name = "TermsId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TermsName = schema.new({
         id = id.from(_N, "TermsDescriptionType", "TermsName"),
         type = "string",
         name = "TermsName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Enforcement = schema.new({
         id = id.from(_N, "TermsDescriptionType", "Enforcement"),
         type = "string",
         name = "Enforcement",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreationDate = schema.new({
         id = id.from(_N, "TermsDescriptionType", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "TermsDescriptionType", "LastModifiedDate"),
         type = "timestamp",
         name = "LastModifiedDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListTermsOutput = schema.new({
   id = id.from(_N, "ListTermsResponse"),
   type = "structure",
   members = {
      Terms = schema.new({
         id = id.from(_N, "ListTermsOutput", "Terms"),
         type = "list",
         name = "Terms",
         target_id = prelude.Document.id,
         list_member = M.TermsDescriptionType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTermsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListUserImportJobsInput = schema.new({
   id = id.from(_N, "ListUserImportJobsRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "ListUserImportJobsInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListUserImportJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "ListUserImportJobsInput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListUserImportJobsOutput = schema.new({
   id = id.from(_N, "ListUserImportJobsResponse"),
   type = "structure",
   members = {
      UserImportJobs = schema.new({
         id = id.from(_N, "ListUserImportJobsOutput", "UserImportJobs"),
         type = "list",
         name = "UserImportJobs",
         target_id = prelude.Document.id,
         list_member = M.UserImportJobType,
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "ListUserImportJobsOutput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListUserPoolClientsInput = schema.new({
   id = id.from(_N, "ListUserPoolClientsRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "ListUserPoolClientsInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListUserPoolClientsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListUserPoolClientsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UserPoolClientDescription = schema.new({
   id = id.from(_N, "UserPoolClientDescription"),
   type = "structure",
   members = {
      ClientId = schema.new({
         id = id.from(_N, "UserPoolClientDescription", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "UserPoolClientDescription", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      ClientName = schema.new({
         id = id.from(_N, "UserPoolClientDescription", "ClientName"),
         type = "string",
         name = "ClientName",
         target_id = prelude.String.id,
      }),
   },
})

M.ListUserPoolClientsOutput = schema.new({
   id = id.from(_N, "ListUserPoolClientsResponse"),
   type = "structure",
   members = {
      UserPoolClients = schema.new({
         id = id.from(_N, "ListUserPoolClientsOutput", "UserPoolClients"),
         type = "list",
         name = "UserPoolClients",
         target_id = prelude.Document.id,
         list_member = M.UserPoolClientDescription,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListUserPoolClientsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListUserPoolClientSecretsInput = schema.new({
   id = id.from(_N, "ListUserPoolClientSecretsRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "ListUserPoolClientSecretsInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "ListUserPoolClientSecretsInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListUserPoolClientSecretsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListUserPoolClientSecretsOutput = schema.new({
   id = id.from(_N, "ListUserPoolClientSecretsResponse"),
   type = "structure",
   members = {
      ClientSecrets = schema.new({
         id = id.from(_N, "ListUserPoolClientSecretsOutput", "ClientSecrets"),
         type = "list",
         name = "ClientSecrets",
         target_id = prelude.Document.id,
         list_member = M.ClientSecretDescriptorType,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListUserPoolClientSecretsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListUserPoolsInput = schema.new({
   id = id.from(_N, "ListUserPoolsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListUserPoolsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListUserPoolsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UserPoolDescriptionType = schema.new({
   id = id.from(_N, "UserPoolDescriptionType"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "UserPoolDescriptionType", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UserPoolDescriptionType", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      LambdaConfig = schema.new({
         id = id.from(_N, "UserPoolDescriptionType", "LambdaConfig"),
         type = "structure",
         name = "LambdaConfig",
         target_id = id.from(_N, "LambdaConfigType"),
         target = M.LambdaConfigType,
      }),
      Status = schema.new({
         id = id.from(_N, "UserPoolDescriptionType", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "UserPoolDescriptionType", "LastModifiedDate"),
         type = "timestamp",
         name = "LastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "UserPoolDescriptionType", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListUserPoolsOutput = schema.new({
   id = id.from(_N, "ListUserPoolsResponse"),
   type = "structure",
   members = {
      UserPools = schema.new({
         id = id.from(_N, "ListUserPoolsOutput", "UserPools"),
         type = "list",
         name = "UserPools",
         target_id = prelude.Document.id,
         list_member = M.UserPoolDescriptionType,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListUserPoolsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListUsersInput = schema.new({
   id = id.from(_N, "ListUsersRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "ListUsersInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AttributesToGet = schema.new({
         id = id.from(_N, "ListUsersInput", "AttributesToGet"),
         type = "list",
         name = "AttributesToGet",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Limit = schema.new({
         id = id.from(_N, "ListUsersInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "ListUsersInput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
      Filter = schema.new({
         id = id.from(_N, "ListUsersInput", "Filter"),
         type = "string",
         name = "Filter",
         target_id = prelude.String.id,
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
         list_member = M.UserType,
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "ListUsersOutput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListUsersInGroupInput = schema.new({
   id = id.from(_N, "ListUsersInGroupRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "ListUsersInGroupInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GroupName = schema.new({
         id = id.from(_N, "ListUsersInGroupInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Limit = schema.new({
         id = id.from(_N, "ListUsersInGroupInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListUsersInGroupInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListUsersInGroupOutput = schema.new({
   id = id.from(_N, "ListUsersInGroupResponse"),
   type = "structure",
   members = {
      Users = schema.new({
         id = id.from(_N, "ListUsersInGroupOutput", "Users"),
         type = "list",
         name = "Users",
         target_id = prelude.Document.id,
         list_member = M.UserType,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListUsersInGroupOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListWebAuthnCredentialsInput = schema.new({
   id = id.from(_N, "ListWebAuthnCredentialsRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "ListWebAuthnCredentialsInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListWebAuthnCredentialsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListWebAuthnCredentialsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.WebAuthnCredentialDescription = schema.new({
   id = id.from(_N, "WebAuthnCredentialDescription"),
   type = "structure",
   members = {
      CredentialId = schema.new({
         id = id.from(_N, "WebAuthnCredentialDescription", "CredentialId"),
         type = "string",
         name = "CredentialId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FriendlyCredentialName = schema.new({
         id = id.from(_N, "WebAuthnCredentialDescription", "FriendlyCredentialName"),
         type = "string",
         name = "FriendlyCredentialName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RelyingPartyId = schema.new({
         id = id.from(_N, "WebAuthnCredentialDescription", "RelyingPartyId"),
         type = "string",
         name = "RelyingPartyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthenticatorAttachment = schema.new({
         id = id.from(_N, "WebAuthnCredentialDescription", "AuthenticatorAttachment"),
         type = "string",
         name = "AuthenticatorAttachment",
         target_id = prelude.String.id,
      }),
      AuthenticatorTransports = schema.new({
         id = id.from(_N, "WebAuthnCredentialDescription", "AuthenticatorTransports"),
         type = "list",
         name = "AuthenticatorTransports",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "WebAuthnCredentialDescription", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListWebAuthnCredentialsOutput = schema.new({
   id = id.from(_N, "ListWebAuthnCredentialsResponse"),
   type = "structure",
   members = {
      Credentials = schema.new({
         id = id.from(_N, "ListWebAuthnCredentialsOutput", "Credentials"),
         type = "list",
         name = "Credentials",
         target_id = prelude.Document.id,
         list_member = M.WebAuthnCredentialDescription,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListWebAuthnCredentialsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ResendConfirmationCodeInput = schema.new({
   id = id.from(_N, "ResendConfirmationCodeRequest"),
   type = "structure",
   members = {
      ClientId = schema.new({
         id = id.from(_N, "ResendConfirmationCodeInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SecretHash = schema.new({
         id = id.from(_N, "ResendConfirmationCodeInput", "SecretHash"),
         type = "string",
         name = "SecretHash",
         target_id = prelude.String.id,
      }),
      UserContextData = schema.new({
         id = id.from(_N, "ResendConfirmationCodeInput", "UserContextData"),
         type = "structure",
         name = "UserContextData",
         target_id = id.from(_N, "UserContextDataType"),
         target = M.UserContextDataType,
      }),
      Username = schema.new({
         id = id.from(_N, "ResendConfirmationCodeInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AnalyticsMetadata = schema.new({
         id = id.from(_N, "ResendConfirmationCodeInput", "AnalyticsMetadata"),
         type = "structure",
         name = "AnalyticsMetadata",
         target_id = id.from(_N, "AnalyticsMetadataType"),
         target = M.AnalyticsMetadataType,
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "ResendConfirmationCodeInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ResendConfirmationCodeOutput = schema.new({
   id = id.from(_N, "ResendConfirmationCodeResponse"),
   type = "structure",
   members = {
      CodeDeliveryDetails = schema.new({
         id = id.from(_N, "ResendConfirmationCodeOutput", "CodeDeliveryDetails"),
         type = "structure",
         name = "CodeDeliveryDetails",
         target_id = id.from(_N, "CodeDeliveryDetailsType"),
         target = M.CodeDeliveryDetailsType,
      }),
   },
})

M.RespondToAuthChallengeInput = schema.new({
   id = id.from(_N, "RespondToAuthChallengeRequest"),
   type = "structure",
   members = {
      ClientId = schema.new({
         id = id.from(_N, "RespondToAuthChallengeInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ChallengeName = schema.new({
         id = id.from(_N, "RespondToAuthChallengeInput", "ChallengeName"),
         type = "string",
         name = "ChallengeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Session = schema.new({
         id = id.from(_N, "RespondToAuthChallengeInput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
      ChallengeResponses = schema.new({
         id = id.from(_N, "RespondToAuthChallengeInput", "ChallengeResponses"),
         type = "map",
         name = "ChallengeResponses",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AnalyticsMetadata = schema.new({
         id = id.from(_N, "RespondToAuthChallengeInput", "AnalyticsMetadata"),
         type = "structure",
         name = "AnalyticsMetadata",
         target_id = id.from(_N, "AnalyticsMetadataType"),
         target = M.AnalyticsMetadataType,
      }),
      UserContextData = schema.new({
         id = id.from(_N, "RespondToAuthChallengeInput", "UserContextData"),
         type = "structure",
         name = "UserContextData",
         target_id = id.from(_N, "UserContextDataType"),
         target = M.UserContextDataType,
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "RespondToAuthChallengeInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.RespondToAuthChallengeOutput = schema.new({
   id = id.from(_N, "RespondToAuthChallengeResponse"),
   type = "structure",
   members = {
      ChallengeName = schema.new({
         id = id.from(_N, "RespondToAuthChallengeOutput", "ChallengeName"),
         type = "string",
         name = "ChallengeName",
         target_id = prelude.String.id,
      }),
      Session = schema.new({
         id = id.from(_N, "RespondToAuthChallengeOutput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
      ChallengeParameters = schema.new({
         id = id.from(_N, "RespondToAuthChallengeOutput", "ChallengeParameters"),
         type = "map",
         name = "ChallengeParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AuthenticationResult = schema.new({
         id = id.from(_N, "RespondToAuthChallengeOutput", "AuthenticationResult"),
         type = "structure",
         name = "AuthenticationResult",
         target_id = id.from(_N, "AuthenticationResultType"),
         target = M.AuthenticationResultType,
      }),
   },
})

M.RevokeTokenInput = schema.new({
   id = id.from(_N, "RevokeTokenRequest"),
   type = "structure",
   members = {
      Token = schema.new({
         id = id.from(_N, "RevokeTokenInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "RevokeTokenInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientSecret = schema.new({
         id = id.from(_N, "RevokeTokenInput", "ClientSecret"),
         type = "string",
         name = "ClientSecret",
         target_id = prelude.String.id,
      }),
   },
})

M.RevokeTokenOutput = schema.new({
   id = id.from(_N, "RevokeTokenResponse"),
   type = "structure",
})

M.UnauthorizedException = schema.new({
   id = id.from(_N, "UnauthorizedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UnauthorizedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UnsupportedTokenTypeException = schema.new({
   id = id.from(_N, "UnsupportedTokenTypeException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UnsupportedTokenTypeException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.SetLogDeliveryConfigurationInput = schema.new({
   id = id.from(_N, "SetLogDeliveryConfigurationRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "SetLogDeliveryConfigurationInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LogConfigurations = schema.new({
         id = id.from(_N, "SetLogDeliveryConfigurationInput", "LogConfigurations"),
         type = "list",
         name = "LogConfigurations",
         target_id = prelude.Document.id,
         list_member = M.LogConfigurationType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SetLogDeliveryConfigurationOutput = schema.new({
   id = id.from(_N, "SetLogDeliveryConfigurationResponse"),
   type = "structure",
   members = {
      LogDeliveryConfiguration = schema.new({
         id = id.from(_N, "SetLogDeliveryConfigurationOutput", "LogDeliveryConfiguration"),
         type = "structure",
         name = "LogDeliveryConfiguration",
         target_id = id.from(_N, "LogDeliveryConfigurationType"),
         target = M.LogDeliveryConfigurationType,
      }),
   },
})

M.SetRiskConfigurationInput = schema.new({
   id = id.from(_N, "SetRiskConfigurationRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "SetRiskConfigurationInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "SetRiskConfigurationInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
      }),
      CompromisedCredentialsRiskConfiguration = schema.new({
         id = id.from(_N, "SetRiskConfigurationInput", "CompromisedCredentialsRiskConfiguration"),
         type = "structure",
         name = "CompromisedCredentialsRiskConfiguration",
         target_id = id.from(_N, "CompromisedCredentialsRiskConfigurationType"),
         target = M.CompromisedCredentialsRiskConfigurationType,
      }),
      AccountTakeoverRiskConfiguration = schema.new({
         id = id.from(_N, "SetRiskConfigurationInput", "AccountTakeoverRiskConfiguration"),
         type = "structure",
         name = "AccountTakeoverRiskConfiguration",
         target_id = id.from(_N, "AccountTakeoverRiskConfigurationType"),
         target = M.AccountTakeoverRiskConfigurationType,
      }),
      RiskExceptionConfiguration = schema.new({
         id = id.from(_N, "SetRiskConfigurationInput", "RiskExceptionConfiguration"),
         type = "structure",
         name = "RiskExceptionConfiguration",
         target_id = id.from(_N, "RiskExceptionConfigurationType"),
         target = M.RiskExceptionConfigurationType,
      }),
   },
})

M.SetRiskConfigurationOutput = schema.new({
   id = id.from(_N, "SetRiskConfigurationResponse"),
   type = "structure",
   members = {
      RiskConfiguration = schema.new({
         id = id.from(_N, "SetRiskConfigurationOutput", "RiskConfiguration"),
         type = "structure",
         name = "RiskConfiguration",
         target_id = id.from(_N, "RiskConfigurationType"),
         target = M.RiskConfigurationType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SetUICustomizationInput = schema.new({
   id = id.from(_N, "SetUICustomizationRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "SetUICustomizationInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "SetUICustomizationInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
      }),
      CSS = schema.new({
         id = id.from(_N, "SetUICustomizationInput", "CSS"),
         type = "string",
         name = "CSS",
         target_id = prelude.String.id,
      }),
      ImageFile = schema.new({
         id = id.from(_N, "SetUICustomizationInput", "ImageFile"),
         type = "blob",
         name = "ImageFile",
         target_id = prelude.Blob.id,
      }),
   },
})

M.SetUICustomizationOutput = schema.new({
   id = id.from(_N, "SetUICustomizationResponse"),
   type = "structure",
   members = {
      UICustomization = schema.new({
         id = id.from(_N, "SetUICustomizationOutput", "UICustomization"),
         type = "structure",
         name = "UICustomization",
         target_id = id.from(_N, "UICustomizationType"),
         target = M.UICustomizationType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SetUserMFAPreferenceInput = schema.new({
   id = id.from(_N, "SetUserMFAPreferenceRequest"),
   type = "structure",
   members = {
      SMSMfaSettings = schema.new({
         id = id.from(_N, "SetUserMFAPreferenceInput", "SMSMfaSettings"),
         type = "structure",
         name = "SMSMfaSettings",
         target_id = id.from(_N, "SMSMfaSettingsType"),
         target = M.SMSMfaSettingsType,
      }),
      SoftwareTokenMfaSettings = schema.new({
         id = id.from(_N, "SetUserMFAPreferenceInput", "SoftwareTokenMfaSettings"),
         type = "structure",
         name = "SoftwareTokenMfaSettings",
         target_id = id.from(_N, "SoftwareTokenMfaSettingsType"),
         target = M.SoftwareTokenMfaSettingsType,
      }),
      EmailMfaSettings = schema.new({
         id = id.from(_N, "SetUserMFAPreferenceInput", "EmailMfaSettings"),
         type = "structure",
         name = "EmailMfaSettings",
         target_id = id.from(_N, "EmailMfaSettingsType"),
         target = M.EmailMfaSettingsType,
      }),
      WebAuthnMfaSettings = schema.new({
         id = id.from(_N, "SetUserMFAPreferenceInput", "WebAuthnMfaSettings"),
         type = "structure",
         name = "WebAuthnMfaSettings",
         target_id = id.from(_N, "WebAuthnMfaSettingsType"),
         target = M.WebAuthnMfaSettingsType,
      }),
      AccessToken = schema.new({
         id = id.from(_N, "SetUserMFAPreferenceInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SetUserMFAPreferenceOutput = schema.new({
   id = id.from(_N, "SetUserMFAPreferenceResponse"),
   type = "structure",
})

M.SetUserPoolMfaConfigInput = schema.new({
   id = id.from(_N, "SetUserPoolMfaConfigRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "SetUserPoolMfaConfigInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SmsMfaConfiguration = schema.new({
         id = id.from(_N, "SetUserPoolMfaConfigInput", "SmsMfaConfiguration"),
         type = "structure",
         name = "SmsMfaConfiguration",
         target_id = id.from(_N, "SmsMfaConfigType"),
         target = M.SmsMfaConfigType,
      }),
      SoftwareTokenMfaConfiguration = schema.new({
         id = id.from(_N, "SetUserPoolMfaConfigInput", "SoftwareTokenMfaConfiguration"),
         type = "structure",
         name = "SoftwareTokenMfaConfiguration",
         target_id = id.from(_N, "SoftwareTokenMfaConfigType"),
         target = M.SoftwareTokenMfaConfigType,
      }),
      EmailMfaConfiguration = schema.new({
         id = id.from(_N, "SetUserPoolMfaConfigInput", "EmailMfaConfiguration"),
         type = "structure",
         name = "EmailMfaConfiguration",
         target_id = id.from(_N, "EmailMfaConfigType"),
         target = M.EmailMfaConfigType,
      }),
      MfaConfiguration = schema.new({
         id = id.from(_N, "SetUserPoolMfaConfigInput", "MfaConfiguration"),
         type = "string",
         name = "MfaConfiguration",
         target_id = prelude.String.id,
      }),
      WebAuthnConfiguration = schema.new({
         id = id.from(_N, "SetUserPoolMfaConfigInput", "WebAuthnConfiguration"),
         type = "structure",
         name = "WebAuthnConfiguration",
         target_id = id.from(_N, "WebAuthnConfigurationType"),
         target = M.WebAuthnConfigurationType,
      }),
   },
})

M.SetUserPoolMfaConfigOutput = schema.new({
   id = id.from(_N, "SetUserPoolMfaConfigResponse"),
   type = "structure",
   members = {
      SmsMfaConfiguration = schema.new({
         id = id.from(_N, "SetUserPoolMfaConfigOutput", "SmsMfaConfiguration"),
         type = "structure",
         name = "SmsMfaConfiguration",
         target_id = id.from(_N, "SmsMfaConfigType"),
         target = M.SmsMfaConfigType,
      }),
      SoftwareTokenMfaConfiguration = schema.new({
         id = id.from(_N, "SetUserPoolMfaConfigOutput", "SoftwareTokenMfaConfiguration"),
         type = "structure",
         name = "SoftwareTokenMfaConfiguration",
         target_id = id.from(_N, "SoftwareTokenMfaConfigType"),
         target = M.SoftwareTokenMfaConfigType,
      }),
      EmailMfaConfiguration = schema.new({
         id = id.from(_N, "SetUserPoolMfaConfigOutput", "EmailMfaConfiguration"),
         type = "structure",
         name = "EmailMfaConfiguration",
         target_id = id.from(_N, "EmailMfaConfigType"),
         target = M.EmailMfaConfigType,
      }),
      MfaConfiguration = schema.new({
         id = id.from(_N, "SetUserPoolMfaConfigOutput", "MfaConfiguration"),
         type = "string",
         name = "MfaConfiguration",
         target_id = prelude.String.id,
      }),
      WebAuthnConfiguration = schema.new({
         id = id.from(_N, "SetUserPoolMfaConfigOutput", "WebAuthnConfiguration"),
         type = "structure",
         name = "WebAuthnConfiguration",
         target_id = id.from(_N, "WebAuthnConfigurationType"),
         target = M.WebAuthnConfigurationType,
      }),
   },
})

M.SetUserSettingsInput = schema.new({
   id = id.from(_N, "SetUserSettingsRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "SetUserSettingsInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MFAOptions = schema.new({
         id = id.from(_N, "SetUserSettingsInput", "MFAOptions"),
         type = "list",
         name = "MFAOptions",
         target_id = prelude.Document.id,
         list_member = M.MFAOptionType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SetUserSettingsOutput = schema.new({
   id = id.from(_N, "SetUserSettingsResponse"),
   type = "structure",
})

M.SignUpInput = schema.new({
   id = id.from(_N, "SignUpRequest"),
   type = "structure",
   members = {
      ClientId = schema.new({
         id = id.from(_N, "SignUpInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SecretHash = schema.new({
         id = id.from(_N, "SignUpInput", "SecretHash"),
         type = "string",
         name = "SecretHash",
         target_id = prelude.String.id,
      }),
      Username = schema.new({
         id = id.from(_N, "SignUpInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Password = schema.new({
         id = id.from(_N, "SignUpInput", "Password"),
         type = "string",
         name = "Password",
         target_id = prelude.String.id,
      }),
      UserAttributes = schema.new({
         id = id.from(_N, "SignUpInput", "UserAttributes"),
         type = "list",
         name = "UserAttributes",
         target_id = prelude.Document.id,
         list_member = M.AttributeType,
      }),
      ValidationData = schema.new({
         id = id.from(_N, "SignUpInput", "ValidationData"),
         type = "list",
         name = "ValidationData",
         target_id = prelude.Document.id,
         list_member = M.AttributeType,
      }),
      AnalyticsMetadata = schema.new({
         id = id.from(_N, "SignUpInput", "AnalyticsMetadata"),
         type = "structure",
         name = "AnalyticsMetadata",
         target_id = id.from(_N, "AnalyticsMetadataType"),
         target = M.AnalyticsMetadataType,
      }),
      UserContextData = schema.new({
         id = id.from(_N, "SignUpInput", "UserContextData"),
         type = "structure",
         name = "UserContextData",
         target_id = id.from(_N, "UserContextDataType"),
         target = M.UserContextDataType,
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "SignUpInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.SignUpOutput = schema.new({
   id = id.from(_N, "SignUpResponse"),
   type = "structure",
   members = {
      UserConfirmed = schema.new({
         id = id.from(_N, "SignUpOutput", "UserConfirmed"),
         type = "boolean",
         name = "UserConfirmed",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      CodeDeliveryDetails = schema.new({
         id = id.from(_N, "SignUpOutput", "CodeDeliveryDetails"),
         type = "structure",
         name = "CodeDeliveryDetails",
         target_id = id.from(_N, "CodeDeliveryDetailsType"),
         target = M.CodeDeliveryDetailsType,
      }),
      UserSub = schema.new({
         id = id.from(_N, "SignUpOutput", "UserSub"),
         type = "string",
         name = "UserSub",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Session = schema.new({
         id = id.from(_N, "SignUpOutput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
   },
})

M.StartUserImportJobInput = schema.new({
   id = id.from(_N, "StartUserImportJobRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "StartUserImportJobInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "StartUserImportJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartUserImportJobOutput = schema.new({
   id = id.from(_N, "StartUserImportJobResponse"),
   type = "structure",
   members = {
      UserImportJob = schema.new({
         id = id.from(_N, "StartUserImportJobOutput", "UserImportJob"),
         type = "structure",
         name = "UserImportJob",
         target_id = id.from(_N, "UserImportJobType"),
         target = M.UserImportJobType,
      }),
   },
})

M.StartWebAuthnRegistrationInput = schema.new({
   id = id.from(_N, "StartWebAuthnRegistrationRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "StartWebAuthnRegistrationInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartWebAuthnRegistrationOutput = schema.new({
   id = id.from(_N, "StartWebAuthnRegistrationResponse"),
   type = "structure",
   members = {
      CredentialCreationOptions = schema.new({
         id = id.from(_N, "StartWebAuthnRegistrationOutput", "CredentialCreationOptions"),
         type = "document",
         name = "CredentialCreationOptions",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.WebAuthnConfigurationMissingException = schema.new({
   id = id.from(_N, "WebAuthnConfigurationMissingException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "WebAuthnConfigurationMissingException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.StopUserImportJobInput = schema.new({
   id = id.from(_N, "StopUserImportJobRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "StopUserImportJobInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "StopUserImportJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopUserImportJobOutput = schema.new({
   id = id.from(_N, "StopUserImportJobResponse"),
   type = "structure",
   members = {
      UserImportJob = schema.new({
         id = id.from(_N, "StopUserImportJobOutput", "UserImportJob"),
         type = "structure",
         name = "UserImportJob",
         target_id = id.from(_N, "UserImportJobType"),
         target = M.UserImportJobType,
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
   type = "structure",
   members = {
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
         type = "map",
         name = "Tags",
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
   id = id.from(_N, "TagResourceResponse"),
   type = "structure",
})

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceRequest"),
   type = "structure",
   members = {
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

M.UpdateAuthEventFeedbackInput = schema.new({
   id = id.from(_N, "UpdateAuthEventFeedbackRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "UpdateAuthEventFeedbackInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Username = schema.new({
         id = id.from(_N, "UpdateAuthEventFeedbackInput", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventId = schema.new({
         id = id.from(_N, "UpdateAuthEventFeedbackInput", "EventId"),
         type = "string",
         name = "EventId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FeedbackToken = schema.new({
         id = id.from(_N, "UpdateAuthEventFeedbackInput", "FeedbackToken"),
         type = "string",
         name = "FeedbackToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FeedbackValue = schema.new({
         id = id.from(_N, "UpdateAuthEventFeedbackInput", "FeedbackValue"),
         type = "string",
         name = "FeedbackValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateAuthEventFeedbackOutput = schema.new({
   id = id.from(_N, "UpdateAuthEventFeedbackResponse"),
   type = "structure",
})

M.UpdateDeviceStatusInput = schema.new({
   id = id.from(_N, "UpdateDeviceStatusRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "UpdateDeviceStatusInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeviceKey = schema.new({
         id = id.from(_N, "UpdateDeviceStatusInput", "DeviceKey"),
         type = "string",
         name = "DeviceKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeviceRememberedStatus = schema.new({
         id = id.from(_N, "UpdateDeviceStatusInput", "DeviceRememberedStatus"),
         type = "string",
         name = "DeviceRememberedStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDeviceStatusOutput = schema.new({
   id = id.from(_N, "UpdateDeviceStatusResponse"),
   type = "structure",
})

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
      UserPoolId = schema.new({
         id = id.from(_N, "UpdateGroupInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateGroupInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "UpdateGroupInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      Precedence = schema.new({
         id = id.from(_N, "UpdateGroupInput", "Precedence"),
         type = "integer",
         name = "Precedence",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdateGroupOutput = schema.new({
   id = id.from(_N, "UpdateGroupResponse"),
   type = "structure",
   members = {
      Group = schema.new({
         id = id.from(_N, "UpdateGroupOutput", "Group"),
         type = "structure",
         name = "Group",
         target_id = id.from(_N, "GroupType"),
         target = M.GroupType,
      }),
   },
})

M.UpdateIdentityProviderInput = schema.new({
   id = id.from(_N, "UpdateIdentityProviderRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "UpdateIdentityProviderInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProviderName = schema.new({
         id = id.from(_N, "UpdateIdentityProviderInput", "ProviderName"),
         type = "string",
         name = "ProviderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProviderDetails = schema.new({
         id = id.from(_N, "UpdateIdentityProviderInput", "ProviderDetails"),
         type = "map",
         name = "ProviderDetails",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AttributeMapping = schema.new({
         id = id.from(_N, "UpdateIdentityProviderInput", "AttributeMapping"),
         type = "map",
         name = "AttributeMapping",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      IdpIdentifiers = schema.new({
         id = id.from(_N, "UpdateIdentityProviderInput", "IdpIdentifiers"),
         type = "list",
         name = "IdpIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.UpdateIdentityProviderOutput = schema.new({
   id = id.from(_N, "UpdateIdentityProviderResponse"),
   type = "structure",
   members = {
      IdentityProvider = schema.new({
         id = id.from(_N, "UpdateIdentityProviderOutput", "IdentityProvider"),
         type = "structure",
         name = "IdentityProvider",
         target_id = id.from(_N, "IdentityProviderType"),
         target = M.IdentityProviderType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateManagedLoginBrandingInput = schema.new({
   id = id.from(_N, "UpdateManagedLoginBrandingRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "UpdateManagedLoginBrandingInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      ManagedLoginBrandingId = schema.new({
         id = id.from(_N, "UpdateManagedLoginBrandingInput", "ManagedLoginBrandingId"),
         type = "string",
         name = "ManagedLoginBrandingId",
         target_id = prelude.String.id,
      }),
      UseCognitoProvidedValues = schema.new({
         id = id.from(_N, "UpdateManagedLoginBrandingInput", "UseCognitoProvidedValues"),
         type = "boolean",
         name = "UseCognitoProvidedValues",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      Settings = schema.new({
         id = id.from(_N, "UpdateManagedLoginBrandingInput", "Settings"),
         type = "document",
         name = "Settings",
         target_id = prelude.Document.id,
      }),
      Assets = schema.new({
         id = id.from(_N, "UpdateManagedLoginBrandingInput", "Assets"),
         type = "list",
         name = "Assets",
         target_id = prelude.Document.id,
         list_member = M.AssetType,
      }),
   },
})

M.UpdateManagedLoginBrandingOutput = schema.new({
   id = id.from(_N, "UpdateManagedLoginBrandingResponse"),
   type = "structure",
   members = {
      ManagedLoginBranding = schema.new({
         id = id.from(_N, "UpdateManagedLoginBrandingOutput", "ManagedLoginBranding"),
         type = "structure",
         name = "ManagedLoginBranding",
         target_id = id.from(_N, "ManagedLoginBrandingType"),
         target = M.ManagedLoginBrandingType,
      }),
   },
})

M.UpdateResourceServerInput = schema.new({
   id = id.from(_N, "UpdateResourceServerRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "UpdateResourceServerInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "UpdateResourceServerInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateResourceServerInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Scopes = schema.new({
         id = id.from(_N, "UpdateResourceServerInput", "Scopes"),
         type = "list",
         name = "Scopes",
         target_id = prelude.Document.id,
         list_member = M.ResourceServerScopeType,
      }),
   },
})

M.UpdateResourceServerOutput = schema.new({
   id = id.from(_N, "UpdateResourceServerResponse"),
   type = "structure",
   members = {
      ResourceServer = schema.new({
         id = id.from(_N, "UpdateResourceServerOutput", "ResourceServer"),
         type = "structure",
         name = "ResourceServer",
         target_id = id.from(_N, "ResourceServerType"),
         target = M.ResourceServerType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateTermsInput = schema.new({
   id = id.from(_N, "UpdateTermsRequest"),
   type = "structure",
   members = {
      TermsId = schema.new({
         id = id.from(_N, "UpdateTermsInput", "TermsId"),
         type = "string",
         name = "TermsId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "UpdateTermsInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TermsName = schema.new({
         id = id.from(_N, "UpdateTermsInput", "TermsName"),
         type = "string",
         name = "TermsName",
         target_id = prelude.String.id,
      }),
      TermsSource = schema.new({
         id = id.from(_N, "UpdateTermsInput", "TermsSource"),
         type = "string",
         name = "TermsSource",
         target_id = prelude.String.id,
      }),
      Enforcement = schema.new({
         id = id.from(_N, "UpdateTermsInput", "Enforcement"),
         type = "string",
         name = "Enforcement",
         target_id = prelude.String.id,
      }),
      Links = schema.new({
         id = id.from(_N, "UpdateTermsInput", "Links"),
         type = "map",
         name = "Links",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.UpdateTermsOutput = schema.new({
   id = id.from(_N, "UpdateTermsResponse"),
   type = "structure",
   members = {
      Terms = schema.new({
         id = id.from(_N, "UpdateTermsOutput", "Terms"),
         type = "structure",
         name = "Terms",
         target_id = id.from(_N, "TermsType"),
         target = M.TermsType,
      }),
   },
})

M.UpdateUserAttributesInput = schema.new({
   id = id.from(_N, "UpdateUserAttributesRequest"),
   type = "structure",
   members = {
      UserAttributes = schema.new({
         id = id.from(_N, "UpdateUserAttributesInput", "UserAttributes"),
         type = "list",
         name = "UserAttributes",
         target_id = prelude.Document.id,
         list_member = M.AttributeType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccessToken = schema.new({
         id = id.from(_N, "UpdateUserAttributesInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientMetadata = schema.new({
         id = id.from(_N, "UpdateUserAttributesInput", "ClientMetadata"),
         type = "map",
         name = "ClientMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.UpdateUserAttributesOutput = schema.new({
   id = id.from(_N, "UpdateUserAttributesResponse"),
   type = "structure",
   members = {
      CodeDeliveryDetailsList = schema.new({
         id = id.from(_N, "UpdateUserAttributesOutput", "CodeDeliveryDetailsList"),
         type = "list",
         name = "CodeDeliveryDetailsList",
         target_id = prelude.Document.id,
         list_member = M.CodeDeliveryDetailsType,
      }),
   },
})

M.UpdateUserPoolInput = schema.new({
   id = id.from(_N, "UpdateUserPoolRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Policies = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "Policies"),
         type = "structure",
         name = "Policies",
         target_id = id.from(_N, "UserPoolPolicyType"),
         target = M.UserPoolPolicyType,
      }),
      DeletionProtection = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "DeletionProtection"),
         type = "string",
         name = "DeletionProtection",
         target_id = prelude.String.id,
      }),
      LambdaConfig = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "LambdaConfig"),
         type = "structure",
         name = "LambdaConfig",
         target_id = id.from(_N, "LambdaConfigType"),
         target = M.LambdaConfigType,
      }),
      AutoVerifiedAttributes = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "AutoVerifiedAttributes"),
         type = "list",
         name = "AutoVerifiedAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SmsVerificationMessage = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "SmsVerificationMessage"),
         type = "string",
         name = "SmsVerificationMessage",
         target_id = prelude.String.id,
      }),
      EmailVerificationMessage = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "EmailVerificationMessage"),
         type = "string",
         name = "EmailVerificationMessage",
         target_id = prelude.String.id,
      }),
      EmailVerificationSubject = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "EmailVerificationSubject"),
         type = "string",
         name = "EmailVerificationSubject",
         target_id = prelude.String.id,
      }),
      VerificationMessageTemplate = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "VerificationMessageTemplate"),
         type = "structure",
         name = "VerificationMessageTemplate",
         target_id = id.from(_N, "VerificationMessageTemplateType"),
         target = M.VerificationMessageTemplateType,
      }),
      SmsAuthenticationMessage = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "SmsAuthenticationMessage"),
         type = "string",
         name = "SmsAuthenticationMessage",
         target_id = prelude.String.id,
      }),
      UserAttributeUpdateSettings = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "UserAttributeUpdateSettings"),
         type = "structure",
         name = "UserAttributeUpdateSettings",
         target_id = id.from(_N, "UserAttributeUpdateSettingsType"),
         target = M.UserAttributeUpdateSettingsType,
      }),
      MfaConfiguration = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "MfaConfiguration"),
         type = "string",
         name = "MfaConfiguration",
         target_id = prelude.String.id,
      }),
      DeviceConfiguration = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "DeviceConfiguration"),
         type = "structure",
         name = "DeviceConfiguration",
         target_id = id.from(_N, "DeviceConfigurationType"),
         target = M.DeviceConfigurationType,
      }),
      EmailConfiguration = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "EmailConfiguration"),
         type = "structure",
         name = "EmailConfiguration",
         target_id = id.from(_N, "EmailConfigurationType"),
         target = M.EmailConfigurationType,
      }),
      SmsConfiguration = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "SmsConfiguration"),
         type = "structure",
         name = "SmsConfiguration",
         target_id = id.from(_N, "SmsConfigurationType"),
         target = M.SmsConfigurationType,
      }),
      UserPoolTags = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "UserPoolTags"),
         type = "map",
         name = "UserPoolTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AdminCreateUserConfig = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "AdminCreateUserConfig"),
         type = "structure",
         name = "AdminCreateUserConfig",
         target_id = id.from(_N, "AdminCreateUserConfigType"),
         target = M.AdminCreateUserConfigType,
      }),
      UserPoolAddOns = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "UserPoolAddOns"),
         type = "structure",
         name = "UserPoolAddOns",
         target_id = id.from(_N, "UserPoolAddOnsType"),
         target = M.UserPoolAddOnsType,
      }),
      AccountRecoverySetting = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "AccountRecoverySetting"),
         type = "structure",
         name = "AccountRecoverySetting",
         target_id = id.from(_N, "AccountRecoverySettingType"),
         target = M.AccountRecoverySettingType,
      }),
      PoolName = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "PoolName"),
         type = "string",
         name = "PoolName",
         target_id = prelude.String.id,
      }),
      UserPoolTier = schema.new({
         id = id.from(_N, "UpdateUserPoolInput", "UserPoolTier"),
         type = "string",
         name = "UserPoolTier",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateUserPoolOutput = schema.new({
   id = id.from(_N, "UpdateUserPoolResponse"),
   type = "structure",
})

M.UpdateUserPoolClientInput = schema.new({
   id = id.from(_N, "UpdateUserPoolClientRequest"),
   type = "structure",
   members = {
      UserPoolId = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientId = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientName = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "ClientName"),
         type = "string",
         name = "ClientName",
         target_id = prelude.String.id,
      }),
      RefreshTokenValidity = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "RefreshTokenValidity"),
         type = "integer",
         name = "RefreshTokenValidity",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      AccessTokenValidity = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "AccessTokenValidity"),
         type = "integer",
         name = "AccessTokenValidity",
         target_id = prelude.Integer.id,
      }),
      IdTokenValidity = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "IdTokenValidity"),
         type = "integer",
         name = "IdTokenValidity",
         target_id = prelude.Integer.id,
      }),
      TokenValidityUnits = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "TokenValidityUnits"),
         type = "structure",
         name = "TokenValidityUnits",
         target_id = id.from(_N, "TokenValidityUnitsType"),
         target = M.TokenValidityUnitsType,
      }),
      ReadAttributes = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "ReadAttributes"),
         type = "list",
         name = "ReadAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      WriteAttributes = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "WriteAttributes"),
         type = "list",
         name = "WriteAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ExplicitAuthFlows = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "ExplicitAuthFlows"),
         type = "list",
         name = "ExplicitAuthFlows",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SupportedIdentityProviders = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "SupportedIdentityProviders"),
         type = "list",
         name = "SupportedIdentityProviders",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      CallbackURLs = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "CallbackURLs"),
         type = "list",
         name = "CallbackURLs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      LogoutURLs = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "LogoutURLs"),
         type = "list",
         name = "LogoutURLs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DefaultRedirectURI = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "DefaultRedirectURI"),
         type = "string",
         name = "DefaultRedirectURI",
         target_id = prelude.String.id,
      }),
      AllowedOAuthFlows = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "AllowedOAuthFlows"),
         type = "list",
         name = "AllowedOAuthFlows",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AllowedOAuthScopes = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "AllowedOAuthScopes"),
         type = "list",
         name = "AllowedOAuthScopes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AllowedOAuthFlowsUserPoolClient = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "AllowedOAuthFlowsUserPoolClient"),
         type = "boolean",
         name = "AllowedOAuthFlowsUserPoolClient",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      AnalyticsConfiguration = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "AnalyticsConfiguration"),
         type = "structure",
         name = "AnalyticsConfiguration",
         target_id = id.from(_N, "AnalyticsConfigurationType"),
         target = M.AnalyticsConfigurationType,
      }),
      PreventUserExistenceErrors = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "PreventUserExistenceErrors"),
         type = "string",
         name = "PreventUserExistenceErrors",
         target_id = prelude.String.id,
      }),
      EnableTokenRevocation = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "EnableTokenRevocation"),
         type = "boolean",
         name = "EnableTokenRevocation",
         target_id = prelude.Boolean.id,
      }),
      EnablePropagateAdditionalUserContextData = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "EnablePropagateAdditionalUserContextData"),
         type = "boolean",
         name = "EnablePropagateAdditionalUserContextData",
         target_id = prelude.Boolean.id,
      }),
      AuthSessionValidity = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "AuthSessionValidity"),
         type = "integer",
         name = "AuthSessionValidity",
         target_id = prelude.Integer.id,
      }),
      RefreshTokenRotation = schema.new({
         id = id.from(_N, "UpdateUserPoolClientInput", "RefreshTokenRotation"),
         type = "structure",
         name = "RefreshTokenRotation",
         target_id = id.from(_N, "RefreshTokenRotationType"),
         target = M.RefreshTokenRotationType,
      }),
   },
})

M.UpdateUserPoolClientOutput = schema.new({
   id = id.from(_N, "UpdateUserPoolClientResponse"),
   type = "structure",
   members = {
      UserPoolClient = schema.new({
         id = id.from(_N, "UpdateUserPoolClientOutput", "UserPoolClient"),
         type = "structure",
         name = "UserPoolClient",
         target_id = id.from(_N, "UserPoolClientType"),
         target = M.UserPoolClientType,
      }),
   },
})

M.UpdateUserPoolDomainInput = schema.new({
   id = id.from(_N, "UpdateUserPoolDomainRequest"),
   type = "structure",
   members = {
      Domain = schema.new({
         id = id.from(_N, "UpdateUserPoolDomainInput", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "UpdateUserPoolDomainInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ManagedLoginVersion = schema.new({
         id = id.from(_N, "UpdateUserPoolDomainInput", "ManagedLoginVersion"),
         type = "integer",
         name = "ManagedLoginVersion",
         target_id = prelude.Integer.id,
      }),
      CustomDomainConfig = schema.new({
         id = id.from(_N, "UpdateUserPoolDomainInput", "CustomDomainConfig"),
         type = "structure",
         name = "CustomDomainConfig",
         target_id = id.from(_N, "CustomDomainConfigType"),
         target = M.CustomDomainConfigType,
      }),
   },
})

M.UpdateUserPoolDomainOutput = schema.new({
   id = id.from(_N, "UpdateUserPoolDomainResponse"),
   type = "structure",
   members = {
      ManagedLoginVersion = schema.new({
         id = id.from(_N, "UpdateUserPoolDomainOutput", "ManagedLoginVersion"),
         type = "integer",
         name = "ManagedLoginVersion",
         target_id = prelude.Integer.id,
      }),
      CloudFrontDomain = schema.new({
         id = id.from(_N, "UpdateUserPoolDomainOutput", "CloudFrontDomain"),
         type = "string",
         name = "CloudFrontDomain",
         target_id = prelude.String.id,
      }),
   },
})

M.EnableSoftwareTokenMFAException = schema.new({
   id = id.from(_N, "EnableSoftwareTokenMFAException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "EnableSoftwareTokenMFAException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.VerifySoftwareTokenInput = schema.new({
   id = id.from(_N, "VerifySoftwareTokenRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "VerifySoftwareTokenInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
      }),
      Session = schema.new({
         id = id.from(_N, "VerifySoftwareTokenInput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
      UserCode = schema.new({
         id = id.from(_N, "VerifySoftwareTokenInput", "UserCode"),
         type = "string",
         name = "UserCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FriendlyDeviceName = schema.new({
         id = id.from(_N, "VerifySoftwareTokenInput", "FriendlyDeviceName"),
         type = "string",
         name = "FriendlyDeviceName",
         target_id = prelude.String.id,
      }),
   },
})

M.VerifySoftwareTokenOutput = schema.new({
   id = id.from(_N, "VerifySoftwareTokenResponse"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "VerifySoftwareTokenOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Session = schema.new({
         id = id.from(_N, "VerifySoftwareTokenOutput", "Session"),
         type = "string",
         name = "Session",
         target_id = prelude.String.id,
      }),
   },
})

M.VerifyUserAttributeInput = schema.new({
   id = id.from(_N, "VerifyUserAttributeRequest"),
   type = "structure",
   members = {
      AccessToken = schema.new({
         id = id.from(_N, "VerifyUserAttributeInput", "AccessToken"),
         type = "string",
         name = "AccessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AttributeName = schema.new({
         id = id.from(_N, "VerifyUserAttributeInput", "AttributeName"),
         type = "string",
         name = "AttributeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Code = schema.new({
         id = id.from(_N, "VerifyUserAttributeInput", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VerifyUserAttributeOutput = schema.new({
   id = id.from(_N, "VerifyUserAttributeResponse"),
   type = "structure",
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
   id = id.from("com.amazonaws.cognitoidentityprovider", "AWSCognitoIdentityProviderService"),
   version = "2016-04-18",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddCustomAttributes = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AddCustomAttributes"),
   input = M.AddCustomAttributesInput,
   output = M.AddCustomAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddUserPoolClientSecret = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AddUserPoolClientSecret"),
   input = M.AddUserPoolClientSecretInput,
   output = M.AddUserPoolClientSecretOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminAddUserToGroup = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminAddUserToGroup"),
   input = M.AdminAddUserToGroupInput,
   output = M.AdminAddUserToGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminConfirmSignUp = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminConfirmSignUp"),
   input = M.AdminConfirmSignUpInput,
   output = M.AdminConfirmSignUpOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminCreateUser = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminCreateUser"),
   input = M.AdminCreateUserInput,
   output = M.AdminCreateUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminDeleteUser = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminDeleteUser"),
   input = M.AdminDeleteUserInput,
   output = M.AdminDeleteUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminDeleteUserAttributes = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminDeleteUserAttributes"),
   input = M.AdminDeleteUserAttributesInput,
   output = M.AdminDeleteUserAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminDisableProviderForUser = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminDisableProviderForUser"),
   input = M.AdminDisableProviderForUserInput,
   output = M.AdminDisableProviderForUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminDisableUser = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminDisableUser"),
   input = M.AdminDisableUserInput,
   output = M.AdminDisableUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminEnableUser = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminEnableUser"),
   input = M.AdminEnableUserInput,
   output = M.AdminEnableUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminForgetDevice = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminForgetDevice"),
   input = M.AdminForgetDeviceInput,
   output = M.AdminForgetDeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminGetDevice = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminGetDevice"),
   input = M.AdminGetDeviceInput,
   output = M.AdminGetDeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminGetUser = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminGetUser"),
   input = M.AdminGetUserInput,
   output = M.AdminGetUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminInitiateAuth = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminInitiateAuth"),
   input = M.AdminInitiateAuthInput,
   output = M.AdminInitiateAuthOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminLinkProviderForUser = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminLinkProviderForUser"),
   input = M.AdminLinkProviderForUserInput,
   output = M.AdminLinkProviderForUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminListDevices = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminListDevices"),
   input = M.AdminListDevicesInput,
   output = M.AdminListDevicesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminListGroupsForUser = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminListGroupsForUser"),
   input = M.AdminListGroupsForUserInput,
   output = M.AdminListGroupsForUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminListUserAuthEvents = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminListUserAuthEvents"),
   input = M.AdminListUserAuthEventsInput,
   output = M.AdminListUserAuthEventsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminRemoveUserFromGroup = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminRemoveUserFromGroup"),
   input = M.AdminRemoveUserFromGroupInput,
   output = M.AdminRemoveUserFromGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminResetUserPassword = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminResetUserPassword"),
   input = M.AdminResetUserPasswordInput,
   output = M.AdminResetUserPasswordOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminRespondToAuthChallenge = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminRespondToAuthChallenge"),
   input = M.AdminRespondToAuthChallengeInput,
   output = M.AdminRespondToAuthChallengeOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminSetUserMFAPreference = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminSetUserMFAPreference"),
   input = M.AdminSetUserMFAPreferenceInput,
   output = M.AdminSetUserMFAPreferenceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminSetUserPassword = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminSetUserPassword"),
   input = M.AdminSetUserPasswordInput,
   output = M.AdminSetUserPasswordOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminSetUserSettings = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminSetUserSettings"),
   input = M.AdminSetUserSettingsInput,
   output = M.AdminSetUserSettingsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminUpdateAuthEventFeedback = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminUpdateAuthEventFeedback"),
   input = M.AdminUpdateAuthEventFeedbackInput,
   output = M.AdminUpdateAuthEventFeedbackOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminUpdateDeviceStatus = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminUpdateDeviceStatus"),
   input = M.AdminUpdateDeviceStatusInput,
   output = M.AdminUpdateDeviceStatusOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminUpdateUserAttributes = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminUpdateUserAttributes"),
   input = M.AdminUpdateUserAttributesInput,
   output = M.AdminUpdateUserAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdminUserGlobalSignOut = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AdminUserGlobalSignOut"),
   input = M.AdminUserGlobalSignOutInput,
   output = M.AdminUserGlobalSignOutOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateSoftwareToken = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "AssociateSoftwareToken"),
   input = M.AssociateSoftwareTokenInput,
   output = M.AssociateSoftwareTokenOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.ChangePassword = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ChangePassword"),
   input = M.ChangePasswordInput,
   output = M.ChangePasswordOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.CompleteWebAuthnRegistration = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "CompleteWebAuthnRegistration"),
   input = M.CompleteWebAuthnRegistrationInput,
   output = M.CompleteWebAuthnRegistrationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.ConfirmDevice = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ConfirmDevice"),
   input = M.ConfirmDeviceInput,
   output = M.ConfirmDeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.ConfirmForgotPassword = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ConfirmForgotPassword"),
   input = M.ConfirmForgotPasswordInput,
   output = M.ConfirmForgotPasswordOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.ConfirmSignUp = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ConfirmSignUp"),
   input = M.ConfirmSignUpInput,
   output = M.ConfirmSignUpOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.CreateGroup = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "CreateGroup"),
   input = M.CreateGroupInput,
   output = M.CreateGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateIdentityProvider = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "CreateIdentityProvider"),
   input = M.CreateIdentityProviderInput,
   output = M.CreateIdentityProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateManagedLoginBranding = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "CreateManagedLoginBranding"),
   input = M.CreateManagedLoginBrandingInput,
   output = M.CreateManagedLoginBrandingOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateResourceServer = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "CreateResourceServer"),
   input = M.CreateResourceServerInput,
   output = M.CreateResourceServerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateTerms = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "CreateTerms"),
   input = M.CreateTermsInput,
   output = M.CreateTermsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateUserImportJob = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "CreateUserImportJob"),
   input = M.CreateUserImportJobInput,
   output = M.CreateUserImportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateUserPool = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "CreateUserPool"),
   input = M.CreateUserPoolInput,
   output = M.CreateUserPoolOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateUserPoolClient = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "CreateUserPoolClient"),
   input = M.CreateUserPoolClientInput,
   output = M.CreateUserPoolClientOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateUserPoolDomain = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "CreateUserPoolDomain"),
   input = M.CreateUserPoolDomainInput,
   output = M.CreateUserPoolDomainOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteGroup = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteGroup"),
   input = M.DeleteGroupInput,
   output = M.DeleteGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteIdentityProvider = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteIdentityProvider"),
   input = M.DeleteIdentityProviderInput,
   output = M.DeleteIdentityProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteManagedLoginBranding = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteManagedLoginBranding"),
   input = M.DeleteManagedLoginBrandingInput,
   output = M.DeleteManagedLoginBrandingOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteResourceServer = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteResourceServer"),
   input = M.DeleteResourceServerInput,
   output = M.DeleteResourceServerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteTerms = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteTerms"),
   input = M.DeleteTermsInput,
   output = M.DeleteTermsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteUser = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteUser"),
   input = M.DeleteUserInput,
   output = M.DeleteUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.DeleteUserAttributes = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteUserAttributes"),
   input = M.DeleteUserAttributesInput,
   output = M.DeleteUserAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.DeleteUserPool = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteUserPool"),
   input = M.DeleteUserPoolInput,
   output = M.DeleteUserPoolOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteUserPoolClient = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteUserPoolClient"),
   input = M.DeleteUserPoolClientInput,
   output = M.DeleteUserPoolClientOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteUserPoolClientSecret = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteUserPoolClientSecret"),
   input = M.DeleteUserPoolClientSecretInput,
   output = M.DeleteUserPoolClientSecretOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteUserPoolDomain = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteUserPoolDomain"),
   input = M.DeleteUserPoolDomainInput,
   output = M.DeleteUserPoolDomainOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteWebAuthnCredential = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DeleteWebAuthnCredential"),
   input = M.DeleteWebAuthnCredentialInput,
   output = M.DeleteWebAuthnCredentialOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.DescribeIdentityProvider = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DescribeIdentityProvider"),
   input = M.DescribeIdentityProviderInput,
   output = M.DescribeIdentityProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeManagedLoginBranding = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DescribeManagedLoginBranding"),
   input = M.DescribeManagedLoginBrandingInput,
   output = M.DescribeManagedLoginBrandingOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeManagedLoginBrandingByClient = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DescribeManagedLoginBrandingByClient"),
   input = M.DescribeManagedLoginBrandingByClientInput,
   output = M.DescribeManagedLoginBrandingByClientOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeResourceServer = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DescribeResourceServer"),
   input = M.DescribeResourceServerInput,
   output = M.DescribeResourceServerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRiskConfiguration = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DescribeRiskConfiguration"),
   input = M.DescribeRiskConfigurationInput,
   output = M.DescribeRiskConfigurationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeTerms = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DescribeTerms"),
   input = M.DescribeTermsInput,
   output = M.DescribeTermsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeUserImportJob = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DescribeUserImportJob"),
   input = M.DescribeUserImportJobInput,
   output = M.DescribeUserImportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeUserPool = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DescribeUserPool"),
   input = M.DescribeUserPoolInput,
   output = M.DescribeUserPoolOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeUserPoolClient = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DescribeUserPoolClient"),
   input = M.DescribeUserPoolClientInput,
   output = M.DescribeUserPoolClientOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeUserPoolDomain = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "DescribeUserPoolDomain"),
   input = M.DescribeUserPoolDomainInput,
   output = M.DescribeUserPoolDomainOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ForgetDevice = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ForgetDevice"),
   input = M.ForgetDeviceInput,
   output = M.ForgetDeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.ForgotPassword = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ForgotPassword"),
   input = M.ForgotPasswordInput,
   output = M.ForgotPasswordOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.GetCSVHeader = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetCSVHeader"),
   input = M.GetCSVHeaderInput,
   output = M.GetCSVHeaderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDevice = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetDevice"),
   input = M.GetDeviceInput,
   output = M.GetDeviceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.GetGroup = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetGroup"),
   input = M.GetGroupInput,
   output = M.GetGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetIdentityProviderByIdentifier = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetIdentityProviderByIdentifier"),
   input = M.GetIdentityProviderByIdentifierInput,
   output = M.GetIdentityProviderByIdentifierOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetLogDeliveryConfiguration = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetLogDeliveryConfiguration"),
   input = M.GetLogDeliveryConfigurationInput,
   output = M.GetLogDeliveryConfigurationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSigningCertificate = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetSigningCertificate"),
   input = M.GetSigningCertificateInput,
   output = M.GetSigningCertificateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTokensFromRefreshToken = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetTokensFromRefreshToken"),
   input = M.GetTokensFromRefreshTokenInput,
   output = M.GetTokensFromRefreshTokenOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.GetUICustomization = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetUICustomization"),
   input = M.GetUICustomizationInput,
   output = M.GetUICustomizationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetUser = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetUser"),
   input = M.GetUserInput,
   output = M.GetUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.GetUserAttributeVerificationCode = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetUserAttributeVerificationCode"),
   input = M.GetUserAttributeVerificationCodeInput,
   output = M.GetUserAttributeVerificationCodeOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.GetUserAuthFactors = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetUserAuthFactors"),
   input = M.GetUserAuthFactorsInput,
   output = M.GetUserAuthFactorsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.GetUserPoolMfaConfig = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GetUserPoolMfaConfig"),
   input = M.GetUserPoolMfaConfigInput,
   output = M.GetUserPoolMfaConfigOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GlobalSignOut = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "GlobalSignOut"),
   input = M.GlobalSignOutInput,
   output = M.GlobalSignOutOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.InitiateAuth = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "InitiateAuth"),
   input = M.InitiateAuthInput,
   output = M.InitiateAuthOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.ListDevices = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListDevices"),
   input = M.ListDevicesInput,
   output = M.ListDevicesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.ListGroups = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListGroups"),
   input = M.ListGroupsInput,
   output = M.ListGroupsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListIdentityProviders = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListIdentityProviders"),
   input = M.ListIdentityProvidersInput,
   output = M.ListIdentityProvidersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListResourceServers = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListResourceServers"),
   input = M.ListResourceServersInput,
   output = M.ListResourceServersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTerms = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListTerms"),
   input = M.ListTermsInput,
   output = M.ListTermsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUserImportJobs = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListUserImportJobs"),
   input = M.ListUserImportJobsInput,
   output = M.ListUserImportJobsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUserPoolClients = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListUserPoolClients"),
   input = M.ListUserPoolClientsInput,
   output = M.ListUserPoolClientsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUserPoolClientSecrets = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListUserPoolClientSecrets"),
   input = M.ListUserPoolClientSecretsInput,
   output = M.ListUserPoolClientSecretsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUserPools = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListUserPools"),
   input = M.ListUserPoolsInput,
   output = M.ListUserPoolsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUsers = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListUsers"),
   input = M.ListUsersInput,
   output = M.ListUsersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUsersInGroup = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListUsersInGroup"),
   input = M.ListUsersInGroupInput,
   output = M.ListUsersInGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListWebAuthnCredentials = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ListWebAuthnCredentials"),
   input = M.ListWebAuthnCredentialsInput,
   output = M.ListWebAuthnCredentialsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.ResendConfirmationCode = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "ResendConfirmationCode"),
   input = M.ResendConfirmationCodeInput,
   output = M.ResendConfirmationCodeOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.RespondToAuthChallenge = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "RespondToAuthChallenge"),
   input = M.RespondToAuthChallengeInput,
   output = M.RespondToAuthChallengeOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.RevokeToken = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "RevokeToken"),
   input = M.RevokeTokenInput,
   output = M.RevokeTokenOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.SetLogDeliveryConfiguration = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "SetLogDeliveryConfiguration"),
   input = M.SetLogDeliveryConfigurationInput,
   output = M.SetLogDeliveryConfigurationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetRiskConfiguration = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "SetRiskConfiguration"),
   input = M.SetRiskConfigurationInput,
   output = M.SetRiskConfigurationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetUICustomization = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "SetUICustomization"),
   input = M.SetUICustomizationInput,
   output = M.SetUICustomizationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetUserMFAPreference = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "SetUserMFAPreference"),
   input = M.SetUserMFAPreferenceInput,
   output = M.SetUserMFAPreferenceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.SetUserPoolMfaConfig = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "SetUserPoolMfaConfig"),
   input = M.SetUserPoolMfaConfigInput,
   output = M.SetUserPoolMfaConfigOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetUserSettings = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "SetUserSettings"),
   input = M.SetUserSettingsInput,
   output = M.SetUserSettingsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.SignUp = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "SignUp"),
   input = M.SignUpInput,
   output = M.SignUpOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.StartUserImportJob = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "StartUserImportJob"),
   input = M.StartUserImportJobInput,
   output = M.StartUserImportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartWebAuthnRegistration = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "StartWebAuthnRegistration"),
   input = M.StartWebAuthnRegistrationInput,
   output = M.StartWebAuthnRegistrationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.StopUserImportJob = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "StopUserImportJob"),
   input = M.StopUserImportJobInput,
   output = M.StopUserImportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAuthEventFeedback = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UpdateAuthEventFeedback"),
   input = M.UpdateAuthEventFeedbackInput,
   output = M.UpdateAuthEventFeedbackOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.UpdateDeviceStatus = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UpdateDeviceStatus"),
   input = M.UpdateDeviceStatusInput,
   output = M.UpdateDeviceStatusOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.UpdateGroup = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UpdateGroup"),
   input = M.UpdateGroupInput,
   output = M.UpdateGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateIdentityProvider = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UpdateIdentityProvider"),
   input = M.UpdateIdentityProviderInput,
   output = M.UpdateIdentityProviderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateManagedLoginBranding = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UpdateManagedLoginBranding"),
   input = M.UpdateManagedLoginBrandingInput,
   output = M.UpdateManagedLoginBrandingOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateResourceServer = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UpdateResourceServer"),
   input = M.UpdateResourceServerInput,
   output = M.UpdateResourceServerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateTerms = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UpdateTerms"),
   input = M.UpdateTermsInput,
   output = M.UpdateTermsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateUserAttributes = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UpdateUserAttributes"),
   input = M.UpdateUserAttributesInput,
   output = M.UpdateUserAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.UpdateUserPool = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UpdateUserPool"),
   input = M.UpdateUserPoolInput,
   output = M.UpdateUserPoolOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateUserPoolClient = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UpdateUserPoolClient"),
   input = M.UpdateUserPoolClientInput,
   output = M.UpdateUserPoolClientOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateUserPoolDomain = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "UpdateUserPoolDomain"),
   input = M.UpdateUserPoolDomainInput,
   output = M.UpdateUserPoolDomainOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.VerifySoftwareToken = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "VerifySoftwareToken"),
   input = M.VerifySoftwareTokenInput,
   output = M.VerifySoftwareTokenOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

M.VerifyUserAttribute = schema.operation({
   id = id.from("com.amazonaws.cognitoidentityprovider", "VerifyUserAttribute"),
   input = M.VerifyUserAttributeInput,
   output = M.VerifyUserAttributeOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "smithy.api#noAuth" },
      },
   },
})

return M
