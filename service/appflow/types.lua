local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AggregationType = {
    NONE = "None",
    SINGLE_FILE = "SingleFile",
}

M.AggregationConfig = {
    type = "structure",
    id = "AggregationConfig",
    members = {
        aggregationType = {
            type = "string",
        },
        targetFileSize = {
            type = "long",
        },
    },
}

M.AmplitudeConnectorOperator = {
    BETWEEN = "BETWEEN",
}

M.AmplitudeConnectorProfileCredentials = {
    type = "structure",
    id = "AmplitudeConnectorProfileCredentials",
    members = {
        apiKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AmplitudeConnectorProfileProperties = {
    type = "structure",
    id = "AmplitudeConnectorProfileProperties",
}

M.AmplitudeMetadata = {
    type = "structure",
    id = "AmplitudeMetadata",
}

M.AmplitudeSourceProperties = {
    type = "structure",
    id = "AmplitudeSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApiKeyCredentials = {
    type = "structure",
    id = "ApiKeyCredentials",
    members = {
        apiKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiSecretKey = {
            type = "string",
        },
    },
}

M.AuthParameter = {
    type = "structure",
    id = "AuthParameter",
    members = {
        key = {
            type = "string",
        },
        isRequired = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        label = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isSensitiveField = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        connectorSuppliedValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CustomAuthConfig = {
    type = "structure",
    id = "CustomAuthConfig",
    members = {
        customAuthenticationType = {
            type = "string",
        },
        authParameters = {
            type = "list",
            member = M.AuthParameter,
        },
    },
}

M.OAuth2CustomPropType = {
    TOKEN_URL = "TOKEN_URL",
    AUTH_URL = "AUTH_URL",
}

M.OAuth2CustomParameter = {
    type = "structure",
    id = "OAuth2CustomParameter",
    members = {
        key = {
            type = "string",
        },
        isRequired = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        label = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isSensitiveField = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        connectorSuppliedValues = {
            type = "list",
            member = { type = "string" },
        },
        type = {
            type = "string",
        },
    },
}

M.OAuth2GrantType = {
    CLIENT_CREDENTIALS = "CLIENT_CREDENTIALS",
    AUTHORIZATION_CODE = "AUTHORIZATION_CODE",
    JWT_BEARER = "JWT_BEARER",
}

M.OAuth2Defaults = {
    type = "structure",
    id = "OAuth2Defaults",
    members = {
        oauthScopes = {
            type = "list",
            member = { type = "string" },
        },
        tokenUrls = {
            type = "list",
            member = { type = "string" },
        },
        authCodeUrls = {
            type = "list",
            member = { type = "string" },
        },
        oauth2GrantTypesSupported = {
            type = "list",
            member = { type = "string" },
        },
        oauth2CustomProperties = {
            type = "list",
            member = M.OAuth2CustomParameter,
        },
    },
}

M.AuthenticationConfig = {
    type = "structure",
    id = "AuthenticationConfig",
    members = {
        isBasicAuthSupported = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isApiKeyAuthSupported = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isOAuth2Supported = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isCustomAuthSupported = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        oAuth2Defaults = M.OAuth2Defaults,
        customAuthConfigs = {
            type = "list",
            member = M.CustomAuthConfig,
        },
    },
}

M.AuthenticationType = {
    OAUTH2 = "OAUTH2",
    APIKEY = "APIKEY",
    BASIC = "BASIC",
    CUSTOM = "CUSTOM",
}

M.BasicAuthCredentials = {
    type = "structure",
    id = "BasicAuthCredentials",
    members = {
        username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        password = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelFlowExecutionsInput = {
    type = "structure",
    id = "CancelFlowExecutionsInput",
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CancelFlowExecutionsOutput = {
    type = "structure",
    id = "CancelFlowExecutionsOutput",
    members = {
        invalidExecutions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CatalogType = {
    GLUE = "GLUE",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConnectionMode = {
    PUBLIC = "Public",
    PRIVATE = "Private",
}

M.ConnectorAuthenticationException = {
    type = "structure",
    id = "ConnectorAuthenticationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomerProfilesMetadata = {
    type = "structure",
    id = "CustomerProfilesMetadata",
}

M.DatadogMetadata = {
    type = "structure",
    id = "DatadogMetadata",
}

M.DynatraceMetadata = {
    type = "structure",
    id = "DynatraceMetadata",
}

M.EventBridgeMetadata = {
    type = "structure",
    id = "EventBridgeMetadata",
}

M.GoogleAnalyticsMetadata = {
    type = "structure",
    id = "GoogleAnalyticsMetadata",
    members = {
        oAuthScopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.HoneycodeMetadata = {
    type = "structure",
    id = "HoneycodeMetadata",
    members = {
        oAuthScopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InforNexusMetadata = {
    type = "structure",
    id = "InforNexusMetadata",
}

M.MarketoMetadata = {
    type = "structure",
    id = "MarketoMetadata",
}

M.PardotMetadata = {
    type = "structure",
    id = "PardotMetadata",
}

M.RedshiftMetadata = {
    type = "structure",
    id = "RedshiftMetadata",
}

M.S3Metadata = {
    type = "structure",
    id = "S3Metadata",
}

M.SalesforceDataTransferApi = {
    AUTOMATIC = "AUTOMATIC",
    BULKV2 = "BULKV2",
    REST_SYNC = "REST_SYNC",
}

M.SalesforceMetadata = {
    type = "structure",
    id = "SalesforceMetadata",
    members = {
        oAuthScopes = {
            type = "list",
            member = { type = "string" },
        },
        dataTransferApis = {
            type = "list",
            member = { type = "string" },
        },
        oauth2GrantTypesSupported = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SAPODataMetadata = {
    type = "structure",
    id = "SAPODataMetadata",
}

M.ServiceNowMetadata = {
    type = "structure",
    id = "ServiceNowMetadata",
}

M.SingularMetadata = {
    type = "structure",
    id = "SingularMetadata",
}

M.SlackMetadata = {
    type = "structure",
    id = "SlackMetadata",
    members = {
        oAuthScopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SnowflakeMetadata = {
    type = "structure",
    id = "SnowflakeMetadata",
    members = {
        supportedRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TrendmicroMetadata = {
    type = "structure",
    id = "TrendmicroMetadata",
}

M.UpsolverMetadata = {
    type = "structure",
    id = "UpsolverMetadata",
}

M.VeevaMetadata = {
    type = "structure",
    id = "VeevaMetadata",
}

M.ZendeskMetadata = {
    type = "structure",
    id = "ZendeskMetadata",
    members = {
        oAuthScopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConnectorMetadata = {
    type = "structure",
    id = "ConnectorMetadata",
    members = {
        Amplitude = M.AmplitudeMetadata,
        Datadog = M.DatadogMetadata,
        Dynatrace = M.DynatraceMetadata,
        GoogleAnalytics = M.GoogleAnalyticsMetadata,
        InforNexus = M.InforNexusMetadata,
        Marketo = M.MarketoMetadata,
        Redshift = M.RedshiftMetadata,
        S3 = M.S3Metadata,
        Salesforce = M.SalesforceMetadata,
        ServiceNow = M.ServiceNowMetadata,
        Singular = M.SingularMetadata,
        Slack = M.SlackMetadata,
        Snowflake = M.SnowflakeMetadata,
        Trendmicro = M.TrendmicroMetadata,
        Veeva = M.VeevaMetadata,
        Zendesk = M.ZendeskMetadata,
        EventBridge = M.EventBridgeMetadata,
        Upsolver = M.UpsolverMetadata,
        CustomerProfiles = M.CustomerProfilesMetadata,
        Honeycode = M.HoneycodeMetadata,
        SAPOData = M.SAPODataMetadata,
        Pardot = M.PardotMetadata,
    },
}

M.LambdaConnectorProvisioningConfig = {
    type = "structure",
    id = "LambdaConnectorProvisioningConfig",
    members = {
        lambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectorProvisioningConfig = {
    type = "structure",
    id = "ConnectorProvisioningConfig",
    members = {
        lambda = M.LambdaConnectorProvisioningConfig,
    },
}

M.ConnectorProvisioningType = {
    LAMBDA = "LAMBDA",
}

M.ConnectorRuntimeSetting = {
    type = "structure",
    id = "ConnectorRuntimeSetting",
    members = {
        key = {
            type = "string",
        },
        dataType = {
            type = "string",
        },
        isRequired = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        label = {
            type = "string",
        },
        description = {
            type = "string",
        },
        scope = {
            type = "string",
        },
        connectorSuppliedValueOptions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConnectorType = {
    SALESFORCE = "Salesforce",
    SINGULAR = "Singular",
    SLACK = "Slack",
    REDSHIFT = "Redshift",
    S3 = "S3",
    MARKETO = "Marketo",
    GOOGLEANALYTICS = "Googleanalytics",
    ZENDESK = "Zendesk",
    SERVICENOW = "Servicenow",
    DATADOG = "Datadog",
    TRENDMICRO = "Trendmicro",
    SNOWFLAKE = "Snowflake",
    DYNATRACE = "Dynatrace",
    INFORNEXUS = "Infornexus",
    AMPLITUDE = "Amplitude",
    VEEVA = "Veeva",
    EVENTBRIDGE = "EventBridge",
    LOOKOUTMETRICS = "LookoutMetrics",
    UPSOLVER = "Upsolver",
    HONEYCODE = "Honeycode",
    CUSTOMERPROFILES = "CustomerProfiles",
    SAPODATA = "SAPOData",
    CUSTOMCONNECTOR = "CustomConnector",
    PARDOT = "Pardot",
}

M.DataTransferApiType = {
    SYNC = "SYNC",
    ASYNC = "ASYNC",
    AUTOMATIC = "AUTOMATIC",
}

M.DataTransferApi = {
    type = "structure",
    id = "DataTransferApi",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.SupportedDataTransferType = {
    RECORD = "RECORD",
    FILE = "FILE",
}

M.Operators = {
    PROJECTION = "PROJECTION",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    CONTAINS = "CONTAINS",
    BETWEEN = "BETWEEN",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.ScheduleFrequencyType = {
    BYMINUTE = "BYMINUTE",
    HOURLY = "HOURLY",
    DAILY = "DAILY",
    WEEKLY = "WEEKLY",
    MONTHLY = "MONTHLY",
    ONCE = "ONCE",
}

M.TriggerType = {
    SCHEDULED = "Scheduled",
    EVENT = "Event",
    ONDEMAND = "OnDemand",
}

M.WriteOperationType = {
    INSERT = "INSERT",
    UPSERT = "UPSERT",
    UPDATE = "UPDATE",
    DELETE = "DELETE",
}

M.ConnectorConfiguration = {
    type = "structure",
    id = "ConnectorConfiguration",
    members = {
        canUseAsSource = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        canUseAsDestination = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        supportedDestinationConnectors = {
            type = "list",
            member = { type = "string" },
        },
        supportedSchedulingFrequencies = {
            type = "list",
            member = { type = "string" },
        },
        isPrivateLinkEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isPrivateLinkEndpointUrlRequired = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        supportedTriggerTypes = {
            type = "list",
            member = { type = "string" },
        },
        connectorMetadata = M.ConnectorMetadata,
        connectorType = {
            type = "string",
        },
        connectorLabel = {
            type = "string",
        },
        connectorDescription = {
            type = "string",
        },
        connectorOwner = {
            type = "string",
        },
        connectorName = {
            type = "string",
        },
        connectorVersion = {
            type = "string",
        },
        connectorArn = {
            type = "string",
        },
        connectorModes = {
            type = "list",
            member = { type = "string" },
        },
        authenticationConfig = M.AuthenticationConfig,
        connectorRuntimeSettings = {
            type = "list",
            member = M.ConnectorRuntimeSetting,
        },
        supportedApiVersions = {
            type = "list",
            member = { type = "string" },
        },
        supportedOperators = {
            type = "list",
            member = { type = "string" },
        },
        supportedWriteOperations = {
            type = "list",
            member = { type = "string" },
        },
        connectorProvisioningType = {
            type = "string",
        },
        connectorProvisioningConfig = M.ConnectorProvisioningConfig,
        logoURL = {
            type = "string",
        },
        registeredAt = {
            type = "timestamp",
        },
        registeredBy = {
            type = "string",
        },
        supportedDataTransferTypes = {
            type = "list",
            member = { type = "string" },
        },
        supportedDataTransferApis = {
            type = "list",
            member = M.DataTransferApi,
        },
    },
}

M.ConnectorDetail = {
    type = "structure",
    id = "ConnectorDetail",
    members = {
        connectorDescription = {
            type = "string",
        },
        connectorName = {
            type = "string",
        },
        connectorOwner = {
            type = "string",
        },
        connectorVersion = {
            type = "string",
        },
        applicationType = {
            type = "string",
        },
        connectorType = {
            type = "string",
        },
        connectorLabel = {
            type = "string",
        },
        registeredAt = {
            type = "timestamp",
        },
        registeredBy = {
            type = "string",
        },
        connectorProvisioningType = {
            type = "string",
        },
        connectorModes = {
            type = "list",
            member = { type = "string" },
        },
        supportedDataTransferTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConnectorEntity = {
    type = "structure",
    id = "ConnectorEntity",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        label = {
            type = "string",
        },
        hasNestedEntities = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DestinationFieldProperties = {
    type = "structure",
    id = "DestinationFieldProperties",
    members = {
        isCreatable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isNullable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isUpsertable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isUpdatable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isDefaultedOnCreate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        supportedWriteOperations = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SourceFieldProperties = {
    type = "structure",
    id = "SourceFieldProperties",
    members = {
        isRetrievable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isQueryable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isTimestampFieldForIncrementalQueries = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.Range = {
    type = "structure",
    id = "Range",
    members = {
        maximum = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        minimum = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.Operator = {
    PROJECTION = "PROJECTION",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    CONTAINS = "CONTAINS",
    BETWEEN = "BETWEEN",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.FieldTypeDetails = {
    type = "structure",
    id = "FieldTypeDetails",
    members = {
        fieldType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterOperators = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        supportedValues = {
            type = "list",
            member = { type = "string" },
        },
        valueRegexPattern = {
            type = "string",
        },
        supportedDateFormat = {
            type = "string",
        },
        fieldValueRange = M.Range,
        fieldLengthRange = M.Range,
    },
}

M.SupportedFieldTypeDetails = {
    type = "structure",
    id = "SupportedFieldTypeDetails",
    members = {
        v1 = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldTypeDetails }),
    },
}

M.ConnectorEntityField = {
    type = "structure",
    id = "ConnectorEntityField",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parentIdentifier = {
            type = "string",
        },
        label = {
            type = "string",
        },
        isPrimaryKey = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        defaultValue = {
            type = "string",
        },
        isDeprecated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        supportedFieldTypeDetails = M.SupportedFieldTypeDetails,
        description = {
            type = "string",
        },
        sourceProperties = M.SourceFieldProperties,
        destinationProperties = M.DestinationFieldProperties,
        customProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ConnectorOAuthRequest = {
    type = "structure",
    id = "ConnectorOAuthRequest",
    members = {
        authCode = {
            type = "string",
        },
        redirectUri = {
            type = "string",
        },
    },
}

M.DatadogConnectorOperator = {
    PROJECTION = "PROJECTION",
    BETWEEN = "BETWEEN",
    EQUAL_TO = "EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.DynatraceConnectorOperator = {
    PROJECTION = "PROJECTION",
    BETWEEN = "BETWEEN",
    EQUAL_TO = "EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.GoogleAnalyticsConnectorOperator = {
    PROJECTION = "PROJECTION",
    BETWEEN = "BETWEEN",
}

M.InforNexusConnectorOperator = {
    PROJECTION = "PROJECTION",
    BETWEEN = "BETWEEN",
    EQUAL_TO = "EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.MarketoConnectorOperator = {
    PROJECTION = "PROJECTION",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    BETWEEN = "BETWEEN",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.PardotConnectorOperator = {
    PROJECTION = "PROJECTION",
    EQUAL_TO = "EQUAL_TO",
    NO_OP = "NO_OP",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
}

M.S3ConnectorOperator = {
    PROJECTION = "PROJECTION",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    BETWEEN = "BETWEEN",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.SalesforceConnectorOperator = {
    PROJECTION = "PROJECTION",
    LESS_THAN = "LESS_THAN",
    CONTAINS = "CONTAINS",
    GREATER_THAN = "GREATER_THAN",
    BETWEEN = "BETWEEN",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.SAPODataConnectorOperator = {
    PROJECTION = "PROJECTION",
    LESS_THAN = "LESS_THAN",
    CONTAINS = "CONTAINS",
    GREATER_THAN = "GREATER_THAN",
    BETWEEN = "BETWEEN",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.ServiceNowConnectorOperator = {
    PROJECTION = "PROJECTION",
    CONTAINS = "CONTAINS",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    BETWEEN = "BETWEEN",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.SingularConnectorOperator = {
    PROJECTION = "PROJECTION",
    EQUAL_TO = "EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.SlackConnectorOperator = {
    PROJECTION = "PROJECTION",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    BETWEEN = "BETWEEN",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.TrendmicroConnectorOperator = {
    PROJECTION = "PROJECTION",
    EQUAL_TO = "EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.VeevaConnectorOperator = {
    PROJECTION = "PROJECTION",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    CONTAINS = "CONTAINS",
    BETWEEN = "BETWEEN",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.ZendeskConnectorOperator = {
    PROJECTION = "PROJECTION",
    GREATER_THAN = "GREATER_THAN",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.ConnectorOperator = {
    type = "structure",
    id = "ConnectorOperator",
    members = {
        Amplitude = {
            type = "string",
        },
        Datadog = {
            type = "string",
        },
        Dynatrace = {
            type = "string",
        },
        GoogleAnalytics = {
            type = "string",
        },
        InforNexus = {
            type = "string",
        },
        Marketo = {
            type = "string",
        },
        S3 = {
            type = "string",
        },
        Salesforce = {
            type = "string",
        },
        ServiceNow = {
            type = "string",
        },
        Singular = {
            type = "string",
        },
        Slack = {
            type = "string",
        },
        Trendmicro = {
            type = "string",
        },
        Veeva = {
            type = "string",
        },
        Zendesk = {
            type = "string",
        },
        SAPOData = {
            type = "string",
        },
        CustomConnector = {
            type = "string",
        },
        Pardot = {
            type = "string",
        },
    },
}

M.OAuth2Properties = {
    type = "structure",
    id = "OAuth2Properties",
    members = {
        tokenUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        oAuth2GrantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tokenUrlCustomProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CustomConnectorProfileProperties = {
    type = "structure",
    id = "CustomConnectorProfileProperties",
    members = {
        profileProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        oAuth2Properties = M.OAuth2Properties,
    },
}

M.DatadogConnectorProfileProperties = {
    type = "structure",
    id = "DatadogConnectorProfileProperties",
    members = {
        instanceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DynatraceConnectorProfileProperties = {
    type = "structure",
    id = "DynatraceConnectorProfileProperties",
    members = {
        instanceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GoogleAnalyticsConnectorProfileProperties = {
    type = "structure",
    id = "GoogleAnalyticsConnectorProfileProperties",
}

M.HoneycodeConnectorProfileProperties = {
    type = "structure",
    id = "HoneycodeConnectorProfileProperties",
}

M.InforNexusConnectorProfileProperties = {
    type = "structure",
    id = "InforNexusConnectorProfileProperties",
    members = {
        instanceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MarketoConnectorProfileProperties = {
    type = "structure",
    id = "MarketoConnectorProfileProperties",
    members = {
        instanceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PardotConnectorProfileProperties = {
    type = "structure",
    id = "PardotConnectorProfileProperties",
    members = {
        instanceUrl = {
            type = "string",
        },
        isSandboxEnvironment = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        businessUnitId = {
            type = "string",
        },
    },
}

M.RedshiftConnectorProfileProperties = {
    type = "structure",
    id = "RedshiftConnectorProfileProperties",
    members = {
        databaseUrl = {
            type = "string",
        },
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucketPrefix = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataApiRoleArn = {
            type = "string",
        },
        isRedshiftServerless = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        clusterIdentifier = {
            type = "string",
        },
        workgroupName = {
            type = "string",
        },
        databaseName = {
            type = "string",
        },
    },
}

M.SalesforceConnectorProfileProperties = {
    type = "structure",
    id = "SalesforceConnectorProfileProperties",
    members = {
        instanceUrl = {
            type = "string",
        },
        isSandboxEnvironment = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        usePrivateLinkForMetadataAndAuthorization = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.OAuthProperties = {
    type = "structure",
    id = "OAuthProperties",
    members = {
        tokenUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authCodeUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        oAuthScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SAPODataConnectorProfileProperties = {
    type = "structure",
    id = "SAPODataConnectorProfileProperties",
    members = {
        applicationHostUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationServicePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portNumber = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        clientNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logonLanguage = {
            type = "string",
        },
        privateLinkServiceName = {
            type = "string",
        },
        oAuthProperties = M.OAuthProperties,
        disableSSO = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ServiceNowConnectorProfileProperties = {
    type = "structure",
    id = "ServiceNowConnectorProfileProperties",
    members = {
        instanceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SingularConnectorProfileProperties = {
    type = "structure",
    id = "SingularConnectorProfileProperties",
}

M.SlackConnectorProfileProperties = {
    type = "structure",
    id = "SlackConnectorProfileProperties",
    members = {
        instanceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SnowflakeConnectorProfileProperties = {
    type = "structure",
    id = "SnowflakeConnectorProfileProperties",
    members = {
        warehouse = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucketPrefix = {
            type = "string",
        },
        privateLinkServiceName = {
            type = "string",
        },
        accountName = {
            type = "string",
        },
        region = {
            type = "string",
        },
    },
}

M.TrendmicroConnectorProfileProperties = {
    type = "structure",
    id = "TrendmicroConnectorProfileProperties",
}

M.VeevaConnectorProfileProperties = {
    type = "structure",
    id = "VeevaConnectorProfileProperties",
    members = {
        instanceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ZendeskConnectorProfileProperties = {
    type = "structure",
    id = "ZendeskConnectorProfileProperties",
    members = {
        instanceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectorProfileProperties = {
    type = "structure",
    id = "ConnectorProfileProperties",
    members = {
        Amplitude = M.AmplitudeConnectorProfileProperties,
        Datadog = M.DatadogConnectorProfileProperties,
        Dynatrace = M.DynatraceConnectorProfileProperties,
        GoogleAnalytics = M.GoogleAnalyticsConnectorProfileProperties,
        Honeycode = M.HoneycodeConnectorProfileProperties,
        InforNexus = M.InforNexusConnectorProfileProperties,
        Marketo = M.MarketoConnectorProfileProperties,
        Redshift = M.RedshiftConnectorProfileProperties,
        Salesforce = M.SalesforceConnectorProfileProperties,
        ServiceNow = M.ServiceNowConnectorProfileProperties,
        Singular = M.SingularConnectorProfileProperties,
        Slack = M.SlackConnectorProfileProperties,
        Snowflake = M.SnowflakeConnectorProfileProperties,
        Trendmicro = M.TrendmicroConnectorProfileProperties,
        Veeva = M.VeevaConnectorProfileProperties,
        Zendesk = M.ZendeskConnectorProfileProperties,
        SAPOData = M.SAPODataConnectorProfileProperties,
        CustomConnector = M.CustomConnectorProfileProperties,
        Pardot = M.PardotConnectorProfileProperties,
    },
}

M.PrivateConnectionProvisioningFailureCause = {
    CONNECTOR_AUTHENTICATION = "CONNECTOR_AUTHENTICATION",
    CONNECTOR_SERVER = "CONNECTOR_SERVER",
    INTERNAL_SERVER = "INTERNAL_SERVER",
    ACCESS_DENIED = "ACCESS_DENIED",
    VALIDATION = "VALIDATION",
}

M.PrivateConnectionProvisioningStatus = {
    FAILED = "FAILED",
    PENDING = "PENDING",
    CREATED = "CREATED",
}

M.PrivateConnectionProvisioningState = {
    type = "structure",
    id = "PrivateConnectionProvisioningState",
    members = {
        status = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
        failureCause = {
            type = "string",
        },
    },
}

M.ConnectorProfile = {
    type = "structure",
    id = "ConnectorProfile",
    members = {
        connectorProfileArn = {
            type = "string",
        },
        connectorProfileName = {
            type = "string",
        },
        connectorType = {
            type = "string",
        },
        connectorLabel = {
            type = "string",
        },
        connectionMode = {
            type = "string",
        },
        credentialsArn = {
            type = "string",
        },
        connectorProfileProperties = M.ConnectorProfileProperties,
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        privateConnectionProvisioningState = M.PrivateConnectionProvisioningState,
    },
}

M.CustomAuthCredentials = {
    type = "structure",
    id = "CustomAuthCredentials",
    members = {
        customAuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialsMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.OAuth2Credentials = {
    type = "structure",
    id = "OAuth2Credentials",
    members = {
        clientId = {
            type = "string",
        },
        clientSecret = {
            type = "string",
        },
        accessToken = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        oAuthRequest = M.ConnectorOAuthRequest,
    },
}

M.CustomConnectorProfileCredentials = {
    type = "structure",
    id = "CustomConnectorProfileCredentials",
    members = {
        authenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        basic = M.BasicAuthCredentials,
        oauth2 = M.OAuth2Credentials,
        apiKey = M.ApiKeyCredentials,
        custom = M.CustomAuthCredentials,
    },
}

M.DatadogConnectorProfileCredentials = {
    type = "structure",
    id = "DatadogConnectorProfileCredentials",
    members = {
        apiKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DynatraceConnectorProfileCredentials = {
    type = "structure",
    id = "DynatraceConnectorProfileCredentials",
    members = {
        apiToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GoogleAnalyticsConnectorProfileCredentials = {
    type = "structure",
    id = "GoogleAnalyticsConnectorProfileCredentials",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessToken = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        oAuthRequest = M.ConnectorOAuthRequest,
    },
}

M.HoneycodeConnectorProfileCredentials = {
    type = "structure",
    id = "HoneycodeConnectorProfileCredentials",
    members = {
        accessToken = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        oAuthRequest = M.ConnectorOAuthRequest,
    },
}

M.InforNexusConnectorProfileCredentials = {
    type = "structure",
    id = "InforNexusConnectorProfileCredentials",
    members = {
        accessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretAccessKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datakey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MarketoConnectorProfileCredentials = {
    type = "structure",
    id = "MarketoConnectorProfileCredentials",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessToken = {
            type = "string",
        },
        oAuthRequest = M.ConnectorOAuthRequest,
    },
}

M.PardotConnectorProfileCredentials = {
    type = "structure",
    id = "PardotConnectorProfileCredentials",
    members = {
        accessToken = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        oAuthRequest = M.ConnectorOAuthRequest,
        clientCredentialsArn = {
            type = "string",
        },
    },
}

M.RedshiftConnectorProfileCredentials = {
    type = "structure",
    id = "RedshiftConnectorProfileCredentials",
    members = {
        username = {
            type = "string",
        },
        password = {
            type = "string",
        },
    },
}

M.SalesforceConnectorProfileCredentials = {
    type = "structure",
    id = "SalesforceConnectorProfileCredentials",
    members = {
        accessToken = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        oAuthRequest = M.ConnectorOAuthRequest,
        clientCredentialsArn = {
            type = "string",
        },
        oAuth2GrantType = {
            type = "string",
        },
        jwtToken = {
            type = "string",
        },
    },
}

M.OAuthCredentials = {
    type = "structure",
    id = "OAuthCredentials",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessToken = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        oAuthRequest = M.ConnectorOAuthRequest,
    },
}

M.SAPODataConnectorProfileCredentials = {
    type = "structure",
    id = "SAPODataConnectorProfileCredentials",
    members = {
        basicAuthCredentials = M.BasicAuthCredentials,
        oAuthCredentials = M.OAuthCredentials,
    },
}

M.ServiceNowConnectorProfileCredentials = {
    type = "structure",
    id = "ServiceNowConnectorProfileCredentials",
    members = {
        username = {
            type = "string",
        },
        password = {
            type = "string",
        },
        oAuth2Credentials = M.OAuth2Credentials,
    },
}

M.SingularConnectorProfileCredentials = {
    type = "structure",
    id = "SingularConnectorProfileCredentials",
    members = {
        apiKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlackConnectorProfileCredentials = {
    type = "structure",
    id = "SlackConnectorProfileCredentials",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessToken = {
            type = "string",
        },
        oAuthRequest = M.ConnectorOAuthRequest,
    },
}

M.SnowflakeConnectorProfileCredentials = {
    type = "structure",
    id = "SnowflakeConnectorProfileCredentials",
    members = {
        username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        password = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrendmicroConnectorProfileCredentials = {
    type = "structure",
    id = "TrendmicroConnectorProfileCredentials",
    members = {
        apiSecretKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VeevaConnectorProfileCredentials = {
    type = "structure",
    id = "VeevaConnectorProfileCredentials",
    members = {
        username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        password = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ZendeskConnectorProfileCredentials = {
    type = "structure",
    id = "ZendeskConnectorProfileCredentials",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessToken = {
            type = "string",
        },
        oAuthRequest = M.ConnectorOAuthRequest,
    },
}

M.ConnectorProfileCredentials = {
    type = "structure",
    id = "ConnectorProfileCredentials",
    members = {
        Amplitude = M.AmplitudeConnectorProfileCredentials,
        Datadog = M.DatadogConnectorProfileCredentials,
        Dynatrace = M.DynatraceConnectorProfileCredentials,
        GoogleAnalytics = M.GoogleAnalyticsConnectorProfileCredentials,
        Honeycode = M.HoneycodeConnectorProfileCredentials,
        InforNexus = M.InforNexusConnectorProfileCredentials,
        Marketo = M.MarketoConnectorProfileCredentials,
        Redshift = M.RedshiftConnectorProfileCredentials,
        Salesforce = M.SalesforceConnectorProfileCredentials,
        ServiceNow = M.ServiceNowConnectorProfileCredentials,
        Singular = M.SingularConnectorProfileCredentials,
        Slack = M.SlackConnectorProfileCredentials,
        Snowflake = M.SnowflakeConnectorProfileCredentials,
        Trendmicro = M.TrendmicroConnectorProfileCredentials,
        Veeva = M.VeevaConnectorProfileCredentials,
        Zendesk = M.ZendeskConnectorProfileCredentials,
        SAPOData = M.SAPODataConnectorProfileCredentials,
        CustomConnector = M.CustomConnectorProfileCredentials,
        Pardot = M.PardotConnectorProfileCredentials,
    },
}

M.ConnectorProfileConfig = {
    type = "structure",
    id = "ConnectorProfileConfig",
    members = {
        connectorProfileProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectorProfileProperties }),
        connectorProfileCredentials = M.ConnectorProfileCredentials,
    },
}

M.ConnectorServerException = {
    type = "structure",
    id = "ConnectorServerException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateConnectorProfileInput = {
    type = "structure",
    id = "CreateConnectorProfileInput",
    members = {
        connectorProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsArn = {
            type = "string",
        },
        connectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectorLabel = {
            type = "string",
        },
        connectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectorProfileConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectorProfileConfig }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateConnectorProfileOutput = {
    type = "structure",
    id = "CreateConnectorProfileOutput",
    members = {
        connectorProfileArn = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ErrorHandlingConfig = {
    type = "structure",
    id = "ErrorHandlingConfig",
    members = {
        failOnFirstDestinationError = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        bucketPrefix = {
            type = "string",
        },
        bucketName = {
            type = "string",
        },
    },
}

M.CustomConnectorDestinationProperties = {
    type = "structure",
    id = "CustomConnectorDestinationProperties",
    members = {
        entityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorHandlingConfig = M.ErrorHandlingConfig,
        writeOperationType = {
            type = "string",
        },
        idFieldNames = {
            type = "list",
            member = { type = "string" },
        },
        customProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CustomerProfilesDestinationProperties = {
    type = "structure",
    id = "CustomerProfilesDestinationProperties",
    members = {
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectTypeName = {
            type = "string",
        },
    },
}

M.EventBridgeDestinationProperties = {
    type = "structure",
    id = "EventBridgeDestinationProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorHandlingConfig = M.ErrorHandlingConfig,
    },
}

M.HoneycodeDestinationProperties = {
    type = "structure",
    id = "HoneycodeDestinationProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorHandlingConfig = M.ErrorHandlingConfig,
    },
}

M.LookoutMetricsDestinationProperties = {
    type = "structure",
    id = "LookoutMetricsDestinationProperties",
}

M.MarketoDestinationProperties = {
    type = "structure",
    id = "MarketoDestinationProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorHandlingConfig = M.ErrorHandlingConfig,
    },
}

M.RedshiftDestinationProperties = {
    type = "structure",
    id = "RedshiftDestinationProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        intermediateBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucketPrefix = {
            type = "string",
        },
        errorHandlingConfig = M.ErrorHandlingConfig,
    },
}

M.FileType = {
    CSV = "CSV",
    JSON = "JSON",
    PARQUET = "PARQUET",
}

M.PathPrefix = {
    EXECUTION_ID = "EXECUTION_ID",
    SCHEMA_VERSION = "SCHEMA_VERSION",
}

M.PrefixFormat = {
    YEAR = "YEAR",
    MONTH = "MONTH",
    DAY = "DAY",
    HOUR = "HOUR",
    MINUTE = "MINUTE",
}

M.PrefixType = {
    FILENAME = "FILENAME",
    PATH = "PATH",
    PATH_AND_FILENAME = "PATH_AND_FILENAME",
}

M.PrefixConfig = {
    type = "structure",
    id = "PrefixConfig",
    members = {
        prefixType = {
            type = "string",
        },
        prefixFormat = {
            type = "string",
        },
        pathPrefixHierarchy = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.S3OutputFormatConfig = {
    type = "structure",
    id = "S3OutputFormatConfig",
    members = {
        fileType = {
            type = "string",
        },
        prefixConfig = M.PrefixConfig,
        aggregationConfig = M.AggregationConfig,
        preserveSourceDataTyping = {
            type = "boolean",
        },
    },
}

M.S3DestinationProperties = {
    type = "structure",
    id = "S3DestinationProperties",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucketPrefix = {
            type = "string",
        },
        s3OutputFormatConfig = M.S3OutputFormatConfig,
    },
}

M.SalesforceDestinationProperties = {
    type = "structure",
    id = "SalesforceDestinationProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idFieldNames = {
            type = "list",
            member = { type = "string" },
        },
        errorHandlingConfig = M.ErrorHandlingConfig,
        writeOperationType = {
            type = "string",
        },
        dataTransferApi = {
            type = "string",
        },
    },
}

M.SuccessResponseHandlingConfig = {
    type = "structure",
    id = "SuccessResponseHandlingConfig",
    members = {
        bucketPrefix = {
            type = "string",
        },
        bucketName = {
            type = "string",
        },
    },
}

M.SAPODataDestinationProperties = {
    type = "structure",
    id = "SAPODataDestinationProperties",
    members = {
        objectPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        successResponseHandlingConfig = M.SuccessResponseHandlingConfig,
        idFieldNames = {
            type = "list",
            member = { type = "string" },
        },
        errorHandlingConfig = M.ErrorHandlingConfig,
        writeOperationType = {
            type = "string",
        },
    },
}

M.SnowflakeDestinationProperties = {
    type = "structure",
    id = "SnowflakeDestinationProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        intermediateBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucketPrefix = {
            type = "string",
        },
        errorHandlingConfig = M.ErrorHandlingConfig,
    },
}

M.UpsolverS3OutputFormatConfig = {
    type = "structure",
    id = "UpsolverS3OutputFormatConfig",
    members = {
        fileType = {
            type = "string",
        },
        prefixConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrefixConfig }),
        aggregationConfig = M.AggregationConfig,
    },
}

M.UpsolverDestinationProperties = {
    type = "structure",
    id = "UpsolverDestinationProperties",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucketPrefix = {
            type = "string",
        },
        s3OutputFormatConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpsolverS3OutputFormatConfig }),
    },
}

M.ZendeskDestinationProperties = {
    type = "structure",
    id = "ZendeskDestinationProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idFieldNames = {
            type = "list",
            member = { type = "string" },
        },
        errorHandlingConfig = M.ErrorHandlingConfig,
        writeOperationType = {
            type = "string",
        },
    },
}

M.DestinationConnectorProperties = {
    type = "structure",
    id = "DestinationConnectorProperties",
    members = {
        Redshift = M.RedshiftDestinationProperties,
        S3 = M.S3DestinationProperties,
        Salesforce = M.SalesforceDestinationProperties,
        Snowflake = M.SnowflakeDestinationProperties,
        EventBridge = M.EventBridgeDestinationProperties,
        LookoutMetrics = M.LookoutMetricsDestinationProperties,
        Upsolver = M.UpsolverDestinationProperties,
        Honeycode = M.HoneycodeDestinationProperties,
        CustomerProfiles = M.CustomerProfilesDestinationProperties,
        Zendesk = M.ZendeskDestinationProperties,
        Marketo = M.MarketoDestinationProperties,
        CustomConnector = M.CustomConnectorDestinationProperties,
        SAPOData = M.SAPODataDestinationProperties,
    },
}

M.DestinationFlowConfig = {
    type = "structure",
    id = "DestinationFlowConfig",
    members = {
        connectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiVersion = {
            type = "string",
        },
        connectorProfileName = {
            type = "string",
        },
        destinationConnectorProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationConnectorProperties }),
    },
}

M.GlueDataCatalogConfig = {
    type = "structure",
    id = "GlueDataCatalogConfig",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tablePrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetadataCatalogConfig = {
    type = "structure",
    id = "MetadataCatalogConfig",
    members = {
        glueDataCatalog = M.GlueDataCatalogConfig,
    },
}

M.IncrementalPullConfig = {
    type = "structure",
    id = "IncrementalPullConfig",
    members = {
        datetimeTypeFieldName = {
            type = "string",
        },
    },
}

M.CustomConnectorSourceProperties = {
    type = "structure",
    id = "CustomConnectorSourceProperties",
    members = {
        entityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        dataTransferApi = M.DataTransferApi,
    },
}

M.DatadogSourceProperties = {
    type = "structure",
    id = "DatadogSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DynatraceSourceProperties = {
    type = "structure",
    id = "DynatraceSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GoogleAnalyticsSourceProperties = {
    type = "structure",
    id = "GoogleAnalyticsSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InforNexusSourceProperties = {
    type = "structure",
    id = "InforNexusSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MarketoSourceProperties = {
    type = "structure",
    id = "MarketoSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PardotSourceProperties = {
    type = "structure",
    id = "PardotSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3InputFileType = {
    CSV = "CSV",
    JSON = "JSON",
}

M.S3InputFormatConfig = {
    type = "structure",
    id = "S3InputFormatConfig",
    members = {
        s3InputFileType = {
            type = "string",
        },
    },
}

M.S3SourceProperties = {
    type = "structure",
    id = "S3SourceProperties",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucketPrefix = {
            type = "string",
        },
        s3InputFormatConfig = M.S3InputFormatConfig,
    },
}

M.SalesforceSourceProperties = {
    type = "structure",
    id = "SalesforceSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enableDynamicFieldUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        includeDeletedRecords = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        dataTransferApi = {
            type = "string",
        },
    },
}

M.SAPODataPaginationConfig = {
    type = "structure",
    id = "SAPODataPaginationConfig",
    members = {
        maxPageSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.SAPODataParallelismConfig = {
    type = "structure",
    id = "SAPODataParallelismConfig",
    members = {
        maxParallelism = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.SAPODataSourceProperties = {
    type = "structure",
    id = "SAPODataSourceProperties",
    members = {
        objectPath = {
            type = "string",
        },
        parallelismConfig = M.SAPODataParallelismConfig,
        paginationConfig = M.SAPODataPaginationConfig,
    },
}

M.ServiceNowSourceProperties = {
    type = "structure",
    id = "ServiceNowSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SingularSourceProperties = {
    type = "structure",
    id = "SingularSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlackSourceProperties = {
    type = "structure",
    id = "SlackSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrendmicroSourceProperties = {
    type = "structure",
    id = "TrendmicroSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VeevaSourceProperties = {
    type = "structure",
    id = "VeevaSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentType = {
            type = "string",
        },
        includeSourceFiles = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        includeRenditions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        includeAllVersions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ZendeskSourceProperties = {
    type = "structure",
    id = "ZendeskSourceProperties",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceConnectorProperties = {
    type = "structure",
    id = "SourceConnectorProperties",
    members = {
        Amplitude = M.AmplitudeSourceProperties,
        Datadog = M.DatadogSourceProperties,
        Dynatrace = M.DynatraceSourceProperties,
        GoogleAnalytics = M.GoogleAnalyticsSourceProperties,
        InforNexus = M.InforNexusSourceProperties,
        Marketo = M.MarketoSourceProperties,
        S3 = M.S3SourceProperties,
        Salesforce = M.SalesforceSourceProperties,
        ServiceNow = M.ServiceNowSourceProperties,
        Singular = M.SingularSourceProperties,
        Slack = M.SlackSourceProperties,
        Trendmicro = M.TrendmicroSourceProperties,
        Veeva = M.VeevaSourceProperties,
        Zendesk = M.ZendeskSourceProperties,
        SAPOData = M.SAPODataSourceProperties,
        CustomConnector = M.CustomConnectorSourceProperties,
        Pardot = M.PardotSourceProperties,
    },
}

M.SourceFlowConfig = {
    type = "structure",
    id = "SourceFlowConfig",
    members = {
        connectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiVersion = {
            type = "string",
        },
        connectorProfileName = {
            type = "string",
        },
        sourceConnectorProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceConnectorProperties }),
        incrementalPullConfig = M.IncrementalPullConfig,
    },
}

M.OperatorPropertiesKeys = {
    VALUE = "VALUE",
    VALUES = "VALUES",
    DATA_TYPE = "DATA_TYPE",
    UPPER_BOUND = "UPPER_BOUND",
    LOWER_BOUND = "LOWER_BOUND",
    SOURCE_DATA_TYPE = "SOURCE_DATA_TYPE",
    DESTINATION_DATA_TYPE = "DESTINATION_DATA_TYPE",
    VALIDATION_ACTION = "VALIDATION_ACTION",
    MASK_VALUE = "MASK_VALUE",
    MASK_LENGTH = "MASK_LENGTH",
    TRUNCATE_LENGTH = "TRUNCATE_LENGTH",
    MATH_OPERATION_FIELDS_ORDER = "MATH_OPERATION_FIELDS_ORDER",
    CONCAT_FORMAT = "CONCAT_FORMAT",
    SUBFIELD_CATEGORY_MAP = "SUBFIELD_CATEGORY_MAP",
    EXCLUDE_SOURCE_FIELDS_LIST = "EXCLUDE_SOURCE_FIELDS_LIST",
    INCLUDE_NEW_FIELDS = "INCLUDE_NEW_FIELDS",
    ORDERED_PARTITION_KEYS_LIST = "ORDERED_PARTITION_KEYS_LIST",
}

M.TaskType = {
    ARITHMETIC = "Arithmetic",
    FILTER = "Filter",
    MAP = "Map",
    MAP_ALL = "Map_all",
    MASK = "Mask",
    MERGE = "Merge",
    PASSTHROUGH = "Passthrough",
    TRUNCATE = "Truncate",
    VALIDATE = "Validate",
    PARTITION = "Partition",
}

M.Task = {
    type = "structure",
    id = "Task",
    members = {
        sourceFields = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        connectorOperator = M.ConnectorOperator,
        destinationField = {
            type = "string",
        },
        taskType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DataPullMode = {
    INCREMENTAL = "Incremental",
    COMPLETE = "Complete",
}

M.ScheduledTriggerProperties = {
    type = "structure",
    id = "ScheduledTriggerProperties",
    members = {
        scheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataPullMode = {
            type = "string",
        },
        scheduleStartTime = {
            type = "timestamp",
        },
        scheduleEndTime = {
            type = "timestamp",
        },
        timezone = {
            type = "string",
        },
        scheduleOffset = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        firstExecutionFrom = {
            type = "timestamp",
        },
        flowErrorDeactivationThreshold = {
            type = "integer",
        },
    },
}

M.TriggerProperties = {
    type = "structure",
    id = "TriggerProperties",
    members = {
        Scheduled = M.ScheduledTriggerProperties,
    },
}

M.TriggerConfig = {
    type = "structure",
    id = "TriggerConfig",
    members = {
        triggerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        triggerProperties = M.TriggerProperties,
    },
}

M.CreateFlowInput = {
    type = "structure",
    id = "CreateFlowInput",
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        kmsArn = {
            type = "string",
        },
        triggerConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TriggerConfig }),
        sourceFlowConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceFlowConfig }),
        destinationFlowConfigList = {
            type = "list",
            member = M.DestinationFlowConfig,
            traits = {
                required = true,
            },
        },
        tasks = {
            type = "list",
            member = M.Task,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        metadataCatalogConfig = M.MetadataCatalogConfig,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.FlowStatus = {
    ACTIVE = "Active",
    DEPRECATED = "Deprecated",
    DELETED = "Deleted",
    DRAFT = "Draft",
    ERRORED = "Errored",
    SUSPENDED = "Suspended",
}

M.CreateFlowOutput = {
    type = "structure",
    id = "CreateFlowOutput",
    members = {
        flowArn = {
            type = "string",
        },
        flowStatus = {
            type = "string",
        },
    },
}

M.DeleteConnectorProfileInput = {
    type = "structure",
    id = "DeleteConnectorProfileInput",
    members = {
        connectorProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forceDelete = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteConnectorProfileOutput = {
    type = "structure",
    id = "DeleteConnectorProfileOutput",
}

M.DeleteFlowInput = {
    type = "structure",
    id = "DeleteFlowInput",
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forceDelete = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteFlowOutput = {
    type = "structure",
    id = "DeleteFlowOutput",
}

M.DescribeConnectorInput = {
    type = "structure",
    id = "DescribeConnectorInput",
    members = {
        connectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectorLabel = {
            type = "string",
        },
    },
}

M.DescribeConnectorOutput = {
    type = "structure",
    id = "DescribeConnectorOutput",
    members = {
        connectorConfiguration = M.ConnectorConfiguration,
    },
}

M.DescribeConnectorEntityInput = {
    type = "structure",
    id = "DescribeConnectorEntityInput",
    members = {
        connectorEntityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectorType = {
            type = "string",
        },
        connectorProfileName = {
            type = "string",
        },
        apiVersion = {
            type = "string",
        },
    },
}

M.DescribeConnectorEntityOutput = {
    type = "structure",
    id = "DescribeConnectorEntityOutput",
    members = {
        connectorEntityFields = {
            type = "list",
            member = M.ConnectorEntityField,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeConnectorProfilesInput = {
    type = "structure",
    id = "DescribeConnectorProfilesInput",
    members = {
        connectorProfileNames = {
            type = "list",
            member = { type = "string" },
        },
        connectorType = {
            type = "string",
        },
        connectorLabel = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeConnectorProfilesOutput = {
    type = "structure",
    id = "DescribeConnectorProfilesOutput",
    members = {
        connectorProfileDetails = {
            type = "list",
            member = M.ConnectorProfile,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeConnectorsInput = {
    type = "structure",
    id = "DescribeConnectorsInput",
    members = {
        connectorTypes = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeConnectorsOutput = {
    type = "structure",
    id = "DescribeConnectorsOutput",
    members = {
        connectorConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.ConnectorConfiguration,
        },
        connectors = {
            type = "list",
            member = M.ConnectorDetail,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeFlowInput = {
    type = "structure",
    id = "DescribeFlowInput",
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionStatus = {
    INPROGRESS = "InProgress",
    SUCCESSFUL = "Successful",
    ERROR = "Error",
    CANCELSTARTED = "CancelStarted",
    CANCELED = "Canceled",
}

M.ExecutionDetails = {
    type = "structure",
    id = "ExecutionDetails",
    members = {
        mostRecentExecutionMessage = {
            type = "string",
        },
        mostRecentExecutionTime = {
            type = "timestamp",
        },
        mostRecentExecutionStatus = {
            type = "string",
        },
    },
}

M.RegistrationOutput = {
    type = "structure",
    id = "RegistrationOutput",
    members = {
        message = {
            type = "string",
        },
        result = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.MetadataCatalogDetail = {
    type = "structure",
    id = "MetadataCatalogDetail",
    members = {
        catalogType = {
            type = "string",
        },
        tableName = {
            type = "string",
        },
        tableRegistrationOutput = M.RegistrationOutput,
        partitionRegistrationOutput = M.RegistrationOutput,
    },
}

M.DescribeFlowOutput = {
    type = "structure",
    id = "DescribeFlowOutput",
    members = {
        flowArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        flowName = {
            type = "string",
        },
        kmsArn = {
            type = "string",
        },
        flowStatus = {
            type = "string",
        },
        flowStatusMessage = {
            type = "string",
        },
        sourceFlowConfig = M.SourceFlowConfig,
        destinationFlowConfigList = {
            type = "list",
            member = M.DestinationFlowConfig,
        },
        lastRunExecutionDetails = M.ExecutionDetails,
        triggerConfig = M.TriggerConfig,
        tasks = {
            type = "list",
            member = M.Task,
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        lastUpdatedBy = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        metadataCatalogConfig = M.MetadataCatalogConfig,
        lastRunMetadataCatalogDetails = {
            type = "list",
            member = M.MetadataCatalogDetail,
        },
        schemaVersion = {
            type = "long",
        },
    },
}

M.DescribeFlowExecutionRecordsInput = {
    type = "structure",
    id = "DescribeFlowExecutionRecordsInput",
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ErrorInfo = {
    type = "structure",
    id = "ErrorInfo",
    members = {
        putFailuresCount = {
            type = "long",
        },
        executionMessage = {
            type = "string",
        },
    },
}

M.ExecutionResult = {
    type = "structure",
    id = "ExecutionResult",
    members = {
        errorInfo = M.ErrorInfo,
        bytesProcessed = {
            type = "long",
        },
        bytesWritten = {
            type = "long",
        },
        recordsProcessed = {
            type = "long",
        },
        numParallelProcesses = {
            type = "long",
        },
        maxPageSize = {
            type = "long",
        },
    },
}

M.ExecutionRecord = {
    type = "structure",
    id = "ExecutionRecord",
    members = {
        executionId = {
            type = "string",
        },
        executionStatus = {
            type = "string",
        },
        executionResult = M.ExecutionResult,
        startedAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        dataPullStartTime = {
            type = "timestamp",
        },
        dataPullEndTime = {
            type = "timestamp",
        },
        metadataCatalogDetails = {
            type = "list",
            member = M.MetadataCatalogDetail,
        },
    },
}

M.DescribeFlowExecutionRecordsOutput = {
    type = "structure",
    id = "DescribeFlowExecutionRecordsOutput",
    members = {
        flowExecutions = {
            type = "list",
            member = M.ExecutionRecord,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FlowDefinition = {
    type = "structure",
    id = "FlowDefinition",
    members = {
        flowArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        flowName = {
            type = "string",
        },
        flowStatus = {
            type = "string",
        },
        sourceConnectorType = {
            type = "string",
        },
        sourceConnectorLabel = {
            type = "string",
        },
        destinationConnectorType = {
            type = "string",
        },
        destinationConnectorLabel = {
            type = "string",
        },
        triggerType = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        lastUpdatedBy = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        lastRunExecutionDetails = M.ExecutionDetails,
    },
}

M.ListConnectorEntitiesInput = {
    type = "structure",
    id = "ListConnectorEntitiesInput",
    members = {
        connectorProfileName = {
            type = "string",
        },
        connectorType = {
            type = "string",
        },
        entitiesPath = {
            type = "string",
        },
        apiVersion = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListConnectorEntitiesOutput = {
    type = "structure",
    id = "ListConnectorEntitiesOutput",
    members = {
        connectorEntityMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListConnectorsInput = {
    type = "structure",
    id = "ListConnectorsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListConnectorsOutput = {
    type = "structure",
    id = "ListConnectorsOutput",
    members = {
        connectors = {
            type = "list",
            member = M.ConnectorDetail,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFlowsInput = {
    type = "structure",
    id = "ListFlowsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFlowsOutput = {
    type = "structure",
    id = "ListFlowsOutput",
    members = {
        flows = {
            type = "list",
            member = M.FlowDefinition,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RegisterConnectorInput = {
    type = "structure",
    id = "RegisterConnectorInput",
    members = {
        connectorLabel = {
            type = "string",
        },
        description = {
            type = "string",
        },
        connectorProvisioningType = {
            type = "string",
        },
        connectorProvisioningConfig = M.ConnectorProvisioningConfig,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.RegisterConnectorOutput = {
    type = "structure",
    id = "RegisterConnectorOutput",
    members = {
        connectorArn = {
            type = "string",
        },
    },
}

M.ResetConnectorMetadataCacheInput = {
    type = "structure",
    id = "ResetConnectorMetadataCacheInput",
    members = {
        connectorProfileName = {
            type = "string",
        },
        connectorType = {
            type = "string",
        },
        connectorEntityName = {
            type = "string",
        },
        entitiesPath = {
            type = "string",
        },
        apiVersion = {
            type = "string",
        },
    },
}

M.ResetConnectorMetadataCacheOutput = {
    type = "structure",
    id = "ResetConnectorMetadataCacheOutput",
}

M.StartFlowInput = {
    type = "structure",
    id = "StartFlowInput",
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartFlowOutput = {
    type = "structure",
    id = "StartFlowOutput",
    members = {
        flowArn = {
            type = "string",
        },
        flowStatus = {
            type = "string",
        },
        executionId = {
            type = "string",
        },
    },
}

M.StopFlowInput = {
    type = "structure",
    id = "StopFlowInput",
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopFlowOutput = {
    type = "structure",
    id = "StopFlowOutput",
    members = {
        flowArn = {
            type = "string",
        },
        flowStatus = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    id = "UnsupportedOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UnregisterConnectorInput = {
    type = "structure",
    id = "UnregisterConnectorInput",
    members = {
        connectorLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forceDelete = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UnregisterConnectorOutput = {
    type = "structure",
    id = "UnregisterConnectorOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateConnectorProfileInput = {
    type = "structure",
    id = "UpdateConnectorProfileInput",
    members = {
        connectorProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectorProfileConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectorProfileConfig }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateConnectorProfileOutput = {
    type = "structure",
    id = "UpdateConnectorProfileOutput",
    members = {
        connectorProfileArn = {
            type = "string",
        },
    },
}

M.UpdateConnectorRegistrationInput = {
    type = "structure",
    id = "UpdateConnectorRegistrationInput",
    members = {
        connectorLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        connectorProvisioningConfig = M.ConnectorProvisioningConfig,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateConnectorRegistrationOutput = {
    type = "structure",
    id = "UpdateConnectorRegistrationOutput",
    members = {
        connectorArn = {
            type = "string",
        },
    },
}

M.UpdateFlowInput = {
    type = "structure",
    id = "UpdateFlowInput",
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        triggerConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TriggerConfig }),
        sourceFlowConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceFlowConfig }),
        destinationFlowConfigList = {
            type = "list",
            member = M.DestinationFlowConfig,
            traits = {
                required = true,
            },
        },
        tasks = {
            type = "list",
            member = M.Task,
            traits = {
                required = true,
            },
        },
        metadataCatalogConfig = M.MetadataCatalogConfig,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateFlowOutput = {
    type = "structure",
    id = "UpdateFlowOutput",
    members = {
        flowStatus = {
            type = "string",
        },
    },
}

return M
