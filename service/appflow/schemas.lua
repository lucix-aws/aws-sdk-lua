local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.appflow"

local M = {}

M.ExecutionIds = schema.new({ type = "list", list_member = prelude.String })

M.DestinationFlowConfigList = schema.new({ type = "list", list_member = M.DestinationFlowConfig })

M.Tasks = schema.new({ type = "list", list_member = M.Task })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ConnectorEntityFieldList = schema.new({ type = "list", list_member = M.ConnectorEntityField })

M.ConnectorProfileNameList = schema.new({ type = "list", list_member = prelude.String })

M.ConnectorProfileDetailList = schema.new({ type = "list", list_member = M.ConnectorProfile })

M.ConnectorTypeList = schema.new({ type = "list", list_member = prelude.String })

M.ConnectorConfigurationsMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ConnectorConfiguration })

M.ConnectorList = schema.new({ type = "list", list_member = M.ConnectorDetail })

M.MetadataCatalogDetails = schema.new({ type = "list", list_member = M.MetadataCatalogDetail })

M.FlowExecutionList = schema.new({ type = "list", list_member = M.ExecutionRecord })

M.ConnectorEntityMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ConnectorEntityList })

M.FlowList = schema.new({ type = "list", list_member = M.FlowDefinition })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.SchedulingFrequencyTypeList = schema.new({ type = "list", list_member = prelude.String })

M.TriggerTypeList = schema.new({ type = "list", list_member = prelude.String })

M.ConnectorModeList = schema.new({ type = "list", list_member = prelude.String })

M.ConnectorRuntimeSettingList = schema.new({ type = "list", list_member = M.ConnectorRuntimeSetting })

M.SupportedApiVersionList = schema.new({ type = "list", list_member = prelude.String })

M.SupportedOperatorList = schema.new({ type = "list", list_member = prelude.String })

M.SupportedWriteOperationList = schema.new({ type = "list", list_member = prelude.String })

M.SupportedDataTransferTypeList = schema.new({ type = "list", list_member = prelude.String })

M.SupportedDataTransferApis = schema.new({ type = "list", list_member = M.DataTransferApi })

M.ConnectorEntityList = schema.new({ type = "list", list_member = M.ConnectorEntity })

M.SourceFields = schema.new({ type = "list", list_member = prelude.String })

M.TaskPropertiesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.CustomAuthConfigList = schema.new({ type = "list", list_member = M.CustomAuthConfig })

M.CustomProperties = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ProfilePropertiesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.OAuthScopeList = schema.new({ type = "list", list_member = prelude.String })

M.SalesforceDataTransferApiList = schema.new({ type = "list", list_member = prelude.String })

M.OAuth2GrantTypeSupportedList = schema.new({ type = "list", list_member = prelude.String })

M.RegionList = schema.new({ type = "list", list_member = prelude.String })

M.TokenUrlList = schema.new({ type = "list", list_member = prelude.String })

M.AuthCodeUrlList = schema.new({ type = "list", list_member = prelude.String })

M.OAuth2CustomPropertiesList = schema.new({ type = "list", list_member = M.OAuth2CustomParameter })

M.ConnectorSuppliedValueOptionList = schema.new({ type = "list", list_member = prelude.String })

M.TokenUrlCustomProperties = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.CredentialsMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.IdFieldNameList = schema.new({ type = "list", list_member = prelude.String })

M.AuthParameterList = schema.new({ type = "list", list_member = M.AuthParameter })

M.FilterOperatorList = schema.new({ type = "list", list_member = prelude.String })

M.SupportedValueList = schema.new({ type = "list", list_member = prelude.String })

M.ConnectorSuppliedValueList = schema.new({ type = "list", list_member = prelude.String })

M.PathPrefixHierarchy = schema.new({ type = "list", list_member = prelude.String })

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

M.AggregationConfig = schema.new({
    id = id.from(_N, "AggregationConfig"),
    type = "structure",
    members = {
        aggregationType = schema.new({
            id = id.from(_N, "AggregationConfig", "aggregationType"),
            type = "string",
            name = "aggregationType",
            target_id = prelude.String.id,
        }),
        targetFileSize = schema.new({
            id = id.from(_N, "AggregationConfig", "targetFileSize"),
            type = "long",
            name = "targetFileSize",
            target_id = prelude.Long.id,
        }),
    },
})

