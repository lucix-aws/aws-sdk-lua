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
    members = {
        Action = {
            type = "string",
        },
        FailureType = {
            type = "string",
        },
        MinNumberOfExecutedThings = {
            type = "number",
        },
        ThresholdPercentage = {
            type = "number",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GeneralAuthorizationName = {
    type = "structure",
    members = {
        AuthMaterialName = {
            type = "string",
        },
    },
}

M.CreateAccountAssociationInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        GeneralAuthorization = {
            type = "structure",
        },
    },
}

M.CreateAccountAssociationOutput = {
    type = "structure",
    members = {
        OAuthAuthorizationUrl = {
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAccountAssociationInput = {
    type = "structure",
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
}

M.GetAccountAssociationInput = {
    type = "structure",
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
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        GeneralAuthorization = {
            type = "structure",
        },
    },
}

M.ListAccountAssociationsInput = {
    type = "structure",
    members = {
        ConnectorDestinationId = {
            type = "string",
            traits = {
                http_query = "ConnectorDestinationId",
            },
        },
        MaxResults = {
            type = "number",
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
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartAccountAssociationRefreshInput = {
    type = "structure",
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
    members = {
        OAuthAuthorizationUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAccountAssociationInput = {
    type = "structure",
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
}

M.SecretsManager = {
    type = "structure",
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
    members = {
        SecretsManager = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        enabled = {
            type = "boolean",
        },
        DaysBeforeRenewal = {
            type = "number",
        },
    },
}

M.TokenEndpointAuthenticationScheme = {
    HTTP_BASIC = "HTTP_BASIC",
    REQUEST_BODY_CREDENTIALS = "REQUEST_BODY_CREDENTIALS",
}

M.OAuthConfig = {
    type = "structure",
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
        proactiveRefreshTokenRenewal = {
            type = "structure",
        },
    },
}

M.AuthConfig = {
    type = "structure",
    members = {
        oAuth = {
            type = "structure",
        },
        GeneralAuthorization = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GeneralAuthorizationUpdate = {
    type = "structure",
    members = {
        AuthMaterialsToAdd = {
            type = "list",
            member_type = "structure",
        },
        AuthMaterialsToUpdate = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.OAuthUpdate = {
    type = "structure",
    members = {
        oAuthCompleteRedirectUrl = {
            type = "string",
        },
        proactiveRefreshTokenRenewal = {
            type = "structure",
        },
    },
}

M.AuthConfigUpdate = {
    type = "structure",
    members = {
        oAuthUpdate = {
            type = "structure",
        },
        GeneralAuthorizationUpdate = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        actions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        events = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CapabilityReportEndpoint = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        capabilities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CapabilityReport = {
    type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
    members = {
        lambda = {
            type = "structure",
        },
    },
}

M.EndpointType = {
    LAMBDA = "LAMBDA",
}

M.CreateCloudConnectorInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateCloudConnectorOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.DeleteCloudConnectorInput = {
    type = "structure",
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
}

M.GetCloudConnectorInput = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateCloudConnectorInput = {
    type = "structure",
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
}

M.CommandCapability = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CommandEndpoint = {
    type = "structure",
    members = {
        endpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurationError = {
    type = "structure",
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
    members = {
        error = {
            type = "structure",
        },
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
        AuthConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SecretsManager = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateConnectorDestinationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.DeleteConnectorDestinationInput = {
    type = "structure",
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
}

M.GetConnectorDestinationInput = {
    type = "structure",
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
        AuthConfig = {
            type = "structure",
        },
        SecretsManager = {
            type = "structure",
        },
        OAuthCompleteRedirectUrl = {
            type = "string",
        },
    },
}

M.ListConnectorDestinationsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListConnectorDestinationsOutput = {
    type = "structure",
    members = {
        ConnectorDestinationList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateConnectorDestinationInput = {
    type = "structure",
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
        AuthConfig = {
            type = "structure",
        },
        SecretsManager = {
            type = "structure",
        },
    },
}

M.UpdateConnectorDestinationOutput = {
    type = "structure",
}

M.ConnectorEventOperation = {
    DEVICE_COMMAND_RESPONSE = "DEVICE_COMMAND_RESPONSE",
    DEVICE_DISCOVERY = "DEVICE_DISCOVERY",
    DEVICE_EVENT = "DEVICE_EVENT",
    DEVICE_COMMAND_REQUEST = "DEVICE_COMMAND_REQUEST",
}

M.CreateCredentialLockerInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCredentialLockerOutput = {
    type = "structure",
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
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDestinationOutput = {
    type = "structure",
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
        },
    },
}

M.CreateEventLogConfigurationOutput = {
    type = "structure",
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
    members = {
        EnableAsProvisioner = {
            type = "boolean",
        },
        EnableAsProvisionee = {
            type = "boolean",
        },
        TimeoutInMinutes = {
            type = "number",
        },
    },
}

M.CreateManagedThingInput = {
    type = "structure",
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
        WiFiSimpleSetupConfiguration = {
            type = "structure",
        },
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
        CapabilityReport = {
            type = "structure",
        },
        CapabilitySchemas = {
            type = "list",
            member_type = "structure",
        },
        Capabilities = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Classification = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        MetaData = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateManagedThingOutput = {
    type = "structure",
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
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateNotificationConfigurationOutput = {
    type = "structure",
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
    members = {
        DurationInMinutes = {
            type = "number",
        },
        StartTime = {
            type = "string",
        },
    },
}

M.OtaTaskSchedulingConfig = {
    type = "structure",
    members = {
        EndBehavior = {
            type = "string",
        },
        EndTime = {
            type = "string",
        },
        MaintenanceWindows = {
            type = "list",
            member_type = "structure",
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
    members = {
        FailureType = {
            type = "string",
        },
        MinNumberOfRetries = {
            type = "number",
        },
    },
}

M.OtaTaskExecutionRetryConfig = {
    type = "structure",
    members = {
        RetryConfigCriteria = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        },
        OtaSchedulingConfig = {
            type = "structure",
        },
        OtaTaskExecutionRetryConfig = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateOtaTaskOutput = {
    type = "structure",
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
    members = {
        AbortConfigCriteriaList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RolloutRateIncreaseCriteria = {
    type = "structure",
    members = {
        numberOfNotifiedThings = {
            type = "number",
        },
        numberOfSucceededThings = {
            type = "number",
        },
    },
}

M.ExponentialRolloutRate = {
    type = "structure",
    members = {
        BaseRatePerMinute = {
            type = "number",
        },
        IncrementFactor = {
            type = "number",
        },
        RateIncreaseCriteria = {
            type = "structure",
        },
    },
}

M.OtaTaskExecutionRolloutConfig = {
    type = "structure",
    members = {
        ExponentialRolloutRate = {
            type = "structure",
        },
        MaximumPerMinute = {
            type = "number",
        },
    },
}

M.OtaTaskTimeoutConfig = {
    type = "structure",
    members = {
        InProgressTimeoutInMinutes = {
            type = "number",
        },
    },
}

M.PushConfig = {
    type = "structure",
    members = {
        AbortConfig = {
            type = "structure",
        },
        RolloutConfig = {
            type = "structure",
        },
        TimeoutConfig = {
            type = "structure",
        },
    },
}

M.CreateOtaTaskConfigurationInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        PushConfig = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateOtaTaskConfigurationOutput = {
    type = "structure",
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
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
}

M.GetCredentialLockerInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListCredentialLockersInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListCredentialLockersOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DeleteDestinationInput = {
    type = "structure",
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
}

M.DeleteEventLogConfigurationInput = {
    type = "structure",
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
}

M.DeleteManagedThingInput = {
    type = "structure",
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
}

M.DeleteNotificationConfigurationInput = {
    type = "structure",
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
}

M.DeleteOtaTaskInput = {
    type = "structure",
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
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteOtaTaskConfigurationInput = {
    type = "structure",
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
}

M.DeleteProvisioningProfileInput = {
    type = "structure",
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
}

M.DeregisterAccountAssociationInput = {
    type = "structure",
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
}

M.DestinationSummary = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListDestinationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListDestinationsOutput = {
    type = "structure",
    members = {
        DestinationList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateDestinationInput = {
    type = "structure",
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
}

M.MatterCapabilityReportAttribute = {
    type = "structure",
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
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "number",
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
            member_type = "structure",
        },
        commands = {
            type = "list",
            member_type = "string",
        },
        events = {
            type = "list",
            member_type = "string",
        },
        featureMap = {
            type = "number",
        },
        generatedCommands = {
            type = "list",
            member_type = "string",
        },
        fabricIndex = {
            type = "number",
        },
    },
}

M.MatterCapabilityReportEndpoint = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        clusters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        parts = {
            type = "list",
            member_type = "string",
        },
        semanticTags = {
            type = "list",
            member_type = "string",
        },
        clientClusters = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MatterCapabilityReport = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Device = {
    type = "structure",
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
        CapabilityReport = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CapabilitySchemas = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListDeviceDiscoveriesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
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
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDiscoveredDevicesInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        ConnectorDeviceId = {
            type = "string",
        },
        ConnectorDeviceName = {
            type = "string",
        },
        DeviceTypes = {
            type = "list",
            member_type = "string",
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
    members = {
        Items = {
            type = "list",
            member_type = "structure",
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
    members = {
        DiscoveryType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomProtocolDetail = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        ConnectorDeviceIdList = {
            type = "list",
            member_type = "string",
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
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListEventLogConfigurationsOutput = {
    type = "structure",
    members = {
        EventLogConfigurationList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateEventLogConfigurationInput = {
    type = "structure",
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
}

M.GetCustomEndpointInput = {
    type = "structure",
}

M.GetCustomEndpointOutput = {
    type = "structure",
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
}

M.GetDefaultEncryptionConfigurationOutput = {
    type = "structure",
    members = {
        configurationStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetHubConfigurationInput = {
    type = "structure",
}

M.GetHubConfigurationOutput = {
    type = "structure",
    members = {
        HubTokenTimerExpirySettingInSeconds = {
            type = "number",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetManagedThingInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        WiFiSimpleSetupConfiguration = {
            type = "structure",
        },
    },
}

M.GetManagedThingCapabilitiesInput = {
    type = "structure",
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
    members = {
        ManagedThingId = {
            type = "string",
        },
        Capabilities = {
            type = "string",
        },
        CapabilityReport = {
            type = "structure",
        },
    },
}

M.GetManagedThingCertificateInput = {
    type = "structure",
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
    members = {
        ManagedThingId = {
            type = "string",
        },
        MetaData = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetManagedThingStateInput = {
    type = "structure",
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
    members = {
        endpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetManagedThingStateOutput = {
    type = "structure",
    members = {
        Endpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetNotificationConfigurationInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetOtaTaskInput = {
    type = "structure",
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
    members = {
        NumberOfCanceledThings = {
            type = "number",
        },
        NumberOfFailedThings = {
            type = "number",
        },
        NumberOfInProgressThings = {
            type = "number",
        },
        numberOfQueuedThings = {
            type = "number",
        },
        numberOfRejectedThings = {
            type = "number",
        },
        numberOfRemovedThings = {
            type = "number",
        },
        numberOfSucceededThings = {
            type = "number",
        },
        numberOfTimedOutThings = {
            type = "number",
        },
        processingTargets = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetOtaTaskOutput = {
    type = "structure",
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
            member_type = "string",
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
        TaskProcessingDetails = {
            type = "structure",
        },
        OtaSchedulingConfig = {
            type = "structure",
        },
        OtaTaskExecutionRetryConfig = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetOtaTaskConfigurationInput = {
    type = "structure",
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
    members = {
        TaskConfigurationId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        PushConfig = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetRuntimeLogConfigurationInput = {
    type = "structure",
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
            type = "number",
        },
        LocalStoreFileRotationMaxBytes = {
            type = "number",
        },
        UploadLog = {
            type = "boolean",
        },
        UploadPeriodMinutes = {
            type = "number",
        },
        DeleteLocalStoreAfterUpload = {
            type = "boolean",
        },
    },
}

M.GetRuntimeLogConfigurationOutput = {
    type = "structure",
    members = {
        ManagedThingId = {
            type = "string",
        },
        RuntimeLogConfigurations = {
            type = "structure",
        },
    },
}

M.SchemaVersionType = {
    CAPABILITY = "capability",
    DEFINITION = "definition",
}

M.GetSchemaVersionInput = {
    type = "structure",
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
    members = {
        HubTokenTimerExpirySettingInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PutHubConfigurationOutput = {
    type = "structure",
    members = {
        HubTokenTimerExpirySettingInSeconds = {
            type = "number",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutDefaultEncryptionConfigurationInput = {
    type = "structure",
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
    members = {
        configurationStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListManagedThingAccountAssociationsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegisterAccountAssociationInput = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        TraceId = {
            type = "string",
        },
    },
}

M.ListManagedThingsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ManagedThingSummary = {
    type = "structure",
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
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListManagedThingSchemasInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ManagedThingSchemaListItem = {
    type = "structure",
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
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateManagedThingInput = {
    type = "structure",
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
        WiFiSimpleSetupConfiguration = {
            type = "structure",
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
        CapabilityReport = {
            type = "structure",
        },
        CapabilitySchemas = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpdateManagedThingOutput = {
    type = "structure",
}

M.ListNotificationConfigurationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
    members = {
        NotificationConfigurationList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateNotificationConfigurationInput = {
    type = "structure",
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
}

M.ListOtaTaskConfigurationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.OtaTaskConfigurationSummary = {
    type = "structure",
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
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOtaTaskExecutionsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        ExecutionNumber = {
            type = "number",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        QueuedAt = {
            type = "timestamp",
        },
        RetryAttempt = {
            type = "number",
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
    members = {
        TaskExecutionSummary = {
            type = "structure",
        },
        ManagedThingId = {
            type = "string",
        },
    },
}

M.ListOtaTaskExecutionsOutput = {
    type = "structure",
    members = {
        ExecutionSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOtaTasksInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.OtaTaskSummary = {
    type = "structure",
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
    members = {
        Tasks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateOtaTaskInput = {
    type = "structure",
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
}

M.ListProvisioningProfilesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ProvisioningProfileSummary = {
    type = "structure",
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
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegisterCustomEndpointInput = {
    type = "structure",
}

M.RegisterCustomEndpointOutput = {
    type = "structure",
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
    members = {
        ManagedThingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RuntimeLogConfigurations = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRuntimeLogConfigurationOutput = {
    type = "structure",
}

M.ResetRuntimeLogConfigurationInput = {
    type = "structure",
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
}

M.ListSchemaVersionsInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
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
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MatterCluster = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        attributes = {
            type = "document",
        },
        commands = {
            type = "map",
            key_type = "string",
            value_type = "document",
        },
        events = {
            type = "map",
            key_type = "string",
            value_type = "document",
        },
    },
}

M.MatterEndpoint = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        clusters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SendConnectorEventInput = {
    type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
        MatterEndpoint = {
            type = "structure",
        },
    },
}

M.SendConnectorEventOutput = {
    type = "structure",
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

M.UntagResourceInput = {
    type = "structure",
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

return M
