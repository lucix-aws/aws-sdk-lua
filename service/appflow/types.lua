local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        aggregationType = {
            type = "string",
        },
        targetFileSize = {
            type = "number",
        },
    },
}

M.AmplitudeConnectorOperator = {
    BETWEEN = "BETWEEN",
}

M.AmplitudeConnectorProfileCredentials = {
    type = "structure",
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
}

M.AmplitudeMetadata = {
    type = "structure",
}

M.AmplitudeSourceProperties = {
    type = "structure",
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
    members = {
        key = {
            type = "string",
        },
        isRequired = {
            type = "boolean",
        },
        label = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isSensitiveField = {
            type = "boolean",
        },
        connectorSuppliedValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CustomAuthConfig = {
    type = "structure",
    members = {
        customAuthenticationType = {
            type = "string",
        },
        authParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.OAuth2CustomPropType = {
    TOKEN_URL = "TOKEN_URL",
    AUTH_URL = "AUTH_URL",
}

M.OAuth2CustomParameter = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        isRequired = {
            type = "boolean",
        },
        label = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isSensitiveField = {
            type = "boolean",
        },
        connectorSuppliedValues = {
            type = "list",
            member_type = "string",
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
    members = {
        oauthScopes = {
            type = "list",
            member_type = "string",
        },
        tokenUrls = {
            type = "list",
            member_type = "string",
        },
        authCodeUrls = {
            type = "list",
            member_type = "string",
        },
        oauth2GrantTypesSupported = {
            type = "list",
            member_type = "string",
        },
        oauth2CustomProperties = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AuthenticationConfig = {
    type = "structure",
    members = {
        isBasicAuthSupported = {
            type = "boolean",
        },
        isApiKeyAuthSupported = {
            type = "boolean",
        },
        isOAuth2Supported = {
            type = "boolean",
        },
        isCustomAuthSupported = {
            type = "boolean",
        },
        oAuth2Defaults = {
            type = "structure",
        },
        customAuthConfigs = {
            type = "list",
            member_type = "structure",
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
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CancelFlowExecutionsOutput = {
    type = "structure",
    members = {
        invalidExecutions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomerProfilesMetadata = {
    type = "structure",
}

M.DatadogMetadata = {
    type = "structure",
}

M.DynatraceMetadata = {
    type = "structure",
}

M.EventBridgeMetadata = {
    type = "structure",
}

M.GoogleAnalyticsMetadata = {
    type = "structure",
    members = {
        oAuthScopes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.HoneycodeMetadata = {
    type = "structure",
    members = {
        oAuthScopes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.InforNexusMetadata = {
    type = "structure",
}

M.MarketoMetadata = {
    type = "structure",
}

M.PardotMetadata = {
    type = "structure",
}

M.RedshiftMetadata = {
    type = "structure",
}

M.S3Metadata = {
    type = "structure",
}

M.SalesforceDataTransferApi = {
    AUTOMATIC = "AUTOMATIC",
    BULKV2 = "BULKV2",
    REST_SYNC = "REST_SYNC",
}

M.SalesforceMetadata = {
    type = "structure",
    members = {
        oAuthScopes = {
            type = "list",
            member_type = "string",
        },
        dataTransferApis = {
            type = "list",
            member_type = "string",
        },
        oauth2GrantTypesSupported = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SAPODataMetadata = {
    type = "structure",
}

M.ServiceNowMetadata = {
    type = "structure",
}

M.SingularMetadata = {
    type = "structure",
}

M.SlackMetadata = {
    type = "structure",
    members = {
        oAuthScopes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SnowflakeMetadata = {
    type = "structure",
    members = {
        supportedRegions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.TrendmicroMetadata = {
    type = "structure",
}

M.UpsolverMetadata = {
    type = "structure",
}

M.VeevaMetadata = {
    type = "structure",
}

M.ZendeskMetadata = {
    type = "structure",
    members = {
        oAuthScopes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConnectorMetadata = {
    type = "structure",
    members = {
        Amplitude = {
            type = "structure",
        },
        Datadog = {
            type = "structure",
        },
        Dynatrace = {
            type = "structure",
        },
        GoogleAnalytics = {
            type = "structure",
        },
        InforNexus = {
            type = "structure",
        },
        Marketo = {
            type = "structure",
        },
        Redshift = {
            type = "structure",
        },
        S3 = {
            type = "structure",
        },
        Salesforce = {
            type = "structure",
        },
        ServiceNow = {
            type = "structure",
        },
        Singular = {
            type = "structure",
        },
        Slack = {
            type = "structure",
        },
        Snowflake = {
            type = "structure",
        },
        Trendmicro = {
            type = "structure",
        },
        Veeva = {
            type = "structure",
        },
        Zendesk = {
            type = "structure",
        },
        EventBridge = {
            type = "structure",
        },
        Upsolver = {
            type = "structure",
        },
        CustomerProfiles = {
            type = "structure",
        },
        Honeycode = {
            type = "structure",
        },
        SAPOData = {
            type = "structure",
        },
        Pardot = {
            type = "structure",
        },
    },
}

M.LambdaConnectorProvisioningConfig = {
    type = "structure",
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
    members = {
        lambda = {
            type = "structure",
        },
    },
}

M.ConnectorProvisioningType = {
    LAMBDA = "LAMBDA",
}

M.ConnectorRuntimeSetting = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        dataType = {
            type = "string",
        },
        isRequired = {
            type = "boolean",
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
            member_type = "string",
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
    members = {
        canUseAsSource = {
            type = "boolean",
        },
        canUseAsDestination = {
            type = "boolean",
        },
        supportedDestinationConnectors = {
            type = "list",
            member_type = "string",
        },
        supportedSchedulingFrequencies = {
            type = "list",
            member_type = "string",
        },
        isPrivateLinkEnabled = {
            type = "boolean",
        },
        isPrivateLinkEndpointUrlRequired = {
            type = "boolean",
        },
        supportedTriggerTypes = {
            type = "list",
            member_type = "string",
        },
        connectorMetadata = {
            type = "structure",
        },
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
            member_type = "string",
        },
        authenticationConfig = {
            type = "structure",
        },
        connectorRuntimeSettings = {
            type = "list",
            member_type = "structure",
        },
        supportedApiVersions = {
            type = "list",
            member_type = "string",
        },
        supportedOperators = {
            type = "list",
            member_type = "string",
        },
        supportedWriteOperations = {
            type = "list",
            member_type = "string",
        },
        connectorProvisioningType = {
            type = "string",
        },
        connectorProvisioningConfig = {
            type = "structure",
        },
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
            member_type = "string",
        },
        supportedDataTransferApis = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConnectorDetail = {
    type = "structure",
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
            member_type = "string",
        },
        supportedDataTransferTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConnectorEntity = {
    type = "structure",
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
        },
    },
}

M.DestinationFieldProperties = {
    type = "structure",
    members = {
        isCreatable = {
            type = "boolean",
        },
        isNullable = {
            type = "boolean",
        },
        isUpsertable = {
            type = "boolean",
        },
        isUpdatable = {
            type = "boolean",
        },
        isDefaultedOnCreate = {
            type = "boolean",
        },
        supportedWriteOperations = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SourceFieldProperties = {
    type = "structure",
    members = {
        isRetrievable = {
            type = "boolean",
        },
        isQueryable = {
            type = "boolean",
        },
        isTimestampFieldForIncrementalQueries = {
            type = "boolean",
        },
    },
}

M.Range = {
    type = "structure",
    members = {
        maximum = {
            type = "number",
        },
        minimum = {
            type = "number",
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
    members = {
        fieldType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterOperators = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        supportedValues = {
            type = "list",
            member_type = "string",
        },
        valueRegexPattern = {
            type = "string",
        },
        supportedDateFormat = {
            type = "string",
        },
        fieldValueRange = {
            type = "structure",
        },
        fieldLengthRange = {
            type = "structure",
        },
    },
}

M.SupportedFieldTypeDetails = {
    type = "structure",
    members = {
        v1 = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectorEntityField = {
    type = "structure",
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
        },
        defaultValue = {
            type = "string",
        },
        isDeprecated = {
            type = "boolean",
        },
        supportedFieldTypeDetails = {
            type = "structure",
        },
        description = {
            type = "string",
        },
        sourceProperties = {
            type = "structure",
        },
        destinationProperties = {
            type = "structure",
        },
        customProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ConnectorOAuthRequest = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CustomConnectorProfileProperties = {
    type = "structure",
    members = {
        profileProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        oAuth2Properties = {
            type = "structure",
        },
    },
}

M.DatadogConnectorProfileProperties = {
    type = "structure",
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
}

M.HoneycodeConnectorProfileProperties = {
    type = "structure",
}

M.InforNexusConnectorProfileProperties = {
    type = "structure",
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
    members = {
        instanceUrl = {
            type = "string",
        },
        isSandboxEnvironment = {
            type = "boolean",
        },
        businessUnitId = {
            type = "string",
        },
    },
}

M.RedshiftConnectorProfileProperties = {
    type = "structure",
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
    members = {
        instanceUrl = {
            type = "string",
        },
        isSandboxEnvironment = {
            type = "boolean",
        },
        usePrivateLinkForMetadataAndAuthorization = {
            type = "boolean",
        },
    },
}

M.OAuthProperties = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SAPODataConnectorProfileProperties = {
    type = "structure",
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
            type = "number",
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
        oAuthProperties = {
            type = "structure",
        },
        disableSSO = {
            type = "boolean",
        },
    },
}

M.ServiceNowConnectorProfileProperties = {
    type = "structure",
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
}

M.SlackConnectorProfileProperties = {
    type = "structure",
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
}

M.VeevaConnectorProfileProperties = {
    type = "structure",
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
    members = {
        Amplitude = {
            type = "structure",
        },
        Datadog = {
            type = "structure",
        },
        Dynatrace = {
            type = "structure",
        },
        GoogleAnalytics = {
            type = "structure",
        },
        Honeycode = {
            type = "structure",
        },
        InforNexus = {
            type = "structure",
        },
        Marketo = {
            type = "structure",
        },
        Redshift = {
            type = "structure",
        },
        Salesforce = {
            type = "structure",
        },
        ServiceNow = {
            type = "structure",
        },
        Singular = {
            type = "structure",
        },
        Slack = {
            type = "structure",
        },
        Snowflake = {
            type = "structure",
        },
        Trendmicro = {
            type = "structure",
        },
        Veeva = {
            type = "structure",
        },
        Zendesk = {
            type = "structure",
        },
        SAPOData = {
            type = "structure",
        },
        CustomConnector = {
            type = "structure",
        },
        Pardot = {
            type = "structure",
        },
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
        connectorProfileProperties = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        privateConnectionProvisioningState = {
            type = "structure",
        },
    },
}

M.CustomAuthCredentials = {
    type = "structure",
    members = {
        customAuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialsMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.OAuth2Credentials = {
    type = "structure",
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
        oAuthRequest = {
            type = "structure",
        },
    },
}

M.CustomConnectorProfileCredentials = {
    type = "structure",
    members = {
        authenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        basic = {
            type = "structure",
        },
        oauth2 = {
            type = "structure",
        },
        apiKey = {
            type = "structure",
        },
        custom = {
            type = "structure",
        },
    },
}

M.DatadogConnectorProfileCredentials = {
    type = "structure",
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
        oAuthRequest = {
            type = "structure",
        },
    },
}

M.HoneycodeConnectorProfileCredentials = {
    type = "structure",
    members = {
        accessToken = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        oAuthRequest = {
            type = "structure",
        },
    },
}

M.InforNexusConnectorProfileCredentials = {
    type = "structure",
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
        oAuthRequest = {
            type = "structure",
        },
    },
}

M.PardotConnectorProfileCredentials = {
    type = "structure",
    members = {
        accessToken = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        oAuthRequest = {
            type = "structure",
        },
        clientCredentialsArn = {
            type = "string",
        },
    },
}

M.RedshiftConnectorProfileCredentials = {
    type = "structure",
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
    members = {
        accessToken = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        oAuthRequest = {
            type = "structure",
        },
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
        oAuthRequest = {
            type = "structure",
        },
    },
}

M.SAPODataConnectorProfileCredentials = {
    type = "structure",
    members = {
        basicAuthCredentials = {
            type = "structure",
        },
        oAuthCredentials = {
            type = "structure",
        },
    },
}

M.ServiceNowConnectorProfileCredentials = {
    type = "structure",
    members = {
        username = {
            type = "string",
        },
        password = {
            type = "string",
        },
        oAuth2Credentials = {
            type = "structure",
        },
    },
}

M.SingularConnectorProfileCredentials = {
    type = "structure",
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
        oAuthRequest = {
            type = "structure",
        },
    },
}

M.SnowflakeConnectorProfileCredentials = {
    type = "structure",
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
        oAuthRequest = {
            type = "structure",
        },
    },
}

M.ConnectorProfileCredentials = {
    type = "structure",
    members = {
        Amplitude = {
            type = "structure",
        },
        Datadog = {
            type = "structure",
        },
        Dynatrace = {
            type = "structure",
        },
        GoogleAnalytics = {
            type = "structure",
        },
        Honeycode = {
            type = "structure",
        },
        InforNexus = {
            type = "structure",
        },
        Marketo = {
            type = "structure",
        },
        Redshift = {
            type = "structure",
        },
        Salesforce = {
            type = "structure",
        },
        ServiceNow = {
            type = "structure",
        },
        Singular = {
            type = "structure",
        },
        Slack = {
            type = "structure",
        },
        Snowflake = {
            type = "structure",
        },
        Trendmicro = {
            type = "structure",
        },
        Veeva = {
            type = "structure",
        },
        Zendesk = {
            type = "structure",
        },
        SAPOData = {
            type = "structure",
        },
        CustomConnector = {
            type = "structure",
        },
        Pardot = {
            type = "structure",
        },
    },
}

M.ConnectorProfileConfig = {
    type = "structure",
    members = {
        connectorProfileProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        connectorProfileCredentials = {
            type = "structure",
        },
    },
}

M.ConnectorServerException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateConnectorProfileInput = {
    type = "structure",
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
        connectorProfileConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateConnectorProfileOutput = {
    type = "structure",
    members = {
        connectorProfileArn = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ErrorHandlingConfig = {
    type = "structure",
    members = {
        failOnFirstDestinationError = {
            type = "boolean",
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
    members = {
        entityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorHandlingConfig = {
            type = "structure",
        },
        writeOperationType = {
            type = "string",
        },
        idFieldNames = {
            type = "list",
            member_type = "string",
        },
        customProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CustomerProfilesDestinationProperties = {
    type = "structure",
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
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorHandlingConfig = {
            type = "structure",
        },
    },
}

M.HoneycodeDestinationProperties = {
    type = "structure",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorHandlingConfig = {
            type = "structure",
        },
    },
}

M.LookoutMetricsDestinationProperties = {
    type = "structure",
}

M.MarketoDestinationProperties = {
    type = "structure",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorHandlingConfig = {
            type = "structure",
        },
    },
}

M.RedshiftDestinationProperties = {
    type = "structure",
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
        errorHandlingConfig = {
            type = "structure",
        },
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
    members = {
        prefixType = {
            type = "string",
        },
        prefixFormat = {
            type = "string",
        },
        pathPrefixHierarchy = {
            type = "list",
            member_type = "string",
        },
    },
}

M.S3OutputFormatConfig = {
    type = "structure",
    members = {
        fileType = {
            type = "string",
        },
        prefixConfig = {
            type = "structure",
        },
        aggregationConfig = {
            type = "structure",
        },
        preserveSourceDataTyping = {
            type = "boolean",
        },
    },
}

M.S3DestinationProperties = {
    type = "structure",
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
        s3OutputFormatConfig = {
            type = "structure",
        },
    },
}

M.SalesforceDestinationProperties = {
    type = "structure",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idFieldNames = {
            type = "list",
            member_type = "string",
        },
        errorHandlingConfig = {
            type = "structure",
        },
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
    members = {
        objectPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        successResponseHandlingConfig = {
            type = "structure",
        },
        idFieldNames = {
            type = "list",
            member_type = "string",
        },
        errorHandlingConfig = {
            type = "structure",
        },
        writeOperationType = {
            type = "string",
        },
    },
}

M.SnowflakeDestinationProperties = {
    type = "structure",
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
        errorHandlingConfig = {
            type = "structure",
        },
    },
}

M.UpsolverS3OutputFormatConfig = {
    type = "structure",
    members = {
        fileType = {
            type = "string",
        },
        prefixConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        aggregationConfig = {
            type = "structure",
        },
    },
}

M.UpsolverDestinationProperties = {
    type = "structure",
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
        s3OutputFormatConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ZendeskDestinationProperties = {
    type = "structure",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idFieldNames = {
            type = "list",
            member_type = "string",
        },
        errorHandlingConfig = {
            type = "structure",
        },
        writeOperationType = {
            type = "string",
        },
    },
}

M.DestinationConnectorProperties = {
    type = "structure",
    members = {
        Redshift = {
            type = "structure",
        },
        S3 = {
            type = "structure",
        },
        Salesforce = {
            type = "structure",
        },
        Snowflake = {
            type = "structure",
        },
        EventBridge = {
            type = "structure",
        },
        LookoutMetrics = {
            type = "structure",
        },
        Upsolver = {
            type = "structure",
        },
        Honeycode = {
            type = "structure",
        },
        CustomerProfiles = {
            type = "structure",
        },
        Zendesk = {
            type = "structure",
        },
        Marketo = {
            type = "structure",
        },
        CustomConnector = {
            type = "structure",
        },
        SAPOData = {
            type = "structure",
        },
    },
}

M.DestinationFlowConfig = {
    type = "structure",
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
        destinationConnectorProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GlueDataCatalogConfig = {
    type = "structure",
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
    members = {
        glueDataCatalog = {
            type = "structure",
        },
    },
}

M.IncrementalPullConfig = {
    type = "structure",
    members = {
        datetimeTypeFieldName = {
            type = "string",
        },
    },
}

M.CustomConnectorSourceProperties = {
    type = "structure",
    members = {
        entityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        dataTransferApi = {
            type = "structure",
        },
    },
}

M.DatadogSourceProperties = {
    type = "structure",
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
    members = {
        s3InputFileType = {
            type = "string",
        },
    },
}

M.S3SourceProperties = {
    type = "structure",
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
        s3InputFormatConfig = {
            type = "structure",
        },
    },
}

M.SalesforceSourceProperties = {
    type = "structure",
    members = {
        object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enableDynamicFieldUpdate = {
            type = "boolean",
        },
        includeDeletedRecords = {
            type = "boolean",
        },
        dataTransferApi = {
            type = "string",
        },
    },
}

M.SAPODataPaginationConfig = {
    type = "structure",
    members = {
        maxPageSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SAPODataParallelismConfig = {
    type = "structure",
    members = {
        maxParallelism = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SAPODataSourceProperties = {
    type = "structure",
    members = {
        objectPath = {
            type = "string",
        },
        parallelismConfig = {
            type = "structure",
        },
        paginationConfig = {
            type = "structure",
        },
    },
}

M.ServiceNowSourceProperties = {
    type = "structure",
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
        },
        includeRenditions = {
            type = "boolean",
        },
        includeAllVersions = {
            type = "boolean",
        },
    },
}

M.ZendeskSourceProperties = {
    type = "structure",
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
    members = {
        Amplitude = {
            type = "structure",
        },
        Datadog = {
            type = "structure",
        },
        Dynatrace = {
            type = "structure",
        },
        GoogleAnalytics = {
            type = "structure",
        },
        InforNexus = {
            type = "structure",
        },
        Marketo = {
            type = "structure",
        },
        S3 = {
            type = "structure",
        },
        Salesforce = {
            type = "structure",
        },
        ServiceNow = {
            type = "structure",
        },
        Singular = {
            type = "structure",
        },
        Slack = {
            type = "structure",
        },
        Trendmicro = {
            type = "structure",
        },
        Veeva = {
            type = "structure",
        },
        Zendesk = {
            type = "structure",
        },
        SAPOData = {
            type = "structure",
        },
        CustomConnector = {
            type = "structure",
        },
        Pardot = {
            type = "structure",
        },
    },
}

M.SourceFlowConfig = {
    type = "structure",
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
        sourceConnectorProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        incrementalPullConfig = {
            type = "structure",
        },
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
    members = {
        sourceFields = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        connectorOperator = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DataPullMode = {
    INCREMENTAL = "Incremental",
    COMPLETE = "Complete",
}

M.ScheduledTriggerProperties = {
    type = "structure",
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
            type = "number",
        },
        firstExecutionFrom = {
            type = "timestamp",
        },
        flowErrorDeactivationThreshold = {
            type = "number",
        },
    },
}

M.TriggerProperties = {
    type = "structure",
    members = {
        Scheduled = {
            type = "structure",
        },
    },
}

M.TriggerConfig = {
    type = "structure",
    members = {
        triggerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        triggerProperties = {
            type = "structure",
        },
    },
}

M.CreateFlowInput = {
    type = "structure",
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
        triggerConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        sourceFlowConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        destinationFlowConfigList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tasks = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        metadataCatalogConfig = {
            type = "structure",
        },
        clientToken = {
            type = "string",
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
    members = {
        connectorProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forceDelete = {
            type = "boolean",
        },
    },
}

M.DeleteConnectorProfileOutput = {
    type = "structure",
}

M.DeleteFlowInput = {
    type = "structure",
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forceDelete = {
            type = "boolean",
        },
    },
}

M.DeleteFlowOutput = {
    type = "structure",
}

M.DescribeConnectorInput = {
    type = "structure",
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
    members = {
        connectorConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeConnectorEntityInput = {
    type = "structure",
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
    members = {
        connectorEntityFields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeConnectorProfilesInput = {
    type = "structure",
    members = {
        connectorProfileNames = {
            type = "list",
            member_type = "string",
        },
        connectorType = {
            type = "string",
        },
        connectorLabel = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeConnectorProfilesOutput = {
    type = "structure",
    members = {
        connectorProfileDetails = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeConnectorsInput = {
    type = "structure",
    members = {
        connectorTypes = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeConnectorsOutput = {
    type = "structure",
    members = {
        connectorConfigurations = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        connectors = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeFlowInput = {
    type = "structure",
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
    members = {
        catalogType = {
            type = "string",
        },
        tableName = {
            type = "string",
        },
        tableRegistrationOutput = {
            type = "structure",
        },
        partitionRegistrationOutput = {
            type = "structure",
        },
    },
}

M.DescribeFlowOutput = {
    type = "structure",
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
        sourceFlowConfig = {
            type = "structure",
        },
        destinationFlowConfigList = {
            type = "list",
            member_type = "structure",
        },
        lastRunExecutionDetails = {
            type = "structure",
        },
        triggerConfig = {
            type = "structure",
        },
        tasks = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        metadataCatalogConfig = {
            type = "structure",
        },
        lastRunMetadataCatalogDetails = {
            type = "list",
            member_type = "structure",
        },
        schemaVersion = {
            type = "number",
        },
    },
}

M.DescribeFlowExecutionRecordsInput = {
    type = "structure",
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ErrorInfo = {
    type = "structure",
    members = {
        putFailuresCount = {
            type = "number",
        },
        executionMessage = {
            type = "string",
        },
    },
}

M.ExecutionResult = {
    type = "structure",
    members = {
        errorInfo = {
            type = "structure",
        },
        bytesProcessed = {
            type = "number",
        },
        bytesWritten = {
            type = "number",
        },
        recordsProcessed = {
            type = "number",
        },
        numParallelProcesses = {
            type = "number",
        },
        maxPageSize = {
            type = "number",
        },
    },
}

M.ExecutionRecord = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
        },
        executionStatus = {
            type = "string",
        },
        executionResult = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.DescribeFlowExecutionRecordsOutput = {
    type = "structure",
    members = {
        flowExecutions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FlowDefinition = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        lastRunExecutionDetails = {
            type = "structure",
        },
    },
}

M.ListConnectorEntitiesInput = {
    type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListConnectorEntitiesOutput = {
    type = "structure",
    members = {
        connectorEntityMap = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListConnectorsOutput = {
    type = "structure",
    members = {
        connectors = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFlowsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFlowsOutput = {
    type = "structure",
    members = {
        flows = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.RegisterConnectorInput = {
    type = "structure",
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
        connectorProvisioningConfig = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.RegisterConnectorOutput = {
    type = "structure",
    members = {
        connectorArn = {
            type = "string",
        },
    },
}

M.ResetConnectorMetadataCacheInput = {
    type = "structure",
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
}

M.StartFlowInput = {
    type = "structure",
    members = {
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StartFlowOutput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UnregisterConnectorInput = {
    type = "structure",
    members = {
        connectorLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forceDelete = {
            type = "boolean",
        },
    },
}

M.UnregisterConnectorOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateConnectorProfileInput = {
    type = "structure",
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
        connectorProfileConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateConnectorProfileOutput = {
    type = "structure",
    members = {
        connectorProfileArn = {
            type = "string",
        },
    },
}

M.UpdateConnectorRegistrationInput = {
    type = "structure",
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
        connectorProvisioningConfig = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateConnectorRegistrationOutput = {
    type = "structure",
    members = {
        connectorArn = {
            type = "string",
        },
    },
}

M.UpdateFlowInput = {
    type = "structure",
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
        triggerConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        sourceFlowConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        destinationFlowConfigList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tasks = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        metadataCatalogConfig = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateFlowOutput = {
    type = "structure",
    members = {
        flowStatus = {
            type = "string",
        },
    },
}

return M
