

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.amplifybackend"

local M = {}

M.ListOf__string = schema.new({ type = "list", list_member = prelude.String })

M.ListOfBackendJobRespObj = schema.new({ type = "list", list_member = M.BackendJobRespObj })

M.ListOfS3BucketInfo = schema.new({ type = "list", list_member = M.S3BucketInfo })

M.ListOfBackendAPIAuthType = schema.new({ type = "list", list_member = M.BackendAPIAuthType })

M.ListOfRequiredSignUpAttributesElement = schema.new({ type = "list", list_member = prelude.String })

M.ListOfAuthenticatedElement = schema.new({ type = "list", list_member = prelude.String })

M.ListOfUnAuthenticatedElement = schema.new({ type = "list", list_member = prelude.String })

M.ListOfOAuthScopesElement = schema.new({ type = "list", list_member = prelude.String })

M.ListOfAdditionalConstraintsElement = schema.new({ type = "list", list_member = prelude.String })

M.ListOfMfaTypesElement = schema.new({ type = "list", list_member = prelude.String })

M.BadRequestException = schema.new({
   id = id.from(_N, "BadRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "BadRequestException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "message" },
         },
      }),
   },
})

M.CloneBackendInput = schema.new({
   id = id.from(_N, "CloneBackendRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CloneBackendInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "CloneBackendInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TargetEnvironmentName = schema.new({
         id = id.from(_N, "CloneBackendInput", "TargetEnvironmentName"),
         type = "string",
         name = "TargetEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "targetEnvironmentName" },
         },
      }),
   },
})

M.CloneBackendOutput = schema.new({
   id = id.from(_N, "CloneBackendResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CloneBackendOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "CloneBackendOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "CloneBackendOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "CloneBackendOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "CloneBackendOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CloneBackendOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.GatewayTimeoutException = schema.new({
   id = id.from(_N, "GatewayTimeoutException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "GatewayTimeoutException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "message" },
         },
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
      Message = schema.new({
         id = id.from(_N, "NotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "message" },
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "NotFoundException", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "resourceType" },
         },
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
      LimitType = schema.new({
         id = id.from(_N, "TooManyRequestsException", "LimitType"),
         type = "string",
         name = "LimitType",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "limitType" },
         },
      }),
      Message = schema.new({
         id = id.from(_N, "TooManyRequestsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "message" },
         },
      }),
   },
})

M.ResourceConfig = schema.new({
   id = id.from(_N, "ResourceConfig"),
   type = "structure",
})

M.CreateBackendInput = schema.new({
   id = id.from(_N, "CreateBackendRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateBackendInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      AppName = schema.new({
         id = id.from(_N, "CreateBackendInput", "AppName"),
         type = "string",
         name = "AppName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "appName" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "CreateBackendInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "CreateBackendInput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "ResourceConfig"),
         target = M.ResourceConfig,
         traits = {
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "CreateBackendInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.CreateBackendOutput = schema.new({
   id = id.from(_N, "CreateBackendResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateBackendOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "CreateBackendOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "CreateBackendOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "CreateBackendOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "CreateBackendOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CreateBackendOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.BackendAPIAppSyncAuthSettings = schema.new({
   id = id.from(_N, "BackendAPIAppSyncAuthSettings"),
   type = "structure",
   members = {
      CognitoUserPoolId = schema.new({
         id = id.from(_N, "BackendAPIAppSyncAuthSettings", "CognitoUserPoolId"),
         type = "string",
         name = "CognitoUserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "cognitoUserPoolId" },
         },
      }),
      Description = schema.new({
         id = id.from(_N, "BackendAPIAppSyncAuthSettings", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "description" },
         },
      }),
      ExpirationTime = schema.new({
         id = id.from(_N, "BackendAPIAppSyncAuthSettings", "ExpirationTime"),
         type = "double",
         name = "ExpirationTime",
         target_id = prelude.Double.id,
         traits = {
            [traits.JSON_NAME] = { name = "expirationTime" },
         },
      }),
      OpenIDAuthTTL = schema.new({
         id = id.from(_N, "BackendAPIAppSyncAuthSettings", "OpenIDAuthTTL"),
         type = "string",
         name = "OpenIDAuthTTL",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "openIDAuthTTL" },
         },
      }),
      OpenIDClientId = schema.new({
         id = id.from(_N, "BackendAPIAppSyncAuthSettings", "OpenIDClientId"),
         type = "string",
         name = "OpenIDClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "openIDClientId" },
         },
      }),
      OpenIDIatTTL = schema.new({
         id = id.from(_N, "BackendAPIAppSyncAuthSettings", "OpenIDIatTTL"),
         type = "string",
         name = "OpenIDIatTTL",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "openIDIatTTL" },
         },
      }),
      OpenIDIssueURL = schema.new({
         id = id.from(_N, "BackendAPIAppSyncAuthSettings", "OpenIDIssueURL"),
         type = "string",
         name = "OpenIDIssueURL",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "openIDIssueURL" },
         },
      }),
      OpenIDProviderName = schema.new({
         id = id.from(_N, "BackendAPIAppSyncAuthSettings", "OpenIDProviderName"),
         type = "string",
         name = "OpenIDProviderName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "openIDProviderName" },
         },
      }),
   },
})

M.BackendAPIAuthType = schema.new({
   id = id.from(_N, "BackendAPIAuthType"),
   type = "structure",
   members = {
      Mode = schema.new({
         id = id.from(_N, "BackendAPIAuthType", "Mode"),
         type = "string",
         name = "Mode",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "mode" },
         },
      }),
      Settings = schema.new({
         id = id.from(_N, "BackendAPIAuthType", "Settings"),
         type = "structure",
         name = "Settings",
         target_id = id.from(_N, "BackendAPIAppSyncAuthSettings"),
         target = M.BackendAPIAppSyncAuthSettings,
         traits = {
            [traits.JSON_NAME] = { name = "settings" },
         },
      }),
   },
})

M.BackendAPIConflictResolution = schema.new({
   id = id.from(_N, "BackendAPIConflictResolution"),
   type = "structure",
   members = {
      ResolutionStrategy = schema.new({
         id = id.from(_N, "BackendAPIConflictResolution", "ResolutionStrategy"),
         type = "string",
         name = "ResolutionStrategy",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "resolutionStrategy" },
         },
      }),
   },
})

M.BackendAPIResourceConfig = schema.new({
   id = id.from(_N, "BackendAPIResourceConfig"),
   type = "structure",
   members = {
      AdditionalAuthTypes = schema.new({
         id = id.from(_N, "BackendAPIResourceConfig", "AdditionalAuthTypes"),
         type = "list",
         name = "AdditionalAuthTypes",
         target_id = prelude.Document.id,
         list_member = M.BackendAPIAuthType,
         traits = {
            [traits.JSON_NAME] = { name = "additionalAuthTypes" },
         },
      }),
      ApiName = schema.new({
         id = id.from(_N, "BackendAPIResourceConfig", "ApiName"),
         type = "string",
         name = "ApiName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "apiName" },
         },
      }),
      ConflictResolution = schema.new({
         id = id.from(_N, "BackendAPIResourceConfig", "ConflictResolution"),
         type = "structure",
         name = "ConflictResolution",
         target_id = id.from(_N, "BackendAPIConflictResolution"),
         target = M.BackendAPIConflictResolution,
         traits = {
            [traits.JSON_NAME] = { name = "conflictResolution" },
         },
      }),
      DefaultAuthType = schema.new({
         id = id.from(_N, "BackendAPIResourceConfig", "DefaultAuthType"),
         type = "structure",
         name = "DefaultAuthType",
         target_id = id.from(_N, "BackendAPIAuthType"),
         target = M.BackendAPIAuthType,
         traits = {
            [traits.JSON_NAME] = { name = "defaultAuthType" },
         },
      }),
      Service = schema.new({
         id = id.from(_N, "BackendAPIResourceConfig", "Service"),
         type = "string",
         name = "Service",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "service" },
         },
      }),
      TransformSchema = schema.new({
         id = id.from(_N, "BackendAPIResourceConfig", "TransformSchema"),
         type = "string",
         name = "TransformSchema",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "transformSchema" },
         },
      }),
   },
})

