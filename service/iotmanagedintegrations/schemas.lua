

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.iotmanagedintegrations"

local M = {}

M.TagsMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.Devices = schema.new({ type = "list", list_member = M.Device })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.AccountAssociationListDefinition = schema.new({ type = "list", list_member = M.AccountAssociationItem })

M.ConnectorList = schema.new({ type = "list", list_member = M.ConnectorItem })

M.ConnectorDestinationListDefinition = schema.new({ type = "list", list_member = M.ConnectorDestinationSummary })

M.CredentialLockerListDefinition = schema.new({ type = "list", list_member = M.CredentialLockerSummary })

M.DestinationListDefinition = schema.new({ type = "list", list_member = M.DestinationSummary })

M.DeviceDiscoveryListDefinition = schema.new({ type = "list", list_member = M.DeviceDiscoverySummary })

M.CustomProtocolDetail = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ConnectorDeviceIdList = schema.new({ type = "list", list_member = prelude.String })

M.DiscoveredDeviceListDefinition = schema.new({ type = "list", list_member = M.DiscoveredDeviceSummary })

M.EventLogConfigurationListDefinition = schema.new({ type = "list", list_member = M.EventLogConfigurationSummary })

M.ManagedThingAssociationList = schema.new({ type = "list", list_member = M.ManagedThingAssociation })

M.CommandEndpoints = schema.new({ type = "list", list_member = M.CommandEndpoint })

M.ManagedThingListDefinition = schema.new({ type = "list", list_member = M.ManagedThingSummary })

M.CapabilitySchemas = schema.new({ type = "list", list_member = M.CapabilitySchemaItem })

M.MetaData = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ManagedThingSchemaListDefinition = schema.new({ type = "list", list_member = M.ManagedThingSchemaListItem })

M.StateEndpoints = schema.new({ type = "list", list_member = M.StateEndpoint })

M.NotificationConfigurationListDefinition = schema.new({ type = "list", list_member = M.NotificationConfigurationSummary })

M.OtaTaskConfigurationListDefinition = schema.new({ type = "list", list_member = M.OtaTaskConfigurationSummary })

M.OtaTaskListDefinition = schema.new({ type = "list", list_member = M.OtaTaskSummary })

M.Target = schema.new({ type = "list", list_member = prelude.String })

M.OtaTaskExecutionSummariesListDefinition = schema.new({ type = "list", list_member = M.OtaTaskExecutionSummaries })

M.ProvisioningProfileListDefinition = schema.new({ type = "list", list_member = M.ProvisioningProfileSummary })

M.SchemaVersionList = schema.new({ type = "list", list_member = M.SchemaVersionListItem })

M.MatterClusters = schema.new({ type = "list", list_member = M.MatterCluster })

M.AuthMaterials = schema.new({ type = "list", list_member = M.AuthMaterial })

M.CapabilityReportEndpoints = schema.new({ type = "list", list_member = M.CapabilityReportEndpoint })

M.ScheduleMaintenanceWindowList = schema.new({ type = "list", list_member = M.ScheduleMaintenanceWindow })

M.RetryConfigCriteriaList = schema.new({ type = "list", list_member = M.RetryConfigCriteria })

M.DeviceTypeList = schema.new({ type = "list", list_member = prelude.String })

M.CommandCapabilities = schema.new({ type = "list", list_member = M.CommandCapability })

M.StateCapabilities = schema.new({ type = "list", list_member = M.StateCapability })

M.AbortConfigCriteriaList = schema.new({ type = "list", list_member = M.AbortConfigCriteria })

M.MatterCapabilityReportEndpoints = schema.new({ type = "list", list_member = M.MatterCapabilityReportEndpoint })

M.MatterCommands = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Document })

M.MatterEvents = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Document })

M.DeviceTypes = schema.new({ type = "list", list_member = prelude.String })

M.CapabilityReportCapabilities = schema.new({ type = "list", list_member = M.CapabilityReportCapability })

M.CapabilityActions = schema.new({ type = "list", list_member = M.CapabilityAction })

M.MatterCapabilityReportClusters = schema.new({ type = "list", list_member = M.MatterCapabilityReportCluster })

M.MatterCapabilityReportEndpointParts = schema.new({ type = "list", list_member = prelude.String })

M.MatterCapabilityReportEndpointSemanticTags = schema.new({ type = "list", list_member = prelude.String })

M.MatterCapabilityReportEndpointClientClusters = schema.new({ type = "list", list_member = prelude.String })

M.CapabilityReportProperties = schema.new({ type = "list", list_member = prelude.String })

M.CapabilityReportActions = schema.new({ type = "list", list_member = prelude.String })

M.CapabilityReportEvents = schema.new({ type = "list", list_member = prelude.String })

M.MatterCapabilityReportAttributes = schema.new({ type = "list", list_member = M.MatterCapabilityReportAttribute })

M.MatterCapabilityReportCommands = schema.new({ type = "list", list_member = prelude.String })

M.MatterCapabilityReportEvents = schema.new({ type = "list", list_member = prelude.String })

M.MatterCapabilityReportGeneratedCommands = schema.new({ type = "list", list_member = prelude.String })