M.AmplitudeConnectorProfileCredentials = schema.new({
    id = id.from(_N, "AmplitudeConnectorProfileCredentials"),
    type = "structure",
    members = {
        apiKey = schema.new({
            id = id.from(_N, "AmplitudeConnectorProfileCredentials", "apiKey"),
            type = "string",
            name = "apiKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        secretKey = schema.new({
            id = id.from(_N, "AmplitudeConnectorProfileCredentials", "secretKey"),
            type = "string",
            name = "secretKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AmplitudeConnectorProfileProperties = schema.new({
    id = id.from(_N, "AmplitudeConnectorProfileProperties"),
    type = "structure",
})

M.AmplitudeMetadata = schema.new({
    id = id.from(_N, "AmplitudeMetadata"),
    type = "structure",
})

M.AmplitudeSourceProperties = schema.new({
    id = id.from(_N, "AmplitudeSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "AmplitudeSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApiKeyCredentials = schema.new({
    id = id.from(_N, "ApiKeyCredentials"),
    type = "structure",
    members = {
        apiKey = schema.new({
            id = id.from(_N, "ApiKeyCredentials", "apiKey"),
            type = "string",
            name = "apiKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiSecretKey = schema.new({
            id = id.from(_N, "ApiKeyCredentials", "apiSecretKey"),
            type = "string",
            name = "apiSecretKey",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthParameter = schema.new({
    id = id.from(_N, "AuthParameter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "AuthParameter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        isRequired = schema.new({
            id = id.from(_N, "AuthParameter", "isRequired"),
            type = "boolean",
            name = "isRequired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        label = schema.new({
            id = id.from(_N, "AuthParameter", "label"),
            type = "string",
            name = "label",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "AuthParameter", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isSensitiveField = schema.new({
            id = id.from(_N, "AuthParameter", "isSensitiveField"),
            type = "boolean",
            name = "isSensitiveField",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        connectorSuppliedValues = schema.new({
            id = id.from(_N, "AuthParameter", "connectorSuppliedValues"),
            type = "list",
            name = "connectorSuppliedValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CustomAuthConfig = schema.new({
    id = id.from(_N, "CustomAuthConfig"),
    type = "structure",
    members = {
        customAuthenticationType = schema.new({
            id = id.from(_N, "CustomAuthConfig", "customAuthenticationType"),
            type = "string",
            name = "customAuthenticationType",
            target_id = prelude.String.id,
        }),
        authParameters = schema.new({
            id = id.from(_N, "CustomAuthConfig", "authParameters"),
            type = "list",
            name = "authParameters",
            target_id = prelude.Document.id,
            list_member = M.AuthParameter,
        }),
    },
})

M.OAuth2CustomParameter = schema.new({
    id = id.from(_N, "OAuth2CustomParameter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "OAuth2CustomParameter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        isRequired = schema.new({
            id = id.from(_N, "OAuth2CustomParameter", "isRequired"),
            type = "boolean",
            name = "isRequired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        label = schema.new({
            id = id.from(_N, "OAuth2CustomParameter", "label"),
            type = "string",
            name = "label",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "OAuth2CustomParameter", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isSensitiveField = schema.new({
            id = id.from(_N, "OAuth2CustomParameter", "isSensitiveField"),
            type = "boolean",
            name = "isSensitiveField",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        connectorSuppliedValues = schema.new({
            id = id.from(_N, "OAuth2CustomParameter", "connectorSuppliedValues"),
            type = "list",
            name = "connectorSuppliedValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        type = schema.new({
            id = id.from(_N, "OAuth2CustomParameter", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.OAuth2Defaults = schema.new({
    id = id.from(_N, "OAuth2Defaults"),
    type = "structure",
    members = {
        oauthScopes = schema.new({
            id = id.from(_N, "OAuth2Defaults", "oauthScopes"),
            type = "list",
            name = "oauthScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tokenUrls = schema.new({
            id = id.from(_N, "OAuth2Defaults", "tokenUrls"),
            type = "list",
            name = "tokenUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        authCodeUrls = schema.new({
            id = id.from(_N, "OAuth2Defaults", "authCodeUrls"),
            type = "list",
            name = "authCodeUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        oauth2GrantTypesSupported = schema.new({
            id = id.from(_N, "OAuth2Defaults", "oauth2GrantTypesSupported"),
            type = "list",
            name = "oauth2GrantTypesSupported",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        oauth2CustomProperties = schema.new({
            id = id.from(_N, "OAuth2Defaults", "oauth2CustomProperties"),
            type = "list",
            name = "oauth2CustomProperties",
            target_id = prelude.Document.id,
            list_member = M.OAuth2CustomParameter,
        }),
    },
})

M.AuthenticationConfig = schema.new({
    id = id.from(_N, "AuthenticationConfig"),
    type = "structure",
    members = {
        isBasicAuthSupported = schema.new({
            id = id.from(_N, "AuthenticationConfig", "isBasicAuthSupported"),
            type = "boolean",
            name = "isBasicAuthSupported",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        isApiKeyAuthSupported = schema.new({
            id = id.from(_N, "AuthenticationConfig", "isApiKeyAuthSupported"),
            type = "boolean",
            name = "isApiKeyAuthSupported",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        isOAuth2Supported = schema.new({
            id = id.from(_N, "AuthenticationConfig", "isOAuth2Supported"),
            type = "boolean",
            name = "isOAuth2Supported",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        isCustomAuthSupported = schema.new({
            id = id.from(_N, "AuthenticationConfig", "isCustomAuthSupported"),
            type = "boolean",
            name = "isCustomAuthSupported",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        oAuth2Defaults = schema.new({
            id = id.from(_N, "AuthenticationConfig", "oAuth2Defaults"),
            type = "structure",
            name = "oAuth2Defaults",
            target_id = id.from(_N, "OAuth2Defaults"),
            target = M.OAuth2Defaults,
        }),
        customAuthConfigs = schema.new({
            id = id.from(_N, "AuthenticationConfig", "customAuthConfigs"),
            type = "list",
            name = "customAuthConfigs",
            target_id = prelude.Document.id,
            list_member = M.CustomAuthConfig,
        }),
    },
})

M.BasicAuthCredentials = schema.new({
    id = id.from(_N, "BasicAuthCredentials"),
    type = "structure",
    members = {
        username = schema.new({
            id = id.from(_N, "BasicAuthCredentials", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        password = schema.new({
            id = id.from(_N, "BasicAuthCredentials", "password"),
            type = "string",
            name = "password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelFlowExecutionsInput = schema.new({
    id = id.from(_N, "CancelFlowExecutionsRequest"),
    type = "structure",
    members = {
        flowName = schema.new({
            id = id.from(_N, "CancelFlowExecutionsInput", "flowName"),
            type = "string",
            name = "flowName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionIds = schema.new({
            id = id.from(_N, "CancelFlowExecutionsInput", "executionIds"),
            type = "list",
            name = "executionIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CancelFlowExecutionsOutput = schema.new({
    id = id.from(_N, "CancelFlowExecutionsResponse"),
    type = "structure",
    members = {
        invalidExecutions = schema.new({
            id = id.from(_N, "CancelFlowExecutionsOutput", "invalidExecutions"),
            type = "list",
            name = "invalidExecutions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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
        }),
    },
})

M.ConnectorAuthenticationException = schema.new({
    id = id.from(_N, "ConnectorAuthenticationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConnectorAuthenticationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomerProfilesMetadata = schema.new({
    id = id.from(_N, "CustomerProfilesMetadata"),
    type = "structure",
})

M.DatadogMetadata = schema.new({
    id = id.from(_N, "DatadogMetadata"),
    type = "structure",
})

M.DynatraceMetadata = schema.new({
    id = id.from(_N, "DynatraceMetadata"),
    type = "structure",
})

M.EventBridgeMetadata = schema.new({
    id = id.from(_N, "EventBridgeMetadata"),
    type = "structure",
})

M.GoogleAnalyticsMetadata = schema.new({
    id = id.from(_N, "GoogleAnalyticsMetadata"),
    type = "structure",
    members = {
        oAuthScopes = schema.new({
            id = id.from(_N, "GoogleAnalyticsMetadata", "oAuthScopes"),
            type = "list",
            name = "oAuthScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.HoneycodeMetadata = schema.new({
    id = id.from(_N, "HoneycodeMetadata"),
    type = "structure",
    members = {
        oAuthScopes = schema.new({
            id = id.from(_N, "HoneycodeMetadata", "oAuthScopes"),
            type = "list",
            name = "oAuthScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.InforNexusMetadata = schema.new({
    id = id.from(_N, "InforNexusMetadata"),
    type = "structure",
})

M.MarketoMetadata = schema.new({
    id = id.from(_N, "MarketoMetadata"),
    type = "structure",
})

M.PardotMetadata = schema.new({
    id = id.from(_N, "PardotMetadata"),
    type = "structure",
})

M.RedshiftMetadata = schema.new({
    id = id.from(_N, "RedshiftMetadata"),
    type = "structure",
})

M.S3Metadata = schema.new({
    id = id.from(_N, "S3Metadata"),
    type = "structure",
})

M.SalesforceMetadata = schema.new({
    id = id.from(_N, "SalesforceMetadata"),
    type = "structure",
    members = {
        oAuthScopes = schema.new({
            id = id.from(_N, "SalesforceMetadata", "oAuthScopes"),
            type = "list",
            name = "oAuthScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        dataTransferApis = schema.new({
            id = id.from(_N, "SalesforceMetadata", "dataTransferApis"),
            type = "list",
            name = "dataTransferApis",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        oauth2GrantTypesSupported = schema.new({
            id = id.from(_N, "SalesforceMetadata", "oauth2GrantTypesSupported"),
            type = "list",
            name = "oauth2GrantTypesSupported",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SAPODataMetadata = schema.new({
    id = id.from(_N, "SAPODataMetadata"),
    type = "structure",
})

M.ServiceNowMetadata = schema.new({
    id = id.from(_N, "ServiceNowMetadata"),
    type = "structure",
})

M.SingularMetadata = schema.new({
    id = id.from(_N, "SingularMetadata"),
    type = "structure",
})

M.SlackMetadata = schema.new({
    id = id.from(_N, "SlackMetadata"),
    type = "structure",
    members = {
        oAuthScopes = schema.new({
            id = id.from(_N, "SlackMetadata", "oAuthScopes"),
            type = "list",
            name = "oAuthScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SnowflakeMetadata = schema.new({
    id = id.from(_N, "SnowflakeMetadata"),
    type = "structure",
    members = {
        supportedRegions = schema.new({
            id = id.from(_N, "SnowflakeMetadata", "supportedRegions"),
            type = "list",
            name = "supportedRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.TrendmicroMetadata = schema.new({
    id = id.from(_N, "TrendmicroMetadata"),
    type = "structure",
})

M.UpsolverMetadata = schema.new({
    id = id.from(_N, "UpsolverMetadata"),
    type = "structure",
})

M.VeevaMetadata = schema.new({
    id = id.from(_N, "VeevaMetadata"),
    type = "structure",
})

M.ZendeskMetadata = schema.new({
    id = id.from(_N, "ZendeskMetadata"),
    type = "structure",
    members = {
        oAuthScopes = schema.new({
            id = id.from(_N, "ZendeskMetadata", "oAuthScopes"),
            type = "list",
            name = "oAuthScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ConnectorMetadata = schema.new({
    id = id.from(_N, "ConnectorMetadata"),
    type = "structure",
    members = {
        Amplitude = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Amplitude"),
            type = "structure",
            name = "Amplitude",
            target_id = id.from(_N, "AmplitudeMetadata"),
            target = M.AmplitudeMetadata,
        }),
        Datadog = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Datadog"),
            type = "structure",
            name = "Datadog",
            target_id = id.from(_N, "DatadogMetadata"),
            target = M.DatadogMetadata,
        }),
        Dynatrace = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Dynatrace"),
            type = "structure",
            name = "Dynatrace",
            target_id = id.from(_N, "DynatraceMetadata"),
            target = M.DynatraceMetadata,
        }),
        GoogleAnalytics = schema.new({
            id = id.from(_N, "ConnectorMetadata", "GoogleAnalytics"),
            type = "structure",
            name = "GoogleAnalytics",
            target_id = id.from(_N, "GoogleAnalyticsMetadata"),
            target = M.GoogleAnalyticsMetadata,
        }),
        InforNexus = schema.new({
            id = id.from(_N, "ConnectorMetadata", "InforNexus"),
            type = "structure",
            name = "InforNexus",
            target_id = id.from(_N, "InforNexusMetadata"),
            target = M.InforNexusMetadata,
        }),
        Marketo = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Marketo"),
            type = "structure",
            name = "Marketo",
            target_id = id.from(_N, "MarketoMetadata"),
            target = M.MarketoMetadata,
        }),
        Redshift = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Redshift"),
            type = "structure",
            name = "Redshift",
            target_id = id.from(_N, "RedshiftMetadata"),
            target = M.RedshiftMetadata,
        }),
        S3 = schema.new({
            id = id.from(_N, "ConnectorMetadata", "S3"),
            type = "structure",
            name = "S3",
            target_id = id.from(_N, "S3Metadata"),
            target = M.S3Metadata,
        }),
        Salesforce = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Salesforce"),
            type = "structure",
            name = "Salesforce",
            target_id = id.from(_N, "SalesforceMetadata"),
            target = M.SalesforceMetadata,
        }),
        ServiceNow = schema.new({
            id = id.from(_N, "ConnectorMetadata", "ServiceNow"),
            type = "structure",
            name = "ServiceNow",
            target_id = id.from(_N, "ServiceNowMetadata"),
            target = M.ServiceNowMetadata,
        }),
        Singular = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Singular"),
            type = "structure",
            name = "Singular",
            target_id = id.from(_N, "SingularMetadata"),
            target = M.SingularMetadata,
        }),
        Slack = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Slack"),
            type = "structure",
            name = "Slack",
            target_id = id.from(_N, "SlackMetadata"),
            target = M.SlackMetadata,
        }),
        Snowflake = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Snowflake"),
            type = "structure",
            name = "Snowflake",
            target_id = id.from(_N, "SnowflakeMetadata"),
            target = M.SnowflakeMetadata,
        }),
        Trendmicro = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Trendmicro"),
            type = "structure",
            name = "Trendmicro",
            target_id = id.from(_N, "TrendmicroMetadata"),
            target = M.TrendmicroMetadata,
        }),
        Veeva = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Veeva"),
            type = "structure",
            name = "Veeva",
            target_id = id.from(_N, "VeevaMetadata"),
            target = M.VeevaMetadata,
        }),
        Zendesk = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Zendesk"),
            type = "structure",
            name = "Zendesk",
            target_id = id.from(_N, "ZendeskMetadata"),
            target = M.ZendeskMetadata,
        }),
        EventBridge = schema.new({
            id = id.from(_N, "ConnectorMetadata", "EventBridge"),
            type = "structure",
            name = "EventBridge",
            target_id = id.from(_N, "EventBridgeMetadata"),
            target = M.EventBridgeMetadata,
        }),
        Upsolver = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Upsolver"),
            type = "structure",
            name = "Upsolver",
            target_id = id.from(_N, "UpsolverMetadata"),
            target = M.UpsolverMetadata,
        }),
        CustomerProfiles = schema.new({
            id = id.from(_N, "ConnectorMetadata", "CustomerProfiles"),
            type = "structure",
            name = "CustomerProfiles",
            target_id = id.from(_N, "CustomerProfilesMetadata"),
            target = M.CustomerProfilesMetadata,
        }),
        Honeycode = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Honeycode"),
            type = "structure",
            name = "Honeycode",
            target_id = id.from(_N, "HoneycodeMetadata"),
            target = M.HoneycodeMetadata,
        }),
        SAPOData = schema.new({
            id = id.from(_N, "ConnectorMetadata", "SAPOData"),
            type = "structure",
            name = "SAPOData",
            target_id = id.from(_N, "SAPODataMetadata"),
            target = M.SAPODataMetadata,
        }),
        Pardot = schema.new({
            id = id.from(_N, "ConnectorMetadata", "Pardot"),
            type = "structure",
            name = "Pardot",
            target_id = id.from(_N, "PardotMetadata"),
            target = M.PardotMetadata,
        }),
    },
})

M.LambdaConnectorProvisioningConfig = schema.new({
    id = id.from(_N, "LambdaConnectorProvisioningConfig"),
    type = "structure",
    members = {
        lambdaArn = schema.new({
            id = id.from(_N, "LambdaConnectorProvisioningConfig", "lambdaArn"),
            type = "string",
            name = "lambdaArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConnectorProvisioningConfig = schema.new({
    id = id.from(_N, "ConnectorProvisioningConfig"),
    type = "structure",
    members = {
        lambda = schema.new({
            id = id.from(_N, "ConnectorProvisioningConfig", "lambda"),
            type = "structure",
            name = "lambda",
            target_id = id.from(_N, "LambdaConnectorProvisioningConfig"),
            target = M.LambdaConnectorProvisioningConfig,
        }),
    },
})

M.ConnectorRuntimeSetting = schema.new({
    id = id.from(_N, "ConnectorRuntimeSetting"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "ConnectorRuntimeSetting", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        dataType = schema.new({
            id = id.from(_N, "ConnectorRuntimeSetting", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
        }),
        isRequired = schema.new({
            id = id.from(_N, "ConnectorRuntimeSetting", "isRequired"),
            type = "boolean",
            name = "isRequired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        label = schema.new({
            id = id.from(_N, "ConnectorRuntimeSetting", "label"),
            type = "string",
            name = "label",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ConnectorRuntimeSetting", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        scope = schema.new({
            id = id.from(_N, "ConnectorRuntimeSetting", "scope"),
            type = "string",
            name = "scope",
            target_id = prelude.String.id,
        }),
        connectorSuppliedValueOptions = schema.new({
            id = id.from(_N, "ConnectorRuntimeSetting", "connectorSuppliedValueOptions"),
            type = "list",
            name = "connectorSuppliedValueOptions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DataTransferApi = schema.new({
    id = id.from(_N, "DataTransferApi"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DataTransferApi", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "DataTransferApi", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectorConfiguration = schema.new({
    id = id.from(_N, "ConnectorConfiguration"),
    type = "structure",
    members = {
        canUseAsSource = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "canUseAsSource"),
            type = "boolean",
            name = "canUseAsSource",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        canUseAsDestination = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "canUseAsDestination"),
            type = "boolean",
            name = "canUseAsDestination",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        supportedDestinationConnectors = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "supportedDestinationConnectors"),
            type = "list",
            name = "supportedDestinationConnectors",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        supportedSchedulingFrequencies = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "supportedSchedulingFrequencies"),
            type = "list",
            name = "supportedSchedulingFrequencies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        isPrivateLinkEnabled = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "isPrivateLinkEnabled"),
            type = "boolean",
            name = "isPrivateLinkEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        isPrivateLinkEndpointUrlRequired = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "isPrivateLinkEndpointUrlRequired"),
            type = "boolean",
            name = "isPrivateLinkEndpointUrlRequired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        supportedTriggerTypes = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "supportedTriggerTypes"),
            type = "list",
            name = "supportedTriggerTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        connectorMetadata = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorMetadata"),
            type = "structure",
            name = "connectorMetadata",
            target_id = id.from(_N, "ConnectorMetadata"),
            target = M.ConnectorMetadata,
        }),
        connectorType = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorType"),
            type = "string",
            name = "connectorType",
            target_id = prelude.String.id,
        }),
        connectorLabel = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorLabel"),
            type = "string",
            name = "connectorLabel",
            target_id = prelude.String.id,
        }),
        connectorDescription = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorDescription"),
            type = "string",
            name = "connectorDescription",
            target_id = prelude.String.id,
        }),
        connectorOwner = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorOwner"),
            type = "string",
            name = "connectorOwner",
            target_id = prelude.String.id,
        }),
        connectorName = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorName"),
            type = "string",
            name = "connectorName",
            target_id = prelude.String.id,
        }),
        connectorVersion = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorVersion"),
            type = "string",
            name = "connectorVersion",
            target_id = prelude.String.id,
        }),
        connectorArn = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
        }),
        connectorModes = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorModes"),
            type = "list",
            name = "connectorModes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        authenticationConfig = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "authenticationConfig"),
            type = "structure",
            name = "authenticationConfig",
            target_id = id.from(_N, "AuthenticationConfig"),
            target = M.AuthenticationConfig,
        }),
        connectorRuntimeSettings = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorRuntimeSettings"),
            type = "list",
            name = "connectorRuntimeSettings",
            target_id = prelude.Document.id,
            list_member = M.ConnectorRuntimeSetting,
        }),
        supportedApiVersions = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "supportedApiVersions"),
            type = "list",
            name = "supportedApiVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        supportedOperators = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "supportedOperators"),
            type = "list",
            name = "supportedOperators",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        supportedWriteOperations = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "supportedWriteOperations"),
            type = "list",
            name = "supportedWriteOperations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        connectorProvisioningType = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorProvisioningType"),
            type = "string",
            name = "connectorProvisioningType",
            target_id = prelude.String.id,
        }),
        connectorProvisioningConfig = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "connectorProvisioningConfig"),
            type = "structure",
            name = "connectorProvisioningConfig",
            target_id = id.from(_N, "ConnectorProvisioningConfig"),
            target = M.ConnectorProvisioningConfig,
        }),
        logoURL = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "logoURL"),
            type = "string",
            name = "logoURL",
            target_id = prelude.String.id,
        }),
        registeredAt = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "registeredAt"),
            type = "timestamp",
            name = "registeredAt",
            target_id = prelude.Timestamp.id,
        }),
        registeredBy = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "registeredBy"),
            type = "string",
            name = "registeredBy",
            target_id = prelude.String.id,
        }),
        supportedDataTransferTypes = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "supportedDataTransferTypes"),
            type = "list",
            name = "supportedDataTransferTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        supportedDataTransferApis = schema.new({
            id = id.from(_N, "ConnectorConfiguration", "supportedDataTransferApis"),
            type = "list",
            name = "supportedDataTransferApis",
            target_id = prelude.Document.id,
            list_member = M.DataTransferApi,
        }),
    },
})

M.ConnectorDetail = schema.new({
    id = id.from(_N, "ConnectorDetail"),
    type = "structure",
    members = {
        connectorDescription = schema.new({
            id = id.from(_N, "ConnectorDetail", "connectorDescription"),
            type = "string",
            name = "connectorDescription",
            target_id = prelude.String.id,
        }),
        connectorName = schema.new({
            id = id.from(_N, "ConnectorDetail", "connectorName"),
            type = "string",
            name = "connectorName",
            target_id = prelude.String.id,
        }),
        connectorOwner = schema.new({
            id = id.from(_N, "ConnectorDetail", "connectorOwner"),
            type = "string",
            name = "connectorOwner",
            target_id = prelude.String.id,
        }),
        connectorVersion = schema.new({
            id = id.from(_N, "ConnectorDetail", "connectorVersion"),
            type = "string",
            name = "connectorVersion",
            target_id = prelude.String.id,
        }),
        applicationType = schema.new({
            id = id.from(_N, "ConnectorDetail", "applicationType"),
            type = "string",
            name = "applicationType",
            target_id = prelude.String.id,
        }),
        connectorType = schema.new({
            id = id.from(_N, "ConnectorDetail", "connectorType"),
            type = "string",
            name = "connectorType",
            target_id = prelude.String.id,
        }),
        connectorLabel = schema.new({
            id = id.from(_N, "ConnectorDetail", "connectorLabel"),
            type = "string",
            name = "connectorLabel",
            target_id = prelude.String.id,
        }),
        registeredAt = schema.new({
            id = id.from(_N, "ConnectorDetail", "registeredAt"),
            type = "timestamp",
            name = "registeredAt",
            target_id = prelude.Timestamp.id,
        }),
        registeredBy = schema.new({
            id = id.from(_N, "ConnectorDetail", "registeredBy"),
            type = "string",
            name = "registeredBy",
            target_id = prelude.String.id,
        }),
        connectorProvisioningType = schema.new({
            id = id.from(_N, "ConnectorDetail", "connectorProvisioningType"),
            type = "string",
            name = "connectorProvisioningType",
            target_id = prelude.String.id,
        }),
        connectorModes = schema.new({
            id = id.from(_N, "ConnectorDetail", "connectorModes"),
            type = "list",
            name = "connectorModes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        supportedDataTransferTypes = schema.new({
            id = id.from(_N, "ConnectorDetail", "supportedDataTransferTypes"),
            type = "list",
            name = "supportedDataTransferTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ConnectorEntity = schema.new({
    id = id.from(_N, "ConnectorEntity"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ConnectorEntity", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        label = schema.new({
            id = id.from(_N, "ConnectorEntity", "label"),
            type = "string",
            name = "label",
            target_id = prelude.String.id,
        }),
        hasNestedEntities = schema.new({
            id = id.from(_N, "ConnectorEntity", "hasNestedEntities"),
            type = "boolean",
            name = "hasNestedEntities",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DestinationFieldProperties = schema.new({
    id = id.from(_N, "DestinationFieldProperties"),
    type = "structure",
    members = {
        isCreatable = schema.new({
            id = id.from(_N, "DestinationFieldProperties", "isCreatable"),
            type = "boolean",
            name = "isCreatable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        isNullable = schema.new({
            id = id.from(_N, "DestinationFieldProperties", "isNullable"),
            type = "boolean",
            name = "isNullable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        isUpsertable = schema.new({
            id = id.from(_N, "DestinationFieldProperties", "isUpsertable"),
            type = "boolean",
            name = "isUpsertable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        isUpdatable = schema.new({
            id = id.from(_N, "DestinationFieldProperties", "isUpdatable"),
            type = "boolean",
            name = "isUpdatable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        isDefaultedOnCreate = schema.new({
            id = id.from(_N, "DestinationFieldProperties", "isDefaultedOnCreate"),
            type = "boolean",
            name = "isDefaultedOnCreate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        supportedWriteOperations = schema.new({
            id = id.from(_N, "DestinationFieldProperties", "supportedWriteOperations"),
            type = "list",
            name = "supportedWriteOperations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SourceFieldProperties = schema.new({
    id = id.from(_N, "SourceFieldProperties"),
    type = "structure",
    members = {
        isRetrievable = schema.new({
            id = id.from(_N, "SourceFieldProperties", "isRetrievable"),
            type = "boolean",
            name = "isRetrievable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        isQueryable = schema.new({
            id = id.from(_N, "SourceFieldProperties", "isQueryable"),
            type = "boolean",
            name = "isQueryable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        isTimestampFieldForIncrementalQueries = schema.new({
            id = id.from(_N, "SourceFieldProperties", "isTimestampFieldForIncrementalQueries"),
            type = "boolean",
            name = "isTimestampFieldForIncrementalQueries",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.Range = schema.new({
    id = id.from(_N, "Range"),
    type = "structure",
    members = {
        maximum = schema.new({
            id = id.from(_N, "Range", "maximum"),
            type = "double",
            name = "maximum",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        minimum = schema.new({
            id = id.from(_N, "Range", "minimum"),
            type = "double",
            name = "minimum",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.FieldTypeDetails = schema.new({
    id = id.from(_N, "FieldTypeDetails"),
    type = "structure",
    members = {
        fieldType = schema.new({
            id = id.from(_N, "FieldTypeDetails", "fieldType"),
            type = "string",
            name = "fieldType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filterOperators = schema.new({
            id = id.from(_N, "FieldTypeDetails", "filterOperators"),
            type = "list",
            name = "filterOperators",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        supportedValues = schema.new({
            id = id.from(_N, "FieldTypeDetails", "supportedValues"),
            type = "list",
            name = "supportedValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        valueRegexPattern = schema.new({
            id = id.from(_N, "FieldTypeDetails", "valueRegexPattern"),
            type = "string",
            name = "valueRegexPattern",
            target_id = prelude.String.id,
        }),
        supportedDateFormat = schema.new({
            id = id.from(_N, "FieldTypeDetails", "supportedDateFormat"),
            type = "string",
            name = "supportedDateFormat",
            target_id = prelude.String.id,
        }),
        fieldValueRange = schema.new({
            id = id.from(_N, "FieldTypeDetails", "fieldValueRange"),
            type = "structure",
            name = "fieldValueRange",
            target_id = id.from(_N, "Range"),
            target = M.Range,
        }),
        fieldLengthRange = schema.new({
            id = id.from(_N, "FieldTypeDetails", "fieldLengthRange"),
            type = "structure",
            name = "fieldLengthRange",
            target_id = id.from(_N, "Range"),
            target = M.Range,
        }),
    },
})

M.SupportedFieldTypeDetails = schema.new({
    id = id.from(_N, "SupportedFieldTypeDetails"),
    type = "structure",
    members = {
        v1 = schema.new({
            id = id.from(_N, "SupportedFieldTypeDetails", "v1"),
            type = "structure",
            name = "v1",
            target_id = id.from(_N, "FieldTypeDetails"),
            target = M.FieldTypeDetails,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConnectorEntityField = schema.new({
    id = id.from(_N, "ConnectorEntityField"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "ConnectorEntityField", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parentIdentifier = schema.new({
            id = id.from(_N, "ConnectorEntityField", "parentIdentifier"),
            type = "string",
            name = "parentIdentifier",
            target_id = prelude.String.id,
        }),
        label = schema.new({
            id = id.from(_N, "ConnectorEntityField", "label"),
            type = "string",
            name = "label",
            target_id = prelude.String.id,
        }),
        isPrimaryKey = schema.new({
            id = id.from(_N, "ConnectorEntityField", "isPrimaryKey"),
            type = "boolean",
            name = "isPrimaryKey",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        defaultValue = schema.new({
            id = id.from(_N, "ConnectorEntityField", "defaultValue"),
            type = "string",
            name = "defaultValue",
            target_id = prelude.String.id,
        }),
        isDeprecated = schema.new({
            id = id.from(_N, "ConnectorEntityField", "isDeprecated"),
            type = "boolean",
            name = "isDeprecated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        supportedFieldTypeDetails = schema.new({
            id = id.from(_N, "ConnectorEntityField", "supportedFieldTypeDetails"),
            type = "structure",
            name = "supportedFieldTypeDetails",
            target_id = id.from(_N, "SupportedFieldTypeDetails"),
            target = M.SupportedFieldTypeDetails,
        }),
        description = schema.new({
            id = id.from(_N, "ConnectorEntityField", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "ConnectorEntityField", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceFieldProperties"),
            target = M.SourceFieldProperties,
        }),
        destinationProperties = schema.new({
            id = id.from(_N, "ConnectorEntityField", "destinationProperties"),
            type = "structure",
            name = "destinationProperties",
            target_id = id.from(_N, "DestinationFieldProperties"),
            target = M.DestinationFieldProperties,
        }),
        customProperties = schema.new({
            id = id.from(_N, "ConnectorEntityField", "customProperties"),
            type = "map",
            name = "customProperties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ConnectorOAuthRequest = schema.new({
    id = id.from(_N, "ConnectorOAuthRequest"),
    type = "structure",
    members = {
        authCode = schema.new({
            id = id.from(_N, "ConnectorOAuthRequest", "authCode"),
            type = "string",
            name = "authCode",
            target_id = prelude.String.id,
        }),
        redirectUri = schema.new({
            id = id.from(_N, "ConnectorOAuthRequest", "redirectUri"),
            type = "string",
            name = "redirectUri",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectorOperator = schema.new({
    id = id.from(_N, "ConnectorOperator"),
    type = "structure",
    members = {
        Amplitude = schema.new({
            id = id.from(_N, "ConnectorOperator", "Amplitude"),
            type = "string",
            name = "Amplitude",
            target_id = prelude.String.id,
        }),
        Datadog = schema.new({
            id = id.from(_N, "ConnectorOperator", "Datadog"),
            type = "string",
            name = "Datadog",
            target_id = prelude.String.id,
        }),
        Dynatrace = schema.new({
            id = id.from(_N, "ConnectorOperator", "Dynatrace"),
            type = "string",
            name = "Dynatrace",
            target_id = prelude.String.id,
        }),
        GoogleAnalytics = schema.new({
            id = id.from(_N, "ConnectorOperator", "GoogleAnalytics"),
            type = "string",
            name = "GoogleAnalytics",
            target_id = prelude.String.id,
        }),
        InforNexus = schema.new({
            id = id.from(_N, "ConnectorOperator", "InforNexus"),
            type = "string",
            name = "InforNexus",
            target_id = prelude.String.id,
        }),
        Marketo = schema.new({
            id = id.from(_N, "ConnectorOperator", "Marketo"),
            type = "string",
            name = "Marketo",
            target_id = prelude.String.id,
        }),
        S3 = schema.new({
            id = id.from(_N, "ConnectorOperator", "S3"),
            type = "string",
            name = "S3",
            target_id = prelude.String.id,
        }),
        Salesforce = schema.new({
            id = id.from(_N, "ConnectorOperator", "Salesforce"),
            type = "string",
            name = "Salesforce",
            target_id = prelude.String.id,
        }),
        ServiceNow = schema.new({
            id = id.from(_N, "ConnectorOperator", "ServiceNow"),
            type = "string",
            name = "ServiceNow",
            target_id = prelude.String.id,
        }),
        Singular = schema.new({
            id = id.from(_N, "ConnectorOperator", "Singular"),
            type = "string",
            name = "Singular",
            target_id = prelude.String.id,
        }),
        Slack = schema.new({
            id = id.from(_N, "ConnectorOperator", "Slack"),
            type = "string",
            name = "Slack",
            target_id = prelude.String.id,
        }),
        Trendmicro = schema.new({
            id = id.from(_N, "ConnectorOperator", "Trendmicro"),
            type = "string",
            name = "Trendmicro",
            target_id = prelude.String.id,
        }),
        Veeva = schema.new({
            id = id.from(_N, "ConnectorOperator", "Veeva"),
            type = "string",
            name = "Veeva",
            target_id = prelude.String.id,
        }),
        Zendesk = schema.new({
            id = id.from(_N, "ConnectorOperator", "Zendesk"),
            type = "string",
            name = "Zendesk",
            target_id = prelude.String.id,
        }),
        SAPOData = schema.new({
            id = id.from(_N, "ConnectorOperator", "SAPOData"),
            type = "string",
            name = "SAPOData",
            target_id = prelude.String.id,
        }),
        CustomConnector = schema.new({
            id = id.from(_N, "ConnectorOperator", "CustomConnector"),
            type = "string",
            name = "CustomConnector",
            target_id = prelude.String.id,
        }),
        Pardot = schema.new({
            id = id.from(_N, "ConnectorOperator", "Pardot"),
            type = "string",
            name = "Pardot",
            target_id = prelude.String.id,
        }),
    },
})

M.OAuth2Properties = schema.new({
    id = id.from(_N, "OAuth2Properties"),
    type = "structure",
    members = {
        tokenUrl = schema.new({
            id = id.from(_N, "OAuth2Properties", "tokenUrl"),
            type = "string",
            name = "tokenUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        oAuth2GrantType = schema.new({
            id = id.from(_N, "OAuth2Properties", "oAuth2GrantType"),
            type = "string",
            name = "oAuth2GrantType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tokenUrlCustomProperties = schema.new({
            id = id.from(_N, "OAuth2Properties", "tokenUrlCustomProperties"),
            type = "map",
            name = "tokenUrlCustomProperties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CustomConnectorProfileProperties = schema.new({
    id = id.from(_N, "CustomConnectorProfileProperties"),
    type = "structure",
    members = {
        profileProperties = schema.new({
            id = id.from(_N, "CustomConnectorProfileProperties", "profileProperties"),
            type = "map",
            name = "profileProperties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        oAuth2Properties = schema.new({
            id = id.from(_N, "CustomConnectorProfileProperties", "oAuth2Properties"),
            type = "structure",
            name = "oAuth2Properties",
            target_id = id.from(_N, "OAuth2Properties"),
            target = M.OAuth2Properties,
        }),
    },
})

M.DatadogConnectorProfileProperties = schema.new({
    id = id.from(_N, "DatadogConnectorProfileProperties"),
    type = "structure",
    members = {
        instanceUrl = schema.new({
            id = id.from(_N, "DatadogConnectorProfileProperties", "instanceUrl"),
            type = "string",
            name = "instanceUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DynatraceConnectorProfileProperties = schema.new({
    id = id.from(_N, "DynatraceConnectorProfileProperties"),
    type = "structure",
    members = {
        instanceUrl = schema.new({
            id = id.from(_N, "DynatraceConnectorProfileProperties", "instanceUrl"),
            type = "string",
            name = "instanceUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GoogleAnalyticsConnectorProfileProperties = schema.new({
    id = id.from(_N, "GoogleAnalyticsConnectorProfileProperties"),
    type = "structure",
})

M.HoneycodeConnectorProfileProperties = schema.new({
    id = id.from(_N, "HoneycodeConnectorProfileProperties"),
    type = "structure",
})

M.InforNexusConnectorProfileProperties = schema.new({
    id = id.from(_N, "InforNexusConnectorProfileProperties"),
    type = "structure",
    members = {
        instanceUrl = schema.new({
            id = id.from(_N, "InforNexusConnectorProfileProperties", "instanceUrl"),
            type = "string",
            name = "instanceUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MarketoConnectorProfileProperties = schema.new({
    id = id.from(_N, "MarketoConnectorProfileProperties"),
    type = "structure",
    members = {
        instanceUrl = schema.new({
            id = id.from(_N, "MarketoConnectorProfileProperties", "instanceUrl"),
            type = "string",
            name = "instanceUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PardotConnectorProfileProperties = schema.new({
    id = id.from(_N, "PardotConnectorProfileProperties"),
    type = "structure",
    members = {
        instanceUrl = schema.new({
            id = id.from(_N, "PardotConnectorProfileProperties", "instanceUrl"),
            type = "string",
            name = "instanceUrl",
            target_id = prelude.String.id,
        }),
        isSandboxEnvironment = schema.new({
            id = id.from(_N, "PardotConnectorProfileProperties", "isSandboxEnvironment"),
            type = "boolean",
            name = "isSandboxEnvironment",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        businessUnitId = schema.new({
            id = id.from(_N, "PardotConnectorProfileProperties", "businessUnitId"),
            type = "string",
            name = "businessUnitId",
            target_id = prelude.String.id,
        }),
    },
})

M.RedshiftConnectorProfileProperties = schema.new({
    id = id.from(_N, "RedshiftConnectorProfileProperties"),
    type = "structure",
    members = {
        databaseUrl = schema.new({
            id = id.from(_N, "RedshiftConnectorProfileProperties", "databaseUrl"),
            type = "string",
            name = "databaseUrl",
            target_id = prelude.String.id,
        }),
        bucketName = schema.new({
            id = id.from(_N, "RedshiftConnectorProfileProperties", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bucketPrefix = schema.new({
            id = id.from(_N, "RedshiftConnectorProfileProperties", "bucketPrefix"),
            type = "string",
            name = "bucketPrefix",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "RedshiftConnectorProfileProperties", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataApiRoleArn = schema.new({
            id = id.from(_N, "RedshiftConnectorProfileProperties", "dataApiRoleArn"),
            type = "string",
            name = "dataApiRoleArn",
            target_id = prelude.String.id,
        }),
        isRedshiftServerless = schema.new({
            id = id.from(_N, "RedshiftConnectorProfileProperties", "isRedshiftServerless"),
            type = "boolean",
            name = "isRedshiftServerless",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        clusterIdentifier = schema.new({
            id = id.from(_N, "RedshiftConnectorProfileProperties", "clusterIdentifier"),
            type = "string",
            name = "clusterIdentifier",
            target_id = prelude.String.id,
        }),
        workgroupName = schema.new({
            id = id.from(_N, "RedshiftConnectorProfileProperties", "workgroupName"),
            type = "string",
            name = "workgroupName",
            target_id = prelude.String.id,
        }),
        databaseName = schema.new({
            id = id.from(_N, "RedshiftConnectorProfileProperties", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
    },
})

M.SalesforceConnectorProfileProperties = schema.new({
    id = id.from(_N, "SalesforceConnectorProfileProperties"),
    type = "structure",
    members = {
        instanceUrl = schema.new({
            id = id.from(_N, "SalesforceConnectorProfileProperties", "instanceUrl"),
            type = "string",
            name = "instanceUrl",
            target_id = prelude.String.id,
        }),
        isSandboxEnvironment = schema.new({
            id = id.from(_N, "SalesforceConnectorProfileProperties", "isSandboxEnvironment"),
            type = "boolean",
            name = "isSandboxEnvironment",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        usePrivateLinkForMetadataAndAuthorization = schema.new({
            id = id.from(_N, "SalesforceConnectorProfileProperties", "usePrivateLinkForMetadataAndAuthorization"),
            type = "boolean",
            name = "usePrivateLinkForMetadataAndAuthorization",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.OAuthProperties = schema.new({
    id = id.from(_N, "OAuthProperties"),
    type = "structure",
    members = {
        tokenUrl = schema.new({
            id = id.from(_N, "OAuthProperties", "tokenUrl"),
            type = "string",
            name = "tokenUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authCodeUrl = schema.new({
            id = id.from(_N, "OAuthProperties", "authCodeUrl"),
            type = "string",
            name = "authCodeUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        oAuthScopes = schema.new({
            id = id.from(_N, "OAuthProperties", "oAuthScopes"),
            type = "list",
            name = "oAuthScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SAPODataConnectorProfileProperties = schema.new({
    id = id.from(_N, "SAPODataConnectorProfileProperties"),
    type = "structure",
    members = {
        applicationHostUrl = schema.new({
            id = id.from(_N, "SAPODataConnectorProfileProperties", "applicationHostUrl"),
            type = "string",
            name = "applicationHostUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        applicationServicePath = schema.new({
            id = id.from(_N, "SAPODataConnectorProfileProperties", "applicationServicePath"),
            type = "string",
            name = "applicationServicePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portNumber = schema.new({
            id = id.from(_N, "SAPODataConnectorProfileProperties", "portNumber"),
            type = "integer",
            name = "portNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientNumber = schema.new({
            id = id.from(_N, "SAPODataConnectorProfileProperties", "clientNumber"),
            type = "string",
            name = "clientNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logonLanguage = schema.new({
            id = id.from(_N, "SAPODataConnectorProfileProperties", "logonLanguage"),
            type = "string",
            name = "logonLanguage",
            target_id = prelude.String.id,
        }),
        privateLinkServiceName = schema.new({
            id = id.from(_N, "SAPODataConnectorProfileProperties", "privateLinkServiceName"),
            type = "string",
            name = "privateLinkServiceName",
            target_id = prelude.String.id,
        }),
        oAuthProperties = schema.new({
            id = id.from(_N, "SAPODataConnectorProfileProperties", "oAuthProperties"),
            type = "structure",
            name = "oAuthProperties",
            target_id = id.from(_N, "OAuthProperties"),
            target = M.OAuthProperties,
        }),
        disableSSO = schema.new({
            id = id.from(_N, "SAPODataConnectorProfileProperties", "disableSSO"),
            type = "boolean",
            name = "disableSSO",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ServiceNowConnectorProfileProperties = schema.new({
    id = id.from(_N, "ServiceNowConnectorProfileProperties"),
    type = "structure",
    members = {
        instanceUrl = schema.new({
            id = id.from(_N, "ServiceNowConnectorProfileProperties", "instanceUrl"),
            type = "string",
            name = "instanceUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SingularConnectorProfileProperties = schema.new({
    id = id.from(_N, "SingularConnectorProfileProperties"),
    type = "structure",
})

M.SlackConnectorProfileProperties = schema.new({
    id = id.from(_N, "SlackConnectorProfileProperties"),
    type = "structure",
    members = {
        instanceUrl = schema.new({
            id = id.from(_N, "SlackConnectorProfileProperties", "instanceUrl"),
            type = "string",
            name = "instanceUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SnowflakeConnectorProfileProperties = schema.new({
    id = id.from(_N, "SnowflakeConnectorProfileProperties"),
    type = "structure",
    members = {
        warehouse = schema.new({
            id = id.from(_N, "SnowflakeConnectorProfileProperties", "warehouse"),
            type = "string",
            name = "warehouse",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stage = schema.new({
            id = id.from(_N, "SnowflakeConnectorProfileProperties", "stage"),
            type = "string",
            name = "stage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bucketName = schema.new({
            id = id.from(_N, "SnowflakeConnectorProfileProperties", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bucketPrefix = schema.new({
            id = id.from(_N, "SnowflakeConnectorProfileProperties", "bucketPrefix"),
            type = "string",
            name = "bucketPrefix",
            target_id = prelude.String.id,
        }),
        privateLinkServiceName = schema.new({
            id = id.from(_N, "SnowflakeConnectorProfileProperties", "privateLinkServiceName"),
            type = "string",
            name = "privateLinkServiceName",
            target_id = prelude.String.id,
        }),
        accountName = schema.new({
            id = id.from(_N, "SnowflakeConnectorProfileProperties", "accountName"),
            type = "string",
            name = "accountName",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "SnowflakeConnectorProfileProperties", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
    },
})

M.TrendmicroConnectorProfileProperties = schema.new({
    id = id.from(_N, "TrendmicroConnectorProfileProperties"),
    type = "structure",
})

M.VeevaConnectorProfileProperties = schema.new({
    id = id.from(_N, "VeevaConnectorProfileProperties"),
    type = "structure",
    members = {
        instanceUrl = schema.new({
            id = id.from(_N, "VeevaConnectorProfileProperties", "instanceUrl"),
            type = "string",
            name = "instanceUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ZendeskConnectorProfileProperties = schema.new({
    id = id.from(_N, "ZendeskConnectorProfileProperties"),
    type = "structure",
    members = {
        instanceUrl = schema.new({
            id = id.from(_N, "ZendeskConnectorProfileProperties", "instanceUrl"),
            type = "string",
            name = "instanceUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConnectorProfileProperties = schema.new({
    id = id.from(_N, "ConnectorProfileProperties"),
    type = "structure",
    members = {
        Amplitude = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Amplitude"),
            type = "structure",
            name = "Amplitude",
            target_id = id.from(_N, "AmplitudeConnectorProfileProperties"),
            target = M.AmplitudeConnectorProfileProperties,
        }),
        Datadog = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Datadog"),
            type = "structure",
            name = "Datadog",
            target_id = id.from(_N, "DatadogConnectorProfileProperties"),
            target = M.DatadogConnectorProfileProperties,
        }),
        Dynatrace = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Dynatrace"),
            type = "structure",
            name = "Dynatrace",
            target_id = id.from(_N, "DynatraceConnectorProfileProperties"),
            target = M.DynatraceConnectorProfileProperties,
        }),
        GoogleAnalytics = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "GoogleAnalytics"),
            type = "structure",
            name = "GoogleAnalytics",
            target_id = id.from(_N, "GoogleAnalyticsConnectorProfileProperties"),
            target = M.GoogleAnalyticsConnectorProfileProperties,
        }),
        Honeycode = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Honeycode"),
            type = "structure",
            name = "Honeycode",
            target_id = id.from(_N, "HoneycodeConnectorProfileProperties"),
            target = M.HoneycodeConnectorProfileProperties,
        }),
        InforNexus = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "InforNexus"),
            type = "structure",
            name = "InforNexus",
            target_id = id.from(_N, "InforNexusConnectorProfileProperties"),
            target = M.InforNexusConnectorProfileProperties,
        }),
        Marketo = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Marketo"),
            type = "structure",
            name = "Marketo",
            target_id = id.from(_N, "MarketoConnectorProfileProperties"),
            target = M.MarketoConnectorProfileProperties,
        }),
        Redshift = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Redshift"),
            type = "structure",
            name = "Redshift",
            target_id = id.from(_N, "RedshiftConnectorProfileProperties"),
            target = M.RedshiftConnectorProfileProperties,
        }),
        Salesforce = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Salesforce"),
            type = "structure",
            name = "Salesforce",
            target_id = id.from(_N, "SalesforceConnectorProfileProperties"),
            target = M.SalesforceConnectorProfileProperties,
        }),
        ServiceNow = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "ServiceNow"),
            type = "structure",
            name = "ServiceNow",
            target_id = id.from(_N, "ServiceNowConnectorProfileProperties"),
            target = M.ServiceNowConnectorProfileProperties,
        }),
        Singular = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Singular"),
            type = "structure",
            name = "Singular",
            target_id = id.from(_N, "SingularConnectorProfileProperties"),
            target = M.SingularConnectorProfileProperties,
        }),
        Slack = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Slack"),
            type = "structure",
            name = "Slack",
            target_id = id.from(_N, "SlackConnectorProfileProperties"),
            target = M.SlackConnectorProfileProperties,
        }),
        Snowflake = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Snowflake"),
            type = "structure",
            name = "Snowflake",
            target_id = id.from(_N, "SnowflakeConnectorProfileProperties"),
            target = M.SnowflakeConnectorProfileProperties,
        }),
        Trendmicro = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Trendmicro"),
            type = "structure",
            name = "Trendmicro",
            target_id = id.from(_N, "TrendmicroConnectorProfileProperties"),
            target = M.TrendmicroConnectorProfileProperties,
        }),
        Veeva = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Veeva"),
            type = "structure",
            name = "Veeva",
            target_id = id.from(_N, "VeevaConnectorProfileProperties"),
            target = M.VeevaConnectorProfileProperties,
        }),
        Zendesk = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Zendesk"),
            type = "structure",
            name = "Zendesk",
            target_id = id.from(_N, "ZendeskConnectorProfileProperties"),
            target = M.ZendeskConnectorProfileProperties,
        }),
        SAPOData = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "SAPOData"),
            type = "structure",
            name = "SAPOData",
            target_id = id.from(_N, "SAPODataConnectorProfileProperties"),
            target = M.SAPODataConnectorProfileProperties,
        }),
        CustomConnector = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "CustomConnector"),
            type = "structure",
            name = "CustomConnector",
            target_id = id.from(_N, "CustomConnectorProfileProperties"),
            target = M.CustomConnectorProfileProperties,
        }),
        Pardot = schema.new({
            id = id.from(_N, "ConnectorProfileProperties", "Pardot"),
            type = "structure",
            name = "Pardot",
            target_id = id.from(_N, "PardotConnectorProfileProperties"),
            target = M.PardotConnectorProfileProperties,
        }),
    },
})

M.PrivateConnectionProvisioningState = schema.new({
    id = id.from(_N, "PrivateConnectionProvisioningState"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "PrivateConnectionProvisioningState", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "PrivateConnectionProvisioningState", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
        failureCause = schema.new({
            id = id.from(_N, "PrivateConnectionProvisioningState", "failureCause"),
            type = "string",
            name = "failureCause",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectorProfile = schema.new({
    id = id.from(_N, "ConnectorProfile"),
    type = "structure",
    members = {
        connectorProfileArn = schema.new({
            id = id.from(_N, "ConnectorProfile", "connectorProfileArn"),
            type = "string",
            name = "connectorProfileArn",
            target_id = prelude.String.id,
        }),
        connectorProfileName = schema.new({
            id = id.from(_N, "ConnectorProfile", "connectorProfileName"),
            type = "string",
            name = "connectorProfileName",
            target_id = prelude.String.id,
        }),
        connectorType = schema.new({
            id = id.from(_N, "ConnectorProfile", "connectorType"),
            type = "string",
            name = "connectorType",
            target_id = prelude.String.id,
        }),
        connectorLabel = schema.new({
            id = id.from(_N, "ConnectorProfile", "connectorLabel"),
            type = "string",
            name = "connectorLabel",
            target_id = prelude.String.id,
        }),
        connectionMode = schema.new({
            id = id.from(_N, "ConnectorProfile", "connectionMode"),
            type = "string",
            name = "connectionMode",
            target_id = prelude.String.id,
        }),
        credentialsArn = schema.new({
            id = id.from(_N, "ConnectorProfile", "credentialsArn"),
            type = "string",
            name = "credentialsArn",
            target_id = prelude.String.id,
        }),
        connectorProfileProperties = schema.new({
            id = id.from(_N, "ConnectorProfile", "connectorProfileProperties"),
            type = "structure",
            name = "connectorProfileProperties",
            target_id = id.from(_N, "ConnectorProfileProperties"),
            target = M.ConnectorProfileProperties,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ConnectorProfile", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "ConnectorProfile", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        privateConnectionProvisioningState = schema.new({
            id = id.from(_N, "ConnectorProfile", "privateConnectionProvisioningState"),
            type = "structure",
            name = "privateConnectionProvisioningState",
            target_id = id.from(_N, "PrivateConnectionProvisioningState"),
            target = M.PrivateConnectionProvisioningState,
        }),
    },
})

M.CustomAuthCredentials = schema.new({
    id = id.from(_N, "CustomAuthCredentials"),
    type = "structure",
    members = {
        customAuthenticationType = schema.new({
            id = id.from(_N, "CustomAuthCredentials", "customAuthenticationType"),
            type = "string",
            name = "customAuthenticationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialsMap = schema.new({
            id = id.from(_N, "CustomAuthCredentials", "credentialsMap"),
            type = "map",
            name = "credentialsMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.OAuth2Credentials = schema.new({
    id = id.from(_N, "OAuth2Credentials"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "OAuth2Credentials", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
        clientSecret = schema.new({
            id = id.from(_N, "OAuth2Credentials", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
        }),
        accessToken = schema.new({
            id = id.from(_N, "OAuth2Credentials", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        refreshToken = schema.new({
            id = id.from(_N, "OAuth2Credentials", "refreshToken"),
            type = "string",
            name = "refreshToken",
            target_id = prelude.String.id,
        }),
        oAuthRequest = schema.new({
            id = id.from(_N, "OAuth2Credentials", "oAuthRequest"),
            type = "structure",
            name = "oAuthRequest",
            target_id = id.from(_N, "ConnectorOAuthRequest"),
            target = M.ConnectorOAuthRequest,
        }),
    },
})

M.CustomConnectorProfileCredentials = schema.new({
    id = id.from(_N, "CustomConnectorProfileCredentials"),
    type = "structure",
    members = {
        authenticationType = schema.new({
            id = id.from(_N, "CustomConnectorProfileCredentials", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        basic = schema.new({
            id = id.from(_N, "CustomConnectorProfileCredentials", "basic"),
            type = "structure",
            name = "basic",
            target_id = id.from(_N, "BasicAuthCredentials"),
            target = M.BasicAuthCredentials,
        }),
        oauth2 = schema.new({
            id = id.from(_N, "CustomConnectorProfileCredentials", "oauth2"),
            type = "structure",
            name = "oauth2",
            target_id = id.from(_N, "OAuth2Credentials"),
            target = M.OAuth2Credentials,
        }),
        apiKey = schema.new({
            id = id.from(_N, "CustomConnectorProfileCredentials", "apiKey"),
            type = "structure",
            name = "apiKey",
            target_id = id.from(_N, "ApiKeyCredentials"),
            target = M.ApiKeyCredentials,
        }),
        custom = schema.new({
            id = id.from(_N, "CustomConnectorProfileCredentials", "custom"),
            type = "structure",
            name = "custom",
            target_id = id.from(_N, "CustomAuthCredentials"),
            target = M.CustomAuthCredentials,
        }),
    },
})

M.DatadogConnectorProfileCredentials = schema.new({
    id = id.from(_N, "DatadogConnectorProfileCredentials"),
    type = "structure",
    members = {
        apiKey = schema.new({
            id = id.from(_N, "DatadogConnectorProfileCredentials", "apiKey"),
            type = "string",
            name = "apiKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        applicationKey = schema.new({
            id = id.from(_N, "DatadogConnectorProfileCredentials", "applicationKey"),
            type = "string",
            name = "applicationKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DynatraceConnectorProfileCredentials = schema.new({
    id = id.from(_N, "DynatraceConnectorProfileCredentials"),
    type = "structure",
    members = {
        apiToken = schema.new({
            id = id.from(_N, "DynatraceConnectorProfileCredentials", "apiToken"),
            type = "string",
            name = "apiToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GoogleAnalyticsConnectorProfileCredentials = schema.new({
    id = id.from(_N, "GoogleAnalyticsConnectorProfileCredentials"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "GoogleAnalyticsConnectorProfileCredentials", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "GoogleAnalyticsConnectorProfileCredentials", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessToken = schema.new({
            id = id.from(_N, "GoogleAnalyticsConnectorProfileCredentials", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        refreshToken = schema.new({
            id = id.from(_N, "GoogleAnalyticsConnectorProfileCredentials", "refreshToken"),
            type = "string",
            name = "refreshToken",
            target_id = prelude.String.id,
        }),
        oAuthRequest = schema.new({
            id = id.from(_N, "GoogleAnalyticsConnectorProfileCredentials", "oAuthRequest"),
            type = "structure",
            name = "oAuthRequest",
            target_id = id.from(_N, "ConnectorOAuthRequest"),
            target = M.ConnectorOAuthRequest,
        }),
    },
})

M.HoneycodeConnectorProfileCredentials = schema.new({
    id = id.from(_N, "HoneycodeConnectorProfileCredentials"),
    type = "structure",
    members = {
        accessToken = schema.new({
            id = id.from(_N, "HoneycodeConnectorProfileCredentials", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        refreshToken = schema.new({
            id = id.from(_N, "HoneycodeConnectorProfileCredentials", "refreshToken"),
            type = "string",
            name = "refreshToken",
            target_id = prelude.String.id,
        }),
        oAuthRequest = schema.new({
            id = id.from(_N, "HoneycodeConnectorProfileCredentials", "oAuthRequest"),
            type = "structure",
            name = "oAuthRequest",
            target_id = id.from(_N, "ConnectorOAuthRequest"),
            target = M.ConnectorOAuthRequest,
        }),
    },
})

M.InforNexusConnectorProfileCredentials = schema.new({
    id = id.from(_N, "InforNexusConnectorProfileCredentials"),
    type = "structure",
    members = {
        accessKeyId = schema.new({
            id = id.from(_N, "InforNexusConnectorProfileCredentials", "accessKeyId"),
            type = "string",
            name = "accessKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "InforNexusConnectorProfileCredentials", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        secretAccessKey = schema.new({
            id = id.from(_N, "InforNexusConnectorProfileCredentials", "secretAccessKey"),
            type = "string",
            name = "secretAccessKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datakey = schema.new({
            id = id.from(_N, "InforNexusConnectorProfileCredentials", "datakey"),
            type = "string",
            name = "datakey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MarketoConnectorProfileCredentials = schema.new({
    id = id.from(_N, "MarketoConnectorProfileCredentials"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "MarketoConnectorProfileCredentials", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "MarketoConnectorProfileCredentials", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessToken = schema.new({
            id = id.from(_N, "MarketoConnectorProfileCredentials", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        oAuthRequest = schema.new({
            id = id.from(_N, "MarketoConnectorProfileCredentials", "oAuthRequest"),
            type = "structure",
            name = "oAuthRequest",
            target_id = id.from(_N, "ConnectorOAuthRequest"),
            target = M.ConnectorOAuthRequest,
        }),
    },
})

M.PardotConnectorProfileCredentials = schema.new({
    id = id.from(_N, "PardotConnectorProfileCredentials"),
    type = "structure",
    members = {
        accessToken = schema.new({
            id = id.from(_N, "PardotConnectorProfileCredentials", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        refreshToken = schema.new({
            id = id.from(_N, "PardotConnectorProfileCredentials", "refreshToken"),
            type = "string",
            name = "refreshToken",
            target_id = prelude.String.id,
        }),
        oAuthRequest = schema.new({
            id = id.from(_N, "PardotConnectorProfileCredentials", "oAuthRequest"),
            type = "structure",
            name = "oAuthRequest",
            target_id = id.from(_N, "ConnectorOAuthRequest"),
            target = M.ConnectorOAuthRequest,
        }),
        clientCredentialsArn = schema.new({
            id = id.from(_N, "PardotConnectorProfileCredentials", "clientCredentialsArn"),
            type = "string",
            name = "clientCredentialsArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RedshiftConnectorProfileCredentials = schema.new({
    id = id.from(_N, "RedshiftConnectorProfileCredentials"),
    type = "structure",
    members = {
        username = schema.new({
            id = id.from(_N, "RedshiftConnectorProfileCredentials", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
        }),
        password = schema.new({
            id = id.from(_N, "RedshiftConnectorProfileCredentials", "password"),
            type = "string",
            name = "password",
            target_id = prelude.String.id,
        }),
    },
})

M.SalesforceConnectorProfileCredentials = schema.new({
    id = id.from(_N, "SalesforceConnectorProfileCredentials"),
    type = "structure",
    members = {
        accessToken = schema.new({
            id = id.from(_N, "SalesforceConnectorProfileCredentials", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        refreshToken = schema.new({
            id = id.from(_N, "SalesforceConnectorProfileCredentials", "refreshToken"),
            type = "string",
            name = "refreshToken",
            target_id = prelude.String.id,
        }),
        oAuthRequest = schema.new({
            id = id.from(_N, "SalesforceConnectorProfileCredentials", "oAuthRequest"),
            type = "structure",
            name = "oAuthRequest",
            target_id = id.from(_N, "ConnectorOAuthRequest"),
            target = M.ConnectorOAuthRequest,
        }),
        clientCredentialsArn = schema.new({
            id = id.from(_N, "SalesforceConnectorProfileCredentials", "clientCredentialsArn"),
            type = "string",
            name = "clientCredentialsArn",
            target_id = prelude.String.id,
        }),
        oAuth2GrantType = schema.new({
            id = id.from(_N, "SalesforceConnectorProfileCredentials", "oAuth2GrantType"),
            type = "string",
            name = "oAuth2GrantType",
            target_id = prelude.String.id,
        }),
        jwtToken = schema.new({
            id = id.from(_N, "SalesforceConnectorProfileCredentials", "jwtToken"),
            type = "string",
            name = "jwtToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OAuthCredentials = schema.new({
    id = id.from(_N, "OAuthCredentials"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "OAuthCredentials", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "OAuthCredentials", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessToken = schema.new({
            id = id.from(_N, "OAuthCredentials", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        refreshToken = schema.new({
            id = id.from(_N, "OAuthCredentials", "refreshToken"),
            type = "string",
            name = "refreshToken",
            target_id = prelude.String.id,
        }),
        oAuthRequest = schema.new({
            id = id.from(_N, "OAuthCredentials", "oAuthRequest"),
            type = "structure",
            name = "oAuthRequest",
            target_id = id.from(_N, "ConnectorOAuthRequest"),
            target = M.ConnectorOAuthRequest,
        }),
    },
})

M.SAPODataConnectorProfileCredentials = schema.new({
    id = id.from(_N, "SAPODataConnectorProfileCredentials"),
    type = "structure",
    members = {
        basicAuthCredentials = schema.new({
            id = id.from(_N, "SAPODataConnectorProfileCredentials", "basicAuthCredentials"),
            type = "structure",
            name = "basicAuthCredentials",
            target_id = id.from(_N, "BasicAuthCredentials"),
            target = M.BasicAuthCredentials,
        }),
        oAuthCredentials = schema.new({
            id = id.from(_N, "SAPODataConnectorProfileCredentials", "oAuthCredentials"),
            type = "structure",
            name = "oAuthCredentials",
            target_id = id.from(_N, "OAuthCredentials"),
            target = M.OAuthCredentials,
        }),
    },
})

M.ServiceNowConnectorProfileCredentials = schema.new({
    id = id.from(_N, "ServiceNowConnectorProfileCredentials"),
    type = "structure",
    members = {
        username = schema.new({
            id = id.from(_N, "ServiceNowConnectorProfileCredentials", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
        }),
        password = schema.new({
            id = id.from(_N, "ServiceNowConnectorProfileCredentials", "password"),
            type = "string",
            name = "password",
            target_id = prelude.String.id,
        }),
        oAuth2Credentials = schema.new({
            id = id.from(_N, "ServiceNowConnectorProfileCredentials", "oAuth2Credentials"),
            type = "structure",
            name = "oAuth2Credentials",
            target_id = id.from(_N, "OAuth2Credentials"),
            target = M.OAuth2Credentials,
        }),
    },
})

M.SingularConnectorProfileCredentials = schema.new({
    id = id.from(_N, "SingularConnectorProfileCredentials"),
    type = "structure",
    members = {
        apiKey = schema.new({
            id = id.from(_N, "SingularConnectorProfileCredentials", "apiKey"),
            type = "string",
            name = "apiKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SlackConnectorProfileCredentials = schema.new({
    id = id.from(_N, "SlackConnectorProfileCredentials"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "SlackConnectorProfileCredentials", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "SlackConnectorProfileCredentials", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessToken = schema.new({
            id = id.from(_N, "SlackConnectorProfileCredentials", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        oAuthRequest = schema.new({
            id = id.from(_N, "SlackConnectorProfileCredentials", "oAuthRequest"),
            type = "structure",
            name = "oAuthRequest",
            target_id = id.from(_N, "ConnectorOAuthRequest"),
            target = M.ConnectorOAuthRequest,
        }),
    },
})

M.SnowflakeConnectorProfileCredentials = schema.new({
    id = id.from(_N, "SnowflakeConnectorProfileCredentials"),
    type = "structure",
    members = {
        username = schema.new({
            id = id.from(_N, "SnowflakeConnectorProfileCredentials", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        password = schema.new({
            id = id.from(_N, "SnowflakeConnectorProfileCredentials", "password"),
            type = "string",
            name = "password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TrendmicroConnectorProfileCredentials = schema.new({
    id = id.from(_N, "TrendmicroConnectorProfileCredentials"),
    type = "structure",
    members = {
        apiSecretKey = schema.new({
            id = id.from(_N, "TrendmicroConnectorProfileCredentials", "apiSecretKey"),
            type = "string",
            name = "apiSecretKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VeevaConnectorProfileCredentials = schema.new({
    id = id.from(_N, "VeevaConnectorProfileCredentials"),
    type = "structure",
    members = {
        username = schema.new({
            id = id.from(_N, "VeevaConnectorProfileCredentials", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        password = schema.new({
            id = id.from(_N, "VeevaConnectorProfileCredentials", "password"),
            type = "string",
            name = "password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ZendeskConnectorProfileCredentials = schema.new({
    id = id.from(_N, "ZendeskConnectorProfileCredentials"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "ZendeskConnectorProfileCredentials", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "ZendeskConnectorProfileCredentials", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessToken = schema.new({
            id = id.from(_N, "ZendeskConnectorProfileCredentials", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        oAuthRequest = schema.new({
            id = id.from(_N, "ZendeskConnectorProfileCredentials", "oAuthRequest"),
            type = "structure",
            name = "oAuthRequest",
            target_id = id.from(_N, "ConnectorOAuthRequest"),
            target = M.ConnectorOAuthRequest,
        }),
    },
})

M.ConnectorProfileCredentials = schema.new({
    id = id.from(_N, "ConnectorProfileCredentials"),
    type = "structure",
    members = {
        Amplitude = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Amplitude"),
            type = "structure",
            name = "Amplitude",
            target_id = id.from(_N, "AmplitudeConnectorProfileCredentials"),
            target = M.AmplitudeConnectorProfileCredentials,
        }),
        Datadog = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Datadog"),
            type = "structure",
            name = "Datadog",
            target_id = id.from(_N, "DatadogConnectorProfileCredentials"),
            target = M.DatadogConnectorProfileCredentials,
        }),
        Dynatrace = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Dynatrace"),
            type = "structure",
            name = "Dynatrace",
            target_id = id.from(_N, "DynatraceConnectorProfileCredentials"),
            target = M.DynatraceConnectorProfileCredentials,
        }),
        GoogleAnalytics = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "GoogleAnalytics"),
            type = "structure",
            name = "GoogleAnalytics",
            target_id = id.from(_N, "GoogleAnalyticsConnectorProfileCredentials"),
            target = M.GoogleAnalyticsConnectorProfileCredentials,
        }),
        Honeycode = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Honeycode"),
            type = "structure",
            name = "Honeycode",
            target_id = id.from(_N, "HoneycodeConnectorProfileCredentials"),
            target = M.HoneycodeConnectorProfileCredentials,
        }),
        InforNexus = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "InforNexus"),
            type = "structure",
            name = "InforNexus",
            target_id = id.from(_N, "InforNexusConnectorProfileCredentials"),
            target = M.InforNexusConnectorProfileCredentials,
        }),
        Marketo = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Marketo"),
            type = "structure",
            name = "Marketo",
            target_id = id.from(_N, "MarketoConnectorProfileCredentials"),
            target = M.MarketoConnectorProfileCredentials,
        }),
        Redshift = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Redshift"),
            type = "structure",
            name = "Redshift",
            target_id = id.from(_N, "RedshiftConnectorProfileCredentials"),
            target = M.RedshiftConnectorProfileCredentials,
        }),
        Salesforce = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Salesforce"),
            type = "structure",
            name = "Salesforce",
            target_id = id.from(_N, "SalesforceConnectorProfileCredentials"),
            target = M.SalesforceConnectorProfileCredentials,
        }),
        ServiceNow = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "ServiceNow"),
            type = "structure",
            name = "ServiceNow",
            target_id = id.from(_N, "ServiceNowConnectorProfileCredentials"),
            target = M.ServiceNowConnectorProfileCredentials,
        }),
        Singular = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Singular"),
            type = "structure",
            name = "Singular",
            target_id = id.from(_N, "SingularConnectorProfileCredentials"),
            target = M.SingularConnectorProfileCredentials,
        }),
        Slack = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Slack"),
            type = "structure",
            name = "Slack",
            target_id = id.from(_N, "SlackConnectorProfileCredentials"),
            target = M.SlackConnectorProfileCredentials,
        }),
        Snowflake = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Snowflake"),
            type = "structure",
            name = "Snowflake",
            target_id = id.from(_N, "SnowflakeConnectorProfileCredentials"),
            target = M.SnowflakeConnectorProfileCredentials,
        }),
        Trendmicro = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Trendmicro"),
            type = "structure",
            name = "Trendmicro",
            target_id = id.from(_N, "TrendmicroConnectorProfileCredentials"),
            target = M.TrendmicroConnectorProfileCredentials,
        }),
        Veeva = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Veeva"),
            type = "structure",
            name = "Veeva",
            target_id = id.from(_N, "VeevaConnectorProfileCredentials"),
            target = M.VeevaConnectorProfileCredentials,
        }),
        Zendesk = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Zendesk"),
            type = "structure",
            name = "Zendesk",
            target_id = id.from(_N, "ZendeskConnectorProfileCredentials"),
            target = M.ZendeskConnectorProfileCredentials,
        }),
        SAPOData = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "SAPOData"),
            type = "structure",
            name = "SAPOData",
            target_id = id.from(_N, "SAPODataConnectorProfileCredentials"),
            target = M.SAPODataConnectorProfileCredentials,
        }),
        CustomConnector = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "CustomConnector"),
            type = "structure",
            name = "CustomConnector",
            target_id = id.from(_N, "CustomConnectorProfileCredentials"),
            target = M.CustomConnectorProfileCredentials,
        }),
        Pardot = schema.new({
            id = id.from(_N, "ConnectorProfileCredentials", "Pardot"),
            type = "structure",
            name = "Pardot",
            target_id = id.from(_N, "PardotConnectorProfileCredentials"),
            target = M.PardotConnectorProfileCredentials,
        }),
    },
})

M.ConnectorProfileConfig = schema.new({
    id = id.from(_N, "ConnectorProfileConfig"),
    type = "structure",
    members = {
        connectorProfileProperties = schema.new({
            id = id.from(_N, "ConnectorProfileConfig", "connectorProfileProperties"),
            type = "structure",
            name = "connectorProfileProperties",
            target_id = id.from(_N, "ConnectorProfileProperties"),
            target = M.ConnectorProfileProperties,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectorProfileCredentials = schema.new({
            id = id.from(_N, "ConnectorProfileConfig", "connectorProfileCredentials"),
            type = "structure",
            name = "connectorProfileCredentials",
            target_id = id.from(_N, "ConnectorProfileCredentials"),
            target = M.ConnectorProfileCredentials,
        }),
    },
})

M.ConnectorServerException = schema.new({
    id = id.from(_N, "ConnectorServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConnectorServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConnectorProfileInput = schema.new({
    id = id.from(_N, "CreateConnectorProfileRequest"),
    type = "structure",
    members = {
        connectorProfileName = schema.new({
            id = id.from(_N, "CreateConnectorProfileInput", "connectorProfileName"),
            type = "string",
            name = "connectorProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsArn = schema.new({
            id = id.from(_N, "CreateConnectorProfileInput", "kmsArn"),
            type = "string",
            name = "kmsArn",
            target_id = prelude.String.id,
        }),
        connectorType = schema.new({
            id = id.from(_N, "CreateConnectorProfileInput", "connectorType"),
            type = "string",
            name = "connectorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectorLabel = schema.new({
            id = id.from(_N, "CreateConnectorProfileInput", "connectorLabel"),
            type = "string",
            name = "connectorLabel",
            target_id = prelude.String.id,
        }),
        connectionMode = schema.new({
            id = id.from(_N, "CreateConnectorProfileInput", "connectionMode"),
            type = "string",
            name = "connectionMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectorProfileConfig = schema.new({
            id = id.from(_N, "CreateConnectorProfileInput", "connectorProfileConfig"),
            type = "structure",
            name = "connectorProfileConfig",
            target_id = id.from(_N, "ConnectorProfileConfig"),
            target = M.ConnectorProfileConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateConnectorProfileInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateConnectorProfileOutput = schema.new({
    id = id.from(_N, "CreateConnectorProfileResponse"),
    type = "structure",
    members = {
        connectorProfileArn = schema.new({
            id = id.from(_N, "CreateConnectorProfileOutput", "connectorProfileArn"),
            type = "string",
            name = "connectorProfileArn",
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
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ErrorHandlingConfig = schema.new({
    id = id.from(_N, "ErrorHandlingConfig"),
    type = "structure",
    members = {
        failOnFirstDestinationError = schema.new({
            id = id.from(_N, "ErrorHandlingConfig", "failOnFirstDestinationError"),
            type = "boolean",
            name = "failOnFirstDestinationError",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        bucketPrefix = schema.new({
            id = id.from(_N, "ErrorHandlingConfig", "bucketPrefix"),
            type = "string",
            name = "bucketPrefix",
            target_id = prelude.String.id,
        }),
        bucketName = schema.new({
            id = id.from(_N, "ErrorHandlingConfig", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomConnectorDestinationProperties = schema.new({
    id = id.from(_N, "CustomConnectorDestinationProperties"),
    type = "structure",
    members = {
        entityName = schema.new({
            id = id.from(_N, "CustomConnectorDestinationProperties", "entityName"),
            type = "string",
            name = "entityName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorHandlingConfig = schema.new({
            id = id.from(_N, "CustomConnectorDestinationProperties", "errorHandlingConfig"),
            type = "structure",
            name = "errorHandlingConfig",
            target_id = id.from(_N, "ErrorHandlingConfig"),
            target = M.ErrorHandlingConfig,
        }),
        writeOperationType = schema.new({
            id = id.from(_N, "CustomConnectorDestinationProperties", "writeOperationType"),
            type = "string",
            name = "writeOperationType",
            target_id = prelude.String.id,
        }),
        idFieldNames = schema.new({
            id = id.from(_N, "CustomConnectorDestinationProperties", "idFieldNames"),
            type = "list",
            name = "idFieldNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        customProperties = schema.new({
            id = id.from(_N, "CustomConnectorDestinationProperties", "customProperties"),
            type = "map",
            name = "customProperties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CustomerProfilesDestinationProperties = schema.new({
    id = id.from(_N, "CustomerProfilesDestinationProperties"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "CustomerProfilesDestinationProperties", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        objectTypeName = schema.new({
            id = id.from(_N, "CustomerProfilesDestinationProperties", "objectTypeName"),
            type = "string",
            name = "objectTypeName",
            target_id = prelude.String.id,
        }),
    },
})

M.EventBridgeDestinationProperties = schema.new({
    id = id.from(_N, "EventBridgeDestinationProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "EventBridgeDestinationProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorHandlingConfig = schema.new({
            id = id.from(_N, "EventBridgeDestinationProperties", "errorHandlingConfig"),
            type = "structure",
            name = "errorHandlingConfig",
            target_id = id.from(_N, "ErrorHandlingConfig"),
            target = M.ErrorHandlingConfig,
        }),
    },
})

M.HoneycodeDestinationProperties = schema.new({
    id = id.from(_N, "HoneycodeDestinationProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "HoneycodeDestinationProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorHandlingConfig = schema.new({
            id = id.from(_N, "HoneycodeDestinationProperties", "errorHandlingConfig"),
            type = "structure",
            name = "errorHandlingConfig",
            target_id = id.from(_N, "ErrorHandlingConfig"),
            target = M.ErrorHandlingConfig,
        }),
    },
})

M.LookoutMetricsDestinationProperties = schema.new({
    id = id.from(_N, "LookoutMetricsDestinationProperties"),
    type = "structure",
})

M.MarketoDestinationProperties = schema.new({
    id = id.from(_N, "MarketoDestinationProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "MarketoDestinationProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorHandlingConfig = schema.new({
            id = id.from(_N, "MarketoDestinationProperties", "errorHandlingConfig"),
            type = "structure",
            name = "errorHandlingConfig",
            target_id = id.from(_N, "ErrorHandlingConfig"),
            target = M.ErrorHandlingConfig,
        }),
    },
})

M.RedshiftDestinationProperties = schema.new({
    id = id.from(_N, "RedshiftDestinationProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "RedshiftDestinationProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        intermediateBucketName = schema.new({
            id = id.from(_N, "RedshiftDestinationProperties", "intermediateBucketName"),
            type = "string",
            name = "intermediateBucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bucketPrefix = schema.new({
            id = id.from(_N, "RedshiftDestinationProperties", "bucketPrefix"),
            type = "string",
            name = "bucketPrefix",
            target_id = prelude.String.id,
        }),
        errorHandlingConfig = schema.new({
            id = id.from(_N, "RedshiftDestinationProperties", "errorHandlingConfig"),
            type = "structure",
            name = "errorHandlingConfig",
            target_id = id.from(_N, "ErrorHandlingConfig"),
            target = M.ErrorHandlingConfig,
        }),
    },
})

M.PrefixConfig = schema.new({
    id = id.from(_N, "PrefixConfig"),
    type = "structure",
    members = {
        prefixType = schema.new({
            id = id.from(_N, "PrefixConfig", "prefixType"),
            type = "string",
            name = "prefixType",
            target_id = prelude.String.id,
        }),
        prefixFormat = schema.new({
            id = id.from(_N, "PrefixConfig", "prefixFormat"),
            type = "string",
            name = "prefixFormat",
            target_id = prelude.String.id,
        }),
        pathPrefixHierarchy = schema.new({
            id = id.from(_N, "PrefixConfig", "pathPrefixHierarchy"),
            type = "list",
            name = "pathPrefixHierarchy",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.S3OutputFormatConfig = schema.new({
    id = id.from(_N, "S3OutputFormatConfig"),
    type = "structure",
    members = {
        fileType = schema.new({
            id = id.from(_N, "S3OutputFormatConfig", "fileType"),
            type = "string",
            name = "fileType",
            target_id = prelude.String.id,
        }),
        prefixConfig = schema.new({
            id = id.from(_N, "S3OutputFormatConfig", "prefixConfig"),
            type = "structure",
            name = "prefixConfig",
            target_id = id.from(_N, "PrefixConfig"),
            target = M.PrefixConfig,
        }),
        aggregationConfig = schema.new({
            id = id.from(_N, "S3OutputFormatConfig", "aggregationConfig"),
            type = "structure",
            name = "aggregationConfig",
            target_id = id.from(_N, "AggregationConfig"),
            target = M.AggregationConfig,
        }),
        preserveSourceDataTyping = schema.new({
            id = id.from(_N, "S3OutputFormatConfig", "preserveSourceDataTyping"),
            type = "boolean",
            name = "preserveSourceDataTyping",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.S3DestinationProperties = schema.new({
    id = id.from(_N, "S3DestinationProperties"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "S3DestinationProperties", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bucketPrefix = schema.new({
            id = id.from(_N, "S3DestinationProperties", "bucketPrefix"),
            type = "string",
            name = "bucketPrefix",
            target_id = prelude.String.id,
        }),
        s3OutputFormatConfig = schema.new({
            id = id.from(_N, "S3DestinationProperties", "s3OutputFormatConfig"),
            type = "structure",
            name = "s3OutputFormatConfig",
            target_id = id.from(_N, "S3OutputFormatConfig"),
            target = M.S3OutputFormatConfig,
        }),
    },
})

M.SalesforceDestinationProperties = schema.new({
    id = id.from(_N, "SalesforceDestinationProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "SalesforceDestinationProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        idFieldNames = schema.new({
            id = id.from(_N, "SalesforceDestinationProperties", "idFieldNames"),
            type = "list",
            name = "idFieldNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        errorHandlingConfig = schema.new({
            id = id.from(_N, "SalesforceDestinationProperties", "errorHandlingConfig"),
            type = "structure",
            name = "errorHandlingConfig",
            target_id = id.from(_N, "ErrorHandlingConfig"),
            target = M.ErrorHandlingConfig,
        }),
        writeOperationType = schema.new({
            id = id.from(_N, "SalesforceDestinationProperties", "writeOperationType"),
            type = "string",
            name = "writeOperationType",
            target_id = prelude.String.id,
        }),
        dataTransferApi = schema.new({
            id = id.from(_N, "SalesforceDestinationProperties", "dataTransferApi"),
            type = "string",
            name = "dataTransferApi",
            target_id = prelude.String.id,
        }),
    },
})

M.SuccessResponseHandlingConfig = schema.new({
    id = id.from(_N, "SuccessResponseHandlingConfig"),
    type = "structure",
    members = {
        bucketPrefix = schema.new({
            id = id.from(_N, "SuccessResponseHandlingConfig", "bucketPrefix"),
            type = "string",
            name = "bucketPrefix",
            target_id = prelude.String.id,
        }),
        bucketName = schema.new({
            id = id.from(_N, "SuccessResponseHandlingConfig", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
        }),
    },
})

M.SAPODataDestinationProperties = schema.new({
    id = id.from(_N, "SAPODataDestinationProperties"),
    type = "structure",
    members = {
        objectPath = schema.new({
            id = id.from(_N, "SAPODataDestinationProperties", "objectPath"),
            type = "string",
            name = "objectPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        successResponseHandlingConfig = schema.new({
            id = id.from(_N, "SAPODataDestinationProperties", "successResponseHandlingConfig"),
            type = "structure",
            name = "successResponseHandlingConfig",
            target_id = id.from(_N, "SuccessResponseHandlingConfig"),
            target = M.SuccessResponseHandlingConfig,
        }),
        idFieldNames = schema.new({
            id = id.from(_N, "SAPODataDestinationProperties", "idFieldNames"),
            type = "list",
            name = "idFieldNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        errorHandlingConfig = schema.new({
            id = id.from(_N, "SAPODataDestinationProperties", "errorHandlingConfig"),
            type = "structure",
            name = "errorHandlingConfig",
            target_id = id.from(_N, "ErrorHandlingConfig"),
            target = M.ErrorHandlingConfig,
        }),
        writeOperationType = schema.new({
            id = id.from(_N, "SAPODataDestinationProperties", "writeOperationType"),
            type = "string",
            name = "writeOperationType",
            target_id = prelude.String.id,
        }),
    },
})

M.SnowflakeDestinationProperties = schema.new({
    id = id.from(_N, "SnowflakeDestinationProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "SnowflakeDestinationProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        intermediateBucketName = schema.new({
            id = id.from(_N, "SnowflakeDestinationProperties", "intermediateBucketName"),
            type = "string",
            name = "intermediateBucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bucketPrefix = schema.new({
            id = id.from(_N, "SnowflakeDestinationProperties", "bucketPrefix"),
            type = "string",
            name = "bucketPrefix",
            target_id = prelude.String.id,
        }),
        errorHandlingConfig = schema.new({
            id = id.from(_N, "SnowflakeDestinationProperties", "errorHandlingConfig"),
            type = "structure",
            name = "errorHandlingConfig",
            target_id = id.from(_N, "ErrorHandlingConfig"),
            target = M.ErrorHandlingConfig,
        }),
    },
})

M.UpsolverS3OutputFormatConfig = schema.new({
    id = id.from(_N, "UpsolverS3OutputFormatConfig"),
    type = "structure",
    members = {
        fileType = schema.new({
            id = id.from(_N, "UpsolverS3OutputFormatConfig", "fileType"),
            type = "string",
            name = "fileType",
            target_id = prelude.String.id,
        }),
        prefixConfig = schema.new({
            id = id.from(_N, "UpsolverS3OutputFormatConfig", "prefixConfig"),
            type = "structure",
            name = "prefixConfig",
            target_id = id.from(_N, "PrefixConfig"),
            target = M.PrefixConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        aggregationConfig = schema.new({
            id = id.from(_N, "UpsolverS3OutputFormatConfig", "aggregationConfig"),
            type = "structure",
            name = "aggregationConfig",
            target_id = id.from(_N, "AggregationConfig"),
            target = M.AggregationConfig,
        }),
    },
})

M.UpsolverDestinationProperties = schema.new({
    id = id.from(_N, "UpsolverDestinationProperties"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "UpsolverDestinationProperties", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bucketPrefix = schema.new({
            id = id.from(_N, "UpsolverDestinationProperties", "bucketPrefix"),
            type = "string",
            name = "bucketPrefix",
            target_id = prelude.String.id,
        }),
        s3OutputFormatConfig = schema.new({
            id = id.from(_N, "UpsolverDestinationProperties", "s3OutputFormatConfig"),
            type = "structure",
            name = "s3OutputFormatConfig",
            target_id = id.from(_N, "UpsolverS3OutputFormatConfig"),
            target = M.UpsolverS3OutputFormatConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ZendeskDestinationProperties = schema.new({
    id = id.from(_N, "ZendeskDestinationProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "ZendeskDestinationProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        idFieldNames = schema.new({
            id = id.from(_N, "ZendeskDestinationProperties", "idFieldNames"),
            type = "list",
            name = "idFieldNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        errorHandlingConfig = schema.new({
            id = id.from(_N, "ZendeskDestinationProperties", "errorHandlingConfig"),
            type = "structure",
            name = "errorHandlingConfig",
            target_id = id.from(_N, "ErrorHandlingConfig"),
            target = M.ErrorHandlingConfig,
        }),
        writeOperationType = schema.new({
            id = id.from(_N, "ZendeskDestinationProperties", "writeOperationType"),
            type = "string",
            name = "writeOperationType",
            target_id = prelude.String.id,
        }),
    },
})

M.DestinationConnectorProperties = schema.new({
    id = id.from(_N, "DestinationConnectorProperties"),
    type = "structure",
    members = {
        Redshift = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "Redshift"),
            type = "structure",
            name = "Redshift",
            target_id = id.from(_N, "RedshiftDestinationProperties"),
            target = M.RedshiftDestinationProperties,
        }),
        S3 = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "S3"),
            type = "structure",
            name = "S3",
            target_id = id.from(_N, "S3DestinationProperties"),
            target = M.S3DestinationProperties,
        }),
        Salesforce = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "Salesforce"),
            type = "structure",
            name = "Salesforce",
            target_id = id.from(_N, "SalesforceDestinationProperties"),
            target = M.SalesforceDestinationProperties,
        }),
        Snowflake = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "Snowflake"),
            type = "structure",
            name = "Snowflake",
            target_id = id.from(_N, "SnowflakeDestinationProperties"),
            target = M.SnowflakeDestinationProperties,
        }),
        EventBridge = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "EventBridge"),
            type = "structure",
            name = "EventBridge",
            target_id = id.from(_N, "EventBridgeDestinationProperties"),
            target = M.EventBridgeDestinationProperties,
        }),
        LookoutMetrics = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "LookoutMetrics"),
            type = "structure",
            name = "LookoutMetrics",
            target_id = id.from(_N, "LookoutMetricsDestinationProperties"),
            target = M.LookoutMetricsDestinationProperties,
        }),
        Upsolver = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "Upsolver"),
            type = "structure",
            name = "Upsolver",
            target_id = id.from(_N, "UpsolverDestinationProperties"),
            target = M.UpsolverDestinationProperties,
        }),
        Honeycode = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "Honeycode"),
            type = "structure",
            name = "Honeycode",
            target_id = id.from(_N, "HoneycodeDestinationProperties"),
            target = M.HoneycodeDestinationProperties,
        }),
        CustomerProfiles = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "CustomerProfiles"),
            type = "structure",
            name = "CustomerProfiles",
            target_id = id.from(_N, "CustomerProfilesDestinationProperties"),
            target = M.CustomerProfilesDestinationProperties,
        }),
        Zendesk = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "Zendesk"),
            type = "structure",
            name = "Zendesk",
            target_id = id.from(_N, "ZendeskDestinationProperties"),
            target = M.ZendeskDestinationProperties,
        }),
        Marketo = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "Marketo"),
            type = "structure",
            name = "Marketo",
            target_id = id.from(_N, "MarketoDestinationProperties"),
            target = M.MarketoDestinationProperties,
        }),
        CustomConnector = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "CustomConnector"),
            type = "structure",
            name = "CustomConnector",
            target_id = id.from(_N, "CustomConnectorDestinationProperties"),
            target = M.CustomConnectorDestinationProperties,
        }),
        SAPOData = schema.new({
            id = id.from(_N, "DestinationConnectorProperties", "SAPOData"),
            type = "structure",
            name = "SAPOData",
            target_id = id.from(_N, "SAPODataDestinationProperties"),
            target = M.SAPODataDestinationProperties,
        }),
    },
})

M.DestinationFlowConfig = schema.new({
    id = id.from(_N, "DestinationFlowConfig"),
    type = "structure",
    members = {
        connectorType = schema.new({
            id = id.from(_N, "DestinationFlowConfig", "connectorType"),
            type = "string",
            name = "connectorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiVersion = schema.new({
            id = id.from(_N, "DestinationFlowConfig", "apiVersion"),
            type = "string",
            name = "apiVersion",
            target_id = prelude.String.id,
        }),
        connectorProfileName = schema.new({
            id = id.from(_N, "DestinationFlowConfig", "connectorProfileName"),
            type = "string",
            name = "connectorProfileName",
            target_id = prelude.String.id,
        }),
        destinationConnectorProperties = schema.new({
            id = id.from(_N, "DestinationFlowConfig", "destinationConnectorProperties"),
            type = "structure",
            name = "destinationConnectorProperties",
            target_id = id.from(_N, "DestinationConnectorProperties"),
            target = M.DestinationConnectorProperties,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GlueDataCatalogConfig = schema.new({
    id = id.from(_N, "GlueDataCatalogConfig"),
    type = "structure",
    members = {
        roleArn = schema.new({
            id = id.from(_N, "GlueDataCatalogConfig", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "GlueDataCatalogConfig", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tablePrefix = schema.new({
            id = id.from(_N, "GlueDataCatalogConfig", "tablePrefix"),
            type = "string",
            name = "tablePrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetadataCatalogConfig = schema.new({
    id = id.from(_N, "MetadataCatalogConfig"),
    type = "structure",
    members = {
        glueDataCatalog = schema.new({
            id = id.from(_N, "MetadataCatalogConfig", "glueDataCatalog"),
            type = "structure",
            name = "glueDataCatalog",
            target_id = id.from(_N, "GlueDataCatalogConfig"),
            target = M.GlueDataCatalogConfig,
        }),
    },
})

M.IncrementalPullConfig = schema.new({
    id = id.from(_N, "IncrementalPullConfig"),
    type = "structure",
    members = {
        datetimeTypeFieldName = schema.new({
            id = id.from(_N, "IncrementalPullConfig", "datetimeTypeFieldName"),
            type = "string",
            name = "datetimeTypeFieldName",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomConnectorSourceProperties = schema.new({
    id = id.from(_N, "CustomConnectorSourceProperties"),
    type = "structure",
    members = {
        entityName = schema.new({
            id = id.from(_N, "CustomConnectorSourceProperties", "entityName"),
            type = "string",
            name = "entityName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        customProperties = schema.new({
            id = id.from(_N, "CustomConnectorSourceProperties", "customProperties"),
            type = "map",
            name = "customProperties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        dataTransferApi = schema.new({
            id = id.from(_N, "CustomConnectorSourceProperties", "dataTransferApi"),
            type = "structure",
            name = "dataTransferApi",
            target_id = id.from(_N, "DataTransferApi"),
            target = M.DataTransferApi,
        }),
    },
})

M.DatadogSourceProperties = schema.new({
    id = id.from(_N, "DatadogSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "DatadogSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DynatraceSourceProperties = schema.new({
    id = id.from(_N, "DynatraceSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "DynatraceSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GoogleAnalyticsSourceProperties = schema.new({
    id = id.from(_N, "GoogleAnalyticsSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "GoogleAnalyticsSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InforNexusSourceProperties = schema.new({
    id = id.from(_N, "InforNexusSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "InforNexusSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MarketoSourceProperties = schema.new({
    id = id.from(_N, "MarketoSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "MarketoSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PardotSourceProperties = schema.new({
    id = id.from(_N, "PardotSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "PardotSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3InputFormatConfig = schema.new({
    id = id.from(_N, "S3InputFormatConfig"),
    type = "structure",
    members = {
        s3InputFileType = schema.new({
            id = id.from(_N, "S3InputFormatConfig", "s3InputFileType"),
            type = "string",
            name = "s3InputFileType",
            target_id = prelude.String.id,
        }),
    },
})

M.S3SourceProperties = schema.new({
    id = id.from(_N, "S3SourceProperties"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "S3SourceProperties", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bucketPrefix = schema.new({
            id = id.from(_N, "S3SourceProperties", "bucketPrefix"),
            type = "string",
            name = "bucketPrefix",
            target_id = prelude.String.id,
        }),
        s3InputFormatConfig = schema.new({
            id = id.from(_N, "S3SourceProperties", "s3InputFormatConfig"),
            type = "structure",
            name = "s3InputFormatConfig",
            target_id = id.from(_N, "S3InputFormatConfig"),
            target = M.S3InputFormatConfig,
        }),
    },
})

M.SalesforceSourceProperties = schema.new({
    id = id.from(_N, "SalesforceSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "SalesforceSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        enableDynamicFieldUpdate = schema.new({
            id = id.from(_N, "SalesforceSourceProperties", "enableDynamicFieldUpdate"),
            type = "boolean",
            name = "enableDynamicFieldUpdate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        includeDeletedRecords = schema.new({
            id = id.from(_N, "SalesforceSourceProperties", "includeDeletedRecords"),
            type = "boolean",
            name = "includeDeletedRecords",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        dataTransferApi = schema.new({
            id = id.from(_N, "SalesforceSourceProperties", "dataTransferApi"),
            type = "string",
            name = "dataTransferApi",
            target_id = prelude.String.id,
        }),
    },
})

M.SAPODataPaginationConfig = schema.new({
    id = id.from(_N, "SAPODataPaginationConfig"),
    type = "structure",
    members = {
        maxPageSize = schema.new({
            id = id.from(_N, "SAPODataPaginationConfig", "maxPageSize"),
            type = "integer",
            name = "maxPageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SAPODataParallelismConfig = schema.new({
    id = id.from(_N, "SAPODataParallelismConfig"),
    type = "structure",
    members = {
        maxParallelism = schema.new({
            id = id.from(_N, "SAPODataParallelismConfig", "maxParallelism"),
            type = "integer",
            name = "maxParallelism",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SAPODataSourceProperties = schema.new({
    id = id.from(_N, "SAPODataSourceProperties"),
    type = "structure",
    members = {
        objectPath = schema.new({
            id = id.from(_N, "SAPODataSourceProperties", "objectPath"),
            type = "string",
            name = "objectPath",
            target_id = prelude.String.id,
        }),
        parallelismConfig = schema.new({
            id = id.from(_N, "SAPODataSourceProperties", "parallelismConfig"),
            type = "structure",
            name = "parallelismConfig",
            target_id = id.from(_N, "SAPODataParallelismConfig"),
            target = M.SAPODataParallelismConfig,
        }),
        paginationConfig = schema.new({
            id = id.from(_N, "SAPODataSourceProperties", "paginationConfig"),
            type = "structure",
            name = "paginationConfig",
            target_id = id.from(_N, "SAPODataPaginationConfig"),
            target = M.SAPODataPaginationConfig,
        }),
    },
})

M.ServiceNowSourceProperties = schema.new({
    id = id.from(_N, "ServiceNowSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "ServiceNowSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SingularSourceProperties = schema.new({
    id = id.from(_N, "SingularSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "SingularSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SlackSourceProperties = schema.new({
    id = id.from(_N, "SlackSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "SlackSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TrendmicroSourceProperties = schema.new({
    id = id.from(_N, "TrendmicroSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "TrendmicroSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VeevaSourceProperties = schema.new({
    id = id.from(_N, "VeevaSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "VeevaSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        documentType = schema.new({
            id = id.from(_N, "VeevaSourceProperties", "documentType"),
            type = "string",
            name = "documentType",
            target_id = prelude.String.id,
        }),
        includeSourceFiles = schema.new({
            id = id.from(_N, "VeevaSourceProperties", "includeSourceFiles"),
            type = "boolean",
            name = "includeSourceFiles",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        includeRenditions = schema.new({
            id = id.from(_N, "VeevaSourceProperties", "includeRenditions"),
            type = "boolean",
            name = "includeRenditions",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        includeAllVersions = schema.new({
            id = id.from(_N, "VeevaSourceProperties", "includeAllVersions"),
            type = "boolean",
            name = "includeAllVersions",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ZendeskSourceProperties = schema.new({
    id = id.from(_N, "ZendeskSourceProperties"),
    type = "structure",
    members = {
        object = schema.new({
            id = id.from(_N, "ZendeskSourceProperties", "object"),
            type = "string",
            name = "object",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SourceConnectorProperties = schema.new({
    id = id.from(_N, "SourceConnectorProperties"),
    type = "structure",
    members = {
        Amplitude = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "Amplitude"),
            type = "structure",
            name = "Amplitude",
            target_id = id.from(_N, "AmplitudeSourceProperties"),
            target = M.AmplitudeSourceProperties,
        }),
        Datadog = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "Datadog"),
            type = "structure",
            name = "Datadog",
            target_id = id.from(_N, "DatadogSourceProperties"),
            target = M.DatadogSourceProperties,
        }),
        Dynatrace = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "Dynatrace"),
            type = "structure",
            name = "Dynatrace",
            target_id = id.from(_N, "DynatraceSourceProperties"),
            target = M.DynatraceSourceProperties,
        }),
        GoogleAnalytics = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "GoogleAnalytics"),
            type = "structure",
            name = "GoogleAnalytics",
            target_id = id.from(_N, "GoogleAnalyticsSourceProperties"),
            target = M.GoogleAnalyticsSourceProperties,
        }),
        InforNexus = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "InforNexus"),
            type = "structure",
            name = "InforNexus",
            target_id = id.from(_N, "InforNexusSourceProperties"),
            target = M.InforNexusSourceProperties,
        }),
        Marketo = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "Marketo"),
            type = "structure",
            name = "Marketo",
            target_id = id.from(_N, "MarketoSourceProperties"),
            target = M.MarketoSourceProperties,
        }),
        S3 = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "S3"),
            type = "structure",
            name = "S3",
            target_id = id.from(_N, "S3SourceProperties"),
            target = M.S3SourceProperties,
        }),
        Salesforce = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "Salesforce"),
            type = "structure",
            name = "Salesforce",
            target_id = id.from(_N, "SalesforceSourceProperties"),
            target = M.SalesforceSourceProperties,
        }),
        ServiceNow = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "ServiceNow"),
            type = "structure",
            name = "ServiceNow",
            target_id = id.from(_N, "ServiceNowSourceProperties"),
            target = M.ServiceNowSourceProperties,
        }),
        Singular = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "Singular"),
            type = "structure",
            name = "Singular",
            target_id = id.from(_N, "SingularSourceProperties"),
            target = M.SingularSourceProperties,
        }),
        Slack = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "Slack"),
            type = "structure",
            name = "Slack",
            target_id = id.from(_N, "SlackSourceProperties"),
            target = M.SlackSourceProperties,
        }),
        Trendmicro = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "Trendmicro"),
            type = "structure",
            name = "Trendmicro",
            target_id = id.from(_N, "TrendmicroSourceProperties"),
            target = M.TrendmicroSourceProperties,
        }),
        Veeva = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "Veeva"),
            type = "structure",
            name = "Veeva",
            target_id = id.from(_N, "VeevaSourceProperties"),
            target = M.VeevaSourceProperties,
        }),
        Zendesk = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "Zendesk"),
            type = "structure",
            name = "Zendesk",
            target_id = id.from(_N, "ZendeskSourceProperties"),
            target = M.ZendeskSourceProperties,
        }),
        SAPOData = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "SAPOData"),
            type = "structure",
            name = "SAPOData",
            target_id = id.from(_N, "SAPODataSourceProperties"),
            target = M.SAPODataSourceProperties,
        }),
        CustomConnector = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "CustomConnector"),
            type = "structure",
            name = "CustomConnector",
            target_id = id.from(_N, "CustomConnectorSourceProperties"),
            target = M.CustomConnectorSourceProperties,
        }),
        Pardot = schema.new({
            id = id.from(_N, "SourceConnectorProperties", "Pardot"),
            type = "structure",
            name = "Pardot",
            target_id = id.from(_N, "PardotSourceProperties"),
            target = M.PardotSourceProperties,
        }),
    },
})

M.SourceFlowConfig = schema.new({
    id = id.from(_N, "SourceFlowConfig"),
    type = "structure",
    members = {
        connectorType = schema.new({
            id = id.from(_N, "SourceFlowConfig", "connectorType"),
            type = "string",
            name = "connectorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiVersion = schema.new({
            id = id.from(_N, "SourceFlowConfig", "apiVersion"),
            type = "string",
            name = "apiVersion",
            target_id = prelude.String.id,
        }),
        connectorProfileName = schema.new({
            id = id.from(_N, "SourceFlowConfig", "connectorProfileName"),
            type = "string",
            name = "connectorProfileName",
            target_id = prelude.String.id,
        }),
        sourceConnectorProperties = schema.new({
            id = id.from(_N, "SourceFlowConfig", "sourceConnectorProperties"),
            type = "structure",
            name = "sourceConnectorProperties",
            target_id = id.from(_N, "SourceConnectorProperties"),
            target = M.SourceConnectorProperties,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        incrementalPullConfig = schema.new({
            id = id.from(_N, "SourceFlowConfig", "incrementalPullConfig"),
            type = "structure",
            name = "incrementalPullConfig",
            target_id = id.from(_N, "IncrementalPullConfig"),
            target = M.IncrementalPullConfig,
        }),
    },
})

M.Task = schema.new({
    id = id.from(_N, "Task"),
    type = "structure",
    members = {
        sourceFields = schema.new({
            id = id.from(_N, "Task", "sourceFields"),
            type = "list",
            name = "sourceFields",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectorOperator = schema.new({
            id = id.from(_N, "Task", "connectorOperator"),
            type = "structure",
            name = "connectorOperator",
            target_id = id.from(_N, "ConnectorOperator"),
            target = M.ConnectorOperator,
        }),
        destinationField = schema.new({
            id = id.from(_N, "Task", "destinationField"),
            type = "string",
            name = "destinationField",
            target_id = prelude.String.id,
        }),
        taskType = schema.new({
            id = id.from(_N, "Task", "taskType"),
            type = "string",
            name = "taskType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        taskProperties = schema.new({
            id = id.from(_N, "Task", "taskProperties"),
            type = "map",
            name = "taskProperties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ScheduledTriggerProperties = schema.new({
    id = id.from(_N, "ScheduledTriggerProperties"),
    type = "structure",
    members = {
        scheduleExpression = schema.new({
            id = id.from(_N, "ScheduledTriggerProperties", "scheduleExpression"),
            type = "string",
            name = "scheduleExpression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataPullMode = schema.new({
            id = id.from(_N, "ScheduledTriggerProperties", "dataPullMode"),
            type = "string",
            name = "dataPullMode",
            target_id = prelude.String.id,
        }),
        scheduleStartTime = schema.new({
            id = id.from(_N, "ScheduledTriggerProperties", "scheduleStartTime"),
            type = "timestamp",
            name = "scheduleStartTime",
            target_id = prelude.Timestamp.id,
        }),
        scheduleEndTime = schema.new({
            id = id.from(_N, "ScheduledTriggerProperties", "scheduleEndTime"),
            type = "timestamp",
            name = "scheduleEndTime",
            target_id = prelude.Timestamp.id,
        }),
        timezone = schema.new({
            id = id.from(_N, "ScheduledTriggerProperties", "timezone"),
            type = "string",
            name = "timezone",
            target_id = prelude.String.id,
        }),
        scheduleOffset = schema.new({
            id = id.from(_N, "ScheduledTriggerProperties", "scheduleOffset"),
            type = "long",
            name = "scheduleOffset",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        firstExecutionFrom = schema.new({
            id = id.from(_N, "ScheduledTriggerProperties", "firstExecutionFrom"),
            type = "timestamp",
            name = "firstExecutionFrom",
            target_id = prelude.Timestamp.id,
        }),
        flowErrorDeactivationThreshold = schema.new({
            id = id.from(_N, "ScheduledTriggerProperties", "flowErrorDeactivationThreshold"),
            type = "integer",
            name = "flowErrorDeactivationThreshold",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TriggerProperties = schema.new({
    id = id.from(_N, "TriggerProperties"),
    type = "structure",
    members = {
        Scheduled = schema.new({
            id = id.from(_N, "TriggerProperties", "Scheduled"),
            type = "structure",
            name = "Scheduled",
            target_id = id.from(_N, "ScheduledTriggerProperties"),
            target = M.ScheduledTriggerProperties,
        }),
    },
})

M.TriggerConfig = schema.new({
    id = id.from(_N, "TriggerConfig"),
    type = "structure",
    members = {
        triggerType = schema.new({
            id = id.from(_N, "TriggerConfig", "triggerType"),
            type = "string",
            name = "triggerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        triggerProperties = schema.new({
            id = id.from(_N, "TriggerConfig", "triggerProperties"),
            type = "structure",
            name = "triggerProperties",
            target_id = id.from(_N, "TriggerProperties"),
            target = M.TriggerProperties,
        }),
    },
})

M.CreateFlowInput = schema.new({
    id = id.from(_N, "CreateFlowRequest"),
    type = "structure",
    members = {
        flowName = schema.new({
            id = id.from(_N, "CreateFlowInput", "flowName"),
            type = "string",
            name = "flowName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateFlowInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        kmsArn = schema.new({
            id = id.from(_N, "CreateFlowInput", "kmsArn"),
            type = "string",
            name = "kmsArn",
            target_id = prelude.String.id,
        }),
        triggerConfig = schema.new({
            id = id.from(_N, "CreateFlowInput", "triggerConfig"),
            type = "structure",
            name = "triggerConfig",
            target_id = id.from(_N, "TriggerConfig"),
            target = M.TriggerConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceFlowConfig = schema.new({
            id = id.from(_N, "CreateFlowInput", "sourceFlowConfig"),
            type = "structure",
            name = "sourceFlowConfig",
            target_id = id.from(_N, "SourceFlowConfig"),
            target = M.SourceFlowConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationFlowConfigList = schema.new({
            id = id.from(_N, "CreateFlowInput", "destinationFlowConfigList"),
            type = "list",
            name = "destinationFlowConfigList",
            target_id = prelude.Document.id,
            list_member = M.DestinationFlowConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tasks = schema.new({
            id = id.from(_N, "CreateFlowInput", "tasks"),
            type = "list",
            name = "tasks",
            target_id = prelude.Document.id,
            list_member = M.Task,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateFlowInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        metadataCatalogConfig = schema.new({
            id = id.from(_N, "CreateFlowInput", "metadataCatalogConfig"),
            type = "structure",
            name = "metadataCatalogConfig",
            target_id = id.from(_N, "MetadataCatalogConfig"),
            target = M.MetadataCatalogConfig,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateFlowInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateFlowOutput = schema.new({
    id = id.from(_N, "CreateFlowResponse"),
    type = "structure",
    members = {
        flowArn = schema.new({
            id = id.from(_N, "CreateFlowOutput", "flowArn"),
            type = "string",
            name = "flowArn",
            target_id = prelude.String.id,
        }),
        flowStatus = schema.new({
            id = id.from(_N, "CreateFlowOutput", "flowStatus"),
            type = "string",
            name = "flowStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteConnectorProfileInput = schema.new({
    id = id.from(_N, "DeleteConnectorProfileRequest"),
    type = "structure",
    members = {
        connectorProfileName = schema.new({
            id = id.from(_N, "DeleteConnectorProfileInput", "connectorProfileName"),
            type = "string",
            name = "connectorProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        forceDelete = schema.new({
            id = id.from(_N, "DeleteConnectorProfileInput", "forceDelete"),
            type = "boolean",
            name = "forceDelete",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteConnectorProfileOutput = schema.new({
    id = id.from(_N, "DeleteConnectorProfileResponse"),
    type = "structure",
})

M.DeleteFlowInput = schema.new({
    id = id.from(_N, "DeleteFlowRequest"),
    type = "structure",
    members = {
        flowName = schema.new({
            id = id.from(_N, "DeleteFlowInput", "flowName"),
            type = "string",
            name = "flowName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        forceDelete = schema.new({
            id = id.from(_N, "DeleteFlowInput", "forceDelete"),
            type = "boolean",
            name = "forceDelete",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteFlowOutput = schema.new({
    id = id.from(_N, "DeleteFlowResponse"),
    type = "structure",
})

M.DescribeConnectorInput = schema.new({
    id = id.from(_N, "DescribeConnectorRequest"),
    type = "structure",
    members = {
        connectorType = schema.new({
            id = id.from(_N, "DescribeConnectorInput", "connectorType"),
            type = "string",
            name = "connectorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectorLabel = schema.new({
            id = id.from(_N, "DescribeConnectorInput", "connectorLabel"),
            type = "string",
            name = "connectorLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectorOutput = schema.new({
    id = id.from(_N, "DescribeConnectorResponse"),
    type = "structure",
    members = {
        connectorConfiguration = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "connectorConfiguration"),
            type = "structure",
            name = "connectorConfiguration",
            target_id = id.from(_N, "ConnectorConfiguration"),
            target = M.ConnectorConfiguration,
        }),
    },
})

M.DescribeConnectorEntityInput = schema.new({
    id = id.from(_N, "DescribeConnectorEntityRequest"),
    type = "structure",
    members = {
        connectorEntityName = schema.new({
            id = id.from(_N, "DescribeConnectorEntityInput", "connectorEntityName"),
            type = "string",
            name = "connectorEntityName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectorType = schema.new({
            id = id.from(_N, "DescribeConnectorEntityInput", "connectorType"),
            type = "string",
            name = "connectorType",
            target_id = prelude.String.id,
        }),
        connectorProfileName = schema.new({
            id = id.from(_N, "DescribeConnectorEntityInput", "connectorProfileName"),
            type = "string",
            name = "connectorProfileName",
            target_id = prelude.String.id,
        }),
        apiVersion = schema.new({
            id = id.from(_N, "DescribeConnectorEntityInput", "apiVersion"),
            type = "string",
            name = "apiVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectorEntityOutput = schema.new({
    id = id.from(_N, "DescribeConnectorEntityResponse"),
    type = "structure",
    members = {
        connectorEntityFields = schema.new({
            id = id.from(_N, "DescribeConnectorEntityOutput", "connectorEntityFields"),
            type = "list",
            name = "connectorEntityFields",
            target_id = prelude.Document.id,
            list_member = M.ConnectorEntityField,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeConnectorProfilesInput = schema.new({
    id = id.from(_N, "DescribeConnectorProfilesRequest"),
    type = "structure",
    members = {
        connectorProfileNames = schema.new({
            id = id.from(_N, "DescribeConnectorProfilesInput", "connectorProfileNames"),
            type = "list",
            name = "connectorProfileNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        connectorType = schema.new({
            id = id.from(_N, "DescribeConnectorProfilesInput", "connectorType"),
            type = "string",
            name = "connectorType",
            target_id = prelude.String.id,
        }),
        connectorLabel = schema.new({
            id = id.from(_N, "DescribeConnectorProfilesInput", "connectorLabel"),
            type = "string",
            name = "connectorLabel",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeConnectorProfilesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeConnectorProfilesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectorProfilesOutput = schema.new({
    id = id.from(_N, "DescribeConnectorProfilesResponse"),
    type = "structure",
    members = {
        connectorProfileDetails = schema.new({
            id = id.from(_N, "DescribeConnectorProfilesOutput", "connectorProfileDetails"),
            type = "list",
            name = "connectorProfileDetails",
            target_id = prelude.Document.id,
            list_member = M.ConnectorProfile,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeConnectorProfilesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectorsInput = schema.new({
    id = id.from(_N, "DescribeConnectorsRequest"),
    type = "structure",
    members = {
        connectorTypes = schema.new({
            id = id.from(_N, "DescribeConnectorsInput", "connectorTypes"),
            type = "list",
            name = "connectorTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeConnectorsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeConnectorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectorsOutput = schema.new({
    id = id.from(_N, "DescribeConnectorsResponse"),
    type = "structure",
    members = {
        connectorConfigurations = schema.new({
            id = id.from(_N, "DescribeConnectorsOutput", "connectorConfigurations"),
            type = "map",
            name = "connectorConfigurations",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ConnectorConfiguration,
        }),
        connectors = schema.new({
            id = id.from(_N, "DescribeConnectorsOutput", "connectors"),
            type = "list",
            name = "connectors",
            target_id = prelude.Document.id,
            list_member = M.ConnectorDetail,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeConnectorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFlowInput = schema.new({
    id = id.from(_N, "DescribeFlowRequest"),
    type = "structure",
    members = {
        flowName = schema.new({
            id = id.from(_N, "DescribeFlowInput", "flowName"),
            type = "string",
            name = "flowName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExecutionDetails = schema.new({
    id = id.from(_N, "ExecutionDetails"),
    type = "structure",
    members = {
        mostRecentExecutionMessage = schema.new({
            id = id.from(_N, "ExecutionDetails", "mostRecentExecutionMessage"),
            type = "string",
            name = "mostRecentExecutionMessage",
            target_id = prelude.String.id,
        }),
        mostRecentExecutionTime = schema.new({
            id = id.from(_N, "ExecutionDetails", "mostRecentExecutionTime"),
            type = "timestamp",
            name = "mostRecentExecutionTime",
            target_id = prelude.Timestamp.id,
        }),
        mostRecentExecutionStatus = schema.new({
            id = id.from(_N, "ExecutionDetails", "mostRecentExecutionStatus"),
            type = "string",
            name = "mostRecentExecutionStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistrationOutput = schema.new({
    id = id.from(_N, "RegistrationOutput"),
    type = "structure",
    members = {
        message = schema.new({
            id = id.from(_N, "RegistrationOutput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        result = schema.new({
            id = id.from(_N, "RegistrationOutput", "result"),
            type = "string",
            name = "result",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "RegistrationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.MetadataCatalogDetail = schema.new({
    id = id.from(_N, "MetadataCatalogDetail"),
    type = "structure",
    members = {
        catalogType = schema.new({
            id = id.from(_N, "MetadataCatalogDetail", "catalogType"),
            type = "string",
            name = "catalogType",
            target_id = prelude.String.id,
        }),
        tableName = schema.new({
            id = id.from(_N, "MetadataCatalogDetail", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
        }),
        tableRegistrationOutput = schema.new({
            id = id.from(_N, "MetadataCatalogDetail", "tableRegistrationOutput"),
            type = "structure",
            name = "tableRegistrationOutput",
            target_id = id.from(_N, "RegistrationOutput"),
            target = M.RegistrationOutput,
        }),
        partitionRegistrationOutput = schema.new({
            id = id.from(_N, "MetadataCatalogDetail", "partitionRegistrationOutput"),
            type = "structure",
            name = "partitionRegistrationOutput",
            target_id = id.from(_N, "RegistrationOutput"),
            target = M.RegistrationOutput,
        }),
    },
})

M.DescribeFlowOutput = schema.new({
    id = id.from(_N, "DescribeFlowResponse"),
    type = "structure",
    members = {
        flowArn = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "flowArn"),
            type = "string",
            name = "flowArn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        flowName = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "flowName"),
            type = "string",
            name = "flowName",
            target_id = prelude.String.id,
        }),
        kmsArn = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "kmsArn"),
            type = "string",
            name = "kmsArn",
            target_id = prelude.String.id,
        }),
        flowStatus = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "flowStatus"),
            type = "string",
            name = "flowStatus",
            target_id = prelude.String.id,
        }),
        flowStatusMessage = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "flowStatusMessage"),
            type = "string",
            name = "flowStatusMessage",
            target_id = prelude.String.id,
        }),
        sourceFlowConfig = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "sourceFlowConfig"),
            type = "structure",
            name = "sourceFlowConfig",
            target_id = id.from(_N, "SourceFlowConfig"),
            target = M.SourceFlowConfig,
        }),
        destinationFlowConfigList = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "destinationFlowConfigList"),
            type = "list",
            name = "destinationFlowConfigList",
            target_id = prelude.Document.id,
            list_member = M.DestinationFlowConfig,
        }),
        lastRunExecutionDetails = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "lastRunExecutionDetails"),
            type = "structure",
            name = "lastRunExecutionDetails",
            target_id = id.from(_N, "ExecutionDetails"),
            target = M.ExecutionDetails,
        }),
        triggerConfig = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "triggerConfig"),
            type = "structure",
            name = "triggerConfig",
            target_id = id.from(_N, "TriggerConfig"),
            target = M.TriggerConfig,
        }),
        tasks = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "tasks"),
            type = "list",
            name = "tasks",
            target_id = prelude.Document.id,
            list_member = M.Task,
        }),
        createdAt = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        createdBy = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
        }),
        lastUpdatedBy = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "lastUpdatedBy"),
            type = "string",
            name = "lastUpdatedBy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        metadataCatalogConfig = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "metadataCatalogConfig"),
            type = "structure",
            name = "metadataCatalogConfig",
            target_id = id.from(_N, "MetadataCatalogConfig"),
            target = M.MetadataCatalogConfig,
        }),
        lastRunMetadataCatalogDetails = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "lastRunMetadataCatalogDetails"),
            type = "list",
            name = "lastRunMetadataCatalogDetails",
            target_id = prelude.Document.id,
            list_member = M.MetadataCatalogDetail,
        }),
        schemaVersion = schema.new({
            id = id.from(_N, "DescribeFlowOutput", "schemaVersion"),
            type = "long",
            name = "schemaVersion",
            target_id = prelude.Long.id,
        }),
    },
})

M.DescribeFlowExecutionRecordsInput = schema.new({
    id = id.from(_N, "DescribeFlowExecutionRecordsRequest"),
    type = "structure",
    members = {
        flowName = schema.new({
            id = id.from(_N, "DescribeFlowExecutionRecordsInput", "flowName"),
            type = "string",
            name = "flowName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeFlowExecutionRecordsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeFlowExecutionRecordsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ErrorInfo = schema.new({
    id = id.from(_N, "ErrorInfo"),
    type = "structure",
    members = {
        putFailuresCount = schema.new({
            id = id.from(_N, "ErrorInfo", "putFailuresCount"),
            type = "long",
            name = "putFailuresCount",
            target_id = prelude.Long.id,
        }),
        executionMessage = schema.new({
            id = id.from(_N, "ErrorInfo", "executionMessage"),
            type = "string",
            name = "executionMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ExecutionResult = schema.new({
    id = id.from(_N, "ExecutionResult"),
    type = "structure",
    members = {
        errorInfo = schema.new({
            id = id.from(_N, "ExecutionResult", "errorInfo"),
            type = "structure",
            name = "errorInfo",
            target_id = id.from(_N, "ErrorInfo"),
            target = M.ErrorInfo,
        }),
        bytesProcessed = schema.new({
            id = id.from(_N, "ExecutionResult", "bytesProcessed"),
            type = "long",
            name = "bytesProcessed",
            target_id = prelude.Long.id,
        }),
        bytesWritten = schema.new({
            id = id.from(_N, "ExecutionResult", "bytesWritten"),
            type = "long",
            name = "bytesWritten",
            target_id = prelude.Long.id,
        }),
        recordsProcessed = schema.new({
            id = id.from(_N, "ExecutionResult", "recordsProcessed"),
            type = "long",
            name = "recordsProcessed",
            target_id = prelude.Long.id,
        }),
        numParallelProcesses = schema.new({
            id = id.from(_N, "ExecutionResult", "numParallelProcesses"),
            type = "long",
            name = "numParallelProcesses",
            target_id = prelude.Long.id,
        }),
        maxPageSize = schema.new({
            id = id.from(_N, "ExecutionResult", "maxPageSize"),
            type = "long",
            name = "maxPageSize",
            target_id = prelude.Long.id,
        }),
    },
})

M.ExecutionRecord = schema.new({
    id = id.from(_N, "ExecutionRecord"),
    type = "structure",
    members = {
        executionId = schema.new({
            id = id.from(_N, "ExecutionRecord", "executionId"),
            type = "string",
            name = "executionId",
            target_id = prelude.String.id,
        }),
        executionStatus = schema.new({
            id = id.from(_N, "ExecutionRecord", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
        }),
        executionResult = schema.new({
            id = id.from(_N, "ExecutionRecord", "executionResult"),
            type = "structure",
            name = "executionResult",
            target_id = id.from(_N, "ExecutionResult"),
            target = M.ExecutionResult,
        }),
        startedAt = schema.new({
            id = id.from(_N, "ExecutionRecord", "startedAt"),
            type = "timestamp",
            name = "startedAt",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "ExecutionRecord", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        dataPullStartTime = schema.new({
            id = id.from(_N, "ExecutionRecord", "dataPullStartTime"),
            type = "timestamp",
            name = "dataPullStartTime",
            target_id = prelude.Timestamp.id,
        }),
        dataPullEndTime = schema.new({
            id = id.from(_N, "ExecutionRecord", "dataPullEndTime"),
            type = "timestamp",
            name = "dataPullEndTime",
            target_id = prelude.Timestamp.id,
        }),
        metadataCatalogDetails = schema.new({
            id = id.from(_N, "ExecutionRecord", "metadataCatalogDetails"),
            type = "list",
            name = "metadataCatalogDetails",
            target_id = prelude.Document.id,
            list_member = M.MetadataCatalogDetail,
        }),
    },
})

M.DescribeFlowExecutionRecordsOutput = schema.new({
    id = id.from(_N, "DescribeFlowExecutionRecordsResponse"),
    type = "structure",
    members = {
        flowExecutions = schema.new({
            id = id.from(_N, "DescribeFlowExecutionRecordsOutput", "flowExecutions"),
            type = "list",
            name = "flowExecutions",
            target_id = prelude.Document.id,
            list_member = M.ExecutionRecord,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeFlowExecutionRecordsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.FlowDefinition = schema.new({
    id = id.from(_N, "FlowDefinition"),
    type = "structure",
    members = {
        flowArn = schema.new({
            id = id.from(_N, "FlowDefinition", "flowArn"),
            type = "string",
            name = "flowArn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "FlowDefinition", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        flowName = schema.new({
            id = id.from(_N, "FlowDefinition", "flowName"),
            type = "string",
            name = "flowName",
            target_id = prelude.String.id,
        }),
        flowStatus = schema.new({
            id = id.from(_N, "FlowDefinition", "flowStatus"),
            type = "string",
            name = "flowStatus",
            target_id = prelude.String.id,
        }),
        sourceConnectorType = schema.new({
            id = id.from(_N, "FlowDefinition", "sourceConnectorType"),
            type = "string",
            name = "sourceConnectorType",
            target_id = prelude.String.id,
        }),
        sourceConnectorLabel = schema.new({
            id = id.from(_N, "FlowDefinition", "sourceConnectorLabel"),
            type = "string",
            name = "sourceConnectorLabel",
            target_id = prelude.String.id,
        }),
        destinationConnectorType = schema.new({
            id = id.from(_N, "FlowDefinition", "destinationConnectorType"),
            type = "string",
            name = "destinationConnectorType",
            target_id = prelude.String.id,
        }),
        destinationConnectorLabel = schema.new({
            id = id.from(_N, "FlowDefinition", "destinationConnectorLabel"),
            type = "string",
            name = "destinationConnectorLabel",
            target_id = prelude.String.id,
        }),
        triggerType = schema.new({
            id = id.from(_N, "FlowDefinition", "triggerType"),
            type = "string",
            name = "triggerType",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "FlowDefinition", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "FlowDefinition", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        createdBy = schema.new({
            id = id.from(_N, "FlowDefinition", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
        }),
        lastUpdatedBy = schema.new({
            id = id.from(_N, "FlowDefinition", "lastUpdatedBy"),
            type = "string",
            name = "lastUpdatedBy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "FlowDefinition", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        lastRunExecutionDetails = schema.new({
            id = id.from(_N, "FlowDefinition", "lastRunExecutionDetails"),
            type = "structure",
            name = "lastRunExecutionDetails",
            target_id = id.from(_N, "ExecutionDetails"),
            target = M.ExecutionDetails,
        }),
    },
})

M.ListConnectorEntitiesInput = schema.new({
    id = id.from(_N, "ListConnectorEntitiesRequest"),
    type = "structure",
    members = {
        connectorProfileName = schema.new({
            id = id.from(_N, "ListConnectorEntitiesInput", "connectorProfileName"),
            type = "string",
            name = "connectorProfileName",
            target_id = prelude.String.id,
        }),
        connectorType = schema.new({
            id = id.from(_N, "ListConnectorEntitiesInput", "connectorType"),
            type = "string",
            name = "connectorType",
            target_id = prelude.String.id,
        }),
        entitiesPath = schema.new({
            id = id.from(_N, "ListConnectorEntitiesInput", "entitiesPath"),
            type = "string",
            name = "entitiesPath",
            target_id = prelude.String.id,
        }),
        apiVersion = schema.new({
            id = id.from(_N, "ListConnectorEntitiesInput", "apiVersion"),
            type = "string",
            name = "apiVersion",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListConnectorEntitiesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectorEntitiesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectorEntitiesOutput = schema.new({
    id = id.from(_N, "ListConnectorEntitiesResponse"),
    type = "structure",
    members = {
        connectorEntityMap = schema.new({
            id = id.from(_N, "ListConnectorEntitiesOutput", "connectorEntityMap"),
            type = "map",
            name = "connectorEntityMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.ConnectorEntity }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectorEntitiesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectorsInput = schema.new({
    id = id.from(_N, "ListConnectorsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListConnectorsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectorsOutput = schema.new({
    id = id.from(_N, "ListConnectorsResponse"),
    type = "structure",
    members = {
        connectors = schema.new({
            id = id.from(_N, "ListConnectorsOutput", "connectors"),
            type = "list",
            name = "connectors",
            target_id = prelude.Document.id,
            list_member = M.ConnectorDetail,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFlowsInput = schema.new({
    id = id.from(_N, "ListFlowsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListFlowsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFlowsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFlowsOutput = schema.new({
    id = id.from(_N, "ListFlowsResponse"),
    type = "structure",
    members = {
        flows = schema.new({
            id = id.from(_N, "ListFlowsOutput", "flows"),
            type = "list",
            name = "flows",
            target_id = prelude.Document.id,
            list_member = M.FlowDefinition,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFlowsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
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

M.RegisterConnectorInput = schema.new({
    id = id.from(_N, "RegisterConnectorRequest"),
    type = "structure",
    members = {
        connectorLabel = schema.new({
            id = id.from(_N, "RegisterConnectorInput", "connectorLabel"),
            type = "string",
            name = "connectorLabel",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "RegisterConnectorInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        connectorProvisioningType = schema.new({
            id = id.from(_N, "RegisterConnectorInput", "connectorProvisioningType"),
            type = "string",
            name = "connectorProvisioningType",
            target_id = prelude.String.id,
        }),
        connectorProvisioningConfig = schema.new({
            id = id.from(_N, "RegisterConnectorInput", "connectorProvisioningConfig"),
            type = "structure",
            name = "connectorProvisioningConfig",
            target_id = id.from(_N, "ConnectorProvisioningConfig"),
            target = M.ConnectorProvisioningConfig,
        }),
        clientToken = schema.new({
            id = id.from(_N, "RegisterConnectorInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.RegisterConnectorOutput = schema.new({
    id = id.from(_N, "RegisterConnectorResponse"),
    type = "structure",
    members = {
        connectorArn = schema.new({
            id = id.from(_N, "RegisterConnectorOutput", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ResetConnectorMetadataCacheInput = schema.new({
    id = id.from(_N, "ResetConnectorMetadataCacheRequest"),
    type = "structure",
    members = {
        connectorProfileName = schema.new({
            id = id.from(_N, "ResetConnectorMetadataCacheInput", "connectorProfileName"),
            type = "string",
            name = "connectorProfileName",
            target_id = prelude.String.id,
        }),
        connectorType = schema.new({
            id = id.from(_N, "ResetConnectorMetadataCacheInput", "connectorType"),
            type = "string",
            name = "connectorType",
            target_id = prelude.String.id,
        }),
        connectorEntityName = schema.new({
            id = id.from(_N, "ResetConnectorMetadataCacheInput", "connectorEntityName"),
            type = "string",
            name = "connectorEntityName",
            target_id = prelude.String.id,
        }),
        entitiesPath = schema.new({
            id = id.from(_N, "ResetConnectorMetadataCacheInput", "entitiesPath"),
            type = "string",
            name = "entitiesPath",
            target_id = prelude.String.id,
        }),
        apiVersion = schema.new({
            id = id.from(_N, "ResetConnectorMetadataCacheInput", "apiVersion"),
            type = "string",
            name = "apiVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.ResetConnectorMetadataCacheOutput = schema.new({
    id = id.from(_N, "ResetConnectorMetadataCacheResponse"),
    type = "structure",
})

M.StartFlowInput = schema.new({
    id = id.from(_N, "StartFlowRequest"),
    type = "structure",
    members = {
        flowName = schema.new({
            id = id.from(_N, "StartFlowInput", "flowName"),
            type = "string",
            name = "flowName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartFlowInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartFlowOutput = schema.new({
    id = id.from(_N, "StartFlowResponse"),
    type = "structure",
    members = {
        flowArn = schema.new({
            id = id.from(_N, "StartFlowOutput", "flowArn"),
            type = "string",
            name = "flowArn",
            target_id = prelude.String.id,
        }),
        flowStatus = schema.new({
            id = id.from(_N, "StartFlowOutput", "flowStatus"),
            type = "string",
            name = "flowStatus",
            target_id = prelude.String.id,
        }),
        executionId = schema.new({
            id = id.from(_N, "StartFlowOutput", "executionId"),
            type = "string",
            name = "executionId",
            target_id = prelude.String.id,
        }),
    },
})

M.StopFlowInput = schema.new({
    id = id.from(_N, "StopFlowRequest"),
    type = "structure",
    members = {
        flowName = schema.new({
            id = id.from(_N, "StopFlowInput", "flowName"),
            type = "string",
            name = "flowName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopFlowOutput = schema.new({
    id = id.from(_N, "StopFlowResponse"),
    type = "structure",
    members = {
        flowArn = schema.new({
            id = id.from(_N, "StopFlowOutput", "flowArn"),
            type = "string",
            name = "flowArn",
            target_id = prelude.String.id,
        }),
        flowStatus = schema.new({
            id = id.from(_N, "StopFlowOutput", "flowStatus"),
            type = "string",
            name = "flowStatus",
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

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
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
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UnregisterConnectorInput = schema.new({
    id = id.from(_N, "UnregisterConnectorRequest"),
    type = "structure",
    members = {
        connectorLabel = schema.new({
            id = id.from(_N, "UnregisterConnectorInput", "connectorLabel"),
            type = "string",
            name = "connectorLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        forceDelete = schema.new({
            id = id.from(_N, "UnregisterConnectorInput", "forceDelete"),
            type = "boolean",
            name = "forceDelete",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.UnregisterConnectorOutput = schema.new({
    id = id.from(_N, "UnregisterConnectorResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
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
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateConnectorProfileInput = schema.new({
    id = id.from(_N, "UpdateConnectorProfileRequest"),
    type = "structure",
    members = {
        connectorProfileName = schema.new({
            id = id.from(_N, "UpdateConnectorProfileInput", "connectorProfileName"),
            type = "string",
            name = "connectorProfileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectionMode = schema.new({
            id = id.from(_N, "UpdateConnectorProfileInput", "connectionMode"),
            type = "string",
            name = "connectionMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectorProfileConfig = schema.new({
            id = id.from(_N, "UpdateConnectorProfileInput", "connectorProfileConfig"),
            type = "structure",
            name = "connectorProfileConfig",
            target_id = id.from(_N, "ConnectorProfileConfig"),
            target = M.ConnectorProfileConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateConnectorProfileInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateConnectorProfileOutput = schema.new({
    id = id.from(_N, "UpdateConnectorProfileResponse"),
    type = "structure",
    members = {
        connectorProfileArn = schema.new({
            id = id.from(_N, "UpdateConnectorProfileOutput", "connectorProfileArn"),
            type = "string",
            name = "connectorProfileArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConnectorRegistrationInput = schema.new({
    id = id.from(_N, "UpdateConnectorRegistrationRequest"),
    type = "structure",
    members = {
        connectorLabel = schema.new({
            id = id.from(_N, "UpdateConnectorRegistrationInput", "connectorLabel"),
            type = "string",
            name = "connectorLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateConnectorRegistrationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        connectorProvisioningConfig = schema.new({
            id = id.from(_N, "UpdateConnectorRegistrationInput", "connectorProvisioningConfig"),
            type = "structure",
            name = "connectorProvisioningConfig",
            target_id = id.from(_N, "ConnectorProvisioningConfig"),
            target = M.ConnectorProvisioningConfig,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateConnectorRegistrationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateConnectorRegistrationOutput = schema.new({
    id = id.from(_N, "UpdateConnectorRegistrationResponse"),
    type = "structure",
    members = {
        connectorArn = schema.new({
            id = id.from(_N, "UpdateConnectorRegistrationOutput", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFlowInput = schema.new({
    id = id.from(_N, "UpdateFlowRequest"),
    type = "structure",
    members = {
        flowName = schema.new({
            id = id.from(_N, "UpdateFlowInput", "flowName"),
            type = "string",
            name = "flowName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateFlowInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        triggerConfig = schema.new({
            id = id.from(_N, "UpdateFlowInput", "triggerConfig"),
            type = "structure",
            name = "triggerConfig",
            target_id = id.from(_N, "TriggerConfig"),
            target = M.TriggerConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceFlowConfig = schema.new({
            id = id.from(_N, "UpdateFlowInput", "sourceFlowConfig"),
            type = "structure",
            name = "sourceFlowConfig",
            target_id = id.from(_N, "SourceFlowConfig"),
            target = M.SourceFlowConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationFlowConfigList = schema.new({
            id = id.from(_N, "UpdateFlowInput", "destinationFlowConfigList"),
            type = "list",
            name = "destinationFlowConfigList",
            target_id = prelude.Document.id,
            list_member = M.DestinationFlowConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tasks = schema.new({
            id = id.from(_N, "UpdateFlowInput", "tasks"),
            type = "list",
            name = "tasks",
            target_id = prelude.Document.id,
            list_member = M.Task,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metadataCatalogConfig = schema.new({
            id = id.from(_N, "UpdateFlowInput", "metadataCatalogConfig"),
            type = "structure",
            name = "metadataCatalogConfig",
            target_id = id.from(_N, "MetadataCatalogConfig"),
            target = M.MetadataCatalogConfig,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateFlowInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateFlowOutput = schema.new({
    id = id.from(_N, "UpdateFlowResponse"),
    type = "structure",
    members = {
        flowStatus = schema.new({
            id = id.from(_N, "UpdateFlowOutput", "flowStatus"),
            type = "string",
            name = "flowStatus",
            target_id = prelude.String.id,
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