M.CreateBackendAPIInput = schema.new({
   id = id.from(_N, "CreateBackendAPIRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateBackendAPIInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "CreateBackendAPIInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "CreateBackendAPIInput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "BackendAPIResourceConfig"),
         target = M.BackendAPIResourceConfig,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "CreateBackendAPIInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.CreateBackendAPIOutput = schema.new({
   id = id.from(_N, "CreateBackendAPIResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateBackendAPIOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "CreateBackendAPIOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "CreateBackendAPIOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "CreateBackendAPIOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "CreateBackendAPIOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CreateBackendAPIOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.CreateBackendAuthIdentityPoolConfig = schema.new({
   id = id.from(_N, "CreateBackendAuthIdentityPoolConfig"),
   type = "structure",
   members = {
      IdentityPoolName = schema.new({
         id = id.from(_N, "CreateBackendAuthIdentityPoolConfig", "IdentityPoolName"),
         type = "string",
         name = "IdentityPoolName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "identityPoolName" },
         },
      }),
      UnauthenticatedLogin = schema.new({
         id = id.from(_N, "CreateBackendAuthIdentityPoolConfig", "UnauthenticatedLogin"),
         type = "boolean",
         name = "UnauthenticatedLogin",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "unauthenticatedLogin" },
         },
      }),
   },
})

M.EmailSettings = schema.new({
   id = id.from(_N, "EmailSettings"),
   type = "structure",
   members = {
      EmailMessage = schema.new({
         id = id.from(_N, "EmailSettings", "EmailMessage"),
         type = "string",
         name = "EmailMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "emailMessage" },
         },
      }),
      EmailSubject = schema.new({
         id = id.from(_N, "EmailSettings", "EmailSubject"),
         type = "string",
         name = "EmailSubject",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "emailSubject" },
         },
      }),
   },
})

M.SmsSettings = schema.new({
   id = id.from(_N, "SmsSettings"),
   type = "structure",
   members = {
      SmsMessage = schema.new({
         id = id.from(_N, "SmsSettings", "SmsMessage"),
         type = "string",
         name = "SmsMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "smsMessage" },
         },
      }),
   },
})

M.CreateBackendAuthForgotPasswordConfig = schema.new({
   id = id.from(_N, "CreateBackendAuthForgotPasswordConfig"),
   type = "structure",
   members = {
      DeliveryMethod = schema.new({
         id = id.from(_N, "CreateBackendAuthForgotPasswordConfig", "DeliveryMethod"),
         type = "string",
         name = "DeliveryMethod",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "deliveryMethod" },
         },
      }),
      EmailSettings = schema.new({
         id = id.from(_N, "CreateBackendAuthForgotPasswordConfig", "EmailSettings"),
         type = "structure",
         name = "EmailSettings",
         target_id = id.from(_N, "EmailSettings"),
         target = M.EmailSettings,
         traits = {
            [traits.JSON_NAME] = { name = "emailSettings" },
         },
      }),
      SmsSettings = schema.new({
         id = id.from(_N, "CreateBackendAuthForgotPasswordConfig", "SmsSettings"),
         type = "structure",
         name = "SmsSettings",
         target_id = id.from(_N, "SmsSettings"),
         target = M.SmsSettings,
         traits = {
            [traits.JSON_NAME] = { name = "smsSettings" },
         },
      }),
   },
})

M.Settings = schema.new({
   id = id.from(_N, "Settings"),
   type = "structure",
   members = {
      MfaTypes = schema.new({
         id = id.from(_N, "Settings", "MfaTypes"),
         type = "list",
         name = "MfaTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "mfaTypes" },
         },
      }),
      SmsMessage = schema.new({
         id = id.from(_N, "Settings", "SmsMessage"),
         type = "string",
         name = "SmsMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "smsMessage" },
         },
      }),
   },
})

M.CreateBackendAuthMFAConfig = schema.new({
   id = id.from(_N, "CreateBackendAuthMFAConfig"),
   type = "structure",
   members = {
      MFAMode = schema.new({
         id = id.from(_N, "CreateBackendAuthMFAConfig", "MFAMode"),
         type = "string",
         name = "MFAMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Settings = schema.new({
         id = id.from(_N, "CreateBackendAuthMFAConfig", "Settings"),
         type = "structure",
         name = "Settings",
         target_id = id.from(_N, "Settings"),
         target = M.Settings,
         traits = {
            [traits.JSON_NAME] = { name = "settings" },
         },
      }),
   },
})

M.BackendAuthSocialProviderConfig = schema.new({
   id = id.from(_N, "BackendAuthSocialProviderConfig"),
   type = "structure",
   members = {
      ClientId = schema.new({
         id = id.from(_N, "BackendAuthSocialProviderConfig", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "client_id" },
         },
      }),
      ClientSecret = schema.new({
         id = id.from(_N, "BackendAuthSocialProviderConfig", "ClientSecret"),
         type = "string",
         name = "ClientSecret",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "client_secret" },
         },
      }),
   },
})

M.BackendAuthAppleProviderConfig = schema.new({
   id = id.from(_N, "BackendAuthAppleProviderConfig"),
   type = "structure",
   members = {
      ClientId = schema.new({
         id = id.from(_N, "BackendAuthAppleProviderConfig", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "client_id" },
         },
      }),
      KeyId = schema.new({
         id = id.from(_N, "BackendAuthAppleProviderConfig", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "key_id" },
         },
      }),
      PrivateKey = schema.new({
         id = id.from(_N, "BackendAuthAppleProviderConfig", "PrivateKey"),
         type = "string",
         name = "PrivateKey",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "private_key" },
         },
      }),
      TeamId = schema.new({
         id = id.from(_N, "BackendAuthAppleProviderConfig", "TeamId"),
         type = "string",
         name = "TeamId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "team_id" },
         },
      }),
   },
})

M.SocialProviderSettings = schema.new({
   id = id.from(_N, "SocialProviderSettings"),
   type = "structure",
   members = {
      Facebook = schema.new({
         id = id.from(_N, "SocialProviderSettings", "Facebook"),
         type = "structure",
         name = "Facebook",
         target_id = id.from(_N, "BackendAuthSocialProviderConfig"),
         target = M.BackendAuthSocialProviderConfig,
      }),
      Google = schema.new({
         id = id.from(_N, "SocialProviderSettings", "Google"),
         type = "structure",
         name = "Google",
         target_id = id.from(_N, "BackendAuthSocialProviderConfig"),
         target = M.BackendAuthSocialProviderConfig,
      }),
      LoginWithAmazon = schema.new({
         id = id.from(_N, "SocialProviderSettings", "LoginWithAmazon"),
         type = "structure",
         name = "LoginWithAmazon",
         target_id = id.from(_N, "BackendAuthSocialProviderConfig"),
         target = M.BackendAuthSocialProviderConfig,
      }),
      SignInWithApple = schema.new({
         id = id.from(_N, "SocialProviderSettings", "SignInWithApple"),
         type = "structure",
         name = "SignInWithApple",
         target_id = id.from(_N, "BackendAuthAppleProviderConfig"),
         target = M.BackendAuthAppleProviderConfig,
      }),
   },
})