M.AbortConfigCriteria = schema.new({
   id = id.from(_N, "AbortConfigCriteria"),
   type = "structure",
   members = {
      Action = schema.new({
         id = id.from(_N, "AbortConfigCriteria", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      FailureType = schema.new({
         id = id.from(_N, "AbortConfigCriteria", "FailureType"),
         type = "string",
         name = "FailureType",
         target_id = prelude.String.id,
      }),
      MinNumberOfExecutedThings = schema.new({
         id = id.from(_N, "AbortConfigCriteria", "MinNumberOfExecutedThings"),
         type = "integer",
         name = "MinNumberOfExecutedThings",
         target_id = prelude.Integer.id,
      }),
      ThresholdPercentage = schema.new({
         id = id.from(_N, "AbortConfigCriteria", "ThresholdPercentage"),
         type = "double",
         name = "ThresholdPercentage",
         target_id = prelude.Double.id,
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
   },
})

M.AccountAssociationItem = schema.new({
   id = id.from(_N, "AccountAssociationItem"),
   type = "structure",
   members = {
      AccountAssociationId = schema.new({
         id = id.from(_N, "AccountAssociationItem", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AssociationState = schema.new({
         id = id.from(_N, "AccountAssociationItem", "AssociationState"),
         type = "string",
         name = "AssociationState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "AccountAssociationItem", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
      ConnectorDestinationId = schema.new({
         id = id.from(_N, "AccountAssociationItem", "ConnectorDestinationId"),
         type = "string",
         name = "ConnectorDestinationId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "AccountAssociationItem", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "AccountAssociationItem", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "AccountAssociationItem", "Arn"),
         type = "string",
         name = "Arn",
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

M.GeneralAuthorizationName = schema.new({
   id = id.from(_N, "GeneralAuthorizationName"),
   type = "structure",
   members = {
      AuthMaterialName = schema.new({
         id = id.from(_N, "GeneralAuthorizationName", "AuthMaterialName"),
         type = "string",
         name = "AuthMaterialName",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateAccountAssociationInput = schema.new({
   id = id.from(_N, "CreateAccountAssociationRequest"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateAccountAssociationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      ConnectorDestinationId = schema.new({
         id = id.from(_N, "CreateAccountAssociationInput", "ConnectorDestinationId"),
         type = "string",
         name = "ConnectorDestinationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateAccountAssociationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateAccountAssociationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateAccountAssociationInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      GeneralAuthorization = schema.new({
         id = id.from(_N, "CreateAccountAssociationInput", "GeneralAuthorization"),
         type = "structure",
         name = "GeneralAuthorization",
         target_id = id.from(_N, "GeneralAuthorizationName"),
         target = M.GeneralAuthorizationName,
      }),
   },
})

M.CreateAccountAssociationOutput = schema.new({
   id = id.from(_N, "CreateAccountAssociationResponse"),
   type = "structure",
   members = {
      OAuthAuthorizationUrl = schema.new({
         id = id.from(_N, "CreateAccountAssociationOutput", "OAuthAuthorizationUrl"),
         type = "string",
         name = "OAuthAuthorizationUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = "" },
         },
      }),
      AccountAssociationId = schema.new({
         id = id.from(_N, "CreateAccountAssociationOutput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AssociationState = schema.new({
         id = id.from(_N, "CreateAccountAssociationOutput", "AssociationState"),
         type = "string",
         name = "AssociationState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "CreateAccountAssociationOutput", "Arn"),
         type = "string",
         name = "Arn",
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
      ResourceId = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
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
      Message = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "Message"),
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
   },
})

M.UnauthorizedException = schema.new({
   id = id.from(_N, "UnauthorizedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "UnauthorizedException", "Message"),
         type = "string",
         name = "Message",
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
   },
})

M.DeleteAccountAssociationInput = schema.new({
   id = id.from(_N, "DeleteAccountAssociationRequest"),
   type = "structure",
   members = {
      AccountAssociationId = schema.new({
         id = id.from(_N, "DeleteAccountAssociationInput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteAccountAssociationOutput = prelude.Unit

M.GetAccountAssociationInput = schema.new({
   id = id.from(_N, "GetAccountAssociationRequest"),
   type = "structure",
   members = {
      AccountAssociationId = schema.new({
         id = id.from(_N, "GetAccountAssociationInput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetAccountAssociationOutput = schema.new({
   id = id.from(_N, "GetAccountAssociationResponse"),
   type = "structure",
   members = {
      AccountAssociationId = schema.new({
         id = id.from(_N, "GetAccountAssociationOutput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AssociationState = schema.new({
         id = id.from(_N, "GetAccountAssociationOutput", "AssociationState"),
         type = "string",
         name = "AssociationState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "GetAccountAssociationOutput", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
      ConnectorDestinationId = schema.new({
         id = id.from(_N, "GetAccountAssociationOutput", "ConnectorDestinationId"),
         type = "string",
         name = "ConnectorDestinationId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "GetAccountAssociationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetAccountAssociationOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "GetAccountAssociationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      OAuthAuthorizationUrl = schema.new({
         id = id.from(_N, "GetAccountAssociationOutput", "OAuthAuthorizationUrl"),
         type = "string",
         name = "OAuthAuthorizationUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = "" },
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "GetAccountAssociationOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      GeneralAuthorization = schema.new({
         id = id.from(_N, "GetAccountAssociationOutput", "GeneralAuthorization"),
         type = "structure",
         name = "GeneralAuthorization",
         target_id = id.from(_N, "GeneralAuthorizationName"),
         target = M.GeneralAuthorizationName,
      }),
   },
})

M.ListAccountAssociationsInput = schema.new({
   id = id.from(_N, "ListAccountAssociationsRequest"),
   type = "structure",
   members = {
      ConnectorDestinationId = schema.new({
         id = id.from(_N, "ListAccountAssociationsInput", "ConnectorDestinationId"),
         type = "string",
         name = "ConnectorDestinationId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ConnectorDestinationId" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListAccountAssociationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAccountAssociationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.ListAccountAssociationsOutput = schema.new({
   id = id.from(_N, "ListAccountAssociationsResponse"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListAccountAssociationsOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.AccountAssociationItem,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAccountAssociationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartAccountAssociationRefreshInput = schema.new({
   id = id.from(_N, "StartAccountAssociationRefreshRequest"),
   type = "structure",
   members = {
      AccountAssociationId = schema.new({
         id = id.from(_N, "StartAccountAssociationRefreshInput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StartAccountAssociationRefreshOutput = schema.new({
   id = id.from(_N, "StartAccountAssociationRefreshResponse"),
   type = "structure",
   members = {
      OAuthAuthorizationUrl = schema.new({
         id = id.from(_N, "StartAccountAssociationRefreshOutput", "OAuthAuthorizationUrl"),
         type = "string",
         name = "OAuthAuthorizationUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = "" },
         },
      }),
   },
})

M.UpdateAccountAssociationInput = schema.new({
   id = id.from(_N, "UpdateAccountAssociationRequest"),
   type = "structure",
   members = {
      AccountAssociationId = schema.new({
         id = id.from(_N, "UpdateAccountAssociationInput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateAccountAssociationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateAccountAssociationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateAccountAssociationOutput = prelude.Unit

M.SecretsManager = schema.new({
   id = id.from(_N, "SecretsManager"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "SecretsManager", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      versionId = schema.new({
         id = id.from(_N, "SecretsManager", "versionId"),
         type = "string",
         name = "versionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AuthMaterial = schema.new({
   id = id.from(_N, "AuthMaterial"),
   type = "structure",
   members = {
      SecretsManager = schema.new({
         id = id.from(_N, "AuthMaterial", "SecretsManager"),
         type = "structure",
         name = "SecretsManager",
         target_id = id.from(_N, "SecretsManager"),
         target = M.SecretsManager,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthMaterialName = schema.new({
         id = id.from(_N, "AuthMaterial", "AuthMaterialName"),
         type = "string",
         name = "AuthMaterialName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ProactiveRefreshTokenRenewal = schema.new({
   id = id.from(_N, "ProactiveRefreshTokenRenewal"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "ProactiveRefreshTokenRenewal", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
      DaysBeforeRenewal = schema.new({
         id = id.from(_N, "ProactiveRefreshTokenRenewal", "DaysBeforeRenewal"),
         type = "integer",
         name = "DaysBeforeRenewal",
         target_id = prelude.Integer.id,
      }),
   },
})

M.OAuthConfig = schema.new({
   id = id.from(_N, "OAuthConfig"),
   type = "structure",
   members = {
      authUrl = schema.new({
         id = id.from(_N, "OAuthConfig", "authUrl"),
         type = "string",
         name = "authUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tokenUrl = schema.new({
         id = id.from(_N, "OAuthConfig", "tokenUrl"),
         type = "string",
         name = "tokenUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scope = schema.new({
         id = id.from(_N, "OAuthConfig", "scope"),
         type = "string",
         name = "scope",
         target_id = prelude.String.id,
      }),
      tokenEndpointAuthenticationScheme = schema.new({
         id = id.from(_N, "OAuthConfig", "tokenEndpointAuthenticationScheme"),
         type = "string",
         name = "tokenEndpointAuthenticationScheme",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      oAuthCompleteRedirectUrl = schema.new({
         id = id.from(_N, "OAuthConfig", "oAuthCompleteRedirectUrl"),
         type = "string",
         name = "oAuthCompleteRedirectUrl",
         target_id = prelude.String.id,
      }),
      proactiveRefreshTokenRenewal = schema.new({
         id = id.from(_N, "OAuthConfig", "proactiveRefreshTokenRenewal"),
         type = "structure",
         name = "proactiveRefreshTokenRenewal",
         target_id = id.from(_N, "ProactiveRefreshTokenRenewal"),
         target = M.ProactiveRefreshTokenRenewal,
      }),
   },
})

M.AuthConfig = schema.new({
   id = id.from(_N, "AuthConfig"),
   type = "structure",
   members = {
      oAuth = schema.new({
         id = id.from(_N, "AuthConfig", "oAuth"),
         type = "structure",
         name = "oAuth",
         target_id = id.from(_N, "OAuthConfig"),
         target = M.OAuthConfig,
      }),
      GeneralAuthorization = schema.new({
         id = id.from(_N, "AuthConfig", "GeneralAuthorization"),
         type = "list",
         name = "GeneralAuthorization",
         target_id = prelude.Document.id,
         list_member = M.AuthMaterial,
      }),
   },
})

M.GeneralAuthorizationUpdate = schema.new({
   id = id.from(_N, "GeneralAuthorizationUpdate"),
   type = "structure",
   members = {
      AuthMaterialsToAdd = schema.new({
         id = id.from(_N, "GeneralAuthorizationUpdate", "AuthMaterialsToAdd"),
         type = "list",
         name = "AuthMaterialsToAdd",
         target_id = prelude.Document.id,
         list_member = M.AuthMaterial,
      }),
      AuthMaterialsToUpdate = schema.new({
         id = id.from(_N, "GeneralAuthorizationUpdate", "AuthMaterialsToUpdate"),
         type = "list",
         name = "AuthMaterialsToUpdate",
         target_id = prelude.Document.id,
         list_member = M.AuthMaterial,
      }),
   },
})

M.OAuthUpdate = schema.new({
   id = id.from(_N, "OAuthUpdate"),
   type = "structure",
   members = {
      oAuthCompleteRedirectUrl = schema.new({
         id = id.from(_N, "OAuthUpdate", "oAuthCompleteRedirectUrl"),
         type = "string",
         name = "oAuthCompleteRedirectUrl",
         target_id = prelude.String.id,
      }),
      proactiveRefreshTokenRenewal = schema.new({
         id = id.from(_N, "OAuthUpdate", "proactiveRefreshTokenRenewal"),
         type = "structure",
         name = "proactiveRefreshTokenRenewal",
         target_id = id.from(_N, "ProactiveRefreshTokenRenewal"),
         target = M.ProactiveRefreshTokenRenewal,
      }),
   },
})

M.AuthConfigUpdate = schema.new({
   id = id.from(_N, "AuthConfigUpdate"),
   type = "structure",
   members = {
      oAuthUpdate = schema.new({
         id = id.from(_N, "AuthConfigUpdate", "oAuthUpdate"),
         type = "structure",
         name = "oAuthUpdate",
         target_id = id.from(_N, "OAuthUpdate"),
         target = M.OAuthUpdate,
      }),
      GeneralAuthorizationUpdate = schema.new({
         id = id.from(_N, "AuthConfigUpdate", "GeneralAuthorizationUpdate"),
         type = "structure",
         name = "GeneralAuthorizationUpdate",
         target_id = id.from(_N, "GeneralAuthorizationUpdate"),
         target = M.GeneralAuthorizationUpdate,
      }),
   },
})

M.CapabilityAction = schema.new({
   id = id.from(_N, "CapabilityAction"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CapabilityAction", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ref = schema.new({
         id = id.from(_N, "CapabilityAction", "ref"),
         type = "string",
         name = "ref",
         target_id = prelude.String.id,
      }),
      actionTraceId = schema.new({
         id = id.from(_N, "CapabilityAction", "actionTraceId"),
         type = "string",
         name = "actionTraceId",
         target_id = prelude.String.id,
      }),
      parameters = schema.new({
         id = id.from(_N, "CapabilityAction", "parameters"),
         type = "document",
         name = "parameters",
         target_id = prelude.Document.id,
      }),
   },
})

M.CapabilityReportCapability = schema.new({
   id = id.from(_N, "CapabilityReportCapability"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "CapabilityReportCapability", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CapabilityReportCapability", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      version = schema.new({
         id = id.from(_N, "CapabilityReportCapability", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      properties = schema.new({
         id = id.from(_N, "CapabilityReportCapability", "properties"),
         type = "list",
         name = "properties",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      actions = schema.new({
         id = id.from(_N, "CapabilityReportCapability", "actions"),
         type = "list",
         name = "actions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      events = schema.new({
         id = id.from(_N, "CapabilityReportCapability", "events"),
         type = "list",
         name = "events",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CapabilityReportEndpoint = schema.new({
   id = id.from(_N, "CapabilityReportEndpoint"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "CapabilityReportEndpoint", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deviceTypes = schema.new({
         id = id.from(_N, "CapabilityReportEndpoint", "deviceTypes"),
         type = "list",
         name = "deviceTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      capabilities = schema.new({
         id = id.from(_N, "CapabilityReportEndpoint", "capabilities"),
         type = "list",
         name = "capabilities",
         target_id = prelude.Document.id,
         list_member = M.CapabilityReportCapability,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CapabilityReport = schema.new({
   id = id.from(_N, "CapabilityReport"),
   type = "structure",
   members = {
      version = schema.new({
         id = id.from(_N, "CapabilityReport", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nodeId = schema.new({
         id = id.from(_N, "CapabilityReport", "nodeId"),
         type = "string",
         name = "nodeId",
         target_id = prelude.String.id,
      }),
      endpoints = schema.new({
         id = id.from(_N, "CapabilityReport", "endpoints"),
         type = "list",
         name = "endpoints",
         target_id = prelude.Document.id,
         list_member = M.CapabilityReportEndpoint,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CapabilitySchemaItem = schema.new({
   id = id.from(_N, "CapabilitySchemaItem"),
   type = "structure",
   members = {
      Format = schema.new({
         id = id.from(_N, "CapabilitySchemaItem", "Format"),
         type = "string",
         name = "Format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CapabilityId = schema.new({
         id = id.from(_N, "CapabilitySchemaItem", "CapabilityId"),
         type = "string",
         name = "CapabilityId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExtrinsicId = schema.new({
         id = id.from(_N, "CapabilitySchemaItem", "ExtrinsicId"),
         type = "string",
         name = "ExtrinsicId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExtrinsicVersion = schema.new({
         id = id.from(_N, "CapabilitySchemaItem", "ExtrinsicVersion"),
         type = "integer",
         name = "ExtrinsicVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Schema = schema.new({
         id = id.from(_N, "CapabilitySchemaItem", "Schema"),
         type = "document",
         name = "Schema",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LambdaConfig = schema.new({
   id = id.from(_N, "LambdaConfig"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "LambdaConfig", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EndpointConfig = schema.new({
   id = id.from(_N, "EndpointConfig"),
   type = "structure",
   members = {
      lambda = schema.new({
         id = id.from(_N, "EndpointConfig", "lambda"),
         type = "structure",
         name = "lambda",
         target_id = id.from(_N, "LambdaConfig"),
         target = M.LambdaConfig,
      }),
   },
})

M.CreateCloudConnectorInput = schema.new({
   id = id.from(_N, "CreateCloudConnectorRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateCloudConnectorInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointConfig = schema.new({
         id = id.from(_N, "CreateCloudConnectorInput", "EndpointConfig"),
         type = "structure",
         name = "EndpointConfig",
         target_id = id.from(_N, "EndpointConfig"),
         target = M.EndpointConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateCloudConnectorInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EndpointType = schema.new({
         id = id.from(_N, "CreateCloudConnectorInput", "EndpointType"),
         type = "string",
         name = "EndpointType",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateCloudConnectorInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateCloudConnectorOutput = schema.new({
   id = id.from(_N, "CreateCloudConnectorResponse"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "CreateCloudConnectorOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteCloudConnectorInput = schema.new({
   id = id.from(_N, "DeleteCloudConnectorRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "DeleteCloudConnectorInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteCloudConnectorOutput = prelude.Unit

M.GetCloudConnectorInput = schema.new({
   id = id.from(_N, "GetCloudConnectorRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetCloudConnectorInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetCloudConnectorOutput = schema.new({
   id = id.from(_N, "GetCloudConnectorResponse"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "GetCloudConnectorOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointConfig = schema.new({
         id = id.from(_N, "GetCloudConnectorOutput", "EndpointConfig"),
         type = "structure",
         name = "EndpointConfig",
         target_id = id.from(_N, "EndpointConfig"),
         target = M.EndpointConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "GetCloudConnectorOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EndpointType = schema.new({
         id = id.from(_N, "GetCloudConnectorOutput", "EndpointType"),
         type = "string",
         name = "EndpointType",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "GetCloudConnectorOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "GetCloudConnectorOutput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCloudConnectorsInput = schema.new({
   id = id.from(_N, "ListCloudConnectorsRequest"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "ListCloudConnectorsInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "Type" },
         },
      }),
      LambdaArn = schema.new({
         id = id.from(_N, "ListCloudConnectorsInput", "LambdaArn"),
         type = "string",
         name = "LambdaArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "LambdaArn" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCloudConnectorsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCloudConnectorsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.ConnectorItem = schema.new({
   id = id.from(_N, "ConnectorItem"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ConnectorItem", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointConfig = schema.new({
         id = id.from(_N, "ConnectorItem", "EndpointConfig"),
         type = "structure",
         name = "EndpointConfig",
         target_id = id.from(_N, "EndpointConfig"),
         target = M.EndpointConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "ConnectorItem", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EndpointType = schema.new({
         id = id.from(_N, "ConnectorItem", "EndpointType"),
         type = "string",
         name = "EndpointType",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "ConnectorItem", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "ConnectorItem", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCloudConnectorsOutput = schema.new({
   id = id.from(_N, "ListCloudConnectorsResponse"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListCloudConnectorsOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.ConnectorItem,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCloudConnectorsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateCloudConnectorInput = schema.new({
   id = id.from(_N, "UpdateCloudConnectorRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "UpdateCloudConnectorInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateCloudConnectorInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateCloudConnectorInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateCloudConnectorOutput = prelude.Unit

M.CommandCapability = schema.new({
   id = id.from(_N, "CommandCapability"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "CommandCapability", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CommandCapability", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      version = schema.new({
         id = id.from(_N, "CommandCapability", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      actions = schema.new({
         id = id.from(_N, "CommandCapability", "actions"),
         type = "list",
         name = "actions",
         target_id = prelude.Document.id,
         list_member = M.CapabilityAction,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CommandEndpoint = schema.new({
   id = id.from(_N, "CommandEndpoint"),
   type = "structure",
   members = {
      endpointId = schema.new({
         id = id.from(_N, "CommandEndpoint", "endpointId"),
         type = "string",
         name = "endpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      capabilities = schema.new({
         id = id.from(_N, "CommandEndpoint", "capabilities"),
         type = "list",
         name = "capabilities",
         target_id = prelude.Document.id,
         list_member = M.CommandCapability,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ConfigurationError = schema.new({
   id = id.from(_N, "ConfigurationError"),
   type = "structure",
   members = {
      code = schema.new({
         id = id.from(_N, "ConfigurationError", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "ConfigurationError", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ConfigurationStatus = schema.new({
   id = id.from(_N, "ConfigurationStatus"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "ConfigurationStatus", "error"),
         type = "structure",
         name = "error",
         target_id = id.from(_N, "ConfigurationError"),
         target = M.ConfigurationError,
      }),
      state = schema.new({
         id = id.from(_N, "ConfigurationStatus", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ConnectorDestinationSummary = schema.new({
   id = id.from(_N, "ConnectorDestinationSummary"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ConnectorDestinationSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "ConnectorDestinationSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      CloudConnectorId = schema.new({
         id = id.from(_N, "ConnectorDestinationSummary", "CloudConnectorId"),
         type = "string",
         name = "CloudConnectorId",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "ConnectorDestinationSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateConnectorDestinationInput = schema.new({
   id = id.from(_N, "CreateConnectorDestinationRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateConnectorDestinationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateConnectorDestinationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      CloudConnectorId = schema.new({
         id = id.from(_N, "CreateConnectorDestinationInput", "CloudConnectorId"),
         type = "string",
         name = "CloudConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthType = schema.new({
         id = id.from(_N, "CreateConnectorDestinationInput", "AuthType"),
         type = "string",
         name = "AuthType",
         target_id = prelude.String.id,
      }),
      AuthConfig = schema.new({
         id = id.from(_N, "CreateConnectorDestinationInput", "AuthConfig"),
         type = "structure",
         name = "AuthConfig",
         target_id = id.from(_N, "AuthConfig"),
         target = M.AuthConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SecretsManager = schema.new({
         id = id.from(_N, "CreateConnectorDestinationInput", "SecretsManager"),
         type = "structure",
         name = "SecretsManager",
         target_id = id.from(_N, "SecretsManager"),
         target = M.SecretsManager,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateConnectorDestinationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateConnectorDestinationOutput = schema.new({
   id = id.from(_N, "CreateConnectorDestinationResponse"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "CreateConnectorDestinationOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteConnectorDestinationInput = schema.new({
   id = id.from(_N, "DeleteConnectorDestinationRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "DeleteConnectorDestinationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteConnectorDestinationOutput = prelude.Unit

M.GetConnectorDestinationInput = schema.new({
   id = id.from(_N, "GetConnectorDestinationRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetConnectorDestinationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetConnectorDestinationOutput = schema.new({
   id = id.from(_N, "GetConnectorDestinationResponse"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "GetConnectorDestinationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetConnectorDestinationOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      CloudConnectorId = schema.new({
         id = id.from(_N, "GetConnectorDestinationOutput", "CloudConnectorId"),
         type = "string",
         name = "CloudConnectorId",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "GetConnectorDestinationOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      AuthType = schema.new({
         id = id.from(_N, "GetConnectorDestinationOutput", "AuthType"),
         type = "string",
         name = "AuthType",
         target_id = prelude.String.id,
      }),
      AuthConfig = schema.new({
         id = id.from(_N, "GetConnectorDestinationOutput", "AuthConfig"),
         type = "structure",
         name = "AuthConfig",
         target_id = id.from(_N, "AuthConfig"),
         target = M.AuthConfig,
      }),
      SecretsManager = schema.new({
         id = id.from(_N, "GetConnectorDestinationOutput", "SecretsManager"),
         type = "structure",
         name = "SecretsManager",
         target_id = id.from(_N, "SecretsManager"),
         target = M.SecretsManager,
      }),
      OAuthCompleteRedirectUrl = schema.new({
         id = id.from(_N, "GetConnectorDestinationOutput", "OAuthCompleteRedirectUrl"),
         type = "string",
         name = "OAuthCompleteRedirectUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.ListConnectorDestinationsInput = schema.new({
   id = id.from(_N, "ListConnectorDestinationsRequest"),
   type = "structure",
   members = {
      CloudConnectorId = schema.new({
         id = id.from(_N, "ListConnectorDestinationsInput", "CloudConnectorId"),
         type = "string",
         name = "CloudConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "CloudConnectorId" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListConnectorDestinationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListConnectorDestinationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.ListConnectorDestinationsOutput = schema.new({
   id = id.from(_N, "ListConnectorDestinationsResponse"),
   type = "structure",
   members = {
      ConnectorDestinationList = schema.new({
         id = id.from(_N, "ListConnectorDestinationsOutput", "ConnectorDestinationList"),
         type = "list",
         name = "ConnectorDestinationList",
         target_id = prelude.Document.id,
         list_member = M.ConnectorDestinationSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListConnectorDestinationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateConnectorDestinationInput = schema.new({
   id = id.from(_N, "UpdateConnectorDestinationRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "UpdateConnectorDestinationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateConnectorDestinationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateConnectorDestinationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      AuthType = schema.new({
         id = id.from(_N, "UpdateConnectorDestinationInput", "AuthType"),
         type = "string",
         name = "AuthType",
         target_id = prelude.String.id,
      }),
      AuthConfig = schema.new({
         id = id.from(_N, "UpdateConnectorDestinationInput", "AuthConfig"),
         type = "structure",
         name = "AuthConfig",
         target_id = id.from(_N, "AuthConfigUpdate"),
         target = M.AuthConfigUpdate,
      }),
      SecretsManager = schema.new({
         id = id.from(_N, "UpdateConnectorDestinationInput", "SecretsManager"),
         type = "structure",
         name = "SecretsManager",
         target_id = id.from(_N, "SecretsManager"),
         target = M.SecretsManager,
      }),
   },
})

M.UpdateConnectorDestinationOutput = prelude.Unit

M.CreateCredentialLockerInput = schema.new({
   id = id.from(_N, "CreateCredentialLockerRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateCredentialLockerInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateCredentialLockerInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateCredentialLockerInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateCredentialLockerOutput = schema.new({
   id = id.from(_N, "CreateCredentialLockerResponse"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "CreateCredentialLockerOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "CreateCredentialLockerOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "CreateCredentialLockerOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
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

M.CreateDestinationInput = schema.new({
   id = id.from(_N, "CreateDestinationRequest"),
   type = "structure",
   members = {
      DeliveryDestinationArn = schema.new({
         id = id.from(_N, "CreateDestinationInput", "DeliveryDestinationArn"),
         type = "string",
         name = "DeliveryDestinationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeliveryDestinationType = schema.new({
         id = id.from(_N, "CreateDestinationInput", "DeliveryDestinationType"),
         type = "string",
         name = "DeliveryDestinationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateDestinationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "CreateDestinationInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateDestinationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateDestinationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateDestinationInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateDestinationOutput = schema.new({
   id = id.from(_N, "CreateDestinationResponse"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateDestinationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateEventLogConfigurationInput = schema.new({
   id = id.from(_N, "CreateEventLogConfigurationRequest"),
   type = "structure",
   members = {
      ResourceType = schema.new({
         id = id.from(_N, "CreateEventLogConfigurationInput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceId = schema.new({
         id = id.from(_N, "CreateEventLogConfigurationInput", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
      }),
      EventLogLevel = schema.new({
         id = id.from(_N, "CreateEventLogConfigurationInput", "EventLogLevel"),
         type = "string",
         name = "EventLogLevel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateEventLogConfigurationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateEventLogConfigurationOutput = schema.new({
   id = id.from(_N, "CreateEventLogConfigurationResponse"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "CreateEventLogConfigurationOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
   },
})

M.WiFiSimpleSetupConfiguration = schema.new({
   id = id.from(_N, "WiFiSimpleSetupConfiguration"),
   type = "structure",
   members = {
      EnableAsProvisioner = schema.new({
         id = id.from(_N, "WiFiSimpleSetupConfiguration", "EnableAsProvisioner"),
         type = "boolean",
         name = "EnableAsProvisioner",
         target_id = prelude.Boolean.id,
      }),
      EnableAsProvisionee = schema.new({
         id = id.from(_N, "WiFiSimpleSetupConfiguration", "EnableAsProvisionee"),
         type = "boolean",
         name = "EnableAsProvisionee",
         target_id = prelude.Boolean.id,
      }),
      TimeoutInMinutes = schema.new({
         id = id.from(_N, "WiFiSimpleSetupConfiguration", "TimeoutInMinutes"),
         type = "integer",
         name = "TimeoutInMinutes",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateManagedThingInput = schema.new({
   id = id.from(_N, "CreateManagedThingRequest"),
   type = "structure",
   members = {
      Role = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "Role"),
         type = "string",
         name = "Role",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Owner = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "Owner"),
         type = "string",
         name = "Owner",
         target_id = prelude.String.id,
      }),
      CredentialLockerId = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "CredentialLockerId"),
         type = "string",
         name = "CredentialLockerId",
         target_id = prelude.String.id,
      }),
      AuthenticationMaterial = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "AuthenticationMaterial"),
         type = "string",
         name = "AuthenticationMaterial",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthenticationMaterialType = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "AuthenticationMaterialType"),
         type = "string",
         name = "AuthenticationMaterialType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WiFiSimpleSetupConfiguration = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "WiFiSimpleSetupConfiguration"),
         type = "structure",
         name = "WiFiSimpleSetupConfiguration",
         target_id = id.from(_N, "WiFiSimpleSetupConfiguration"),
         target = M.WiFiSimpleSetupConfiguration,
      }),
      SerialNumber = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "SerialNumber"),
         type = "string",
         name = "SerialNumber",
         target_id = prelude.String.id,
      }),
      Brand = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "Brand"),
         type = "string",
         name = "Brand",
         target_id = prelude.String.id,
      }),
      Model = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "Model"),
         type = "string",
         name = "Model",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      CapabilityReport = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "CapabilityReport"),
         type = "structure",
         name = "CapabilityReport",
         target_id = id.from(_N, "CapabilityReport"),
         target = M.CapabilityReport,
      }),
      CapabilitySchemas = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "CapabilitySchemas"),
         type = "list",
         name = "CapabilitySchemas",
         target_id = prelude.Document.id,
         list_member = M.CapabilitySchemaItem,
      }),
      Capabilities = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "Capabilities"),
         type = "string",
         name = "Capabilities",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Classification = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "Classification"),
         type = "string",
         name = "Classification",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      MetaData = schema.new({
         id = id.from(_N, "CreateManagedThingInput", "MetaData"),
         type = "map",
         name = "MetaData",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateManagedThingOutput = schema.new({
   id = id.from(_N, "CreateManagedThingResponse"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "CreateManagedThingOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "CreateManagedThingOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "CreateManagedThingOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateNotificationConfigurationInput = schema.new({
   id = id.from(_N, "CreateNotificationConfigurationRequest"),
   type = "structure",
   members = {
      EventType = schema.new({
         id = id.from(_N, "CreateNotificationConfigurationInput", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationName = schema.new({
         id = id.from(_N, "CreateNotificationConfigurationInput", "DestinationName"),
         type = "string",
         name = "DestinationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateNotificationConfigurationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateNotificationConfigurationInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateNotificationConfigurationOutput = schema.new({
   id = id.from(_N, "CreateNotificationConfigurationResponse"),
   type = "structure",
   members = {
      EventType = schema.new({
         id = id.from(_N, "CreateNotificationConfigurationOutput", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
      }),
   },
})

M.ScheduleMaintenanceWindow = schema.new({
   id = id.from(_N, "ScheduleMaintenanceWindow"),
   type = "structure",
   members = {
      DurationInMinutes = schema.new({
         id = id.from(_N, "ScheduleMaintenanceWindow", "DurationInMinutes"),
         type = "integer",
         name = "DurationInMinutes",
         target_id = prelude.Integer.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "ScheduleMaintenanceWindow", "StartTime"),
         type = "string",
         name = "StartTime",
         target_id = prelude.String.id,
      }),
   },
})

M.OtaTaskSchedulingConfig = schema.new({
   id = id.from(_N, "OtaTaskSchedulingConfig"),
   type = "structure",
   members = {
      EndBehavior = schema.new({
         id = id.from(_N, "OtaTaskSchedulingConfig", "EndBehavior"),
         type = "string",
         name = "EndBehavior",
         target_id = prelude.String.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "OtaTaskSchedulingConfig", "EndTime"),
         type = "string",
         name = "EndTime",
         target_id = prelude.String.id,
      }),
      MaintenanceWindows = schema.new({
         id = id.from(_N, "OtaTaskSchedulingConfig", "MaintenanceWindows"),
         type = "list",
         name = "MaintenanceWindows",
         target_id = prelude.Document.id,
         list_member = M.ScheduleMaintenanceWindow,
      }),
      StartTime = schema.new({
         id = id.from(_N, "OtaTaskSchedulingConfig", "StartTime"),
         type = "string",
         name = "StartTime",
         target_id = prelude.String.id,
      }),
   },
})

M.RetryConfigCriteria = schema.new({
   id = id.from(_N, "RetryConfigCriteria"),
   type = "structure",
   members = {
      FailureType = schema.new({
         id = id.from(_N, "RetryConfigCriteria", "FailureType"),
         type = "string",
         name = "FailureType",
         target_id = prelude.String.id,
      }),
      MinNumberOfRetries = schema.new({
         id = id.from(_N, "RetryConfigCriteria", "MinNumberOfRetries"),
         type = "integer",
         name = "MinNumberOfRetries",
         target_id = prelude.Integer.id,
      }),
   },
})

M.OtaTaskExecutionRetryConfig = schema.new({
   id = id.from(_N, "OtaTaskExecutionRetryConfig"),
   type = "structure",
   members = {
      RetryConfigCriteria = schema.new({
         id = id.from(_N, "OtaTaskExecutionRetryConfig", "RetryConfigCriteria"),
         type = "list",
         name = "RetryConfigCriteria",
         target_id = prelude.Document.id,
         list_member = M.RetryConfigCriteria,
      }),
   },
})

M.CreateOtaTaskInput = schema.new({
   id = id.from(_N, "CreateOtaTaskRequest"),
   type = "structure",
   members = {
      Description = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      S3Url = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "S3Url"),
         type = "string",
         name = "S3Url",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Protocol = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
      Target = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "Target"),
         type = "list",
         name = "Target",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      TaskConfigurationId = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "TaskConfigurationId"),
         type = "string",
         name = "TaskConfigurationId",
         target_id = prelude.String.id,
      }),
      OtaMechanism = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "OtaMechanism"),
         type = "string",
         name = "OtaMechanism",
         target_id = prelude.String.id,
      }),
      OtaType = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "OtaType"),
         type = "string",
         name = "OtaType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OtaTargetQueryString = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "OtaTargetQueryString"),
         type = "string",
         name = "OtaTargetQueryString",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      OtaSchedulingConfig = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "OtaSchedulingConfig"),
         type = "structure",
         name = "OtaSchedulingConfig",
         target_id = id.from(_N, "OtaTaskSchedulingConfig"),
         target = M.OtaTaskSchedulingConfig,
      }),
      OtaTaskExecutionRetryConfig = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "OtaTaskExecutionRetryConfig"),
         type = "structure",
         name = "OtaTaskExecutionRetryConfig",
         target_id = id.from(_N, "OtaTaskExecutionRetryConfig"),
         target = M.OtaTaskExecutionRetryConfig,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateOtaTaskInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateOtaTaskOutput = schema.new({
   id = id.from(_N, "CreateOtaTaskResponse"),
   type = "structure",
   members = {
      TaskId = schema.new({
         id = id.from(_N, "CreateOtaTaskOutput", "TaskId"),
         type = "string",
         name = "TaskId",
         target_id = prelude.String.id,
      }),
      TaskArn = schema.new({
         id = id.from(_N, "CreateOtaTaskOutput", "TaskArn"),
         type = "string",
         name = "TaskArn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateOtaTaskOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
   },
})

M.OtaTaskAbortConfig = schema.new({
   id = id.from(_N, "OtaTaskAbortConfig"),
   type = "structure",
   members = {
      AbortConfigCriteriaList = schema.new({
         id = id.from(_N, "OtaTaskAbortConfig", "AbortConfigCriteriaList"),
         type = "list",
         name = "AbortConfigCriteriaList",
         target_id = prelude.Document.id,
         list_member = M.AbortConfigCriteria,
      }),
   },
})

M.RolloutRateIncreaseCriteria = schema.new({
   id = id.from(_N, "RolloutRateIncreaseCriteria"),
   type = "structure",
   members = {
      numberOfNotifiedThings = schema.new({
         id = id.from(_N, "RolloutRateIncreaseCriteria", "numberOfNotifiedThings"),
         type = "integer",
         name = "numberOfNotifiedThings",
         target_id = prelude.Integer.id,
      }),
      numberOfSucceededThings = schema.new({
         id = id.from(_N, "RolloutRateIncreaseCriteria", "numberOfSucceededThings"),
         type = "integer",
         name = "numberOfSucceededThings",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ExponentialRolloutRate = schema.new({
   id = id.from(_N, "ExponentialRolloutRate"),
   type = "structure",
   members = {
      BaseRatePerMinute = schema.new({
         id = id.from(_N, "ExponentialRolloutRate", "BaseRatePerMinute"),
         type = "integer",
         name = "BaseRatePerMinute",
         target_id = prelude.Integer.id,
      }),
      IncrementFactor = schema.new({
         id = id.from(_N, "ExponentialRolloutRate", "IncrementFactor"),
         type = "double",
         name = "IncrementFactor",
         target_id = prelude.Double.id,
      }),
      RateIncreaseCriteria = schema.new({
         id = id.from(_N, "ExponentialRolloutRate", "RateIncreaseCriteria"),
         type = "structure",
         name = "RateIncreaseCriteria",
         target_id = id.from(_N, "RolloutRateIncreaseCriteria"),
         target = M.RolloutRateIncreaseCriteria,
      }),
   },
})

M.OtaTaskExecutionRolloutConfig = schema.new({
   id = id.from(_N, "OtaTaskExecutionRolloutConfig"),
   type = "structure",
   members = {
      ExponentialRolloutRate = schema.new({
         id = id.from(_N, "OtaTaskExecutionRolloutConfig", "ExponentialRolloutRate"),
         type = "structure",
         name = "ExponentialRolloutRate",
         target_id = id.from(_N, "ExponentialRolloutRate"),
         target = M.ExponentialRolloutRate,
      }),
      MaximumPerMinute = schema.new({
         id = id.from(_N, "OtaTaskExecutionRolloutConfig", "MaximumPerMinute"),
         type = "integer",
         name = "MaximumPerMinute",
         target_id = prelude.Integer.id,
      }),
   },
})

M.OtaTaskTimeoutConfig = schema.new({
   id = id.from(_N, "OtaTaskTimeoutConfig"),
   type = "structure",
   members = {
      InProgressTimeoutInMinutes = schema.new({
         id = id.from(_N, "OtaTaskTimeoutConfig", "InProgressTimeoutInMinutes"),
         type = "long",
         name = "InProgressTimeoutInMinutes",
         target_id = prelude.Long.id,
      }),
   },
})

M.PushConfig = schema.new({
   id = id.from(_N, "PushConfig"),
   type = "structure",
   members = {
      AbortConfig = schema.new({
         id = id.from(_N, "PushConfig", "AbortConfig"),
         type = "structure",
         name = "AbortConfig",
         target_id = id.from(_N, "OtaTaskAbortConfig"),
         target = M.OtaTaskAbortConfig,
      }),
      RolloutConfig = schema.new({
         id = id.from(_N, "PushConfig", "RolloutConfig"),
         type = "structure",
         name = "RolloutConfig",
         target_id = id.from(_N, "OtaTaskExecutionRolloutConfig"),
         target = M.OtaTaskExecutionRolloutConfig,
      }),
      TimeoutConfig = schema.new({
         id = id.from(_N, "PushConfig", "TimeoutConfig"),
         type = "structure",
         name = "TimeoutConfig",
         target_id = id.from(_N, "OtaTaskTimeoutConfig"),
         target = M.OtaTaskTimeoutConfig,
      }),
   },
})

M.CreateOtaTaskConfigurationInput = schema.new({
   id = id.from(_N, "CreateOtaTaskConfigurationRequest"),
   type = "structure",
   members = {
      Description = schema.new({
         id = id.from(_N, "CreateOtaTaskConfigurationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "CreateOtaTaskConfigurationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      PushConfig = schema.new({
         id = id.from(_N, "CreateOtaTaskConfigurationInput", "PushConfig"),
         type = "structure",
         name = "PushConfig",
         target_id = id.from(_N, "PushConfig"),
         target = M.PushConfig,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateOtaTaskConfigurationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateOtaTaskConfigurationOutput = schema.new({
   id = id.from(_N, "CreateOtaTaskConfigurationResponse"),
   type = "structure",
   members = {
      TaskConfigurationId = schema.new({
         id = id.from(_N, "CreateOtaTaskConfigurationOutput", "TaskConfigurationId"),
         type = "string",
         name = "TaskConfigurationId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateProvisioningProfileInput = schema.new({
   id = id.from(_N, "CreateProvisioningProfileRequest"),
   type = "structure",
   members = {
      ProvisioningType = schema.new({
         id = id.from(_N, "CreateProvisioningProfileInput", "ProvisioningType"),
         type = "string",
         name = "ProvisioningType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CaCertificate = schema.new({
         id = id.from(_N, "CreateProvisioningProfileInput", "CaCertificate"),
         type = "string",
         name = "CaCertificate",
         target_id = prelude.String.id,
      }),
      ClaimCertificate = schema.new({
         id = id.from(_N, "CreateProvisioningProfileInput", "ClaimCertificate"),
         type = "string",
         name = "ClaimCertificate",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "CreateProvisioningProfileInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateProvisioningProfileInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateProvisioningProfileInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateProvisioningProfileOutput = schema.new({
   id = id.from(_N, "CreateProvisioningProfileResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "CreateProvisioningProfileOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "CreateProvisioningProfileOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ProvisioningType = schema.new({
         id = id.from(_N, "CreateProvisioningProfileOutput", "ProvisioningType"),
         type = "string",
         name = "ProvisioningType",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "CreateProvisioningProfileOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "CreateProvisioningProfileOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      ClaimCertificate = schema.new({
         id = id.from(_N, "CreateProvisioningProfileOutput", "ClaimCertificate"),
         type = "string",
         name = "ClaimCertificate",
         target_id = prelude.String.id,
      }),
      ClaimCertificatePrivateKey = schema.new({
         id = id.from(_N, "CreateProvisioningProfileOutput", "ClaimCertificatePrivateKey"),
         type = "string",
         name = "ClaimCertificatePrivateKey",
         target_id = prelude.String.id,
      }),
   },
})

M.CredentialLockerSummary = schema.new({
   id = id.from(_N, "CredentialLockerSummary"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "CredentialLockerSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "CredentialLockerSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "CredentialLockerSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "CredentialLockerSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DeleteCredentialLockerInput = schema.new({
   id = id.from(_N, "DeleteCredentialLockerRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "DeleteCredentialLockerInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteCredentialLockerOutput = prelude.Unit

M.GetCredentialLockerInput = schema.new({
   id = id.from(_N, "GetCredentialLockerRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetCredentialLockerInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetCredentialLockerOutput = schema.new({
   id = id.from(_N, "GetCredentialLockerResponse"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "GetCredentialLockerOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "GetCredentialLockerOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "GetCredentialLockerOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetCredentialLockerOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetCredentialLockerOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListCredentialLockersInput = schema.new({
   id = id.from(_N, "ListCredentialLockersRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListCredentialLockersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCredentialLockersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.ListCredentialLockersOutput = schema.new({
   id = id.from(_N, "ListCredentialLockersResponse"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListCredentialLockersOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.CredentialLockerSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCredentialLockersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteDestinationInput = schema.new({
   id = id.from(_N, "DeleteDestinationRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteDestinationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteDestinationOutput = prelude.Unit

M.DeleteEventLogConfigurationInput = schema.new({
   id = id.from(_N, "DeleteEventLogConfigurationRequest"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "DeleteEventLogConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteEventLogConfigurationOutput = prelude.Unit

M.DeleteManagedThingInput = schema.new({
   id = id.from(_N, "DeleteManagedThingRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "DeleteManagedThingInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Force = schema.new({
         id = id.from(_N, "DeleteManagedThingInput", "Force"),
         type = "boolean",
         name = "Force",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "Force" },
         },
      }),
   },
})

M.DeleteManagedThingOutput = prelude.Unit

M.DeleteNotificationConfigurationInput = schema.new({
   id = id.from(_N, "DeleteNotificationConfigurationRequest"),
   type = "structure",
   members = {
      EventType = schema.new({
         id = id.from(_N, "DeleteNotificationConfigurationInput", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteNotificationConfigurationOutput = prelude.Unit

M.DeleteOtaTaskInput = schema.new({
   id = id.from(_N, "DeleteOtaTaskRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "DeleteOtaTaskInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteOtaTaskOutput = prelude.Unit

M.LimitExceededException = schema.new({
   id = id.from(_N, "LimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "LimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteOtaTaskConfigurationInput = schema.new({
   id = id.from(_N, "DeleteOtaTaskConfigurationRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "DeleteOtaTaskConfigurationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteOtaTaskConfigurationOutput = prelude.Unit

M.DeleteProvisioningProfileInput = schema.new({
   id = id.from(_N, "DeleteProvisioningProfileRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "DeleteProvisioningProfileInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteProvisioningProfileOutput = prelude.Unit

M.DeregisterAccountAssociationInput = schema.new({
   id = id.from(_N, "DeregisterAccountAssociationRequest"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "DeregisterAccountAssociationInput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccountAssociationId = schema.new({
         id = id.from(_N, "DeregisterAccountAssociationInput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeregisterAccountAssociationOutput = prelude.Unit

M.DestinationSummary = schema.new({
   id = id.from(_N, "DestinationSummary"),
   type = "structure",
   members = {
      Description = schema.new({
         id = id.from(_N, "DestinationSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DeliveryDestinationArn = schema.new({
         id = id.from(_N, "DestinationSummary", "DeliveryDestinationArn"),
         type = "string",
         name = "DeliveryDestinationArn",
         target_id = prelude.String.id,
      }),
      DeliveryDestinationType = schema.new({
         id = id.from(_N, "DestinationSummary", "DeliveryDestinationType"),
         type = "string",
         name = "DeliveryDestinationType",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "DestinationSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "DestinationSummary", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetDestinationInput = schema.new({
   id = id.from(_N, "GetDestinationRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "GetDestinationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetDestinationOutput = schema.new({
   id = id.from(_N, "GetDestinationResponse"),
   type = "structure",
   members = {
      Description = schema.new({
         id = id.from(_N, "GetDestinationOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DeliveryDestinationArn = schema.new({
         id = id.from(_N, "GetDestinationOutput", "DeliveryDestinationArn"),
         type = "string",
         name = "DeliveryDestinationArn",
         target_id = prelude.String.id,
      }),
      DeliveryDestinationType = schema.new({
         id = id.from(_N, "GetDestinationOutput", "DeliveryDestinationType"),
         type = "string",
         name = "DeliveryDestinationType",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "GetDestinationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "GetDestinationOutput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetDestinationOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "GetDestinationOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetDestinationOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListDestinationsInput = schema.new({
   id = id.from(_N, "ListDestinationsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListDestinationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListDestinationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.ListDestinationsOutput = schema.new({
   id = id.from(_N, "ListDestinationsResponse"),
   type = "structure",
   members = {
      DestinationList = schema.new({
         id = id.from(_N, "ListDestinationsOutput", "DestinationList"),
         type = "list",
         name = "DestinationList",
         target_id = prelude.Document.id,
         list_member = M.DestinationSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDestinationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDestinationInput = schema.new({
   id = id.from(_N, "UpdateDestinationRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "UpdateDestinationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      DeliveryDestinationArn = schema.new({
         id = id.from(_N, "UpdateDestinationInput", "DeliveryDestinationArn"),
         type = "string",
         name = "DeliveryDestinationArn",
         target_id = prelude.String.id,
      }),
      DeliveryDestinationType = schema.new({
         id = id.from(_N, "UpdateDestinationInput", "DeliveryDestinationType"),
         type = "string",
         name = "DeliveryDestinationType",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "UpdateDestinationInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateDestinationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDestinationOutput = prelude.Unit

M.MatterCapabilityReportAttribute = schema.new({
   id = id.from(_N, "MatterCapabilityReportAttribute"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "MatterCapabilityReportAttribute", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "MatterCapabilityReportAttribute", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "MatterCapabilityReportAttribute", "value"),
         type = "document",
         name = "value",
         target_id = prelude.Document.id,
      }),
   },
})

M.MatterCapabilityReportCluster = schema.new({
   id = id.from(_N, "MatterCapabilityReportCluster"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "MatterCapabilityReportCluster", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      revision = schema.new({
         id = id.from(_N, "MatterCapabilityReportCluster", "revision"),
         type = "integer",
         name = "revision",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      publicId = schema.new({
         id = id.from(_N, "MatterCapabilityReportCluster", "publicId"),
         type = "string",
         name = "publicId",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "MatterCapabilityReportCluster", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      specVersion = schema.new({
         id = id.from(_N, "MatterCapabilityReportCluster", "specVersion"),
         type = "string",
         name = "specVersion",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "MatterCapabilityReportCluster", "attributes"),
         type = "list",
         name = "attributes",
         target_id = prelude.Document.id,
         list_member = M.MatterCapabilityReportAttribute,
      }),
      commands = schema.new({
         id = id.from(_N, "MatterCapabilityReportCluster", "commands"),
         type = "list",
         name = "commands",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      events = schema.new({
         id = id.from(_N, "MatterCapabilityReportCluster", "events"),
         type = "list",
         name = "events",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      featureMap = schema.new({
         id = id.from(_N, "MatterCapabilityReportCluster", "featureMap"),
         type = "long",
         name = "featureMap",
         target_id = prelude.Long.id,
      }),
      generatedCommands = schema.new({
         id = id.from(_N, "MatterCapabilityReportCluster", "generatedCommands"),
         type = "list",
         name = "generatedCommands",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      fabricIndex = schema.new({
         id = id.from(_N, "MatterCapabilityReportCluster", "fabricIndex"),
         type = "integer",
         name = "fabricIndex",
         target_id = prelude.Integer.id,
      }),
   },
})

M.MatterCapabilityReportEndpoint = schema.new({
   id = id.from(_N, "MatterCapabilityReportEndpoint"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "MatterCapabilityReportEndpoint", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deviceTypes = schema.new({
         id = id.from(_N, "MatterCapabilityReportEndpoint", "deviceTypes"),
         type = "list",
         name = "deviceTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clusters = schema.new({
         id = id.from(_N, "MatterCapabilityReportEndpoint", "clusters"),
         type = "list",
         name = "clusters",
         target_id = prelude.Document.id,
         list_member = M.MatterCapabilityReportCluster,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parts = schema.new({
         id = id.from(_N, "MatterCapabilityReportEndpoint", "parts"),
         type = "list",
         name = "parts",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      semanticTags = schema.new({
         id = id.from(_N, "MatterCapabilityReportEndpoint", "semanticTags"),
         type = "list",
         name = "semanticTags",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      clientClusters = schema.new({
         id = id.from(_N, "MatterCapabilityReportEndpoint", "clientClusters"),
         type = "list",
         name = "clientClusters",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.MatterCapabilityReport = schema.new({
   id = id.from(_N, "MatterCapabilityReport"),
   type = "structure",
   members = {
      version = schema.new({
         id = id.from(_N, "MatterCapabilityReport", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nodeId = schema.new({
         id = id.from(_N, "MatterCapabilityReport", "nodeId"),
         type = "string",
         name = "nodeId",
         target_id = prelude.String.id,
      }),
      endpoints = schema.new({
         id = id.from(_N, "MatterCapabilityReport", "endpoints"),
         type = "list",
         name = "endpoints",
         target_id = prelude.Document.id,
         list_member = M.MatterCapabilityReportEndpoint,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Device = schema.new({
   id = id.from(_N, "Device"),
   type = "structure",
   members = {
      ConnectorDeviceId = schema.new({
         id = id.from(_N, "Device", "ConnectorDeviceId"),
         type = "string",
         name = "ConnectorDeviceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectorDeviceName = schema.new({
         id = id.from(_N, "Device", "ConnectorDeviceName"),
         type = "string",
         name = "ConnectorDeviceName",
         target_id = prelude.String.id,
      }),
      CapabilityReport = schema.new({
         id = id.from(_N, "Device", "CapabilityReport"),
         type = "structure",
         name = "CapabilityReport",
         target_id = id.from(_N, "MatterCapabilityReport"),
         target = M.MatterCapabilityReport,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CapabilitySchemas = schema.new({
         id = id.from(_N, "Device", "CapabilitySchemas"),
         type = "list",
         name = "CapabilitySchemas",
         target_id = prelude.Document.id,
         list_member = M.CapabilitySchemaItem,
      }),
      DeviceMetadata = schema.new({
         id = id.from(_N, "Device", "DeviceMetadata"),
         type = "document",
         name = "DeviceMetadata",
         target_id = prelude.Document.id,
      }),
   },
})

M.DeviceDiscoverySummary = schema.new({
   id = id.from(_N, "DeviceDiscoverySummary"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "DeviceDiscoverySummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      DiscoveryType = schema.new({
         id = id.from(_N, "DeviceDiscoverySummary", "DiscoveryType"),
         type = "string",
         name = "DiscoveryType",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DeviceDiscoverySummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.GetDeviceDiscoveryInput = schema.new({
   id = id.from(_N, "GetDeviceDiscoveryRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetDeviceDiscoveryInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetDeviceDiscoveryOutput = schema.new({
   id = id.from(_N, "GetDeviceDiscoveryResponse"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "GetDeviceDiscoveryOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "GetDeviceDiscoveryOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DiscoveryType = schema.new({
         id = id.from(_N, "GetDeviceDiscoveryOutput", "DiscoveryType"),
         type = "string",
         name = "DiscoveryType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GetDeviceDiscoveryOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartedAt = schema.new({
         id = id.from(_N, "GetDeviceDiscoveryOutput", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ControllerId = schema.new({
         id = id.from(_N, "GetDeviceDiscoveryOutput", "ControllerId"),
         type = "string",
         name = "ControllerId",
         target_id = prelude.String.id,
      }),
      ConnectorAssociationId = schema.new({
         id = id.from(_N, "GetDeviceDiscoveryOutput", "ConnectorAssociationId"),
         type = "string",
         name = "ConnectorAssociationId",
         target_id = prelude.String.id,
      }),
      AccountAssociationId = schema.new({
         id = id.from(_N, "GetDeviceDiscoveryOutput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
      }),
      FinishedAt = schema.new({
         id = id.from(_N, "GetDeviceDiscoveryOutput", "FinishedAt"),
         type = "timestamp",
         name = "FinishedAt",
         target_id = prelude.Timestamp.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetDeviceDiscoveryOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListDeviceDiscoveriesInput = schema.new({
   id = id.from(_N, "ListDeviceDiscoveriesRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListDeviceDiscoveriesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListDeviceDiscoveriesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      TypeFilter = schema.new({
         id = id.from(_N, "ListDeviceDiscoveriesInput", "TypeFilter"),
         type = "string",
         name = "TypeFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "TypeFilter" },
         },
      }),
      StatusFilter = schema.new({
         id = id.from(_N, "ListDeviceDiscoveriesInput", "StatusFilter"),
         type = "string",
         name = "StatusFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "StatusFilter" },
         },
      }),
   },
})

M.ListDeviceDiscoveriesOutput = schema.new({
   id = id.from(_N, "ListDeviceDiscoveriesResponse"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListDeviceDiscoveriesOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.DeviceDiscoverySummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDeviceDiscoveriesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDiscoveredDevicesInput = schema.new({
   id = id.from(_N, "ListDiscoveredDevicesRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "ListDiscoveredDevicesInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDiscoveredDevicesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListDiscoveredDevicesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.DiscoveredDeviceSummary = schema.new({
   id = id.from(_N, "DiscoveredDeviceSummary"),
   type = "structure",
   members = {
      ConnectorDeviceId = schema.new({
         id = id.from(_N, "DiscoveredDeviceSummary", "ConnectorDeviceId"),
         type = "string",
         name = "ConnectorDeviceId",
         target_id = prelude.String.id,
      }),
      ConnectorDeviceName = schema.new({
         id = id.from(_N, "DiscoveredDeviceSummary", "ConnectorDeviceName"),
         type = "string",
         name = "ConnectorDeviceName",
         target_id = prelude.String.id,
      }),
      DeviceTypes = schema.new({
         id = id.from(_N, "DiscoveredDeviceSummary", "DeviceTypes"),
         type = "list",
         name = "DeviceTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ManagedThingId = schema.new({
         id = id.from(_N, "DiscoveredDeviceSummary", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
      }),
      Modification = schema.new({
         id = id.from(_N, "DiscoveredDeviceSummary", "Modification"),
         type = "string",
         name = "Modification",
         target_id = prelude.String.id,
      }),
      DiscoveredAt = schema.new({
         id = id.from(_N, "DiscoveredDeviceSummary", "DiscoveredAt"),
         type = "timestamp",
         name = "DiscoveredAt",
         target_id = prelude.Timestamp.id,
      }),
      Brand = schema.new({
         id = id.from(_N, "DiscoveredDeviceSummary", "Brand"),
         type = "string",
         name = "Brand",
         target_id = prelude.String.id,
      }),
      Model = schema.new({
         id = id.from(_N, "DiscoveredDeviceSummary", "Model"),
         type = "string",
         name = "Model",
         target_id = prelude.String.id,
      }),
      AuthenticationMaterial = schema.new({
         id = id.from(_N, "DiscoveredDeviceSummary", "AuthenticationMaterial"),
         type = "string",
         name = "AuthenticationMaterial",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDiscoveredDevicesOutput = schema.new({
   id = id.from(_N, "ListDiscoveredDevicesResponse"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListDiscoveredDevicesOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.DiscoveredDeviceSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDiscoveredDevicesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartDeviceDiscoveryInput = schema.new({
   id = id.from(_N, "StartDeviceDiscoveryRequest"),
   type = "structure",
   members = {
      DiscoveryType = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "DiscoveryType"),
         type = "string",
         name = "DiscoveryType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CustomProtocolDetail = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "CustomProtocolDetail"),
         type = "map",
         name = "CustomProtocolDetail",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ControllerIdentifier = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "ControllerIdentifier"),
         type = "string",
         name = "ControllerIdentifier",
         target_id = prelude.String.id,
      }),
      ConnectorAssociationIdentifier = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "ConnectorAssociationIdentifier"),
         type = "string",
         name = "ConnectorAssociationIdentifier",
         target_id = prelude.String.id,
      }),
      AccountAssociationId = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
      }),
      AuthenticationMaterial = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "AuthenticationMaterial"),
         type = "string",
         name = "AuthenticationMaterial",
         target_id = prelude.String.id,
      }),
      AuthenticationMaterialType = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "AuthenticationMaterialType"),
         type = "string",
         name = "AuthenticationMaterialType",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ConnectorDeviceIdList = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "ConnectorDeviceIdList"),
         type = "list",
         name = "ConnectorDeviceIdList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Protocol = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
      EndDeviceIdentifier = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryInput", "EndDeviceIdentifier"),
         type = "string",
         name = "EndDeviceIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.StartDeviceDiscoveryOutput = schema.new({
   id = id.from(_N, "StartDeviceDiscoveryResponse"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      StartedAt = schema.new({
         id = id.from(_N, "StartDeviceDiscoveryOutput", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.EventLogConfigurationSummary = schema.new({
   id = id.from(_N, "EventLogConfigurationSummary"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "EventLogConfigurationSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "EventLogConfigurationSummary", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      ResourceId = schema.new({
         id = id.from(_N, "EventLogConfigurationSummary", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
      }),
      EventLogLevel = schema.new({
         id = id.from(_N, "EventLogConfigurationSummary", "EventLogLevel"),
         type = "string",
         name = "EventLogLevel",
         target_id = prelude.String.id,
      }),
   },
})

M.GetEventLogConfigurationInput = schema.new({
   id = id.from(_N, "GetEventLogConfigurationRequest"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "GetEventLogConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetEventLogConfigurationOutput = schema.new({
   id = id.from(_N, "GetEventLogConfigurationResponse"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "GetEventLogConfigurationOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "GetEventLogConfigurationOutput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      ResourceId = schema.new({
         id = id.from(_N, "GetEventLogConfigurationOutput", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
      }),
      EventLogLevel = schema.new({
         id = id.from(_N, "GetEventLogConfigurationOutput", "EventLogLevel"),
         type = "string",
         name = "EventLogLevel",
         target_id = prelude.String.id,
      }),
   },
})

M.ListEventLogConfigurationsInput = schema.new({
   id = id.from(_N, "ListEventLogConfigurationsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListEventLogConfigurationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListEventLogConfigurationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.ListEventLogConfigurationsOutput = schema.new({
   id = id.from(_N, "ListEventLogConfigurationsResponse"),
   type = "structure",
   members = {
      EventLogConfigurationList = schema.new({
         id = id.from(_N, "ListEventLogConfigurationsOutput", "EventLogConfigurationList"),
         type = "list",
         name = "EventLogConfigurationList",
         target_id = prelude.Document.id,
         list_member = M.EventLogConfigurationSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEventLogConfigurationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateEventLogConfigurationInput = schema.new({
   id = id.from(_N, "UpdateEventLogConfigurationRequest"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "UpdateEventLogConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EventLogLevel = schema.new({
         id = id.from(_N, "UpdateEventLogConfigurationInput", "EventLogLevel"),
         type = "string",
         name = "EventLogLevel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateEventLogConfigurationOutput = prelude.Unit

M.GetCustomEndpointInput = schema.new({
   id = id.from(_N, "GetCustomEndpointRequest"),
   type = "structure",
})

M.GetCustomEndpointOutput = schema.new({
   id = id.from(_N, "GetCustomEndpointResponse"),
   type = "structure",
   members = {
      EndpointAddress = schema.new({
         id = id.from(_N, "GetCustomEndpointOutput", "EndpointAddress"),
         type = "string",
         name = "EndpointAddress",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDefaultEncryptionConfigurationInput = schema.new({
   id = id.from(_N, "GetDefaultEncryptionConfigurationRequest"),
   type = "structure",
})

M.GetDefaultEncryptionConfigurationOutput = schema.new({
   id = id.from(_N, "GetDefaultEncryptionConfigurationResponse"),
   type = "structure",
   members = {
      configurationStatus = schema.new({
         id = id.from(_N, "GetDefaultEncryptionConfigurationOutput", "configurationStatus"),
         type = "structure",
         name = "configurationStatus",
         target_id = id.from(_N, "ConfigurationStatus"),
         target = M.ConfigurationStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      encryptionType = schema.new({
         id = id.from(_N, "GetDefaultEncryptionConfigurationOutput", "encryptionType"),
         type = "string",
         name = "encryptionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "GetDefaultEncryptionConfigurationOutput", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.InternalFailureException = schema.new({
   id = id.from(_N, "InternalFailureException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalFailureException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.GetHubConfigurationInput = schema.new({
   id = id.from(_N, "GetHubConfigurationRequest"),
   type = "structure",
})

M.GetHubConfigurationOutput = schema.new({
   id = id.from(_N, "GetHubConfigurationResponse"),
   type = "structure",
   members = {
      HubTokenTimerExpirySettingInSeconds = schema.new({
         id = id.from(_N, "GetHubConfigurationOutput", "HubTokenTimerExpirySettingInSeconds"),
         type = "long",
         name = "HubTokenTimerExpirySettingInSeconds",
         target_id = prelude.Long.id,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "GetHubConfigurationOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetManagedThingInput = schema.new({
   id = id.from(_N, "GetManagedThingRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetManagedThingInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetManagedThingOutput = schema.new({
   id = id.from(_N, "GetManagedThingResponse"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Owner = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "Owner"),
         type = "string",
         name = "Owner",
         target_id = prelude.String.id,
      }),
      CredentialLockerId = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "CredentialLockerId"),
         type = "string",
         name = "CredentialLockerId",
         target_id = prelude.String.id,
      }),
      AdvertisedProductId = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "AdvertisedProductId"),
         type = "string",
         name = "AdvertisedProductId",
         target_id = prelude.String.id,
      }),
      Role = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "Role"),
         type = "string",
         name = "Role",
         target_id = prelude.String.id,
      }),
      ProvisioningStatus = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "ProvisioningStatus"),
         type = "string",
         name = "ProvisioningStatus",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Model = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "Model"),
         type = "string",
         name = "Model",
         target_id = prelude.String.id,
      }),
      Brand = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "Brand"),
         type = "string",
         name = "Brand",
         target_id = prelude.String.id,
      }),
      SerialNumber = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "SerialNumber"),
         type = "string",
         name = "SerialNumber",
         target_id = prelude.String.id,
      }),
      UniversalProductCode = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "UniversalProductCode"),
         type = "string",
         name = "UniversalProductCode",
         target_id = prelude.String.id,
      }),
      InternationalArticleNumber = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "InternationalArticleNumber"),
         type = "string",
         name = "InternationalArticleNumber",
         target_id = prelude.String.id,
      }),
      ConnectorPolicyId = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "ConnectorPolicyId"),
         type = "string",
         name = "ConnectorPolicyId",
         target_id = prelude.String.id,
      }),
      ConnectorDestinationId = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "ConnectorDestinationId"),
         type = "string",
         name = "ConnectorDestinationId",
         target_id = prelude.String.id,
      }),
      ConnectorDeviceId = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "ConnectorDeviceId"),
         type = "string",
         name = "ConnectorDeviceId",
         target_id = prelude.String.id,
      }),
      DeviceSpecificKey = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "DeviceSpecificKey"),
         type = "string",
         name = "DeviceSpecificKey",
         target_id = prelude.String.id,
      }),
      MacAddress = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "MacAddress"),
         type = "string",
         name = "MacAddress",
         target_id = prelude.String.id,
      }),
      ParentControllerId = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "ParentControllerId"),
         type = "string",
         name = "ParentControllerId",
         target_id = prelude.String.id,
      }),
      Classification = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "Classification"),
         type = "string",
         name = "Classification",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ActivatedAt = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "ActivatedAt"),
         type = "timestamp",
         name = "ActivatedAt",
         target_id = prelude.Timestamp.id,
      }),
      HubNetworkMode = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "HubNetworkMode"),
         type = "string",
         name = "HubNetworkMode",
         target_id = prelude.String.id,
      }),
      MetaData = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "MetaData"),
         type = "map",
         name = "MetaData",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      WiFiSimpleSetupConfiguration = schema.new({
         id = id.from(_N, "GetManagedThingOutput", "WiFiSimpleSetupConfiguration"),
         type = "structure",
         name = "WiFiSimpleSetupConfiguration",
         target_id = id.from(_N, "WiFiSimpleSetupConfiguration"),
         target = M.WiFiSimpleSetupConfiguration,
      }),
   },
})

M.GetManagedThingCapabilitiesInput = schema.new({
   id = id.from(_N, "GetManagedThingCapabilitiesRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetManagedThingCapabilitiesInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetManagedThingCapabilitiesOutput = schema.new({
   id = id.from(_N, "GetManagedThingCapabilitiesResponse"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "GetManagedThingCapabilitiesOutput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
      }),
      Capabilities = schema.new({
         id = id.from(_N, "GetManagedThingCapabilitiesOutput", "Capabilities"),
         type = "string",
         name = "Capabilities",
         target_id = prelude.String.id,
      }),
      CapabilityReport = schema.new({
         id = id.from(_N, "GetManagedThingCapabilitiesOutput", "CapabilityReport"),
         type = "structure",
         name = "CapabilityReport",
         target_id = id.from(_N, "CapabilityReport"),
         target = M.CapabilityReport,
      }),
   },
})

M.GetManagedThingCertificateInput = schema.new({
   id = id.from(_N, "GetManagedThingCertificateRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetManagedThingCertificateInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetManagedThingCertificateOutput = schema.new({
   id = id.from(_N, "GetManagedThingCertificateResponse"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "GetManagedThingCertificateOutput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
      }),
      CertificatePem = schema.new({
         id = id.from(_N, "GetManagedThingCertificateOutput", "CertificatePem"),
         type = "string",
         name = "CertificatePem",
         target_id = prelude.String.id,
      }),
   },
})

M.GetManagedThingConnectivityDataInput = schema.new({
   id = id.from(_N, "GetManagedThingConnectivityDataRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetManagedThingConnectivityDataInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetManagedThingConnectivityDataOutput = schema.new({
   id = id.from(_N, "GetManagedThingConnectivityDataResponse"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "GetManagedThingConnectivityDataOutput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
      }),
      Connected = schema.new({
         id = id.from(_N, "GetManagedThingConnectivityDataOutput", "Connected"),
         type = "boolean",
         name = "Connected",
         target_id = prelude.Boolean.id,
      }),
      Timestamp = schema.new({
         id = id.from(_N, "GetManagedThingConnectivityDataOutput", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
      }),
      DisconnectReason = schema.new({
         id = id.from(_N, "GetManagedThingConnectivityDataOutput", "DisconnectReason"),
         type = "string",
         name = "DisconnectReason",
         target_id = prelude.String.id,
      }),
   },
})

M.GetManagedThingMetaDataInput = schema.new({
   id = id.from(_N, "GetManagedThingMetaDataRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetManagedThingMetaDataInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetManagedThingMetaDataOutput = schema.new({
   id = id.from(_N, "GetManagedThingMetaDataResponse"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "GetManagedThingMetaDataOutput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
      }),
      MetaData = schema.new({
         id = id.from(_N, "GetManagedThingMetaDataOutput", "MetaData"),
         type = "map",
         name = "MetaData",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetManagedThingStateInput = schema.new({
   id = id.from(_N, "GetManagedThingStateRequest"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "GetManagedThingStateInput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StateCapability = schema.new({
   id = id.from(_N, "StateCapability"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "StateCapability", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "StateCapability", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      version = schema.new({
         id = id.from(_N, "StateCapability", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      properties = schema.new({
         id = id.from(_N, "StateCapability", "properties"),
         type = "document",
         name = "properties",
         target_id = prelude.Document.id,
      }),
   },
})

M.StateEndpoint = schema.new({
   id = id.from(_N, "StateEndpoint"),
   type = "structure",
   members = {
      endpointId = schema.new({
         id = id.from(_N, "StateEndpoint", "endpointId"),
         type = "string",
         name = "endpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      capabilities = schema.new({
         id = id.from(_N, "StateEndpoint", "capabilities"),
         type = "list",
         name = "capabilities",
         target_id = prelude.Document.id,
         list_member = M.StateCapability,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetManagedThingStateOutput = schema.new({
   id = id.from(_N, "GetManagedThingStateResponse"),
   type = "structure",
   members = {
      Endpoints = schema.new({
         id = id.from(_N, "GetManagedThingStateOutput", "Endpoints"),
         type = "list",
         name = "Endpoints",
         target_id = prelude.Document.id,
         list_member = M.StateEndpoint,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetNotificationConfigurationInput = schema.new({
   id = id.from(_N, "GetNotificationConfigurationRequest"),
   type = "structure",
   members = {
      EventType = schema.new({
         id = id.from(_N, "GetNotificationConfigurationInput", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetNotificationConfigurationOutput = schema.new({
   id = id.from(_N, "GetNotificationConfigurationResponse"),
   type = "structure",
   members = {
      EventType = schema.new({
         id = id.from(_N, "GetNotificationConfigurationOutput", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
      }),
      DestinationName = schema.new({
         id = id.from(_N, "GetNotificationConfigurationOutput", "DestinationName"),
         type = "string",
         name = "DestinationName",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetNotificationConfigurationOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "GetNotificationConfigurationOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetNotificationConfigurationOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetOtaTaskInput = schema.new({
   id = id.from(_N, "GetOtaTaskRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetOtaTaskInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TaskProcessingDetails = schema.new({
   id = id.from(_N, "TaskProcessingDetails"),
   type = "structure",
   members = {
      NumberOfCanceledThings = schema.new({
         id = id.from(_N, "TaskProcessingDetails", "NumberOfCanceledThings"),
         type = "integer",
         name = "NumberOfCanceledThings",
         target_id = prelude.Integer.id,
      }),
      NumberOfFailedThings = schema.new({
         id = id.from(_N, "TaskProcessingDetails", "NumberOfFailedThings"),
         type = "integer",
         name = "NumberOfFailedThings",
         target_id = prelude.Integer.id,
      }),
      NumberOfInProgressThings = schema.new({
         id = id.from(_N, "TaskProcessingDetails", "NumberOfInProgressThings"),
         type = "integer",
         name = "NumberOfInProgressThings",
         target_id = prelude.Integer.id,
      }),
      numberOfQueuedThings = schema.new({
         id = id.from(_N, "TaskProcessingDetails", "numberOfQueuedThings"),
         type = "integer",
         name = "numberOfQueuedThings",
         target_id = prelude.Integer.id,
      }),
      numberOfRejectedThings = schema.new({
         id = id.from(_N, "TaskProcessingDetails", "numberOfRejectedThings"),
         type = "integer",
         name = "numberOfRejectedThings",
         target_id = prelude.Integer.id,
      }),
      numberOfRemovedThings = schema.new({
         id = id.from(_N, "TaskProcessingDetails", "numberOfRemovedThings"),
         type = "integer",
         name = "numberOfRemovedThings",
         target_id = prelude.Integer.id,
      }),
      numberOfSucceededThings = schema.new({
         id = id.from(_N, "TaskProcessingDetails", "numberOfSucceededThings"),
         type = "integer",
         name = "numberOfSucceededThings",
         target_id = prelude.Integer.id,
      }),
      numberOfTimedOutThings = schema.new({
         id = id.from(_N, "TaskProcessingDetails", "numberOfTimedOutThings"),
         type = "integer",
         name = "numberOfTimedOutThings",
         target_id = prelude.Integer.id,
      }),
      processingTargets = schema.new({
         id = id.from(_N, "TaskProcessingDetails", "processingTargets"),
         type = "list",
         name = "processingTargets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetOtaTaskOutput = schema.new({
   id = id.from(_N, "GetOtaTaskResponse"),
   type = "structure",
   members = {
      TaskId = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "TaskId"),
         type = "string",
         name = "TaskId",
         target_id = prelude.String.id,
      }),
      TaskArn = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "TaskArn"),
         type = "string",
         name = "TaskArn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      S3Url = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "S3Url"),
         type = "string",
         name = "S3Url",
         target_id = prelude.String.id,
      }),
      Protocol = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
      OtaType = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "OtaType"),
         type = "string",
         name = "OtaType",
         target_id = prelude.String.id,
      }),
      OtaTargetQueryString = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "OtaTargetQueryString"),
         type = "string",
         name = "OtaTargetQueryString",
         target_id = prelude.String.id,
      }),
      OtaMechanism = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "OtaMechanism"),
         type = "string",
         name = "OtaMechanism",
         target_id = prelude.String.id,
      }),
      Target = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "Target"),
         type = "list",
         name = "Target",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      TaskConfigurationId = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "TaskConfigurationId"),
         type = "string",
         name = "TaskConfigurationId",
         target_id = prelude.String.id,
      }),
      TaskProcessingDetails = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "TaskProcessingDetails"),
         type = "structure",
         name = "TaskProcessingDetails",
         target_id = id.from(_N, "TaskProcessingDetails"),
         target = M.TaskProcessingDetails,
      }),
      OtaSchedulingConfig = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "OtaSchedulingConfig"),
         type = "structure",
         name = "OtaSchedulingConfig",
         target_id = id.from(_N, "OtaTaskSchedulingConfig"),
         target = M.OtaTaskSchedulingConfig,
      }),
      OtaTaskExecutionRetryConfig = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "OtaTaskExecutionRetryConfig"),
         type = "structure",
         name = "OtaTaskExecutionRetryConfig",
         target_id = id.from(_N, "OtaTaskExecutionRetryConfig"),
         target = M.OtaTaskExecutionRetryConfig,
      }),
      Status = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetOtaTaskOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetOtaTaskConfigurationInput = schema.new({
   id = id.from(_N, "GetOtaTaskConfigurationRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetOtaTaskConfigurationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetOtaTaskConfigurationOutput = schema.new({
   id = id.from(_N, "GetOtaTaskConfigurationResponse"),
   type = "structure",
   members = {
      TaskConfigurationId = schema.new({
         id = id.from(_N, "GetOtaTaskConfigurationOutput", "TaskConfigurationId"),
         type = "string",
         name = "TaskConfigurationId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "GetOtaTaskConfigurationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      PushConfig = schema.new({
         id = id.from(_N, "GetOtaTaskConfigurationOutput", "PushConfig"),
         type = "structure",
         name = "PushConfig",
         target_id = id.from(_N, "PushConfig"),
         target = M.PushConfig,
      }),
      Description = schema.new({
         id = id.from(_N, "GetOtaTaskConfigurationOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetOtaTaskConfigurationOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetProvisioningProfileInput = schema.new({
   id = id.from(_N, "GetProvisioningProfileRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetProvisioningProfileInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetProvisioningProfileOutput = schema.new({
   id = id.from(_N, "GetProvisioningProfileResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "GetProvisioningProfileOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "GetProvisioningProfileOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ProvisioningType = schema.new({
         id = id.from(_N, "GetProvisioningProfileOutput", "ProvisioningType"),
         type = "string",
         name = "ProvisioningType",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "GetProvisioningProfileOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "GetProvisioningProfileOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      ClaimCertificate = schema.new({
         id = id.from(_N, "GetProvisioningProfileOutput", "ClaimCertificate"),
         type = "string",
         name = "ClaimCertificate",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetProvisioningProfileOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetRuntimeLogConfigurationInput = schema.new({
   id = id.from(_N, "GetRuntimeLogConfigurationRequest"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "GetRuntimeLogConfigurationInput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RuntimeLogConfigurations = schema.new({
   id = id.from(_N, "RuntimeLogConfigurations"),
   type = "structure",
   members = {
      LogLevel = schema.new({
         id = id.from(_N, "RuntimeLogConfigurations", "LogLevel"),
         type = "string",
         name = "LogLevel",
         target_id = prelude.String.id,
      }),
      LogFlushLevel = schema.new({
         id = id.from(_N, "RuntimeLogConfigurations", "LogFlushLevel"),
         type = "string",
         name = "LogFlushLevel",
         target_id = prelude.String.id,
      }),
      LocalStoreLocation = schema.new({
         id = id.from(_N, "RuntimeLogConfigurations", "LocalStoreLocation"),
         type = "string",
         name = "LocalStoreLocation",
         target_id = prelude.String.id,
      }),
      LocalStoreFileRotationMaxFiles = schema.new({
         id = id.from(_N, "RuntimeLogConfigurations", "LocalStoreFileRotationMaxFiles"),
         type = "integer",
         name = "LocalStoreFileRotationMaxFiles",
         target_id = prelude.Integer.id,
      }),
      LocalStoreFileRotationMaxBytes = schema.new({
         id = id.from(_N, "RuntimeLogConfigurations", "LocalStoreFileRotationMaxBytes"),
         type = "integer",
         name = "LocalStoreFileRotationMaxBytes",
         target_id = prelude.Integer.id,
      }),
      UploadLog = schema.new({
         id = id.from(_N, "RuntimeLogConfigurations", "UploadLog"),
         type = "boolean",
         name = "UploadLog",
         target_id = prelude.Boolean.id,
      }),
      UploadPeriodMinutes = schema.new({
         id = id.from(_N, "RuntimeLogConfigurations", "UploadPeriodMinutes"),
         type = "integer",
         name = "UploadPeriodMinutes",
         target_id = prelude.Integer.id,
      }),
      DeleteLocalStoreAfterUpload = schema.new({
         id = id.from(_N, "RuntimeLogConfigurations", "DeleteLocalStoreAfterUpload"),
         type = "boolean",
         name = "DeleteLocalStoreAfterUpload",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GetRuntimeLogConfigurationOutput = schema.new({
   id = id.from(_N, "GetRuntimeLogConfigurationResponse"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "GetRuntimeLogConfigurationOutput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
      }),
      RuntimeLogConfigurations = schema.new({
         id = id.from(_N, "GetRuntimeLogConfigurationOutput", "RuntimeLogConfigurations"),
         type = "structure",
         name = "RuntimeLogConfigurations",
         target_id = id.from(_N, "RuntimeLogConfigurations"),
         target = M.RuntimeLogConfigurations,
      }),
   },
})

M.GetSchemaVersionInput = schema.new({
   id = id.from(_N, "GetSchemaVersionRequest"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "GetSchemaVersionInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SchemaVersionedId = schema.new({
         id = id.from(_N, "GetSchemaVersionInput", "SchemaVersionedId"),
         type = "string",
         name = "SchemaVersionedId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Format = schema.new({
         id = id.from(_N, "GetSchemaVersionInput", "Format"),
         type = "string",
         name = "Format",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "Format" },
         },
      }),
   },
})

M.GetSchemaVersionOutput = schema.new({
   id = id.from(_N, "GetSchemaVersionResponse"),
   type = "structure",
   members = {
      SchemaId = schema.new({
         id = id.from(_N, "GetSchemaVersionOutput", "SchemaId"),
         type = "string",
         name = "SchemaId",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "GetSchemaVersionOutput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetSchemaVersionOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Namespace = schema.new({
         id = id.from(_N, "GetSchemaVersionOutput", "Namespace"),
         type = "string",
         name = "Namespace",
         target_id = prelude.String.id,
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "GetSchemaVersionOutput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
      }),
      Visibility = schema.new({
         id = id.from(_N, "GetSchemaVersionOutput", "Visibility"),
         type = "string",
         name = "Visibility",
         target_id = prelude.String.id,
      }),
      Schema = schema.new({
         id = id.from(_N, "GetSchemaVersionOutput", "Schema"),
         type = "document",
         name = "Schema",
         target_id = prelude.Document.id,
      }),
   },
})

M.PutHubConfigurationInput = schema.new({
   id = id.from(_N, "PutHubConfigurationRequest"),
   type = "structure",
   members = {
      HubTokenTimerExpirySettingInSeconds = schema.new({
         id = id.from(_N, "PutHubConfigurationInput", "HubTokenTimerExpirySettingInSeconds"),
         type = "long",
         name = "HubTokenTimerExpirySettingInSeconds",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutHubConfigurationOutput = schema.new({
   id = id.from(_N, "PutHubConfigurationResponse"),
   type = "structure",
   members = {
      HubTokenTimerExpirySettingInSeconds = schema.new({
         id = id.from(_N, "PutHubConfigurationOutput", "HubTokenTimerExpirySettingInSeconds"),
         type = "long",
         name = "HubTokenTimerExpirySettingInSeconds",
         target_id = prelude.Long.id,
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
      Message = schema.new({
         id = id.from(_N, "InvalidRequestException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.PutDefaultEncryptionConfigurationInput = schema.new({
   id = id.from(_N, "PutDefaultEncryptionConfigurationRequest"),
   type = "structure",
   members = {
      encryptionType = schema.new({
         id = id.from(_N, "PutDefaultEncryptionConfigurationInput", "encryptionType"),
         type = "string",
         name = "encryptionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "PutDefaultEncryptionConfigurationInput", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.PutDefaultEncryptionConfigurationOutput = schema.new({
   id = id.from(_N, "PutDefaultEncryptionConfigurationResponse"),
   type = "structure",
   members = {
      configurationStatus = schema.new({
         id = id.from(_N, "PutDefaultEncryptionConfigurationOutput", "configurationStatus"),
         type = "structure",
         name = "configurationStatus",
         target_id = id.from(_N, "ConfigurationStatus"),
         target = M.ConfigurationStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      encryptionType = schema.new({
         id = id.from(_N, "PutDefaultEncryptionConfigurationOutput", "encryptionType"),
         type = "string",
         name = "encryptionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "PutDefaultEncryptionConfigurationOutput", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
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
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResponse"),
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

M.ListManagedThingAccountAssociationsInput = schema.new({
   id = id.from(_N, "ListManagedThingAccountAssociationsRequest"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "ListManagedThingAccountAssociationsInput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ManagedThingId" },
         },
      }),
      AccountAssociationId = schema.new({
         id = id.from(_N, "ListManagedThingAccountAssociationsInput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "AccountAssociationId" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListManagedThingAccountAssociationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListManagedThingAccountAssociationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.ManagedThingAssociation = schema.new({
   id = id.from(_N, "ManagedThingAssociation"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "ManagedThingAssociation", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
      }),
      AccountAssociationId = schema.new({
         id = id.from(_N, "ManagedThingAssociation", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
      }),
      ManagedThingAssociationStatus = schema.new({
         id = id.from(_N, "ManagedThingAssociation", "ManagedThingAssociationStatus"),
         type = "string",
         name = "ManagedThingAssociationStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.ListManagedThingAccountAssociationsOutput = schema.new({
   id = id.from(_N, "ListManagedThingAccountAssociationsResponse"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListManagedThingAccountAssociationsOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.ManagedThingAssociation,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListManagedThingAccountAssociationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.RegisterAccountAssociationInput = schema.new({
   id = id.from(_N, "RegisterAccountAssociationRequest"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "RegisterAccountAssociationInput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccountAssociationId = schema.new({
         id = id.from(_N, "RegisterAccountAssociationInput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeviceDiscoveryId = schema.new({
         id = id.from(_N, "RegisterAccountAssociationInput", "DeviceDiscoveryId"),
         type = "string",
         name = "DeviceDiscoveryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RegisterAccountAssociationOutput = schema.new({
   id = id.from(_N, "RegisterAccountAssociationResponse"),
   type = "structure",
   members = {
      AccountAssociationId = schema.new({
         id = id.from(_N, "RegisterAccountAssociationOutput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
      }),
      DeviceDiscoveryId = schema.new({
         id = id.from(_N, "RegisterAccountAssociationOutput", "DeviceDiscoveryId"),
         type = "string",
         name = "DeviceDiscoveryId",
         target_id = prelude.String.id,
      }),
      ManagedThingId = schema.new({
         id = id.from(_N, "RegisterAccountAssociationOutput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
      }),
   },
})

M.SendManagedThingCommandInput = schema.new({
   id = id.from(_N, "SendManagedThingCommandRequest"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "SendManagedThingCommandInput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Endpoints = schema.new({
         id = id.from(_N, "SendManagedThingCommandInput", "Endpoints"),
         type = "list",
         name = "Endpoints",
         target_id = prelude.Document.id,
         list_member = M.CommandEndpoint,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectorAssociationId = schema.new({
         id = id.from(_N, "SendManagedThingCommandInput", "ConnectorAssociationId"),
         type = "string",
         name = "ConnectorAssociationId",
         target_id = prelude.String.id,
      }),
      AccountAssociationId = schema.new({
         id = id.from(_N, "SendManagedThingCommandInput", "AccountAssociationId"),
         type = "string",
         name = "AccountAssociationId",
         target_id = prelude.String.id,
      }),
   },
})

M.SendManagedThingCommandOutput = schema.new({
   id = id.from(_N, "SendManagedThingCommandResponse"),
   type = "structure",
   members = {
      TraceId = schema.new({
         id = id.from(_N, "SendManagedThingCommandOutput", "TraceId"),
         type = "string",
         name = "TraceId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListManagedThingsInput = schema.new({
   id = id.from(_N, "ListManagedThingsRequest"),
   type = "structure",
   members = {
      OwnerFilter = schema.new({
         id = id.from(_N, "ListManagedThingsInput", "OwnerFilter"),
         type = "string",
         name = "OwnerFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "OwnerFilter" },
         },
      }),
      CredentialLockerFilter = schema.new({
         id = id.from(_N, "ListManagedThingsInput", "CredentialLockerFilter"),
         type = "string",
         name = "CredentialLockerFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "CredentialLockerFilter" },
         },
      }),
      RoleFilter = schema.new({
         id = id.from(_N, "ListManagedThingsInput", "RoleFilter"),
         type = "string",
         name = "RoleFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "RoleFilter" },
         },
      }),
      ParentControllerIdentifierFilter = schema.new({
         id = id.from(_N, "ListManagedThingsInput", "ParentControllerIdentifierFilter"),
         type = "string",
         name = "ParentControllerIdentifierFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ParentControllerIdentifierFilter" },
         },
      }),
      ConnectorPolicyIdFilter = schema.new({
         id = id.from(_N, "ListManagedThingsInput", "ConnectorPolicyIdFilter"),
         type = "string",
         name = "ConnectorPolicyIdFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ConnectorPolicyIdFilter" },
         },
      }),
      ConnectorDestinationIdFilter = schema.new({
         id = id.from(_N, "ListManagedThingsInput", "ConnectorDestinationIdFilter"),
         type = "string",
         name = "ConnectorDestinationIdFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ConnectorDestinationIdFilter" },
         },
      }),
      ConnectorDeviceIdFilter = schema.new({
         id = id.from(_N, "ListManagedThingsInput", "ConnectorDeviceIdFilter"),
         type = "string",
         name = "ConnectorDeviceIdFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ConnectorDeviceIdFilter" },
         },
      }),
      SerialNumberFilter = schema.new({
         id = id.from(_N, "ListManagedThingsInput", "SerialNumberFilter"),
         type = "string",
         name = "SerialNumberFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "SerialNumberFilter" },
         },
      }),
      ProvisioningStatusFilter = schema.new({
         id = id.from(_N, "ListManagedThingsInput", "ProvisioningStatusFilter"),
         type = "string",
         name = "ProvisioningStatusFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ProvisioningStatusFilter" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListManagedThingsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListManagedThingsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.ManagedThingSummary = schema.new({
   id = id.from(_N, "ManagedThingSummary"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "ManagedThingSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "ManagedThingSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      AdvertisedProductId = schema.new({
         id = id.from(_N, "ManagedThingSummary", "AdvertisedProductId"),
         type = "string",
         name = "AdvertisedProductId",
         target_id = prelude.String.id,
      }),
      Brand = schema.new({
         id = id.from(_N, "ManagedThingSummary", "Brand"),
         type = "string",
         name = "Brand",
         target_id = prelude.String.id,
      }),
      Classification = schema.new({
         id = id.from(_N, "ManagedThingSummary", "Classification"),
         type = "string",
         name = "Classification",
         target_id = prelude.String.id,
      }),
      ConnectorDeviceId = schema.new({
         id = id.from(_N, "ManagedThingSummary", "ConnectorDeviceId"),
         type = "string",
         name = "ConnectorDeviceId",
         target_id = prelude.String.id,
      }),
      ConnectorPolicyId = schema.new({
         id = id.from(_N, "ManagedThingSummary", "ConnectorPolicyId"),
         type = "string",
         name = "ConnectorPolicyId",
         target_id = prelude.String.id,
      }),
      ConnectorDestinationId = schema.new({
         id = id.from(_N, "ManagedThingSummary", "ConnectorDestinationId"),
         type = "string",
         name = "ConnectorDestinationId",
         target_id = prelude.String.id,
      }),
      Model = schema.new({
         id = id.from(_N, "ManagedThingSummary", "Model"),
         type = "string",
         name = "Model",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "ManagedThingSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Owner = schema.new({
         id = id.from(_N, "ManagedThingSummary", "Owner"),
         type = "string",
         name = "Owner",
         target_id = prelude.String.id,
      }),
      CredentialLockerId = schema.new({
         id = id.from(_N, "ManagedThingSummary", "CredentialLockerId"),
         type = "string",
         name = "CredentialLockerId",
         target_id = prelude.String.id,
      }),
      ParentControllerId = schema.new({
         id = id.from(_N, "ManagedThingSummary", "ParentControllerId"),
         type = "string",
         name = "ParentControllerId",
         target_id = prelude.String.id,
      }),
      ProvisioningStatus = schema.new({
         id = id.from(_N, "ManagedThingSummary", "ProvisioningStatus"),
         type = "string",
         name = "ProvisioningStatus",
         target_id = prelude.String.id,
      }),
      Role = schema.new({
         id = id.from(_N, "ManagedThingSummary", "Role"),
         type = "string",
         name = "Role",
         target_id = prelude.String.id,
      }),
      SerialNumber = schema.new({
         id = id.from(_N, "ManagedThingSummary", "SerialNumber"),
         type = "string",
         name = "SerialNumber",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "ManagedThingSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "ManagedThingSummary", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ActivatedAt = schema.new({
         id = id.from(_N, "ManagedThingSummary", "ActivatedAt"),
         type = "timestamp",
         name = "ActivatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListManagedThingsOutput = schema.new({
   id = id.from(_N, "ListManagedThingsResponse"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListManagedThingsOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.ManagedThingSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListManagedThingsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListManagedThingSchemasInput = schema.new({
   id = id.from(_N, "ListManagedThingSchemasRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "ListManagedThingSchemasInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EndpointIdFilter = schema.new({
         id = id.from(_N, "ListManagedThingSchemasInput", "EndpointIdFilter"),
         type = "string",
         name = "EndpointIdFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "EndpointIdFilter" },
         },
      }),
      CapabilityIdFilter = schema.new({
         id = id.from(_N, "ListManagedThingSchemasInput", "CapabilityIdFilter"),
         type = "string",
         name = "CapabilityIdFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "CapabilityIdFilter" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListManagedThingSchemasInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListManagedThingSchemasInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.ManagedThingSchemaListItem = schema.new({
   id = id.from(_N, "ManagedThingSchemaListItem"),
   type = "structure",
   members = {
      EndpointId = schema.new({
         id = id.from(_N, "ManagedThingSchemaListItem", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
      }),
      CapabilityId = schema.new({
         id = id.from(_N, "ManagedThingSchemaListItem", "CapabilityId"),
         type = "string",
         name = "CapabilityId",
         target_id = prelude.String.id,
      }),
      Schema = schema.new({
         id = id.from(_N, "ManagedThingSchemaListItem", "Schema"),
         type = "document",
         name = "Schema",
         target_id = prelude.Document.id,
      }),
   },
})

M.ListManagedThingSchemasOutput = schema.new({
   id = id.from(_N, "ListManagedThingSchemasResponse"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListManagedThingSchemasOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.ManagedThingSchemaListItem,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListManagedThingSchemasOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateManagedThingInput = schema.new({
   id = id.from(_N, "UpdateManagedThingRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Owner = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "Owner"),
         type = "string",
         name = "Owner",
         target_id = prelude.String.id,
      }),
      CredentialLockerId = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "CredentialLockerId"),
         type = "string",
         name = "CredentialLockerId",
         target_id = prelude.String.id,
      }),
      SerialNumber = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "SerialNumber"),
         type = "string",
         name = "SerialNumber",
         target_id = prelude.String.id,
      }),
      WiFiSimpleSetupConfiguration = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "WiFiSimpleSetupConfiguration"),
         type = "structure",
         name = "WiFiSimpleSetupConfiguration",
         target_id = id.from(_N, "WiFiSimpleSetupConfiguration"),
         target = M.WiFiSimpleSetupConfiguration,
      }),
      Brand = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "Brand"),
         type = "string",
         name = "Brand",
         target_id = prelude.String.id,
      }),
      Model = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "Model"),
         type = "string",
         name = "Model",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      CapabilityReport = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "CapabilityReport"),
         type = "structure",
         name = "CapabilityReport",
         target_id = id.from(_N, "CapabilityReport"),
         target = M.CapabilityReport,
      }),
      CapabilitySchemas = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "CapabilitySchemas"),
         type = "list",
         name = "CapabilitySchemas",
         target_id = prelude.Document.id,
         list_member = M.CapabilitySchemaItem,
      }),
      Capabilities = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "Capabilities"),
         type = "string",
         name = "Capabilities",
         target_id = prelude.String.id,
      }),
      Classification = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "Classification"),
         type = "string",
         name = "Classification",
         target_id = prelude.String.id,
      }),
      HubNetworkMode = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "HubNetworkMode"),
         type = "string",
         name = "HubNetworkMode",
         target_id = prelude.String.id,
      }),
      MetaData = schema.new({
         id = id.from(_N, "UpdateManagedThingInput", "MetaData"),
         type = "map",
         name = "MetaData",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.UpdateManagedThingOutput = prelude.Unit

M.ListNotificationConfigurationsInput = schema.new({
   id = id.from(_N, "ListNotificationConfigurationsRequest"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListNotificationConfigurationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListNotificationConfigurationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.NotificationConfigurationSummary = schema.new({
   id = id.from(_N, "NotificationConfigurationSummary"),
   type = "structure",
   members = {
      EventType = schema.new({
         id = id.from(_N, "NotificationConfigurationSummary", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
      }),
      DestinationName = schema.new({
         id = id.from(_N, "NotificationConfigurationSummary", "DestinationName"),
         type = "string",
         name = "DestinationName",
         target_id = prelude.String.id,
      }),
   },
})

M.ListNotificationConfigurationsOutput = schema.new({
   id = id.from(_N, "ListNotificationConfigurationsResponse"),
   type = "structure",
   members = {
      NotificationConfigurationList = schema.new({
         id = id.from(_N, "ListNotificationConfigurationsOutput", "NotificationConfigurationList"),
         type = "list",
         name = "NotificationConfigurationList",
         target_id = prelude.Document.id,
         list_member = M.NotificationConfigurationSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListNotificationConfigurationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateNotificationConfigurationInput = schema.new({
   id = id.from(_N, "UpdateNotificationConfigurationRequest"),
   type = "structure",
   members = {
      EventType = schema.new({
         id = id.from(_N, "UpdateNotificationConfigurationInput", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      DestinationName = schema.new({
         id = id.from(_N, "UpdateNotificationConfigurationInput", "DestinationName"),
         type = "string",
         name = "DestinationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateNotificationConfigurationOutput = prelude.Unit

M.ListOtaTaskConfigurationsInput = schema.new({
   id = id.from(_N, "ListOtaTaskConfigurationsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListOtaTaskConfigurationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListOtaTaskConfigurationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.OtaTaskConfigurationSummary = schema.new({
   id = id.from(_N, "OtaTaskConfigurationSummary"),
   type = "structure",
   members = {
      TaskConfigurationId = schema.new({
         id = id.from(_N, "OtaTaskConfigurationSummary", "TaskConfigurationId"),
         type = "string",
         name = "TaskConfigurationId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "OtaTaskConfigurationSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "OtaTaskConfigurationSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListOtaTaskConfigurationsOutput = schema.new({
   id = id.from(_N, "ListOtaTaskConfigurationsResponse"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListOtaTaskConfigurationsOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.OtaTaskConfigurationSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListOtaTaskConfigurationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListOtaTaskExecutionsInput = schema.new({
   id = id.from(_N, "ListOtaTaskExecutionsRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "ListOtaTaskExecutionsInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListOtaTaskExecutionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListOtaTaskExecutionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.OtaTaskExecutionSummary = schema.new({
   id = id.from(_N, "OtaTaskExecutionSummary"),
   type = "structure",
   members = {
      ExecutionNumber = schema.new({
         id = id.from(_N, "OtaTaskExecutionSummary", "ExecutionNumber"),
         type = "long",
         name = "ExecutionNumber",
         target_id = prelude.Long.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "OtaTaskExecutionSummary", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      QueuedAt = schema.new({
         id = id.from(_N, "OtaTaskExecutionSummary", "QueuedAt"),
         type = "timestamp",
         name = "QueuedAt",
         target_id = prelude.Timestamp.id,
      }),
      RetryAttempt = schema.new({
         id = id.from(_N, "OtaTaskExecutionSummary", "RetryAttempt"),
         type = "integer",
         name = "RetryAttempt",
         target_id = prelude.Integer.id,
      }),
      StartedAt = schema.new({
         id = id.from(_N, "OtaTaskExecutionSummary", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "OtaTaskExecutionSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.OtaTaskExecutionSummaries = schema.new({
   id = id.from(_N, "OtaTaskExecutionSummaries"),
   type = "structure",
   members = {
      TaskExecutionSummary = schema.new({
         id = id.from(_N, "OtaTaskExecutionSummaries", "TaskExecutionSummary"),
         type = "structure",
         name = "TaskExecutionSummary",
         target_id = id.from(_N, "OtaTaskExecutionSummary"),
         target = M.OtaTaskExecutionSummary,
      }),
      ManagedThingId = schema.new({
         id = id.from(_N, "OtaTaskExecutionSummaries", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListOtaTaskExecutionsOutput = schema.new({
   id = id.from(_N, "ListOtaTaskExecutionsResponse"),
   type = "structure",
   members = {
      ExecutionSummaries = schema.new({
         id = id.from(_N, "ListOtaTaskExecutionsOutput", "ExecutionSummaries"),
         type = "list",
         name = "ExecutionSummaries",
         target_id = prelude.Document.id,
         list_member = M.OtaTaskExecutionSummaries,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListOtaTaskExecutionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListOtaTasksInput = schema.new({
   id = id.from(_N, "ListOtaTasksRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListOtaTasksInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListOtaTasksInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.OtaTaskSummary = schema.new({
   id = id.from(_N, "OtaTaskSummary"),
   type = "structure",
   members = {
      TaskId = schema.new({
         id = id.from(_N, "OtaTaskSummary", "TaskId"),
         type = "string",
         name = "TaskId",
         target_id = prelude.String.id,
      }),
      TaskArn = schema.new({
         id = id.from(_N, "OtaTaskSummary", "TaskArn"),
         type = "string",
         name = "TaskArn",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "OtaTaskSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "OtaTaskSummary", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      TaskConfigurationId = schema.new({
         id = id.from(_N, "OtaTaskSummary", "TaskConfigurationId"),
         type = "string",
         name = "TaskConfigurationId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "OtaTaskSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.ListOtaTasksOutput = schema.new({
   id = id.from(_N, "ListOtaTasksResponse"),
   type = "structure",
   members = {
      Tasks = schema.new({
         id = id.from(_N, "ListOtaTasksOutput", "Tasks"),
         type = "list",
         name = "Tasks",
         target_id = prelude.Document.id,
         list_member = M.OtaTaskSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListOtaTasksOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateOtaTaskInput = schema.new({
   id = id.from(_N, "UpdateOtaTaskRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "UpdateOtaTaskInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateOtaTaskInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      TaskConfigurationId = schema.new({
         id = id.from(_N, "UpdateOtaTaskInput", "TaskConfigurationId"),
         type = "string",
         name = "TaskConfigurationId",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateOtaTaskOutput = prelude.Unit

M.ListProvisioningProfilesInput = schema.new({
   id = id.from(_N, "ListProvisioningProfilesRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListProvisioningProfilesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListProvisioningProfilesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.ProvisioningProfileSummary = schema.new({
   id = id.from(_N, "ProvisioningProfileSummary"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ProvisioningProfileSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "ProvisioningProfileSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "ProvisioningProfileSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      ProvisioningType = schema.new({
         id = id.from(_N, "ProvisioningProfileSummary", "ProvisioningType"),
         type = "string",
         name = "ProvisioningType",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ProvisioningProfileSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProvisioningProfilesOutput = schema.new({
   id = id.from(_N, "ListProvisioningProfilesResponse"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListProvisioningProfilesOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.ProvisioningProfileSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProvisioningProfilesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.RegisterCustomEndpointInput = schema.new({
   id = id.from(_N, "RegisterCustomEndpointRequest"),
   type = "structure",
})

M.RegisterCustomEndpointOutput = schema.new({
   id = id.from(_N, "RegisterCustomEndpointResponse"),
   type = "structure",
   members = {
      EndpointAddress = schema.new({
         id = id.from(_N, "RegisterCustomEndpointOutput", "EndpointAddress"),
         type = "string",
         name = "EndpointAddress",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutRuntimeLogConfigurationInput = schema.new({
   id = id.from(_N, "PutRuntimeLogConfigurationRequest"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "PutRuntimeLogConfigurationInput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RuntimeLogConfigurations = schema.new({
         id = id.from(_N, "PutRuntimeLogConfigurationInput", "RuntimeLogConfigurations"),
         type = "structure",
         name = "RuntimeLogConfigurations",
         target_id = id.from(_N, "RuntimeLogConfigurations"),
         target = M.RuntimeLogConfigurations,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutRuntimeLogConfigurationOutput = prelude.Unit

M.ResetRuntimeLogConfigurationInput = schema.new({
   id = id.from(_N, "ResetRuntimeLogConfigurationRequest"),
   type = "structure",
   members = {
      ManagedThingId = schema.new({
         id = id.from(_N, "ResetRuntimeLogConfigurationInput", "ManagedThingId"),
         type = "string",
         name = "ManagedThingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ResetRuntimeLogConfigurationOutput = prelude.Unit

M.ListSchemaVersionsInput = schema.new({
   id = id.from(_N, "ListSchemaVersionsRequest"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "ListSchemaVersionsInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListSchemaVersionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSchemaVersionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      SchemaId = schema.new({
         id = id.from(_N, "ListSchemaVersionsInput", "SchemaId"),
         type = "string",
         name = "SchemaId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "SchemaIdFilter" },
         },
      }),
      Namespace = schema.new({
         id = id.from(_N, "ListSchemaVersionsInput", "Namespace"),
         type = "string",
         name = "Namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NamespaceFilter" },
         },
      }),
      Visibility = schema.new({
         id = id.from(_N, "ListSchemaVersionsInput", "Visibility"),
         type = "string",
         name = "Visibility",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "VisibilityFilter" },
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "ListSchemaVersionsInput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "SemanticVersionFilter" },
         },
      }),
   },
})

M.SchemaVersionListItem = schema.new({
   id = id.from(_N, "SchemaVersionListItem"),
   type = "structure",
   members = {
      SchemaId = schema.new({
         id = id.from(_N, "SchemaVersionListItem", "SchemaId"),
         type = "string",
         name = "SchemaId",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "SchemaVersionListItem", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "SchemaVersionListItem", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Namespace = schema.new({
         id = id.from(_N, "SchemaVersionListItem", "Namespace"),
         type = "string",
         name = "Namespace",
         target_id = prelude.String.id,
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "SchemaVersionListItem", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
      }),
      Visibility = schema.new({
         id = id.from(_N, "SchemaVersionListItem", "Visibility"),
         type = "string",
         name = "Visibility",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSchemaVersionsOutput = schema.new({
   id = id.from(_N, "ListSchemaVersionsResponse"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListSchemaVersionsOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.SchemaVersionListItem,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSchemaVersionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.MatterCluster = schema.new({
   id = id.from(_N, "MatterCluster"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "MatterCluster", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "MatterCluster", "attributes"),
         type = "document",
         name = "attributes",
         target_id = prelude.Document.id,
      }),
      commands = schema.new({
         id = id.from(_N, "MatterCluster", "commands"),
         type = "map",
         name = "commands",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Document,
      }),
      events = schema.new({
         id = id.from(_N, "MatterCluster", "events"),
         type = "map",
         name = "events",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Document,
      }),
   },
})

M.MatterEndpoint = schema.new({
   id = id.from(_N, "MatterEndpoint"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "MatterEndpoint", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      clusters = schema.new({
         id = id.from(_N, "MatterEndpoint", "clusters"),
         type = "list",
         name = "clusters",
         target_id = prelude.Document.id,
         list_member = M.MatterCluster,
      }),
   },
})

M.SendConnectorEventInput = schema.new({
   id = id.from(_N, "SendConnectorEventRequest"),
   type = "structure",
   members = {
      ConnectorId = schema.new({
         id = id.from(_N, "SendConnectorEventInput", "ConnectorId"),
         type = "string",
         name = "ConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      UserId = schema.new({
         id = id.from(_N, "SendConnectorEventInput", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
      }),
      Operation = schema.new({
         id = id.from(_N, "SendConnectorEventInput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OperationVersion = schema.new({
         id = id.from(_N, "SendConnectorEventInput", "OperationVersion"),
         type = "string",
         name = "OperationVersion",
         target_id = prelude.String.id,
      }),
      StatusCode = schema.new({
         id = id.from(_N, "SendConnectorEventInput", "StatusCode"),
         type = "integer",
         name = "StatusCode",
         target_id = prelude.Integer.id,
      }),
      Message = schema.new({
         id = id.from(_N, "SendConnectorEventInput", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      DeviceDiscoveryId = schema.new({
         id = id.from(_N, "SendConnectorEventInput", "DeviceDiscoveryId"),
         type = "string",
         name = "DeviceDiscoveryId",
         target_id = prelude.String.id,
      }),
      ConnectorDeviceId = schema.new({
         id = id.from(_N, "SendConnectorEventInput", "ConnectorDeviceId"),
         type = "string",
         name = "ConnectorDeviceId",
         target_id = prelude.String.id,
      }),
      TraceId = schema.new({
         id = id.from(_N, "SendConnectorEventInput", "TraceId"),
         type = "string",
         name = "TraceId",
         target_id = prelude.String.id,
      }),
      Devices = schema.new({
         id = id.from(_N, "SendConnectorEventInput", "Devices"),
         type = "list",
         name = "Devices",
         target_id = prelude.Document.id,
         list_member = M.Device,
      }),
      MatterEndpoint = schema.new({
         id = id.from(_N, "SendConnectorEventInput", "MatterEndpoint"),
         type = "structure",
         name = "MatterEndpoint",
         target_id = id.from(_N, "MatterEndpoint"),
         target = M.MatterEndpoint,
      }),
   },
})

M.SendConnectorEventOutput = schema.new({
   id = id.from(_N, "SendConnectorEventResponse"),
   type = "structure",
   members = {
      ConnectorId = schema.new({
         id = id.from(_N, "SendConnectorEventOutput", "ConnectorId"),
         type = "string",
         name = "ConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
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
            [traits.HTTP_LABEL] = {},
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
            [traits.HTTP_LABEL] = {},
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
            [traits.HTTP_QUERY] = { name = "tagKeys" },
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceResponse"),
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
   id = id.from("com.amazonaws.iotmanagedintegrations", "IotManagedIntegrations"),
   version = "2025-03-03",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAccountAssociation = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "CreateAccountAssociation"),
   input = M.CreateAccountAssociationInput,
   output = M.CreateAccountAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/account-associations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCloudConnector = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "CreateCloudConnector"),
   input = M.CreateCloudConnectorInput,
   output = M.CreateCloudConnectorOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cloud-connectors" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateConnectorDestination = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "CreateConnectorDestination"),
   input = M.CreateConnectorDestinationInput,
   output = M.CreateConnectorDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/connector-destinations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCredentialLocker = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "CreateCredentialLocker"),
   input = M.CreateCredentialLockerInput,
   output = M.CreateCredentialLockerOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/credential-lockers" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDestination = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "CreateDestination"),
   input = M.CreateDestinationInput,
   output = M.CreateDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/destinations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateEventLogConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "CreateEventLogConfiguration"),
   input = M.CreateEventLogConfigurationInput,
   output = M.CreateEventLogConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/event-log-configurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateManagedThing = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "CreateManagedThing"),
   input = M.CreateManagedThingInput,
   output = M.CreateManagedThingOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/managed-things" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateNotificationConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "CreateNotificationConfiguration"),
   input = M.CreateNotificationConfigurationInput,
   output = M.CreateNotificationConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/notification-configurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateOtaTask = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "CreateOtaTask"),
   input = M.CreateOtaTaskInput,
   output = M.CreateOtaTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ota-tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateOtaTaskConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "CreateOtaTaskConfiguration"),
   input = M.CreateOtaTaskConfigurationInput,
   output = M.CreateOtaTaskConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ota-task-configurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateProvisioningProfile = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "CreateProvisioningProfile"),
   input = M.CreateProvisioningProfileInput,
   output = M.CreateProvisioningProfileOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/provisioning-profiles" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAccountAssociation = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeleteAccountAssociation"),
   input = M.DeleteAccountAssociationInput,
   output = M.DeleteAccountAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/account-associations/{AccountAssociationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCloudConnector = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeleteCloudConnector"),
   input = M.DeleteCloudConnectorInput,
   output = M.DeleteCloudConnectorOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/cloud-connectors/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteConnectorDestination = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeleteConnectorDestination"),
   input = M.DeleteConnectorDestinationInput,
   output = M.DeleteConnectorDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/connector-destinations/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCredentialLocker = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeleteCredentialLocker"),
   input = M.DeleteCredentialLockerInput,
   output = M.DeleteCredentialLockerOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/credential-lockers/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDestination = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeleteDestination"),
   input = M.DeleteDestinationInput,
   output = M.DeleteDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/destinations/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEventLogConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeleteEventLogConfiguration"),
   input = M.DeleteEventLogConfigurationInput,
   output = M.DeleteEventLogConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/event-log-configurations/{Id}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteManagedThing = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeleteManagedThing"),
   input = M.DeleteManagedThingInput,
   output = M.DeleteManagedThingOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/managed-things/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteNotificationConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeleteNotificationConfiguration"),
   input = M.DeleteNotificationConfigurationInput,
   output = M.DeleteNotificationConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/notification-configurations/{EventType}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteOtaTask = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeleteOtaTask"),
   input = M.DeleteOtaTaskInput,
   output = M.DeleteOtaTaskOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/ota-tasks/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteOtaTaskConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeleteOtaTaskConfiguration"),
   input = M.DeleteOtaTaskConfigurationInput,
   output = M.DeleteOtaTaskConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/ota-task-configurations/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteProvisioningProfile = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeleteProvisioningProfile"),
   input = M.DeleteProvisioningProfileInput,
   output = M.DeleteProvisioningProfileOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/provisioning-profiles/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeregisterAccountAssociation = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "DeregisterAccountAssociation"),
   input = M.DeregisterAccountAssociationInput,
   output = M.DeregisterAccountAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/managed-thing-associations/deregister" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAccountAssociation = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetAccountAssociation"),
   input = M.GetAccountAssociationInput,
   output = M.GetAccountAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/account-associations/{AccountAssociationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCloudConnector = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetCloudConnector"),
   input = M.GetCloudConnectorInput,
   output = M.GetCloudConnectorOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/cloud-connectors/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetConnectorDestination = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetConnectorDestination"),
   input = M.GetConnectorDestinationInput,
   output = M.GetConnectorDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/connector-destinations/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCredentialLocker = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetCredentialLocker"),
   input = M.GetCredentialLockerInput,
   output = M.GetCredentialLockerOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/credential-lockers/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCustomEndpoint = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetCustomEndpoint"),
   input = M.GetCustomEndpointInput,
   output = M.GetCustomEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/custom-endpoint" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDefaultEncryptionConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetDefaultEncryptionConfiguration"),
   input = M.GetDefaultEncryptionConfigurationInput,
   output = M.GetDefaultEncryptionConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/configuration/account/encryption" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDestination = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetDestination"),
   input = M.GetDestinationInput,
   output = M.GetDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/destinations/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDeviceDiscovery = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetDeviceDiscovery"),
   input = M.GetDeviceDiscoveryInput,
   output = M.GetDeviceDiscoveryOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/device-discoveries/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEventLogConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetEventLogConfiguration"),
   input = M.GetEventLogConfigurationInput,
   output = M.GetEventLogConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/event-log-configurations/{Id}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetHubConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetHubConfiguration"),
   input = M.GetHubConfigurationInput,
   output = M.GetHubConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/hub-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetManagedThing = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetManagedThing"),
   input = M.GetManagedThingInput,
   output = M.GetManagedThingOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/managed-things/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetManagedThingCapabilities = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetManagedThingCapabilities"),
   input = M.GetManagedThingCapabilitiesInput,
   output = M.GetManagedThingCapabilitiesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/managed-things-capabilities/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetManagedThingCertificate = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetManagedThingCertificate"),
   input = M.GetManagedThingCertificateInput,
   output = M.GetManagedThingCertificateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/managed-things-certificate/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetManagedThingConnectivityData = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetManagedThingConnectivityData"),
   input = M.GetManagedThingConnectivityDataInput,
   output = M.GetManagedThingConnectivityDataOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/managed-things-connectivity-data/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetManagedThingMetaData = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetManagedThingMetaData"),
   input = M.GetManagedThingMetaDataInput,
   output = M.GetManagedThingMetaDataOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/managed-things-metadata/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetManagedThingState = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetManagedThingState"),
   input = M.GetManagedThingStateInput,
   output = M.GetManagedThingStateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/managed-thing-states/{ManagedThingId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetNotificationConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetNotificationConfiguration"),
   input = M.GetNotificationConfigurationInput,
   output = M.GetNotificationConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/notification-configurations/{EventType}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetOtaTask = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetOtaTask"),
   input = M.GetOtaTaskInput,
   output = M.GetOtaTaskOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/ota-tasks/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetOtaTaskConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetOtaTaskConfiguration"),
   input = M.GetOtaTaskConfigurationInput,
   output = M.GetOtaTaskConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/ota-task-configurations/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetProvisioningProfile = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetProvisioningProfile"),
   input = M.GetProvisioningProfileInput,
   output = M.GetProvisioningProfileOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/provisioning-profiles/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRuntimeLogConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetRuntimeLogConfiguration"),
   input = M.GetRuntimeLogConfigurationInput,
   output = M.GetRuntimeLogConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/runtime-log-configurations/{ManagedThingId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSchemaVersion = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "GetSchemaVersion"),
   input = M.GetSchemaVersionInput,
   output = M.GetSchemaVersionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/schema-versions/{Type}/{SchemaVersionedId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAccountAssociations = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListAccountAssociations"),
   input = M.ListAccountAssociationsInput,
   output = M.ListAccountAssociationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/account-associations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCloudConnectors = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListCloudConnectors"),
   input = M.ListCloudConnectorsInput,
   output = M.ListCloudConnectorsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/cloud-connectors" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListConnectorDestinations = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListConnectorDestinations"),
   input = M.ListConnectorDestinationsInput,
   output = M.ListConnectorDestinationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/connector-destinations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCredentialLockers = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListCredentialLockers"),
   input = M.ListCredentialLockersInput,
   output = M.ListCredentialLockersOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/credential-lockers" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDestinations = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListDestinations"),
   input = M.ListDestinationsInput,
   output = M.ListDestinationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/destinations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDeviceDiscoveries = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListDeviceDiscoveries"),
   input = M.ListDeviceDiscoveriesInput,
   output = M.ListDeviceDiscoveriesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/device-discoveries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDiscoveredDevices = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListDiscoveredDevices"),
   input = M.ListDiscoveredDevicesInput,
   output = M.ListDiscoveredDevicesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/device-discoveries/{Identifier}/devices" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEventLogConfigurations = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListEventLogConfigurations"),
   input = M.ListEventLogConfigurationsInput,
   output = M.ListEventLogConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/event-log-configurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListManagedThingAccountAssociations = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListManagedThingAccountAssociations"),
   input = M.ListManagedThingAccountAssociationsInput,
   output = M.ListManagedThingAccountAssociationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/managed-thing-associations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListManagedThings = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListManagedThings"),
   input = M.ListManagedThingsInput,
   output = M.ListManagedThingsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/managed-things" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListManagedThingSchemas = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListManagedThingSchemas"),
   input = M.ListManagedThingSchemasInput,
   output = M.ListManagedThingSchemasOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/managed-thing-schemas/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListNotificationConfigurations = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListNotificationConfigurations"),
   input = M.ListNotificationConfigurationsInput,
   output = M.ListNotificationConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/notification-configurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListOtaTaskConfigurations = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListOtaTaskConfigurations"),
   input = M.ListOtaTaskConfigurationsInput,
   output = M.ListOtaTaskConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/ota-task-configurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListOtaTaskExecutions = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListOtaTaskExecutions"),
   input = M.ListOtaTaskExecutionsInput,
   output = M.ListOtaTaskExecutionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/ota-tasks/{Identifier}/devices" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListOtaTasks = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListOtaTasks"),
   input = M.ListOtaTasksInput,
   output = M.ListOtaTasksOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/ota-tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProvisioningProfiles = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListProvisioningProfiles"),
   input = M.ListProvisioningProfilesInput,
   output = M.ListProvisioningProfilesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/provisioning-profiles" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSchemaVersions = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListSchemaVersions"),
   input = M.ListSchemaVersionsInput,
   output = M.ListSchemaVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/schema-versions/{Type}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutDefaultEncryptionConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "PutDefaultEncryptionConfiguration"),
   input = M.PutDefaultEncryptionConfigurationInput,
   output = M.PutDefaultEncryptionConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/configuration/account/encryption" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutHubConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "PutHubConfiguration"),
   input = M.PutHubConfigurationInput,
   output = M.PutHubConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/hub-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutRuntimeLogConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "PutRuntimeLogConfiguration"),
   input = M.PutRuntimeLogConfigurationInput,
   output = M.PutRuntimeLogConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/runtime-log-configurations/{ManagedThingId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RegisterAccountAssociation = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "RegisterAccountAssociation"),
   input = M.RegisterAccountAssociationInput,
   output = M.RegisterAccountAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/managed-thing-associations/register" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RegisterCustomEndpoint = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "RegisterCustomEndpoint"),
   input = M.RegisterCustomEndpointInput,
   output = M.RegisterCustomEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/custom-endpoint" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ResetRuntimeLogConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "ResetRuntimeLogConfiguration"),
   input = M.ResetRuntimeLogConfigurationInput,
   output = M.ResetRuntimeLogConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/runtime-log-configurations/{ManagedThingId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendConnectorEvent = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "SendConnectorEvent"),
   input = M.SendConnectorEventInput,
   output = M.SendConnectorEventOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/connector-event/{ConnectorId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendManagedThingCommand = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "SendManagedThingCommand"),
   input = M.SendManagedThingCommandInput,
   output = M.SendManagedThingCommandOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/managed-things-command/{ManagedThingId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartAccountAssociationRefresh = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "StartAccountAssociationRefresh"),
   input = M.StartAccountAssociationRefreshInput,
   output = M.StartAccountAssociationRefreshOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/account-associations/{AccountAssociationId}/refresh" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartDeviceDiscovery = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "StartDeviceDiscovery"),
   input = M.StartDeviceDiscoveryInput,
   output = M.StartDeviceDiscoveryOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/device-discoveries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAccountAssociation = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "UpdateAccountAssociation"),
   input = M.UpdateAccountAssociationInput,
   output = M.UpdateAccountAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/account-associations/{AccountAssociationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCloudConnector = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "UpdateCloudConnector"),
   input = M.UpdateCloudConnectorInput,
   output = M.UpdateCloudConnectorOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/cloud-connectors/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateConnectorDestination = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "UpdateConnectorDestination"),
   input = M.UpdateConnectorDestinationInput,
   output = M.UpdateConnectorDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/connector-destinations/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDestination = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "UpdateDestination"),
   input = M.UpdateDestinationInput,
   output = M.UpdateDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/destinations/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEventLogConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "UpdateEventLogConfiguration"),
   input = M.UpdateEventLogConfigurationInput,
   output = M.UpdateEventLogConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/event-log-configurations/{Id}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateManagedThing = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "UpdateManagedThing"),
   input = M.UpdateManagedThingInput,
   output = M.UpdateManagedThingOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/managed-things/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateNotificationConfiguration = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "UpdateNotificationConfiguration"),
   input = M.UpdateNotificationConfigurationInput,
   output = M.UpdateNotificationConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/notification-configurations/{EventType}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateOtaTask = schema.operation({
   id = id.from("com.amazonaws.iotmanagedintegrations", "UpdateOtaTask"),
   input = M.UpdateOtaTaskInput,
   output = M.UpdateOtaTaskOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/ota-tasks/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
