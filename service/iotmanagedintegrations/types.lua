local M = {}

M.AbortCriteriaAction = {
    CANCEL = "CANCEL",
}

M.AbortCriteriaFailureType = {
    FAILED = "FAILED",
    REJECTED = "REJECTED",
    TIMED_OUT = "TIMED_OUT",
    ALL = "ALL",
}

M.AbortConfigCriteria = {
    type = "structure",
    id = "AbortConfigCriteria",
    members = {
        Action = {
            type = "string",
        },
        FailureType = {
            type = "string",
        },
        MinNumberOfExecutedThings = {
            type = "integer",
        },
        ThresholdPercentage = {
            type = "double",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociationState = {
    ASSOCIATION_IN_PROGRESS = "ASSOCIATION_IN_PROGRESS",
    ASSOCIATION_FAILED = "ASSOCIATION_FAILED",
    ASSOCIATION_SUCCEEDED = "ASSOCIATION_SUCCEEDED",
    ASSOCIATION_DELETING = "ASSOCIATION_DELETING",
    REFRESH_TOKEN_EXPIRED = "REFRESH_TOKEN_EXPIRED",
}

M.AccountAssociationItem = {
    type = "structure",
    id = "AccountAssociationItem",
    members = {
        AccountAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
        },
        ConnectorDestinationId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GeneralAuthorizationName = {
    type = "structure",
    id = "GeneralAuthorizationName",
    members = {
        AuthMaterialName = {
            type = "string",
        },
    },
}

M.CreateAccountAssociationInput = {
    type = "structure",
    id = "CreateAccountAssociationInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ConnectorDestinationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        GeneralAuthorization = M.GeneralAuthorizationName,
    },
}

M.CreateAccountAssociationOutput = {
    type = "structure",
    id = "CreateAccountAssociationOutput",
    members = {
        OAuthAuthorizationUrl = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
        AccountAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAccountAssociationInput = {
    type = "structure",
    id = "DeleteAccountAssociationInput",
    members = {
        AccountAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccountAssociationOutput = {
    type = "structure",
    id = "DeleteAccountAssociationOutput",
}

M.GetAccountAssociationInput = {
    type = "structure",
    id = "GetAccountAssociationInput",
    members = {
        AccountAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccountAssociationOutput = {
    type = "structure",
    id = "GetAccountAssociationOutput",
    members = {
        AccountAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
        },
        ConnectorDestinationId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        OAuthAuthorizationUrl = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        GeneralAuthorization = M.GeneralAuthorizationName,
    },
}

M.ListAccountAssociationsInput = {
    type = "structure",
    id = "ListAccountAssociationsInput",
    members = {
        ConnectorDestinationId = {
            type = "string",
            traits = {
                http_query = "ConnectorDestinationId",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListAccountAssociationsOutput = {
    type = "structure",
    id = "ListAccountAssociationsOutput",
    members = {
        Items = {
            type = "list",
            member = M.AccountAssociationItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartAccountAssociationRefreshInput = {
    type = "structure",
    id = "StartAccountAssociationRefreshInput",
    members = {
        AccountAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartAccountAssociationRefreshOutput = {
    type = "structure",
    id = "StartAccountAssociationRefreshOutput",
    members = {
        OAuthAuthorizationUrl = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
    },
}

M.UpdateAccountAssociationInput = {
    type = "structure",
    id = "UpdateAccountAssociationInput",
    members = {
        AccountAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateAccountAssociationOutput = {
    type = "structure",
    id = "UpdateAccountAssociationOutput",
}

M.SecretsManager = {
    type = "structure",
    id = "SecretsManager",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthMaterial = {
    type = "structure",
    id = "AuthMaterial",
    members = {
        SecretsManager = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SecretsManager }),
        AuthMaterialName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProactiveRefreshTokenRenewal = {
    type = "structure",
    id = "ProactiveRefreshTokenRenewal",
    members = {
        enabled = {
            type = "boolean",
        },
        DaysBeforeRenewal = {
            type = "integer",
        },
    },
}

M.TokenEndpointAuthenticationScheme = {
    HTTP_BASIC = "HTTP_BASIC",
    REQUEST_BODY_CREDENTIALS = "REQUEST_BODY_CREDENTIALS",
}

M.OAuthConfig = {
    type = "structure",
    id = "OAuthConfig",
    members = {
        authUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tokenUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "string",
        },
        tokenEndpointAuthenticationScheme = {
            type = "string",
            traits = {
                required = true,
            },
        },
        oAuthCompleteRedirectUrl = {
            type = "string",
        },
        proactiveRefreshTokenRenewal = M.ProactiveRefreshTokenRenewal,
    },
}

M.AuthConfig = {
    type = "structure",
    id = "AuthConfig",
    members = {
        oAuth = M.OAuthConfig,
        GeneralAuthorization = {
            type = "list",
            member = M.AuthMaterial,
        },
    },
}

M.GeneralAuthorizationUpdate = {
    type = "structure",
    id = "GeneralAuthorizationUpdate",
    members = {
        AuthMaterialsToAdd = {
            type = "list",
            member = M.AuthMaterial,
        },
        AuthMaterialsToUpdate = {
            type = "list",
            member = M.AuthMaterial,
        },
    },
}

M.OAuthUpdate = {
    type = "structure",
    id = "OAuthUpdate",
    members = {
        oAuthCompleteRedirectUrl = {
            type = "string",
        },
        proactiveRefreshTokenRenewal = M.ProactiveRefreshTokenRenewal,
    },
}

M.AuthConfigUpdate = {
    type = "structure",
    id = "AuthConfigUpdate",
    members = {
        oAuthUpdate = M.OAuthUpdate,
        GeneralAuthorizationUpdate = M.GeneralAuthorizationUpdate,
    },
}

M.AuthMaterialType = {
    CUSTOM_PROTOCOL_QR_BAR_CODE = "CUSTOM_PROTOCOL_QR_BAR_CODE",
    WIFI_SETUP_QR_BAR_CODE = "WIFI_SETUP_QR_BAR_CODE",
    ZWAVE_QR_BAR_CODE = "ZWAVE_QR_BAR_CODE",
    ZIGBEE_QR_BAR_CODE = "ZIGBEE_QR_BAR_CODE",
    DISCOVERED_DEVICE = "DISCOVERED_DEVICE",
    PRE_ONBOARDED_CLOUD = "PRE_ONBOARDED_CLOUD",
}

M.AuthType = {
    OAUTH = "OAUTH",
}

M.CapabilityAction = {
    type = "structure",
    id = "CapabilityAction",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ref = {
            type = "string",
        },
        actionTraceId = {
            type = "string",
        },
        parameters = {
            type = "document",
        },
    },
}

M.CapabilityReportCapability = {
    type = "structure",
    id = "CapabilityReportCapability",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        events = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CapabilityReportEndpoint = {
    type = "structure",
    id = "CapabilityReportEndpoint",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        capabilities = {
            type = "list",
            member = M.CapabilityReportCapability,
            traits = {
                required = true,
            },
        },
    },
}

M.CapabilityReport = {
    type = "structure",
    id = "CapabilityReport",
    members = {
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nodeId = {
            type = "string",
        },
        endpoints = {
            type = "list",
            member = M.CapabilityReportEndpoint,
            traits = {
                required = true,
            },
        },
    },
}

M.SchemaVersionFormat = {
    AWS = "AWS",
    ZCL = "ZCL",
    CONNECTOR = "CONNECTOR",
}

M.CapabilitySchemaItem = {
    type = "structure",
    id = "CapabilitySchemaItem",
    members = {
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CapabilityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExtrinsicId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExtrinsicVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Schema = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaConfig = {
    type = "structure",
    id = "LambdaConfig",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointConfig = {
    type = "structure",
    id = "EndpointConfig",
    members = {
        lambda = M.LambdaConfig,
    },
}

M.EndpointType = {
    LAMBDA = "LAMBDA",
}

M.CreateCloudConnectorInput = {
    type = "structure",
    id = "CreateCloudConnectorInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EndpointConfig }),
        Description = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateCloudConnectorOutput = {
    type = "structure",
    id = "CreateCloudConnectorOutput",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.DeleteCloudConnectorInput = {
    type = "structure",
    id = "DeleteCloudConnectorInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCloudConnectorOutput = {
    type = "structure",
    id = "DeleteCloudConnectorOutput",
}

M.GetCloudConnectorInput = {
    type = "structure",
    id = "GetCloudConnectorInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CloudConnectorType = {
    LISTED = "LISTED",
    UNLISTED = "UNLISTED",
}

M.GetCloudConnectorOutput = {
    type = "structure",
    id = "GetCloudConnectorOutput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EndpointConfig }),
        Description = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListCloudConnectorsInput = {
    type = "structure",
    id = "ListCloudConnectorsInput",
    members = {
        Type = {
            type = "string",
            traits = {
                http_query = "Type",
            },
        },
        LambdaArn = {
            type = "string",
            traits = {
                http_query = "LambdaArn",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ConnectorItem = {
    type = "structure",
    id = "ConnectorItem",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EndpointConfig }),
        Description = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListCloudConnectorsOutput = {
    type = "structure",
    id = "ListCloudConnectorsOutput",
    members = {
        Items = {
            type = "list",
            member = M.ConnectorItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateCloudConnectorInput = {
    type = "structure",
    id = "UpdateCloudConnectorInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateCloudConnectorOutput = {
    type = "structure",
    id = "UpdateCloudConnectorOutput",
}

M.CommandCapability = {
    type = "structure",
    id = "CommandCapability",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actions = {
            type = "list",
            member = M.CapabilityAction,
            traits = {
                required = true,
            },
        },
    },
}

M.CommandEndpoint = {
    type = "structure",
    id = "CommandEndpoint",
    members = {
        endpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilities = {
            type = "list",
            member = M.CommandCapability,
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurationError = {
    type = "structure",
    id = "ConfigurationError",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ConfigurationState = {
    ENABLED = "ENABLED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.ConfigurationStatus = {
    type = "structure",
    id = "ConfigurationStatus",
    members = {
        error = M.ConfigurationError,
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectorDestinationSummary = {
    type = "structure",
    id = "ConnectorDestinationSummary",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CloudConnectorId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.CreateConnectorDestinationInput = {
    type = "structure",
    id = "CreateConnectorDestinationInput",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CloudConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthType = {
            type = "string",
        },
        AuthConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthConfig }),
        SecretsManager = M.SecretsManager,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateConnectorDestinationOutput = {
    type = "structure",
    id = "CreateConnectorDestinationOutput",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.DeleteConnectorDestinationInput = {
    type = "structure",
    id = "DeleteConnectorDestinationInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConnectorDestinationOutput = {
    type = "structure",
    id = "DeleteConnectorDestinationOutput",
}

M.GetConnectorDestinationInput = {
    type = "structure",
    id = "GetConnectorDestinationInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConnectorDestinationOutput = {
    type = "structure",
    id = "GetConnectorDestinationOutput",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CloudConnectorId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        AuthType = {
            type = "string",
        },
        AuthConfig = M.AuthConfig,
        SecretsManager = M.SecretsManager,
        OAuthCompleteRedirectUrl = {
            type = "string",
        },
    },
}

M.ListConnectorDestinationsInput = {
    type = "structure",
    id = "ListConnectorDestinationsInput",
    members = {
        CloudConnectorId = {
            type = "string",
            traits = {
                http_query = "CloudConnectorId",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListConnectorDestinationsOutput = {
    type = "structure",
    id = "ListConnectorDestinationsOutput",
    members = {
        ConnectorDestinationList = {
            type = "list",
            member = M.ConnectorDestinationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateConnectorDestinationInput = {
    type = "structure",
    id = "UpdateConnectorDestinationInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        AuthType = {
            type = "string",
        },
        AuthConfig = M.AuthConfigUpdate,
        SecretsManager = M.SecretsManager,
    },
}

M.UpdateConnectorDestinationOutput = {
    type = "structure",
    id = "UpdateConnectorDestinationOutput",
}

M.ConnectorEventOperation = {
    DEVICE_COMMAND_RESPONSE = "DEVICE_COMMAND_RESPONSE",
    DEVICE_DISCOVERY = "DEVICE_DISCOVERY",
    DEVICE_EVENT = "DEVICE_EVENT",
    DEVICE_COMMAND_REQUEST = "DEVICE_COMMAND_REQUEST",
}

M.CreateCredentialLockerInput = {
    type = "structure",
    id = "CreateCredentialLockerInput",
    members = {
        Name = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCredentialLockerOutput = {
    type = "structure",
    id = "CreateCredentialLockerOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeliveryDestinationType = {
    KINESIS = "KINESIS",
}

M.CreateDestinationInput = {
    type = "structure",
    id = "CreateDestinationInput",
    members = {
        DeliveryDestinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryDestinationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDestinationOutput = {
    type = "structure",
    id = "CreateDestinationOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.LogLevel = {
    DEBUG = "DEBUG",
    ERROR = "ERROR",
    INFO = "INFO",
    WARN = "WARN",
}

M.CreateEventLogConfigurationInput = {
    type = "structure",
    id = "CreateEventLogConfigurationInput",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        EventLogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateEventLogConfigurationOutput = {
    type = "structure",
    id = "CreateEventLogConfigurationOutput",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.Role = {
    CONTROLLER = "CONTROLLER",
    DEVICE = "DEVICE",
}

M.WiFiSimpleSetupConfiguration = {
    type = "structure",
    id = "WiFiSimpleSetupConfiguration",
    members = {
        EnableAsProvisioner = {
            type = "boolean",
        },
        EnableAsProvisionee = {
            type = "boolean",
        },
        TimeoutInMinutes = {
            type = "integer",
        },
    },
}

M.CreateManagedThingInput = {
    type = "structure",
    id = "CreateManagedThingInput",
    members = {
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Owner = {
            type = "string",
        },
        CredentialLockerId = {
            type = "string",
        },
        AuthenticationMaterial = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationMaterialType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WiFiSimpleSetupConfiguration = M.WiFiSimpleSetupConfiguration,
        SerialNumber = {
            type = "string",
        },
        Brand = {
            type = "string",
        },
        Model = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CapabilityReport = M.CapabilityReport,
        CapabilitySchemas = {
            type = "list",
            member = M.CapabilitySchemaItem,
        },
        Capabilities = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Classification = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MetaData = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateManagedThingOutput = {
    type = "structure",
    id = "CreateManagedThingOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.EventType = {
    DEVICE_COMMAND = "DEVICE_COMMAND",
    DEVICE_COMMAND_REQUEST = "DEVICE_COMMAND_REQUEST",
    DEVICE_DISCOVERY_STATUS = "DEVICE_DISCOVERY_STATUS",
    DEVICE_EVENT = "DEVICE_EVENT",
    DEVICE_LIFE_CYCLE = "DEVICE_LIFE_CYCLE",
    DEVICE_STATE = "DEVICE_STATE",
    DEVICE_OTA = "DEVICE_OTA",
    DEVICE_WSS = "DEVICE_WSS",
    CONNECTOR_ASSOCIATION = "CONNECTOR_ASSOCIATION",
    ACCOUNT_ASSOCIATION = "ACCOUNT_ASSOCIATION",
    CONNECTOR_ERROR_REPORT = "CONNECTOR_ERROR_REPORT",
}

M.CreateNotificationConfigurationInput = {
    type = "structure",
    id = "CreateNotificationConfigurationInput",
    members = {
        EventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateNotificationConfigurationOutput = {
    type = "structure",
    id = "CreateNotificationConfigurationOutput",
    members = {
        EventType = {
            type = "string",
        },
    },
}

M.OtaMechanism = {
    PUSH = "PUSH",
}

M.SchedulingConfigEndBehavior = {
    STOP_ROLLOUT = "STOP_ROLLOUT",
    CANCEL = "CANCEL",
    FORCE_CANCEL = "FORCE_CANCEL",
}

M.ScheduleMaintenanceWindow = {
    type = "structure",
    id = "ScheduleMaintenanceWindow",
    members = {
        DurationInMinutes = {
            type = "integer",
        },
        StartTime = {
            type = "string",
        },
    },
}

M.OtaTaskSchedulingConfig = {
    type = "structure",
    id = "OtaTaskSchedulingConfig",
    members = {
        EndBehavior = {
            type = "string",
        },
        EndTime = {
            type = "string",
        },
        MaintenanceWindows = {
            type = "list",
            member = M.ScheduleMaintenanceWindow,
        },
        StartTime = {
            type = "string",
        },
    },
}

M.RetryCriteriaFailureType = {
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    ALL = "ALL",
}

M.RetryConfigCriteria = {
    type = "structure",
    id = "RetryConfigCriteria",
    members = {
        FailureType = {
            type = "string",
        },
        MinNumberOfRetries = {
            type = "integer",
        },
    },
}

M.OtaTaskExecutionRetryConfig = {
    type = "structure",
    id = "OtaTaskExecutionRetryConfig",
    members = {
        RetryConfigCriteria = {
            type = "list",
            member = M.RetryConfigCriteria,
        },
    },
}

M.OtaType = {
    ONE_TIME = "ONE_TIME",
    CONTINUOUS = "CONTINUOUS",
}

M.OtaProtocol = {
    HTTP = "HTTP",
}

M.CreateOtaTaskInput = {
    type = "structure",
    id = "CreateOtaTaskInput",
    members = {
        Description = {
            type = "string",
        },
        S3Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "string",
        },
        Target = {
            type = "list",
            member = { type = "string" },
        },
        TaskConfigurationId = {
            type = "string",
        },
        OtaMechanism = {
            type = "string",
        },
        OtaType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OtaTargetQueryString = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        OtaSchedulingConfig = M.OtaTaskSchedulingConfig,
        OtaTaskExecutionRetryConfig = M.OtaTaskExecutionRetryConfig,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateOtaTaskOutput = {
    type = "structure",
    id = "CreateOtaTaskOutput",
    members = {
        TaskId = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.OtaTaskAbortConfig = {
    type = "structure",
    id = "OtaTaskAbortConfig",
    members = {
        AbortConfigCriteriaList = {
            type = "list",
            member = M.AbortConfigCriteria,
        },
    },
}

M.RolloutRateIncreaseCriteria = {
    type = "structure",
    id = "RolloutRateIncreaseCriteria",
    members = {
        numberOfNotifiedThings = {
            type = "integer",
        },
        numberOfSucceededThings = {
            type = "integer",
        },
    },
}

M.ExponentialRolloutRate = {
    type = "structure",
    id = "ExponentialRolloutRate",
    members = {
        BaseRatePerMinute = {
            type = "integer",
        },
        IncrementFactor = {
            type = "double",
        },
        RateIncreaseCriteria = M.RolloutRateIncreaseCriteria,
    },
}

M.OtaTaskExecutionRolloutConfig = {
    type = "structure",
    id = "OtaTaskExecutionRolloutConfig",
    members = {
        ExponentialRolloutRate = M.ExponentialRolloutRate,
        MaximumPerMinute = {
            type = "integer",
        },
    },
}

M.OtaTaskTimeoutConfig = {
    type = "structure",
    id = "OtaTaskTimeoutConfig",
    members = {
        InProgressTimeoutInMinutes = {
            type = "long",
        },
    },
}

M.PushConfig = {
    type = "structure",
    id = "PushConfig",
    members = {
        AbortConfig = M.OtaTaskAbortConfig,
        RolloutConfig = M.OtaTaskExecutionRolloutConfig,
        TimeoutConfig = M.OtaTaskTimeoutConfig,
    },
}

M.CreateOtaTaskConfigurationInput = {
    type = "structure",
    id = "CreateOtaTaskConfigurationInput",
    members = {
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        PushConfig = M.PushConfig,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateOtaTaskConfigurationOutput = {
    type = "structure",
    id = "CreateOtaTaskConfigurationOutput",
    members = {
        TaskConfigurationId = {
            type = "string",
        },
    },
}

M.ProvisioningType = {
    FLEET_PROVISIONING = "FLEET_PROVISIONING",
    JITR = "JITR",
}

M.CreateProvisioningProfileInput = {
    type = "structure",
    id = "CreateProvisioningProfileInput",
    members = {
        ProvisioningType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CaCertificate = {
            type = "string",
        },
        ClaimCertificate = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ProvisioningProfileStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    CREATED = "CREATED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateProvisioningProfileOutput = {
    type = "structure",
    id = "CreateProvisioningProfileOutput",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ProvisioningType = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ClaimCertificate = {
            type = "string",
        },
        ClaimCertificatePrivateKey = {
            type = "string",
        },
    },
}

M.CredentialLockerSummary = {
    type = "structure",
    id = "CredentialLockerSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.DeleteCredentialLockerInput = {
    type = "structure",
    id = "DeleteCredentialLockerInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCredentialLockerOutput = {
    type = "structure",
    id = "DeleteCredentialLockerOutput",
}

M.GetCredentialLockerInput = {
    type = "structure",
    id = "GetCredentialLockerInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCredentialLockerOutput = {
    type = "structure",
    id = "GetCredentialLockerOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListCredentialLockersInput = {
    type = "structure",
    id = "ListCredentialLockersInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListCredentialLockersOutput = {
    type = "structure",
    id = "ListCredentialLockersOutput",
    members = {
        Items = {
            type = "list",
            member = M.CredentialLockerSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DeleteDestinationInput = {
    type = "structure",
    id = "DeleteDestinationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDestinationOutput = {
    type = "structure",
    id = "DeleteDestinationOutput",
}

M.DeleteEventLogConfigurationInput = {
    type = "structure",
    id = "DeleteEventLogConfigurationInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEventLogConfigurationOutput = {
    type = "structure",
    id = "DeleteEventLogConfigurationOutput",
}

M.DeleteManagedThingInput = {
    type = "structure",
    id = "DeleteManagedThingInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Force = {
            type = "boolean",
            traits = {
                http_query = "Force",
            },
        },
    },
}

M.DeleteManagedThingOutput = {
    type = "structure",
    id = "DeleteManagedThingOutput",
}

M.DeleteNotificationConfigurationInput = {
    type = "structure",
    id = "DeleteNotificationConfigurationInput",
    members = {
        EventType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNotificationConfigurationOutput = {
    type = "structure",
    id = "DeleteNotificationConfigurationOutput",
}

M.DeleteOtaTaskInput = {
    type = "structure",
    id = "DeleteOtaTaskInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteOtaTaskOutput = {
    type = "structure",
    id = "DeleteOtaTaskOutput",
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteOtaTaskConfigurationInput = {
    type = "structure",
    id = "DeleteOtaTaskConfigurationInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteOtaTaskConfigurationOutput = {
    type = "structure",
    id = "DeleteOtaTaskConfigurationOutput",
}

M.DeleteProvisioningProfileInput = {
    type = "structure",
    id = "DeleteProvisioningProfileInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProvisioningProfileOutput = {
    type = "structure",
    id = "DeleteProvisioningProfileOutput",
}

M.DeregisterAccountAssociationInput = {
    type = "structure",
    id = "DeregisterAccountAssociationInput",
    members = {
        ManagedThingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterAccountAssociationOutput = {
    type = "structure",
    id = "DeregisterAccountAssociationOutput",
}

M.DestinationSummary = {
    type = "structure",
    id = "DestinationSummary",
    members = {
        Description = {
            type = "string",
        },
        DeliveryDestinationArn = {
            type = "string",
        },
        DeliveryDestinationType = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.GetDestinationInput = {
    type = "structure",
    id = "GetDestinationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDestinationOutput = {
    type = "structure",
    id = "GetDestinationOutput",
    members = {
        Description = {
            type = "string",
        },
        DeliveryDestinationArn = {
            type = "string",
        },
        DeliveryDestinationType = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListDestinationsInput = {
    type = "structure",
    id = "ListDestinationsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListDestinationsOutput = {
    type = "structure",
    id = "ListDestinationsOutput",
    members = {
        DestinationList = {
            type = "list",
            member = M.DestinationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateDestinationInput = {
    type = "structure",
    id = "UpdateDestinationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeliveryDestinationArn = {
            type = "string",
        },
        DeliveryDestinationType = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateDestinationOutput = {
    type = "structure",
    id = "UpdateDestinationOutput",
}

M.MatterCapabilityReportAttribute = {
    type = "structure",
    id = "MatterCapabilityReportAttribute",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        value = {
            type = "document",
        },
    },
}

M.MatterCapabilityReportCluster = {
    type = "structure",
    id = "MatterCapabilityReportCluster",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        publicId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        specVersion = {
            type = "string",
        },
        attributes = {
            type = "list",
            member = M.MatterCapabilityReportAttribute,
        },
        commands = {
            type = "list",
            member = { type = "string" },
        },
        events = {
            type = "list",
            member = { type = "string" },
        },
        featureMap = {
            type = "long",
        },
        generatedCommands = {
            type = "list",
            member = { type = "string" },
        },
        fabricIndex = {
            type = "integer",
        },
    },
}

M.MatterCapabilityReportEndpoint = {
    type = "structure",
    id = "MatterCapabilityReportEndpoint",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        clusters = {
            type = "list",
            member = M.MatterCapabilityReportCluster,
            traits = {
                required = true,
            },
        },
        parts = {
            type = "list",
            member = { type = "string" },
        },
        semanticTags = {
            type = "list",
            member = { type = "string" },
        },
        clientClusters = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MatterCapabilityReport = {
    type = "structure",
    id = "MatterCapabilityReport",
    members = {
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nodeId = {
            type = "string",
        },
        endpoints = {
            type = "list",
            member = M.MatterCapabilityReportEndpoint,
            traits = {
                required = true,
            },
        },
    },
}

M.Device = {
    type = "structure",
    id = "Device",
    members = {
        ConnectorDeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectorDeviceName = {
            type = "string",
        },
        CapabilityReport = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MatterCapabilityReport }),
        CapabilitySchemas = {
            type = "list",
            member = M.CapabilitySchemaItem,
        },
        DeviceMetadata = {
            type = "document",
        },
    },
}

M.DiscoveryType = {
    ZWAVE = "ZWAVE",
    ZIGBEE = "ZIGBEE",
    CLOUD = "CLOUD",
    CUSTOM = "CUSTOM",
    CONTROLLER_CAPABILITY_REDISCOVERY = "CONTROLLER_CAPABILITY_REDISCOVERY",
}

M.DeviceDiscoveryStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
}

M.DeviceDiscoverySummary = {
    type = "structure",
    id = "DeviceDiscoverySummary",
    members = {
        Id = {
            type = "string",
        },
        DiscoveryType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.GetDeviceDiscoveryInput = {
    type = "structure",
    id = "GetDeviceDiscoveryInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDeviceDiscoveryOutput = {
    type = "structure",
    id = "GetDeviceDiscoveryOutput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DiscoveryType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ControllerId = {
            type = "string",
        },
        ConnectorAssociationId = {
            type = "string",
        },
        AccountAssociationId = {
            type = "string",
        },
        FinishedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListDeviceDiscoveriesInput = {
    type = "structure",
    id = "ListDeviceDiscoveriesInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        TypeFilter = {
            type = "string",
            traits = {
                http_query = "TypeFilter",
            },
        },
        StatusFilter = {
            type = "string",
            traits = {
                http_query = "StatusFilter",
            },
        },
    },
}

M.ListDeviceDiscoveriesOutput = {
    type = "structure",
    id = "ListDeviceDiscoveriesOutput",
    members = {
        Items = {
            type = "list",
            member = M.DeviceDiscoverySummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDiscoveredDevicesInput = {
    type = "structure",
    id = "ListDiscoveredDevicesInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.DiscoveryModification = {
    DISCOVERED = "DISCOVERED",
    UPDATED = "UPDATED",
    NO_CHANGE = "NO_CHANGE",
}

M.DiscoveredDeviceSummary = {
    type = "structure",
    id = "DiscoveredDeviceSummary",
    members = {
        ConnectorDeviceId = {
            type = "string",
        },
        ConnectorDeviceName = {
            type = "string",
        },
        DeviceTypes = {
            type = "list",
            member = { type = "string" },
        },
        ManagedThingId = {
            type = "string",
        },
        Modification = {
            type = "string",
        },
        DiscoveredAt = {
            type = "timestamp",
        },
        Brand = {
            type = "string",
        },
        Model = {
            type = "string",
        },
        AuthenticationMaterial = {
            type = "string",
        },
    },
}

M.ListDiscoveredDevicesOutput = {
    type = "structure",
    id = "ListDiscoveredDevicesOutput",
    members = {
        Items = {
            type = "list",
            member = M.DiscoveredDeviceSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DiscoveryAuthMaterialType = {
    ZWAVE_INSTALL_CODE = "ZWAVE_INSTALL_CODE",
}

M.ProtocolType = {
    ZWAVE = "ZWAVE",
    ZIGBEE = "ZIGBEE",
    CUSTOM = "CUSTOM",
}

M.StartDeviceDiscoveryInput = {
    type = "structure",
    id = "StartDeviceDiscoveryInput",
    members = {
        DiscoveryType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomProtocolDetail = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ControllerIdentifier = {
            type = "string",
        },
        ConnectorAssociationIdentifier = {
            type = "string",
        },
        AccountAssociationId = {
            type = "string",
        },
        AuthenticationMaterial = {
            type = "string",
        },
        AuthenticationMaterialType = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ConnectorDeviceIdList = {
            type = "list",
            member = { type = "string" },
        },
        Protocol = {
            type = "string",
        },
        EndDeviceIdentifier = {
            type = "string",
        },
    },
}

M.StartDeviceDiscoveryOutput = {
    type = "structure",
    id = "StartDeviceDiscoveryOutput",
    members = {
        Id = {
            type = "string",
        },
        StartedAt = {
            type = "timestamp",
        },
    },
}

M.DisconnectReasonValue = {
    AUTH_ERROR = "AUTH_ERROR",
    CLIENT_INITIATED_DISCONNECT = "CLIENT_INITIATED_DISCONNECT",
    CLIENT_ERROR = "CLIENT_ERROR",
    CONNECTION_LOST = "CONNECTION_LOST",
    DUPLICATE_CLIENTID = "DUPLICATE_CLIENTID",
    FORBIDDEN_ACCESS = "FORBIDDEN_ACCESS",
    MQTT_KEEP_ALIVE_TIMEOUT = "MQTT_KEEP_ALIVE_TIMEOUT",
    SERVER_ERROR = "SERVER_ERROR",
    SERVER_INITIATED_DISCONNECT = "SERVER_INITIATED_DISCONNECT",
    THROTTLED = "THROTTLED",
    WEBSOCKET_TTL_EXPIRATION = "WEBSOCKET_TTL_EXPIRATION",
    CUSTOMAUTH_TTL_EXPIRATION = "CUSTOMAUTH_TTL_EXPIRATION",
    UNKNOWN = "UNKNOWN",
    NONE = "NONE",
}

M.EncryptionType = {
    MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION = "MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION",
    CUSTOMER_KEY_ENCRYPTION = "CUSTOMER_KEY_ENCRYPTION",
}

M.EventLogConfigurationSummary = {
    type = "structure",
    id = "EventLogConfigurationSummary",
    members = {
        Id = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        EventLogLevel = {
            type = "string",
        },
    },
}

M.GetEventLogConfigurationInput = {
    type = "structure",
    id = "GetEventLogConfigurationInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEventLogConfigurationOutput = {
    type = "structure",
    id = "GetEventLogConfigurationOutput",
    members = {
        Id = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        EventLogLevel = {
            type = "string",
        },
    },
}

M.ListEventLogConfigurationsInput = {
    type = "structure",
    id = "ListEventLogConfigurationsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListEventLogConfigurationsOutput = {
    type = "structure",
    id = "ListEventLogConfigurationsOutput",
    members = {
        EventLogConfigurationList = {
            type = "list",
            member = M.EventLogConfigurationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateEventLogConfigurationInput = {
    type = "structure",
    id = "UpdateEventLogConfigurationInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventLogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEventLogConfigurationOutput = {
    type = "structure",
    id = "UpdateEventLogConfigurationOutput",
}

M.GetCustomEndpointInput = {
    type = "structure",
    id = "GetCustomEndpointInput",
}

M.GetCustomEndpointOutput = {
    type = "structure",
    id = "GetCustomEndpointOutput",
    members = {
        EndpointAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDefaultEncryptionConfigurationInput = {
    type = "structure",
    id = "GetDefaultEncryptionConfigurationInput",
}

M.GetDefaultEncryptionConfigurationOutput = {
    type = "structure",
    id = "GetDefaultEncryptionConfigurationOutput",
    members = {
        configurationStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationStatus }),
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    id = "InternalFailureException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetHubConfigurationInput = {
    type = "structure",
    id = "GetHubConfigurationInput",
}

M.GetHubConfigurationOutput = {
    type = "structure",
    id = "GetHubConfigurationOutput",
    members = {
        HubTokenTimerExpirySettingInSeconds = {
            type = "long",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetManagedThingInput = {
    type = "structure",
    id = "GetManagedThingInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.HubNetworkMode = {
    STANDARD = "STANDARD",
    NETWORK_WIDE_EXCLUSION = "NETWORK_WIDE_EXCLUSION",
}

M.ProvisioningStatus = {
    UNASSOCIATED = "UNASSOCIATED",
    PRE_ASSOCIATED = "PRE_ASSOCIATED",
    DISCOVERED = "DISCOVERED",
    ACTIVATED = "ACTIVATED",
    DELETION_FAILED = "DELETION_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    ISOLATED = "ISOLATED",
    DELETED = "DELETED",
}

M.GetManagedThingOutput = {
    type = "structure",
    id = "GetManagedThingOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        CredentialLockerId = {
            type = "string",
        },
        AdvertisedProductId = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        ProvisioningStatus = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Model = {
            type = "string",
        },
        Brand = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        UniversalProductCode = {
            type = "string",
        },
        InternationalArticleNumber = {
            type = "string",
        },
        ConnectorPolicyId = {
            type = "string",
        },
        ConnectorDestinationId = {
            type = "string",
        },
        ConnectorDeviceId = {
            type = "string",
        },
        DeviceSpecificKey = {
            type = "string",
        },
        MacAddress = {
            type = "string",
        },
        ParentControllerId = {
            type = "string",
        },
        Classification = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        ActivatedAt = {
            type = "timestamp",
        },
        HubNetworkMode = {
            type = "string",
        },
        MetaData = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        WiFiSimpleSetupConfiguration = M.WiFiSimpleSetupConfiguration,
    },
}

M.GetManagedThingCapabilitiesInput = {
    type = "structure",
    id = "GetManagedThingCapabilitiesInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetManagedThingCapabilitiesOutput = {
    type = "structure",
    id = "GetManagedThingCapabilitiesOutput",
    members = {
        ManagedThingId = {
            type = "string",
        },
        Capabilities = {
            type = "string",
        },
        CapabilityReport = M.CapabilityReport,
    },
}

M.GetManagedThingCertificateInput = {
    type = "structure",
    id = "GetManagedThingCertificateInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetManagedThingCertificateOutput = {
    type = "structure",
    id = "GetManagedThingCertificateOutput",
    members = {
        ManagedThingId = {
            type = "string",
        },
        CertificatePem = {
            type = "string",
        },
    },
}

M.GetManagedThingConnectivityDataInput = {
    type = "structure",
    id = "GetManagedThingConnectivityDataInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetManagedThingConnectivityDataOutput = {
    type = "structure",
    id = "GetManagedThingConnectivityDataOutput",
    members = {
        ManagedThingId = {
            type = "string",
        },
        Connected = {
            type = "boolean",
        },
        Timestamp = {
            type = "timestamp",
        },
        DisconnectReason = {
            type = "string",
        },
    },
}

M.GetManagedThingMetaDataInput = {
    type = "structure",
    id = "GetManagedThingMetaDataInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetManagedThingMetaDataOutput = {
    type = "structure",
    id = "GetManagedThingMetaDataOutput",
    members = {
        ManagedThingId = {
            type = "string",
        },
        MetaData = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetManagedThingStateInput = {
    type = "structure",
    id = "GetManagedThingStateInput",
    members = {
        ManagedThingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StateCapability = {
    type = "structure",
    id = "StateCapability",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "document",
        },
    },
}

M.StateEndpoint = {
    type = "structure",
    id = "StateEndpoint",
    members = {
        endpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilities = {
            type = "list",
            member = M.StateCapability,
            traits = {
                required = true,
            },
        },
    },
}

M.GetManagedThingStateOutput = {
    type = "structure",
    id = "GetManagedThingStateOutput",
    members = {
        Endpoints = {
            type = "list",
            member = M.StateEndpoint,
            traits = {
                required = true,
            },
        },
    },
}

M.GetNotificationConfigurationInput = {
    type = "structure",
    id = "GetNotificationConfigurationInput",
    members = {
        EventType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetNotificationConfigurationOutput = {
    type = "structure",
    id = "GetNotificationConfigurationOutput",
    members = {
        EventType = {
            type = "string",
        },
        DestinationName = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetOtaTaskInput = {
    type = "structure",
    id = "GetOtaTaskInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.OtaStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    CANCELED = "CANCELED",
    COMPLETED = "COMPLETED",
    DELETION_IN_PROGRESS = "DELETION_IN_PROGRESS",
    SCHEDULED = "SCHEDULED",
}

M.TaskProcessingDetails = {
    type = "structure",
    id = "TaskProcessingDetails",
    members = {
        NumberOfCanceledThings = {
            type = "integer",
        },
        NumberOfFailedThings = {
            type = "integer",
        },
        NumberOfInProgressThings = {
            type = "integer",
        },
        numberOfQueuedThings = {
            type = "integer",
        },
        numberOfRejectedThings = {
            type = "integer",
        },
        numberOfRemovedThings = {
            type = "integer",
        },
        numberOfSucceededThings = {
            type = "integer",
        },
        numberOfTimedOutThings = {
            type = "integer",
        },
        processingTargets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetOtaTaskOutput = {
    type = "structure",
    id = "GetOtaTaskOutput",
    members = {
        TaskId = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        S3Url = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        OtaType = {
            type = "string",
        },
        OtaTargetQueryString = {
            type = "string",
        },
        OtaMechanism = {
            type = "string",
        },
        Target = {
            type = "list",
            member = { type = "string" },
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        TaskConfigurationId = {
            type = "string",
        },
        TaskProcessingDetails = M.TaskProcessingDetails,
        OtaSchedulingConfig = M.OtaTaskSchedulingConfig,
        OtaTaskExecutionRetryConfig = M.OtaTaskExecutionRetryConfig,
        Status = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetOtaTaskConfigurationInput = {
    type = "structure",
    id = "GetOtaTaskConfigurationInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOtaTaskConfigurationOutput = {
    type = "structure",
    id = "GetOtaTaskConfigurationOutput",
    members = {
        TaskConfigurationId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        PushConfig = M.PushConfig,
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.GetProvisioningProfileInput = {
    type = "structure",
    id = "GetProvisioningProfileInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProvisioningProfileOutput = {
    type = "structure",
    id = "GetProvisioningProfileOutput",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ProvisioningType = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ClaimCertificate = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetRuntimeLogConfigurationInput = {
    type = "structure",
    id = "GetRuntimeLogConfigurationInput",
    members = {
        ManagedThingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RuntimeLogConfigurations = {
    type = "structure",
    id = "RuntimeLogConfigurations",
    members = {
        LogLevel = {
            type = "string",
        },
        LogFlushLevel = {
            type = "string",
        },
        LocalStoreLocation = {
            type = "string",
        },
        LocalStoreFileRotationMaxFiles = {
            type = "integer",
        },
        LocalStoreFileRotationMaxBytes = {
            type = "integer",
        },
        UploadLog = {
            type = "boolean",
        },
        UploadPeriodMinutes = {
            type = "integer",
        },
        DeleteLocalStoreAfterUpload = {
            type = "boolean",
        },
    },
}

M.GetRuntimeLogConfigurationOutput = {
    type = "structure",
    id = "GetRuntimeLogConfigurationOutput",
    members = {
        ManagedThingId = {
            type = "string",
        },
        RuntimeLogConfigurations = M.RuntimeLogConfigurations,
    },
}

M.SchemaVersionType = {
    CAPABILITY = "capability",
    DEFINITION = "definition",
}

M.GetSchemaVersionInput = {
    type = "structure",
    id = "GetSchemaVersionInput",
    members = {
        Type = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaVersionedId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                http_query = "Format",
            },
        },
    },
}

M.SchemaVersionVisibility = {
    PUBLIC = "PUBLIC",
    PRIVATE = "PRIVATE",
}

M.GetSchemaVersionOutput = {
    type = "structure",
    id = "GetSchemaVersionOutput",
    members = {
        SchemaId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        SemanticVersion = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        Schema = {
            type = "document",
        },
    },
}

M.PutHubConfigurationInput = {
    type = "structure",
    id = "PutHubConfigurationInput",
    members = {
        HubTokenTimerExpirySettingInSeconds = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.PutHubConfigurationOutput = {
    type = "structure",
    id = "PutHubConfigurationOutput",
    members = {
        HubTokenTimerExpirySettingInSeconds = {
            type = "long",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutDefaultEncryptionConfigurationInput = {
    type = "structure",
    id = "PutDefaultEncryptionConfigurationInput",
    members = {
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.PutDefaultEncryptionConfigurationOutput = {
    type = "structure",
    id = "PutDefaultEncryptionConfigurationOutput",
    members = {
        configurationStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationStatus }),
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
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

M.ListManagedThingAccountAssociationsInput = {
    type = "structure",
    id = "ListManagedThingAccountAssociationsInput",
    members = {
        ManagedThingId = {
            type = "string",
            traits = {
                http_query = "ManagedThingId",
            },
        },
        AccountAssociationId = {
            type = "string",
            traits = {
                http_query = "AccountAssociationId",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ManagedThingAssociationStatus = {
    PRE_ASSOCIATED = "PRE_ASSOCIATED",
    ASSOCIATED = "ASSOCIATED",
}

M.ManagedThingAssociation = {
    type = "structure",
    id = "ManagedThingAssociation",
    members = {
        ManagedThingId = {
            type = "string",
        },
        AccountAssociationId = {
            type = "string",
        },
        ManagedThingAssociationStatus = {
            type = "string",
        },
    },
}

M.ListManagedThingAccountAssociationsOutput = {
    type = "structure",
    id = "ListManagedThingAccountAssociationsOutput",
    members = {
        Items = {
            type = "list",
            member = M.ManagedThingAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegisterAccountAssociationInput = {
    type = "structure",
    id = "RegisterAccountAssociationInput",
    members = {
        ManagedThingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceDiscoveryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterAccountAssociationOutput = {
    type = "structure",
    id = "RegisterAccountAssociationOutput",
    members = {
        AccountAssociationId = {
            type = "string",
        },
        DeviceDiscoveryId = {
            type = "string",
        },
        ManagedThingId = {
            type = "string",
        },
    },
}

M.SendManagedThingCommandInput = {
    type = "structure",
    id = "SendManagedThingCommandInput",
    members = {
        ManagedThingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Endpoints = {
            type = "list",
            member = M.CommandEndpoint,
            traits = {
                required = true,
            },
        },
        ConnectorAssociationId = {
            type = "string",
        },
        AccountAssociationId = {
            type = "string",
        },
    },
}

M.SendManagedThingCommandOutput = {
    type = "structure",
    id = "SendManagedThingCommandOutput",
    members = {
        TraceId = {
            type = "string",
        },
    },
}

M.ListManagedThingsInput = {
    type = "structure",
    id = "ListManagedThingsInput",
    members = {
        OwnerFilter = {
            type = "string",
            traits = {
                http_query = "OwnerFilter",
            },
        },
        CredentialLockerFilter = {
            type = "string",
            traits = {
                http_query = "CredentialLockerFilter",
            },
        },
        RoleFilter = {
            type = "string",
            traits = {
                http_query = "RoleFilter",
            },
        },
        ParentControllerIdentifierFilter = {
            type = "string",
            traits = {
                http_query = "ParentControllerIdentifierFilter",
            },
        },
        ConnectorPolicyIdFilter = {
            type = "string",
            traits = {
                http_query = "ConnectorPolicyIdFilter",
            },
        },
        ConnectorDestinationIdFilter = {
            type = "string",
            traits = {
                http_query = "ConnectorDestinationIdFilter",
            },
        },
        ConnectorDeviceIdFilter = {
            type = "string",
            traits = {
                http_query = "ConnectorDeviceIdFilter",
            },
        },
        SerialNumberFilter = {
            type = "string",
            traits = {
                http_query = "SerialNumberFilter",
            },
        },
        ProvisioningStatusFilter = {
            type = "string",
            traits = {
                http_query = "ProvisioningStatusFilter",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ManagedThingSummary = {
    type = "structure",
    id = "ManagedThingSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        AdvertisedProductId = {
            type = "string",
        },
        Brand = {
            type = "string",
        },
        Classification = {
            type = "string",
        },
        ConnectorDeviceId = {
            type = "string",
        },
        ConnectorPolicyId = {
            type = "string",
        },
        ConnectorDestinationId = {
            type = "string",
        },
        Model = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        CredentialLockerId = {
            type = "string",
        },
        ParentControllerId = {
            type = "string",
        },
        ProvisioningStatus = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        ActivatedAt = {
            type = "timestamp",
        },
    },
}

M.ListManagedThingsOutput = {
    type = "structure",
    id = "ListManagedThingsOutput",
    members = {
        Items = {
            type = "list",
            member = M.ManagedThingSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListManagedThingSchemasInput = {
    type = "structure",
    id = "ListManagedThingSchemasInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndpointIdFilter = {
            type = "string",
            traits = {
                http_query = "EndpointIdFilter",
            },
        },
        CapabilityIdFilter = {
            type = "string",
            traits = {
                http_query = "CapabilityIdFilter",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ManagedThingSchemaListItem = {
    type = "structure",
    id = "ManagedThingSchemaListItem",
    members = {
        EndpointId = {
            type = "string",
        },
        CapabilityId = {
            type = "string",
        },
        Schema = {
            type = "document",
        },
    },
}

M.ListManagedThingSchemasOutput = {
    type = "structure",
    id = "ListManagedThingSchemasOutput",
    members = {
        Items = {
            type = "list",
            member = M.ManagedThingSchemaListItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateManagedThingInput = {
    type = "structure",
    id = "UpdateManagedThingInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Owner = {
            type = "string",
        },
        CredentialLockerId = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        WiFiSimpleSetupConfiguration = M.WiFiSimpleSetupConfiguration,
        Brand = {
            type = "string",
        },
        Model = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CapabilityReport = M.CapabilityReport,
        CapabilitySchemas = {
            type = "list",
            member = M.CapabilitySchemaItem,
        },
        Capabilities = {
            type = "string",
        },
        Classification = {
            type = "string",
        },
        HubNetworkMode = {
            type = "string",
        },
        MetaData = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateManagedThingOutput = {
    type = "structure",
    id = "UpdateManagedThingOutput",
}

M.ListNotificationConfigurationsInput = {
    type = "structure",
    id = "ListNotificationConfigurationsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.NotificationConfigurationSummary = {
    type = "structure",
    id = "NotificationConfigurationSummary",
    members = {
        EventType = {
            type = "string",
        },
        DestinationName = {
            type = "string",
        },
    },
}

M.ListNotificationConfigurationsOutput = {
    type = "structure",
    id = "ListNotificationConfigurationsOutput",
    members = {
        NotificationConfigurationList = {
            type = "list",
            member = M.NotificationConfigurationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateNotificationConfigurationInput = {
    type = "structure",
    id = "UpdateNotificationConfigurationInput",
    members = {
        EventType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DestinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateNotificationConfigurationOutput = {
    type = "structure",
    id = "UpdateNotificationConfigurationOutput",
}

M.ListOtaTaskConfigurationsInput = {
    type = "structure",
    id = "ListOtaTaskConfigurationsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.OtaTaskConfigurationSummary = {
    type = "structure",
    id = "OtaTaskConfigurationSummary",
    members = {
        TaskConfigurationId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.ListOtaTaskConfigurationsOutput = {
    type = "structure",
    id = "ListOtaTaskConfigurationsOutput",
    members = {
        Items = {
            type = "list",
            member = M.OtaTaskConfigurationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOtaTaskExecutionsInput = {
    type = "structure",
    id = "ListOtaTaskExecutionsInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.OtaTaskExecutionStatus = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    REJECTED = "REJECTED",
    REMOVED = "REMOVED",
    CANCELED = "CANCELED",
}

M.OtaTaskExecutionSummary = {
    type = "structure",
    id = "OtaTaskExecutionSummary",
    members = {
        ExecutionNumber = {
            type = "long",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        QueuedAt = {
            type = "timestamp",
        },
        RetryAttempt = {
            type = "integer",
        },
        StartedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
    },
}

M.OtaTaskExecutionSummaries = {
    type = "structure",
    id = "OtaTaskExecutionSummaries",
    members = {
        TaskExecutionSummary = M.OtaTaskExecutionSummary,
        ManagedThingId = {
            type = "string",
        },
    },
}

M.ListOtaTaskExecutionsOutput = {
    type = "structure",
    id = "ListOtaTaskExecutionsOutput",
    members = {
        ExecutionSummaries = {
            type = "list",
            member = M.OtaTaskExecutionSummaries,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOtaTasksInput = {
    type = "structure",
    id = "ListOtaTasksInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.OtaTaskSummary = {
    type = "structure",
    id = "OtaTaskSummary",
    members = {
        TaskId = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        TaskConfigurationId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListOtaTasksOutput = {
    type = "structure",
    id = "ListOtaTasksOutput",
    members = {
        Tasks = {
            type = "list",
            member = M.OtaTaskSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateOtaTaskInput = {
    type = "structure",
    id = "UpdateOtaTaskInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        TaskConfigurationId = {
            type = "string",
        },
    },
}

M.UpdateOtaTaskOutput = {
    type = "structure",
    id = "UpdateOtaTaskOutput",
}

M.ListProvisioningProfilesInput = {
    type = "structure",
    id = "ListProvisioningProfilesInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ProvisioningProfileSummary = {
    type = "structure",
    id = "ProvisioningProfileSummary",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ProvisioningType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListProvisioningProfilesOutput = {
    type = "structure",
    id = "ListProvisioningProfilesOutput",
    members = {
        Items = {
            type = "list",
            member = M.ProvisioningProfileSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegisterCustomEndpointInput = {
    type = "structure",
    id = "RegisterCustomEndpointInput",
}

M.RegisterCustomEndpointOutput = {
    type = "structure",
    id = "RegisterCustomEndpointOutput",
    members = {
        EndpointAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRuntimeLogConfigurationInput = {
    type = "structure",
    id = "PutRuntimeLogConfigurationInput",
    members = {
        ManagedThingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RuntimeLogConfigurations = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuntimeLogConfigurations }),
    },
}

M.PutRuntimeLogConfigurationOutput = {
    type = "structure",
    id = "PutRuntimeLogConfigurationOutput",
}

M.ResetRuntimeLogConfigurationInput = {
    type = "structure",
    id = "ResetRuntimeLogConfigurationInput",
    members = {
        ManagedThingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResetRuntimeLogConfigurationOutput = {
    type = "structure",
    id = "ResetRuntimeLogConfigurationOutput",
}

M.ListSchemaVersionsInput = {
    type = "structure",
    id = "ListSchemaVersionsInput",
    members = {
        Type = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        SchemaId = {
            type = "string",
            traits = {
                http_query = "SchemaIdFilter",
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "NamespaceFilter",
            },
        },
        Visibility = {
            type = "string",
            traits = {
                http_query = "VisibilityFilter",
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                http_query = "SemanticVersionFilter",
            },
        },
    },
}

M.SchemaVersionListItem = {
    type = "structure",
    id = "SchemaVersionListItem",
    members = {
        SchemaId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        SemanticVersion = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.ListSchemaVersionsOutput = {
    type = "structure",
    id = "ListSchemaVersionsOutput",
    members = {
        Items = {
            type = "list",
            member = M.SchemaVersionListItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MatterCluster = {
    type = "structure",
    id = "MatterCluster",
    members = {
        id = {
            type = "string",
        },
        attributes = {
            type = "document",
        },
        commands = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
        events = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
    },
}

M.MatterEndpoint = {
    type = "structure",
    id = "MatterEndpoint",
    members = {
        id = {
            type = "string",
        },
        clusters = {
            type = "list",
            member = M.MatterCluster,
        },
    },
}

M.SendConnectorEventInput = {
    type = "structure",
    id = "SendConnectorEventInput",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
        },
        Operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OperationVersion = {
            type = "string",
        },
        StatusCode = {
            type = "integer",
        },
        Message = {
            type = "string",
        },
        DeviceDiscoveryId = {
            type = "string",
        },
        ConnectorDeviceId = {
            type = "string",
        },
        TraceId = {
            type = "string",
        },
        Devices = {
            type = "list",
            member = M.Device,
        },
        MatterEndpoint = M.MatterEndpoint,
    },
}

M.SendConnectorEventOutput = {
    type = "structure",
    id = "SendConnectorEventOutput",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
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

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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

return M