M.CreateBackendAuthOAuthConfig = schema.new({
   id = id.from(_N, "CreateBackendAuthOAuthConfig"),
   type = "structure",
   members = {
      DomainPrefix = schema.new({
         id = id.from(_N, "CreateBackendAuthOAuthConfig", "DomainPrefix"),
         type = "string",
         name = "DomainPrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "domainPrefix" },
         },
      }),
      OAuthGrantType = schema.new({
         id = id.from(_N, "CreateBackendAuthOAuthConfig", "OAuthGrantType"),
         type = "string",
         name = "OAuthGrantType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "oAuthGrantType" },
         },
      }),
      OAuthScopes = schema.new({
         id = id.from(_N, "CreateBackendAuthOAuthConfig", "OAuthScopes"),
         type = "list",
         name = "OAuthScopes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "oAuthScopes" },
         },
      }),
      RedirectSignInURIs = schema.new({
         id = id.from(_N, "CreateBackendAuthOAuthConfig", "RedirectSignInURIs"),
         type = "list",
         name = "RedirectSignInURIs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "redirectSignInURIs" },
         },
      }),
      RedirectSignOutURIs = schema.new({
         id = id.from(_N, "CreateBackendAuthOAuthConfig", "RedirectSignOutURIs"),
         type = "list",
         name = "RedirectSignOutURIs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "redirectSignOutURIs" },
         },
      }),
      SocialProviderSettings = schema.new({
         id = id.from(_N, "CreateBackendAuthOAuthConfig", "SocialProviderSettings"),
         type = "structure",
         name = "SocialProviderSettings",
         target_id = id.from(_N, "SocialProviderSettings"),
         target = M.SocialProviderSettings,
         traits = {
            [traits.JSON_NAME] = { name = "socialProviderSettings" },
         },
      }),
   },
})

M.CreateBackendAuthPasswordPolicyConfig = schema.new({
   id = id.from(_N, "CreateBackendAuthPasswordPolicyConfig"),
   type = "structure",
   members = {
      AdditionalConstraints = schema.new({
         id = id.from(_N, "CreateBackendAuthPasswordPolicyConfig", "AdditionalConstraints"),
         type = "list",
         name = "AdditionalConstraints",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "additionalConstraints" },
         },
      }),
      MinimumLength = schema.new({
         id = id.from(_N, "CreateBackendAuthPasswordPolicyConfig", "MinimumLength"),
         type = "double",
         name = "MinimumLength",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "minimumLength" },
         },
      }),
   },
})

M.CreateBackendAuthVerificationMessageConfig = schema.new({
   id = id.from(_N, "CreateBackendAuthVerificationMessageConfig"),
   type = "structure",
   members = {
      DeliveryMethod = schema.new({
         id = id.from(_N, "CreateBackendAuthVerificationMessageConfig", "DeliveryMethod"),
         type = "string",
         name = "DeliveryMethod",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "deliveryMethod" },
         },
      }),
      EmailSettings = schema.new({
         id = id.from(_N, "CreateBackendAuthVerificationMessageConfig", "EmailSettings"),
         type = "structure",
         name = "EmailSettings",
         target_id = id.from(_N, "EmailSettings"),
         target = M.EmailSettings,
         traits = {
            [traits.JSON_NAME] = { name = "emailSettings" },
         },
      }),
      SmsSettings = schema.new({
         id = id.from(_N, "CreateBackendAuthVerificationMessageConfig", "SmsSettings"),
         type = "structure",
         name = "SmsSettings",
         target_id = id.from(_N, "SmsSettings"),
         target = M.SmsSettings,
         traits = {
            [traits.JSON_NAME] = { name = "smsSettings" },
         },
      }),
   },
})

M.CreateBackendAuthUserPoolConfig = schema.new({
   id = id.from(_N, "CreateBackendAuthUserPoolConfig"),
   type = "structure",
   members = {
      ForgotPassword = schema.new({
         id = id.from(_N, "CreateBackendAuthUserPoolConfig", "ForgotPassword"),
         type = "structure",
         name = "ForgotPassword",
         target_id = id.from(_N, "CreateBackendAuthForgotPasswordConfig"),
         target = M.CreateBackendAuthForgotPasswordConfig,
         traits = {
            [traits.JSON_NAME] = { name = "forgotPassword" },
         },
      }),
      Mfa = schema.new({
         id = id.from(_N, "CreateBackendAuthUserPoolConfig", "Mfa"),
         type = "structure",
         name = "Mfa",
         target_id = id.from(_N, "CreateBackendAuthMFAConfig"),
         target = M.CreateBackendAuthMFAConfig,
         traits = {
            [traits.JSON_NAME] = { name = "mfa" },
         },
      }),
      OAuth = schema.new({
         id = id.from(_N, "CreateBackendAuthUserPoolConfig", "OAuth"),
         type = "structure",
         name = "OAuth",
         target_id = id.from(_N, "CreateBackendAuthOAuthConfig"),
         target = M.CreateBackendAuthOAuthConfig,
         traits = {
            [traits.JSON_NAME] = { name = "oAuth" },
         },
      }),
      PasswordPolicy = schema.new({
         id = id.from(_N, "CreateBackendAuthUserPoolConfig", "PasswordPolicy"),
         type = "structure",
         name = "PasswordPolicy",
         target_id = id.from(_N, "CreateBackendAuthPasswordPolicyConfig"),
         target = M.CreateBackendAuthPasswordPolicyConfig,
         traits = {
            [traits.JSON_NAME] = { name = "passwordPolicy" },
         },
      }),
      RequiredSignUpAttributes = schema.new({
         id = id.from(_N, "CreateBackendAuthUserPoolConfig", "RequiredSignUpAttributes"),
         type = "list",
         name = "RequiredSignUpAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "requiredSignUpAttributes" },
         },
      }),
      SignInMethod = schema.new({
         id = id.from(_N, "CreateBackendAuthUserPoolConfig", "SignInMethod"),
         type = "string",
         name = "SignInMethod",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "signInMethod" },
         },
      }),
      UserPoolName = schema.new({
         id = id.from(_N, "CreateBackendAuthUserPoolConfig", "UserPoolName"),
         type = "string",
         name = "UserPoolName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "userPoolName" },
         },
      }),
      VerificationMessage = schema.new({
         id = id.from(_N, "CreateBackendAuthUserPoolConfig", "VerificationMessage"),
         type = "structure",
         name = "VerificationMessage",
         target_id = id.from(_N, "CreateBackendAuthVerificationMessageConfig"),
         target = M.CreateBackendAuthVerificationMessageConfig,
         traits = {
            [traits.JSON_NAME] = { name = "verificationMessage" },
         },
      }),
   },
})

M.CreateBackendAuthResourceConfig = schema.new({
   id = id.from(_N, "CreateBackendAuthResourceConfig"),
   type = "structure",
   members = {
      AuthResources = schema.new({
         id = id.from(_N, "CreateBackendAuthResourceConfig", "AuthResources"),
         type = "string",
         name = "AuthResources",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "authResources" },
         },
      }),
      IdentityPoolConfigs = schema.new({
         id = id.from(_N, "CreateBackendAuthResourceConfig", "IdentityPoolConfigs"),
         type = "structure",
         name = "IdentityPoolConfigs",
         target_id = id.from(_N, "CreateBackendAuthIdentityPoolConfig"),
         target = M.CreateBackendAuthIdentityPoolConfig,
         traits = {
            [traits.JSON_NAME] = { name = "identityPoolConfigs" },
         },
      }),
      Service = schema.new({
         id = id.from(_N, "CreateBackendAuthResourceConfig", "Service"),
         type = "string",
         name = "Service",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "service" },
         },
      }),
      UserPoolConfigs = schema.new({
         id = id.from(_N, "CreateBackendAuthResourceConfig", "UserPoolConfigs"),
         type = "structure",
         name = "UserPoolConfigs",
         target_id = id.from(_N, "CreateBackendAuthUserPoolConfig"),
         target = M.CreateBackendAuthUserPoolConfig,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "userPoolConfigs" },
         },
      }),
   },
})

M.CreateBackendAuthInput = schema.new({
   id = id.from(_N, "CreateBackendAuthRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateBackendAuthInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "CreateBackendAuthInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "CreateBackendAuthInput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "CreateBackendAuthResourceConfig"),
         target = M.CreateBackendAuthResourceConfig,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "CreateBackendAuthInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.CreateBackendAuthOutput = schema.new({
   id = id.from(_N, "CreateBackendAuthResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateBackendAuthOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "CreateBackendAuthOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "CreateBackendAuthOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "CreateBackendAuthOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "CreateBackendAuthOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CreateBackendAuthOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.CreateBackendConfigInput = schema.new({
   id = id.from(_N, "CreateBackendConfigRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateBackendConfigInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendManagerAppId = schema.new({
         id = id.from(_N, "CreateBackendConfigInput", "BackendManagerAppId"),
         type = "string",
         name = "BackendManagerAppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendManagerAppId" },
         },
      }),
   },
})

M.CreateBackendConfigOutput = schema.new({
   id = id.from(_N, "CreateBackendConfigResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateBackendConfigOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "CreateBackendConfigOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "CreateBackendConfigOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CreateBackendConfigOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.BackendStoragePermissions = schema.new({
   id = id.from(_N, "BackendStoragePermissions"),
   type = "structure",
   members = {
      Authenticated = schema.new({
         id = id.from(_N, "BackendStoragePermissions", "Authenticated"),
         type = "list",
         name = "Authenticated",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "authenticated" },
         },
      }),
      UnAuthenticated = schema.new({
         id = id.from(_N, "BackendStoragePermissions", "UnAuthenticated"),
         type = "list",
         name = "UnAuthenticated",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "unAuthenticated" },
         },
      }),
   },
})

M.CreateBackendStorageResourceConfig = schema.new({
   id = id.from(_N, "CreateBackendStorageResourceConfig"),
   type = "structure",
   members = {
      BucketName = schema.new({
         id = id.from(_N, "CreateBackendStorageResourceConfig", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "bucketName" },
         },
      }),
      Permissions = schema.new({
         id = id.from(_N, "CreateBackendStorageResourceConfig", "Permissions"),
         type = "structure",
         name = "Permissions",
         target_id = id.from(_N, "BackendStoragePermissions"),
         target = M.BackendStoragePermissions,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "permissions" },
         },
      }),
      ServiceName = schema.new({
         id = id.from(_N, "CreateBackendStorageResourceConfig", "ServiceName"),
         type = "string",
         name = "ServiceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "serviceName" },
         },
      }),
   },
})

M.CreateBackendStorageInput = schema.new({
   id = id.from(_N, "CreateBackendStorageRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateBackendStorageInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "CreateBackendStorageInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "CreateBackendStorageInput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "CreateBackendStorageResourceConfig"),
         target = M.CreateBackendStorageResourceConfig,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "CreateBackendStorageInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.CreateBackendStorageOutput = schema.new({
   id = id.from(_N, "CreateBackendStorageResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateBackendStorageOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "CreateBackendStorageOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "CreateBackendStorageOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CreateBackendStorageOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.CreateTokenInput = schema.new({
   id = id.from(_N, "CreateTokenRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateTokenInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CreateTokenOutput = schema.new({
   id = id.from(_N, "CreateTokenResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "CreateTokenOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      ChallengeCode = schema.new({
         id = id.from(_N, "CreateTokenOutput", "ChallengeCode"),
         type = "string",
         name = "ChallengeCode",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "challengeCode" },
         },
      }),
      SessionId = schema.new({
         id = id.from(_N, "CreateTokenOutput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "sessionId" },
         },
      }),
      Ttl = schema.new({
         id = id.from(_N, "CreateTokenOutput", "Ttl"),
         type = "string",
         name = "Ttl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "ttl" },
         },
      }),
   },
})

M.DeleteBackendInput = schema.new({
   id = id.from(_N, "DeleteBackendRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "DeleteBackendInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "DeleteBackendInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteBackendOutput = schema.new({
   id = id.from(_N, "DeleteBackendResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "DeleteBackendOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "DeleteBackendOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "DeleteBackendOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "DeleteBackendOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "DeleteBackendOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "DeleteBackendOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.DeleteBackendAPIInput = schema.new({
   id = id.from(_N, "DeleteBackendAPIRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "DeleteBackendAPIInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "DeleteBackendAPIInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "DeleteBackendAPIInput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "BackendAPIResourceConfig"),
         target = M.BackendAPIResourceConfig,
         traits = {
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "DeleteBackendAPIInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.DeleteBackendAPIOutput = schema.new({
   id = id.from(_N, "DeleteBackendAPIResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "DeleteBackendAPIOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "DeleteBackendAPIOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "DeleteBackendAPIOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "DeleteBackendAPIOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "DeleteBackendAPIOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "DeleteBackendAPIOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.DeleteBackendAuthInput = schema.new({
   id = id.from(_N, "DeleteBackendAuthRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "DeleteBackendAuthInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "DeleteBackendAuthInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "DeleteBackendAuthInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.DeleteBackendAuthOutput = schema.new({
   id = id.from(_N, "DeleteBackendAuthResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "DeleteBackendAuthOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "DeleteBackendAuthOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "DeleteBackendAuthOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "DeleteBackendAuthOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "DeleteBackendAuthOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "DeleteBackendAuthOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.DeleteBackendStorageInput = schema.new({
   id = id.from(_N, "DeleteBackendStorageRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "DeleteBackendStorageInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "DeleteBackendStorageInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "DeleteBackendStorageInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
      ServiceName = schema.new({
         id = id.from(_N, "DeleteBackendStorageInput", "ServiceName"),
         type = "string",
         name = "ServiceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "serviceName" },
         },
      }),
   },
})

M.DeleteBackendStorageOutput = schema.new({
   id = id.from(_N, "DeleteBackendStorageResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "DeleteBackendStorageOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "DeleteBackendStorageOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "DeleteBackendStorageOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "DeleteBackendStorageOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.DeleteTokenInput = schema.new({
   id = id.from(_N, "DeleteTokenRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "DeleteTokenInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SessionId = schema.new({
         id = id.from(_N, "DeleteTokenInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteTokenOutput = schema.new({
   id = id.from(_N, "DeleteTokenResponse"),
   type = "structure",
   members = {
      IsSuccess = schema.new({
         id = id.from(_N, "DeleteTokenOutput", "IsSuccess"),
         type = "boolean",
         name = "IsSuccess",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.JSON_NAME] = { name = "isSuccess" },
         },
      }),
   },
})

M.GenerateBackendAPIModelsInput = schema.new({
   id = id.from(_N, "GenerateBackendAPIModelsRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GenerateBackendAPIModelsInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GenerateBackendAPIModelsInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "GenerateBackendAPIModelsInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.GenerateBackendAPIModelsOutput = schema.new({
   id = id.from(_N, "GenerateBackendAPIModelsResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GenerateBackendAPIModelsOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GenerateBackendAPIModelsOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "GenerateBackendAPIModelsOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "GenerateBackendAPIModelsOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "GenerateBackendAPIModelsOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GenerateBackendAPIModelsOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.GetBackendInput = schema.new({
   id = id.from(_N, "GetBackendRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetBackendInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GetBackendInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
   },
})

M.GetBackendOutput = schema.new({
   id = id.from(_N, "GetBackendResponse"),
   type = "structure",
   members = {
      AmplifyFeatureFlags = schema.new({
         id = id.from(_N, "GetBackendOutput", "AmplifyFeatureFlags"),
         type = "string",
         name = "AmplifyFeatureFlags",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "amplifyFeatureFlags" },
         },
      }),
      AmplifyMetaConfig = schema.new({
         id = id.from(_N, "GetBackendOutput", "AmplifyMetaConfig"),
         type = "string",
         name = "AmplifyMetaConfig",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "amplifyMetaConfig" },
         },
      }),
      AppId = schema.new({
         id = id.from(_N, "GetBackendOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      AppName = schema.new({
         id = id.from(_N, "GetBackendOutput", "AppName"),
         type = "string",
         name = "AppName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appName" },
         },
      }),
      BackendEnvironmentList = schema.new({
         id = id.from(_N, "GetBackendOutput", "BackendEnvironmentList"),
         type = "list",
         name = "BackendEnvironmentList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentList" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GetBackendOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "GetBackendOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
   },
})

M.GetBackendAPIInput = schema.new({
   id = id.from(_N, "GetBackendAPIRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetBackendAPIInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GetBackendAPIInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "GetBackendAPIInput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "BackendAPIResourceConfig"),
         target = M.BackendAPIResourceConfig,
         traits = {
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "GetBackendAPIInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.GetBackendAPIOutput = schema.new({
   id = id.from(_N, "GetBackendAPIResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetBackendAPIOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GetBackendAPIOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "GetBackendAPIOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "GetBackendAPIOutput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "BackendAPIResourceConfig"),
         target = M.BackendAPIResourceConfig,
         traits = {
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "GetBackendAPIOutput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.GetBackendAPIModelsInput = schema.new({
   id = id.from(_N, "GetBackendAPIModelsRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetBackendAPIModelsInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GetBackendAPIModelsInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "GetBackendAPIModelsInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.GetBackendAPIModelsOutput = schema.new({
   id = id.from(_N, "GetBackendAPIModelsResponse"),
   type = "structure",
   members = {
      Models = schema.new({
         id = id.from(_N, "GetBackendAPIModelsOutput", "Models"),
         type = "string",
         name = "Models",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "models" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GetBackendAPIModelsOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
      ModelIntrospectionSchema = schema.new({
         id = id.from(_N, "GetBackendAPIModelsOutput", "ModelIntrospectionSchema"),
         type = "string",
         name = "ModelIntrospectionSchema",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "modelIntrospectionSchema" },
         },
      }),
   },
})

M.GetBackendAuthInput = schema.new({
   id = id.from(_N, "GetBackendAuthRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetBackendAuthInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GetBackendAuthInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "GetBackendAuthInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.GetBackendAuthOutput = schema.new({
   id = id.from(_N, "GetBackendAuthResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetBackendAuthOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GetBackendAuthOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "GetBackendAuthOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "GetBackendAuthOutput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "CreateBackendAuthResourceConfig"),
         target = M.CreateBackendAuthResourceConfig,
         traits = {
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "GetBackendAuthOutput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.GetBackendJobInput = schema.new({
   id = id.from(_N, "GetBackendJobRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetBackendJobInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GetBackendJobInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "GetBackendJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetBackendJobOutput = schema.new({
   id = id.from(_N, "GetBackendJobResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetBackendJobOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GetBackendJobOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      CreateTime = schema.new({
         id = id.from(_N, "GetBackendJobOutput", "CreateTime"),
         type = "string",
         name = "CreateTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "createTime" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "GetBackendJobOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "GetBackendJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "GetBackendJobOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GetBackendJobOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
      UpdateTime = schema.new({
         id = id.from(_N, "GetBackendJobOutput", "UpdateTime"),
         type = "string",
         name = "UpdateTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "updateTime" },
         },
      }),
   },
})

M.GetBackendStorageInput = schema.new({
   id = id.from(_N, "GetBackendStorageRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetBackendStorageInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GetBackendStorageInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "GetBackendStorageInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.GetBackendStorageResourceConfig = schema.new({
   id = id.from(_N, "GetBackendStorageResourceConfig"),
   type = "structure",
   members = {
      BucketName = schema.new({
         id = id.from(_N, "GetBackendStorageResourceConfig", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "bucketName" },
         },
      }),
      Imported = schema.new({
         id = id.from(_N, "GetBackendStorageResourceConfig", "Imported"),
         type = "boolean",
         name = "Imported",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "imported" },
         },
      }),
      Permissions = schema.new({
         id = id.from(_N, "GetBackendStorageResourceConfig", "Permissions"),
         type = "structure",
         name = "Permissions",
         target_id = id.from(_N, "BackendStoragePermissions"),
         target = M.BackendStoragePermissions,
         traits = {
            [traits.JSON_NAME] = { name = "permissions" },
         },
      }),
      ServiceName = schema.new({
         id = id.from(_N, "GetBackendStorageResourceConfig", "ServiceName"),
         type = "string",
         name = "ServiceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "serviceName" },
         },
      }),
   },
})

M.GetBackendStorageOutput = schema.new({
   id = id.from(_N, "GetBackendStorageResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetBackendStorageOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "GetBackendStorageOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "GetBackendStorageOutput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "GetBackendStorageResourceConfig"),
         target = M.GetBackendStorageResourceConfig,
         traits = {
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "GetBackendStorageOutput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.GetTokenInput = schema.new({
   id = id.from(_N, "GetTokenRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetTokenInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SessionId = schema.new({
         id = id.from(_N, "GetTokenInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetTokenOutput = schema.new({
   id = id.from(_N, "GetTokenResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "GetTokenOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      ChallengeCode = schema.new({
         id = id.from(_N, "GetTokenOutput", "ChallengeCode"),
         type = "string",
         name = "ChallengeCode",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "challengeCode" },
         },
      }),
      SessionId = schema.new({
         id = id.from(_N, "GetTokenOutput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "sessionId" },
         },
      }),
      Ttl = schema.new({
         id = id.from(_N, "GetTokenOutput", "Ttl"),
         type = "string",
         name = "Ttl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "ttl" },
         },
      }),
   },
})

M.ImportBackendAuthInput = schema.new({
   id = id.from(_N, "ImportBackendAuthRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "ImportBackendAuthInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "ImportBackendAuthInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      IdentityPoolId = schema.new({
         id = id.from(_N, "ImportBackendAuthInput", "IdentityPoolId"),
         type = "string",
         name = "IdentityPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "identityPoolId" },
         },
      }),
      NativeClientId = schema.new({
         id = id.from(_N, "ImportBackendAuthInput", "NativeClientId"),
         type = "string",
         name = "NativeClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "nativeClientId" },
         },
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "ImportBackendAuthInput", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "userPoolId" },
         },
      }),
      WebClientId = schema.new({
         id = id.from(_N, "ImportBackendAuthInput", "WebClientId"),
         type = "string",
         name = "WebClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "webClientId" },
         },
      }),
   },
})

M.ImportBackendAuthOutput = schema.new({
   id = id.from(_N, "ImportBackendAuthResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "ImportBackendAuthOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "ImportBackendAuthOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "ImportBackendAuthOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "ImportBackendAuthOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "ImportBackendAuthOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "ImportBackendAuthOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.ImportBackendStorageInput = schema.new({
   id = id.from(_N, "ImportBackendStorageRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "ImportBackendStorageInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "ImportBackendStorageInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BucketName = schema.new({
         id = id.from(_N, "ImportBackendStorageInput", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "bucketName" },
         },
      }),
      ServiceName = schema.new({
         id = id.from(_N, "ImportBackendStorageInput", "ServiceName"),
         type = "string",
         name = "ServiceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "serviceName" },
         },
      }),
   },
})

M.ImportBackendStorageOutput = schema.new({
   id = id.from(_N, "ImportBackendStorageResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "ImportBackendStorageOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "ImportBackendStorageOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "ImportBackendStorageOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "ImportBackendStorageOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.ListBackendJobsInput = schema.new({
   id = id.from(_N, "ListBackendJobsRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "ListBackendJobsInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "ListBackendJobsInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "ListBackendJobsInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListBackendJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.JSON_NAME] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBackendJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "nextToken" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "ListBackendJobsInput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "ListBackendJobsInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.BackendJobRespObj = schema.new({
   id = id.from(_N, "BackendJobRespObj"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "BackendJobRespObj", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "BackendJobRespObj", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      CreateTime = schema.new({
         id = id.from(_N, "BackendJobRespObj", "CreateTime"),
         type = "string",
         name = "CreateTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "createTime" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "BackendJobRespObj", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "BackendJobRespObj", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "BackendJobRespObj", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "BackendJobRespObj", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
      UpdateTime = schema.new({
         id = id.from(_N, "BackendJobRespObj", "UpdateTime"),
         type = "string",
         name = "UpdateTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "updateTime" },
         },
      }),
   },
})

M.ListBackendJobsOutput = schema.new({
   id = id.from(_N, "ListBackendJobsResponse"),
   type = "structure",
   members = {
      Jobs = schema.new({
         id = id.from(_N, "ListBackendJobsOutput", "Jobs"),
         type = "list",
         name = "Jobs",
         target_id = prelude.Document.id,
         list_member = M.BackendJobRespObj,
         traits = {
            [traits.JSON_NAME] = { name = "jobs" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBackendJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "nextToken" },
         },
      }),
   },
})

M.ListS3BucketsInput = schema.new({
   id = id.from(_N, "ListS3BucketsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListS3BucketsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "nextToken" },
         },
      }),
   },
})

M.S3BucketInfo = schema.new({
   id = id.from(_N, "S3BucketInfo"),
   type = "structure",
   members = {
      CreationDate = schema.new({
         id = id.from(_N, "S3BucketInfo", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "creationDate" },
         },
      }),
      Name = schema.new({
         id = id.from(_N, "S3BucketInfo", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "name" },
         },
      }),
   },
})

M.ListS3BucketsOutput = schema.new({
   id = id.from(_N, "ListS3BucketsResponse"),
   type = "structure",
   members = {
      Buckets = schema.new({
         id = id.from(_N, "ListS3BucketsOutput", "Buckets"),
         type = "list",
         name = "Buckets",
         target_id = prelude.Document.id,
         list_member = M.S3BucketInfo,
         traits = {
            [traits.JSON_NAME] = { name = "buckets" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListS3BucketsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "nextToken" },
         },
      }),
   },
})

M.RemoveAllBackendsInput = schema.new({
   id = id.from(_N, "RemoveAllBackendsRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "RemoveAllBackendsInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CleanAmplifyApp = schema.new({
         id = id.from(_N, "RemoveAllBackendsInput", "CleanAmplifyApp"),
         type = "boolean",
         name = "CleanAmplifyApp",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.JSON_NAME] = { name = "cleanAmplifyApp" },
         },
      }),
   },
})

M.RemoveAllBackendsOutput = schema.new({
   id = id.from(_N, "RemoveAllBackendsResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "RemoveAllBackendsOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "RemoveAllBackendsOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "RemoveAllBackendsOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "RemoveAllBackendsOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "RemoveAllBackendsOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.RemoveBackendConfigInput = schema.new({
   id = id.from(_N, "RemoveBackendConfigRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "RemoveBackendConfigInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RemoveBackendConfigOutput = schema.new({
   id = id.from(_N, "RemoveBackendConfigResponse"),
   type = "structure",
   members = {
      Error = schema.new({
         id = id.from(_N, "RemoveBackendConfigOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
   },
})

M.UpdateBackendAPIInput = schema.new({
   id = id.from(_N, "UpdateBackendAPIRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "UpdateBackendAPIInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "UpdateBackendAPIInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "UpdateBackendAPIInput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "BackendAPIResourceConfig"),
         target = M.BackendAPIResourceConfig,
         traits = {
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "UpdateBackendAPIInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.UpdateBackendAPIOutput = schema.new({
   id = id.from(_N, "UpdateBackendAPIResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "UpdateBackendAPIOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "UpdateBackendAPIOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "UpdateBackendAPIOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "UpdateBackendAPIOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "UpdateBackendAPIOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateBackendAPIOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.UpdateBackendAuthIdentityPoolConfig = schema.new({
   id = id.from(_N, "UpdateBackendAuthIdentityPoolConfig"),
   type = "structure",
   members = {
      UnauthenticatedLogin = schema.new({
         id = id.from(_N, "UpdateBackendAuthIdentityPoolConfig", "UnauthenticatedLogin"),
         type = "boolean",
         name = "UnauthenticatedLogin",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.JSON_NAME] = { name = "unauthenticatedLogin" },
         },
      }),
   },
})

M.UpdateBackendAuthForgotPasswordConfig = schema.new({
   id = id.from(_N, "UpdateBackendAuthForgotPasswordConfig"),
   type = "structure",
   members = {
      DeliveryMethod = schema.new({
         id = id.from(_N, "UpdateBackendAuthForgotPasswordConfig", "DeliveryMethod"),
         type = "string",
         name = "DeliveryMethod",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "deliveryMethod" },
         },
      }),
      EmailSettings = schema.new({
         id = id.from(_N, "UpdateBackendAuthForgotPasswordConfig", "EmailSettings"),
         type = "structure",
         name = "EmailSettings",
         target_id = id.from(_N, "EmailSettings"),
         target = M.EmailSettings,
         traits = {
            [traits.JSON_NAME] = { name = "emailSettings" },
         },
      }),
      SmsSettings = schema.new({
         id = id.from(_N, "UpdateBackendAuthForgotPasswordConfig", "SmsSettings"),
         type = "structure",
         name = "SmsSettings",
         target_id = id.from(_N, "SmsSettings"),
         target = M.SmsSettings,
         traits = {
            [traits.JSON_NAME] = { name = "smsSettings" },
         },
      }),
   },
})

M.UpdateBackendAuthMFAConfig = schema.new({
   id = id.from(_N, "UpdateBackendAuthMFAConfig"),
   type = "structure",
   members = {
      MFAMode = schema.new({
         id = id.from(_N, "UpdateBackendAuthMFAConfig", "MFAMode"),
         type = "string",
         name = "MFAMode",
         target_id = prelude.String.id,
      }),
      Settings = schema.new({
         id = id.from(_N, "UpdateBackendAuthMFAConfig", "Settings"),
         type = "structure",
         name = "Settings",
         target_id = id.from(_N, "Settings"),
         target = M.Settings,
         traits = {
            [traits.JSON_NAME] = { name = "settings" },
         },
      }),
   },
})

M.UpdateBackendAuthOAuthConfig = schema.new({
   id = id.from(_N, "UpdateBackendAuthOAuthConfig"),
   type = "structure",
   members = {
      DomainPrefix = schema.new({
         id = id.from(_N, "UpdateBackendAuthOAuthConfig", "DomainPrefix"),
         type = "string",
         name = "DomainPrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "domainPrefix" },
         },
      }),
      OAuthGrantType = schema.new({
         id = id.from(_N, "UpdateBackendAuthOAuthConfig", "OAuthGrantType"),
         type = "string",
         name = "OAuthGrantType",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "oAuthGrantType" },
         },
      }),
      OAuthScopes = schema.new({
         id = id.from(_N, "UpdateBackendAuthOAuthConfig", "OAuthScopes"),
         type = "list",
         name = "OAuthScopes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "oAuthScopes" },
         },
      }),
      RedirectSignInURIs = schema.new({
         id = id.from(_N, "UpdateBackendAuthOAuthConfig", "RedirectSignInURIs"),
         type = "list",
         name = "RedirectSignInURIs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "redirectSignInURIs" },
         },
      }),
      RedirectSignOutURIs = schema.new({
         id = id.from(_N, "UpdateBackendAuthOAuthConfig", "RedirectSignOutURIs"),
         type = "list",
         name = "RedirectSignOutURIs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "redirectSignOutURIs" },
         },
      }),
      SocialProviderSettings = schema.new({
         id = id.from(_N, "UpdateBackendAuthOAuthConfig", "SocialProviderSettings"),
         type = "structure",
         name = "SocialProviderSettings",
         target_id = id.from(_N, "SocialProviderSettings"),
         target = M.SocialProviderSettings,
         traits = {
            [traits.JSON_NAME] = { name = "socialProviderSettings" },
         },
      }),
   },
})

M.UpdateBackendAuthPasswordPolicyConfig = schema.new({
   id = id.from(_N, "UpdateBackendAuthPasswordPolicyConfig"),
   type = "structure",
   members = {
      AdditionalConstraints = schema.new({
         id = id.from(_N, "UpdateBackendAuthPasswordPolicyConfig", "AdditionalConstraints"),
         type = "list",
         name = "AdditionalConstraints",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "additionalConstraints" },
         },
      }),
      MinimumLength = schema.new({
         id = id.from(_N, "UpdateBackendAuthPasswordPolicyConfig", "MinimumLength"),
         type = "double",
         name = "MinimumLength",
         target_id = prelude.Double.id,
         traits = {
            [traits.JSON_NAME] = { name = "minimumLength" },
         },
      }),
   },
})

M.UpdateBackendAuthVerificationMessageConfig = schema.new({
   id = id.from(_N, "UpdateBackendAuthVerificationMessageConfig"),
   type = "structure",
   members = {
      DeliveryMethod = schema.new({
         id = id.from(_N, "UpdateBackendAuthVerificationMessageConfig", "DeliveryMethod"),
         type = "string",
         name = "DeliveryMethod",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "deliveryMethod" },
         },
      }),
      EmailSettings = schema.new({
         id = id.from(_N, "UpdateBackendAuthVerificationMessageConfig", "EmailSettings"),
         type = "structure",
         name = "EmailSettings",
         target_id = id.from(_N, "EmailSettings"),
         target = M.EmailSettings,
         traits = {
            [traits.JSON_NAME] = { name = "emailSettings" },
         },
      }),
      SmsSettings = schema.new({
         id = id.from(_N, "UpdateBackendAuthVerificationMessageConfig", "SmsSettings"),
         type = "structure",
         name = "SmsSettings",
         target_id = id.from(_N, "SmsSettings"),
         target = M.SmsSettings,
         traits = {
            [traits.JSON_NAME] = { name = "smsSettings" },
         },
      }),
   },
})

M.UpdateBackendAuthUserPoolConfig = schema.new({
   id = id.from(_N, "UpdateBackendAuthUserPoolConfig"),
   type = "structure",
   members = {
      ForgotPassword = schema.new({
         id = id.from(_N, "UpdateBackendAuthUserPoolConfig", "ForgotPassword"),
         type = "structure",
         name = "ForgotPassword",
         target_id = id.from(_N, "UpdateBackendAuthForgotPasswordConfig"),
         target = M.UpdateBackendAuthForgotPasswordConfig,
         traits = {
            [traits.JSON_NAME] = { name = "forgotPassword" },
         },
      }),
      Mfa = schema.new({
         id = id.from(_N, "UpdateBackendAuthUserPoolConfig", "Mfa"),
         type = "structure",
         name = "Mfa",
         target_id = id.from(_N, "UpdateBackendAuthMFAConfig"),
         target = M.UpdateBackendAuthMFAConfig,
         traits = {
            [traits.JSON_NAME] = { name = "mfa" },
         },
      }),
      OAuth = schema.new({
         id = id.from(_N, "UpdateBackendAuthUserPoolConfig", "OAuth"),
         type = "structure",
         name = "OAuth",
         target_id = id.from(_N, "UpdateBackendAuthOAuthConfig"),
         target = M.UpdateBackendAuthOAuthConfig,
         traits = {
            [traits.JSON_NAME] = { name = "oAuth" },
         },
      }),
      PasswordPolicy = schema.new({
         id = id.from(_N, "UpdateBackendAuthUserPoolConfig", "PasswordPolicy"),
         type = "structure",
         name = "PasswordPolicy",
         target_id = id.from(_N, "UpdateBackendAuthPasswordPolicyConfig"),
         target = M.UpdateBackendAuthPasswordPolicyConfig,
         traits = {
            [traits.JSON_NAME] = { name = "passwordPolicy" },
         },
      }),
      VerificationMessage = schema.new({
         id = id.from(_N, "UpdateBackendAuthUserPoolConfig", "VerificationMessage"),
         type = "structure",
         name = "VerificationMessage",
         target_id = id.from(_N, "UpdateBackendAuthVerificationMessageConfig"),
         target = M.UpdateBackendAuthVerificationMessageConfig,
         traits = {
            [traits.JSON_NAME] = { name = "verificationMessage" },
         },
      }),
   },
})

M.UpdateBackendAuthResourceConfig = schema.new({
   id = id.from(_N, "UpdateBackendAuthResourceConfig"),
   type = "structure",
   members = {
      AuthResources = schema.new({
         id = id.from(_N, "UpdateBackendAuthResourceConfig", "AuthResources"),
         type = "string",
         name = "AuthResources",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "authResources" },
         },
      }),
      IdentityPoolConfigs = schema.new({
         id = id.from(_N, "UpdateBackendAuthResourceConfig", "IdentityPoolConfigs"),
         type = "structure",
         name = "IdentityPoolConfigs",
         target_id = id.from(_N, "UpdateBackendAuthIdentityPoolConfig"),
         target = M.UpdateBackendAuthIdentityPoolConfig,
         traits = {
            [traits.JSON_NAME] = { name = "identityPoolConfigs" },
         },
      }),
      Service = schema.new({
         id = id.from(_N, "UpdateBackendAuthResourceConfig", "Service"),
         type = "string",
         name = "Service",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "service" },
         },
      }),
      UserPoolConfigs = schema.new({
         id = id.from(_N, "UpdateBackendAuthResourceConfig", "UserPoolConfigs"),
         type = "structure",
         name = "UserPoolConfigs",
         target_id = id.from(_N, "UpdateBackendAuthUserPoolConfig"),
         target = M.UpdateBackendAuthUserPoolConfig,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "userPoolConfigs" },
         },
      }),
   },
})

M.UpdateBackendAuthInput = schema.new({
   id = id.from(_N, "UpdateBackendAuthRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "UpdateBackendAuthInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "UpdateBackendAuthInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "UpdateBackendAuthInput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "UpdateBackendAuthResourceConfig"),
         target = M.UpdateBackendAuthResourceConfig,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "UpdateBackendAuthInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.UpdateBackendAuthOutput = schema.new({
   id = id.from(_N, "UpdateBackendAuthResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "UpdateBackendAuthOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "UpdateBackendAuthOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "UpdateBackendAuthOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "UpdateBackendAuthOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "UpdateBackendAuthOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateBackendAuthOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.LoginAuthConfigReqObj = schema.new({
   id = id.from(_N, "LoginAuthConfigReqObj"),
   type = "structure",
   members = {
      AwsCognitoIdentityPoolId = schema.new({
         id = id.from(_N, "LoginAuthConfigReqObj", "AwsCognitoIdentityPoolId"),
         type = "string",
         name = "AwsCognitoIdentityPoolId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "aws_cognito_identity_pool_id" },
         },
      }),
      AwsCognitoRegion = schema.new({
         id = id.from(_N, "LoginAuthConfigReqObj", "AwsCognitoRegion"),
         type = "string",
         name = "AwsCognitoRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "aws_cognito_region" },
         },
      }),
      AwsUserPoolsId = schema.new({
         id = id.from(_N, "LoginAuthConfigReqObj", "AwsUserPoolsId"),
         type = "string",
         name = "AwsUserPoolsId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "aws_user_pools_id" },
         },
      }),
      AwsUserPoolsWebClientId = schema.new({
         id = id.from(_N, "LoginAuthConfigReqObj", "AwsUserPoolsWebClientId"),
         type = "string",
         name = "AwsUserPoolsWebClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "aws_user_pools_web_client_id" },
         },
      }),
   },
})

M.UpdateBackendConfigInput = schema.new({
   id = id.from(_N, "UpdateBackendConfigRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "UpdateBackendConfigInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      LoginAuthConfig = schema.new({
         id = id.from(_N, "UpdateBackendConfigInput", "LoginAuthConfig"),
         type = "structure",
         name = "LoginAuthConfig",
         target_id = id.from(_N, "LoginAuthConfigReqObj"),
         target = M.LoginAuthConfigReqObj,
         traits = {
            [traits.JSON_NAME] = { name = "loginAuthConfig" },
         },
      }),
   },
})

M.UpdateBackendConfigOutput = schema.new({
   id = id.from(_N, "UpdateBackendConfigResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "UpdateBackendConfigOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendManagerAppId = schema.new({
         id = id.from(_N, "UpdateBackendConfigOutput", "BackendManagerAppId"),
         type = "string",
         name = "BackendManagerAppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendManagerAppId" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "UpdateBackendConfigOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      LoginAuthConfig = schema.new({
         id = id.from(_N, "UpdateBackendConfigOutput", "LoginAuthConfig"),
         type = "structure",
         name = "LoginAuthConfig",
         target_id = id.from(_N, "LoginAuthConfigReqObj"),
         target = M.LoginAuthConfigReqObj,
         traits = {
            [traits.JSON_NAME] = { name = "loginAuthConfig" },
         },
      }),
   },
})

M.UpdateBackendJobInput = schema.new({
   id = id.from(_N, "UpdateBackendJobRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "UpdateBackendJobInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "UpdateBackendJobInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "UpdateBackendJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "UpdateBackendJobInput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateBackendJobInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
   },
})

M.UpdateBackendJobOutput = schema.new({
   id = id.from(_N, "UpdateBackendJobResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "UpdateBackendJobOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "UpdateBackendJobOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      CreateTime = schema.new({
         id = id.from(_N, "UpdateBackendJobOutput", "CreateTime"),
         type = "string",
         name = "CreateTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "createTime" },
         },
      }),
      Error = schema.new({
         id = id.from(_N, "UpdateBackendJobOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "error" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "UpdateBackendJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "UpdateBackendJobOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "operation" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateBackendJobOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
      UpdateTime = schema.new({
         id = id.from(_N, "UpdateBackendJobOutput", "UpdateTime"),
         type = "string",
         name = "UpdateTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "updateTime" },
         },
      }),
   },
})

M.UpdateBackendStorageResourceConfig = schema.new({
   id = id.from(_N, "UpdateBackendStorageResourceConfig"),
   type = "structure",
   members = {
      Permissions = schema.new({
         id = id.from(_N, "UpdateBackendStorageResourceConfig", "Permissions"),
         type = "structure",
         name = "Permissions",
         target_id = id.from(_N, "BackendStoragePermissions"),
         target = M.BackendStoragePermissions,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "permissions" },
         },
      }),
      ServiceName = schema.new({
         id = id.from(_N, "UpdateBackendStorageResourceConfig", "ServiceName"),
         type = "string",
         name = "ServiceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "serviceName" },
         },
      }),
   },
})

M.UpdateBackendStorageInput = schema.new({
   id = id.from(_N, "UpdateBackendStorageRequest"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "UpdateBackendStorageInput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "UpdateBackendStorageInput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceConfig = schema.new({
         id = id.from(_N, "UpdateBackendStorageInput", "ResourceConfig"),
         type = "structure",
         name = "ResourceConfig",
         target_id = id.from(_N, "UpdateBackendStorageResourceConfig"),
         target = M.UpdateBackendStorageResourceConfig,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceConfig" },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "UpdateBackendStorageInput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourceName" },
         },
      }),
   },
})

M.UpdateBackendStorageOutput = schema.new({
   id = id.from(_N, "UpdateBackendStorageResponse"),
   type = "structure",
   members = {
      AppId = schema.new({
         id = id.from(_N, "UpdateBackendStorageOutput", "AppId"),
         type = "string",
         name = "AppId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "appId" },
         },
      }),
      BackendEnvironmentName = schema.new({
         id = id.from(_N, "UpdateBackendStorageOutput", "BackendEnvironmentName"),
         type = "string",
         name = "BackendEnvironmentName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "backendEnvironmentName" },
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "UpdateBackendStorageOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "jobId" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateBackendStorageOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
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
   id = id.from("com.amazonaws.amplifybackend", "AmplifyBackend"),
   version = "2020-08-11",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CloneBackend = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "CloneBackend"),
   input = M.CloneBackendInput,
   output = M.CloneBackendOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/environments/{BackendEnvironmentName}/clone" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBackend = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "CreateBackend"),
   input = M.CreateBackendInput,
   output = M.CreateBackendOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBackendAPI = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "CreateBackendAPI"),
   input = M.CreateBackendAPIInput,
   output = M.CreateBackendAPIOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/api" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBackendAuth = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "CreateBackendAuth"),
   input = M.CreateBackendAuthInput,
   output = M.CreateBackendAuthOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/auth" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBackendConfig = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "CreateBackendConfig"),
   input = M.CreateBackendConfigInput,
   output = M.CreateBackendConfigOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/config" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBackendStorage = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "CreateBackendStorage"),
   input = M.CreateBackendStorageInput,
   output = M.CreateBackendStorageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/storage" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateToken = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "CreateToken"),
   input = M.CreateTokenInput,
   output = M.CreateTokenOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/challenge" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBackend = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "DeleteBackend"),
   input = M.DeleteBackendInput,
   output = M.DeleteBackendOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/environments/{BackendEnvironmentName}/remove" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBackendAPI = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "DeleteBackendAPI"),
   input = M.DeleteBackendAPIInput,
   output = M.DeleteBackendAPIOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/api/{BackendEnvironmentName}/remove" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBackendAuth = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "DeleteBackendAuth"),
   input = M.DeleteBackendAuthInput,
   output = M.DeleteBackendAuthOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/auth/{BackendEnvironmentName}/remove" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBackendStorage = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "DeleteBackendStorage"),
   input = M.DeleteBackendStorageInput,
   output = M.DeleteBackendStorageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/storage/{BackendEnvironmentName}/remove" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteToken = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "DeleteToken"),
   input = M.DeleteTokenInput,
   output = M.DeleteTokenOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/challenge/{SessionId}/remove" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateBackendAPIModels = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "GenerateBackendAPIModels"),
   input = M.GenerateBackendAPIModelsInput,
   output = M.GenerateBackendAPIModelsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/api/{BackendEnvironmentName}/generateModels" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackend = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "GetBackend"),
   input = M.GetBackendInput,
   output = M.GetBackendOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/details" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackendAPI = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "GetBackendAPI"),
   input = M.GetBackendAPIInput,
   output = M.GetBackendAPIOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/api/{BackendEnvironmentName}/details" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackendAPIModels = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "GetBackendAPIModels"),
   input = M.GetBackendAPIModelsInput,
   output = M.GetBackendAPIModelsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/api/{BackendEnvironmentName}/getModels" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackendAuth = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "GetBackendAuth"),
   input = M.GetBackendAuthInput,
   output = M.GetBackendAuthOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/auth/{BackendEnvironmentName}/details" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackendJob = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "GetBackendJob"),
   input = M.GetBackendJobInput,
   output = M.GetBackendJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackendStorage = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "GetBackendStorage"),
   input = M.GetBackendStorageInput,
   output = M.GetBackendStorageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/storage/{BackendEnvironmentName}/details" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetToken = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "GetToken"),
   input = M.GetTokenInput,
   output = M.GetTokenOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backend/{AppId}/challenge/{SessionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ImportBackendAuth = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "ImportBackendAuth"),
   input = M.ImportBackendAuthInput,
   output = M.ImportBackendAuthOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/auth/{BackendEnvironmentName}/import" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ImportBackendStorage = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "ImportBackendStorage"),
   input = M.ImportBackendStorageInput,
   output = M.ImportBackendStorageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/storage/{BackendEnvironmentName}/import" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBackendJobs = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "ListBackendJobs"),
   input = M.ListBackendJobsInput,
   output = M.ListBackendJobsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/job/{BackendEnvironmentName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListS3Buckets = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "ListS3Buckets"),
   input = M.ListS3BucketsInput,
   output = M.ListS3BucketsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/s3Buckets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveAllBackends = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "RemoveAllBackends"),
   input = M.RemoveAllBackendsInput,
   output = M.RemoveAllBackendsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/remove" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveBackendConfig = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "RemoveBackendConfig"),
   input = M.RemoveBackendConfigInput,
   output = M.RemoveBackendConfigOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/config/remove" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBackendAPI = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "UpdateBackendAPI"),
   input = M.UpdateBackendAPIInput,
   output = M.UpdateBackendAPIOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/api/{BackendEnvironmentName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBackendAuth = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "UpdateBackendAuth"),
   input = M.UpdateBackendAuthInput,
   output = M.UpdateBackendAuthOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/auth/{BackendEnvironmentName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBackendConfig = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "UpdateBackendConfig"),
   input = M.UpdateBackendConfigInput,
   output = M.UpdateBackendConfigOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/config/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBackendJob = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "UpdateBackendJob"),
   input = M.UpdateBackendJobInput,
   output = M.UpdateBackendJobOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBackendStorage = schema.operation({
   id = id.from("com.amazonaws.amplifybackend", "UpdateBackendStorage"),
   input = M.UpdateBackendStorageInput,
   output = M.UpdateBackendStorageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backend/{AppId}/storage/{BackendEnvironmentName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
