local M = {}

M.MemberRelation = {
    AND = "AND",
    OR = "OR",
}

M.ReadAccessType = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.MembershipType = {
    INDEX = "INDEX",
    DATASOURCE = "DATASOURCE",
}

M.PrincipalGroup = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        access = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipType = {
            type = "string",
        },
    },
}

M.PrincipalUser = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        access = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipType = {
            type = "string",
        },
    },
}

M.Principal = {
    type = "union",
    members = {
        user = M.PrincipalUser,
        group = M.PrincipalGroup,
    },
}

M.AccessControl = {
    type = "structure",
    members = {
        principals = {
            type = "list",
            member = M.Principal,
            traits = {
                required = true,
            },
        },
        memberRelation = {
            type = "string",
        },
    },
}

M.AccessConfiguration = {
    type = "structure",
    members = {
        accessControls = {
            type = "list",
            member = M.AccessControl,
            traits = {
                required = true,
            },
        },
        memberRelation = {
            type = "string",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentAttributeValue = {
    type = "union",
    members = {
        stringValue = {
            type = "string",
        },
        stringListValue = {
            type = "list",
            member = { type = "string" },
        },
        longValue = {
            type = "long",
        },
        dateValue = {
            type = "timestamp",
        },
    },
}

M.DocumentAttribute = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentAttributeValue }),
    },
}

M.ActionExecutionPayloadField = {
    type = "structure",
    members = {
        value = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionExecution = {
    type = "structure",
    members = {
        pluginId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = {
            type = "map",
            key = { type = "string" },
            value = M.ActionExecutionPayloadField,
            traits = {
                required = true,
            },
        },
        payloadFieldNameSeparator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionExecutionEvent = {
    type = "structure",
    members = {
        pluginId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = {
            type = "map",
            key = { type = "string" },
            value = M.ActionExecutionPayloadField,
            traits = {
                required = true,
            },
        },
        payloadFieldNameSeparator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionPayloadFieldType = {
    STRING = "STRING",
    NUMBER = "NUMBER",
    ARRAY = "ARRAY",
    BOOLEAN = "BOOLEAN",
}

M.ActionReviewPayloadFieldAllowedValue = {
    type = "structure",
    members = {
        value = {
            type = "document",
        },
        displayValue = {
            type = "document",
        },
    },
}

M.ActionReviewPayloadField = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        displayOrder = {
            type = "integer",
        },
        displayDescription = {
            type = "string",
        },
        type = {
            type = "string",
        },
        value = {
            type = "document",
        },
        allowedValues = {
            type = "list",
            member = M.ActionReviewPayloadFieldAllowedValue,
        },
        allowedFormat = {
            type = "string",
        },
        arrayItemJsonSchema = {
            type = "document",
        },
        required = {
            type = "boolean",
        },
    },
}

M.PluginType = {
    SERVICE_NOW = "SERVICE_NOW",
    SALESFORCE = "SALESFORCE",
    JIRA = "JIRA",
    ZENDESK = "ZENDESK",
    CUSTOM = "CUSTOM",
    QUICKSIGHT = "QUICKSIGHT",
    SERVICENOW_NOW_PLATFORM = "SERVICENOW_NOW_PLATFORM",
    JIRA_CLOUD = "JIRA_CLOUD",
    SALESFORCE_CRM = "SALESFORCE_CRM",
    ZENDESK_SUITE = "ZENDESK_SUITE",
    ATLASSIAN_CONFLUENCE = "ATLASSIAN_CONFLUENCE",
    GOOGLE_CALENDAR = "GOOGLE_CALENDAR",
    MICROSOFT_TEAMS = "MICROSOFT_TEAMS",
    MICROSOFT_EXCHANGE = "MICROSOFT_EXCHANGE",
    PAGERDUTY_ADVANCE = "PAGERDUTY_ADVANCE",
    SMARTSHEET = "SMARTSHEET",
    ASANA = "ASANA",
}

M.ActionReview = {
    type = "structure",
    members = {
        pluginId = {
            type = "string",
        },
        pluginType = {
            type = "string",
        },
        payload = {
            type = "map",
            key = { type = "string" },
            value = M.ActionReviewPayloadField,
        },
        payloadFieldNameSeparator = {
            type = "string",
        },
    },
}

M.ActionReviewEvent = {
    type = "structure",
    members = {
        conversationId = {
            type = "string",
        },
        userMessageId = {
            type = "string",
        },
        systemMessageId = {
            type = "string",
        },
        pluginId = {
            type = "string",
        },
        pluginType = {
            type = "string",
        },
        payload = {
            type = "map",
            key = { type = "string" },
            value = M.ActionReviewPayloadField,
        },
        payloadFieldNameSeparator = {
            type = "string",
        },
    },
}

M.ActionSummary = {
    type = "structure",
    members = {
        actionIdentifier = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        instructionExample = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.S3 = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.APISchema = {
    type = "union",
    members = {
        payload = {
            type = "string",
        },
        s3 = M.S3,
    },
}

M.APISchemaType = {
    OPEN_API_V3 = "OPEN_API_V3",
}

M.IdentityType = {
    AWS_IAM_IDP_SAML = "AWS_IAM_IDP_SAML",
    AWS_IAM_IDP_OIDC = "AWS_IAM_IDP_OIDC",
    AWS_IAM_IDC = "AWS_IAM_IDC",
    AWS_QUICKSIGHT_IDP = "AWS_QUICKSIGHT_IDP",
    ANONYMOUS = "ANONYMOUS",
}

M.QuickSightConfiguration = {
    type = "structure",
    members = {
        clientNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
}

M.Application = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        applicationId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        identityType = {
            type = "string",
        },
        quickSightConfiguration = M.QuickSightConfiguration,
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachmentsControlMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AttachmentsConfiguration = {
    type = "structure",
    members = {
        attachmentsControlMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
        },
    },
}

M.PersonalizationControlMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PersonalizationConfiguration = {
    type = "structure",
    members = {
        personalizationControlMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QAppsControlMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.QAppsConfiguration = {
    type = "structure",
    members = {
        qAppsControlMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        identityType = {
            type = "string",
        },
        iamIdentityProviderArn = {
            type = "string",
        },
        identityCenterInstanceArn = {
            type = "string",
        },
        clientIdsForOIDC = {
            type = "list",
            member = { type = "string" },
        },
        description = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        attachmentsConfiguration = M.AttachmentsConfiguration,
        qAppsConfiguration = M.QAppsConfiguration,
        personalizationConfiguration = M.PersonalizationConfiguration,
        quickSightConfiguration = M.QuickSightConfiguration,
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
        },
        applicationArn = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.DataAccessorIdcTrustedTokenIssuerConfiguration = {
    type = "structure",
    members = {
        idcTrustedTokenIssuerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataAccessorAuthenticationConfiguration = {
    type = "union",
    members = {
        idcTrustedTokenIssuerConfiguration = M.DataAccessorIdcTrustedTokenIssuerConfiguration,
    },
}

M.DataAccessorAuthenticationType = {
    AWS_IAM_IDC_TTI = "AWS_IAM_IDC_TTI",
    AWS_IAM_IDC_AUTH_CODE = "AWS_IAM_IDC_AUTH_CODE",
}

M.DataAccessorAuthenticationDetail = {
    type = "structure",
    members = {
        authenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authenticationConfiguration = M.DataAccessorAuthenticationConfiguration,
        externalIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateDataAccessorOutput = {
    type = "structure",
    members = {
        dataAccessorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataAccessorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDataAccessorInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataAccessorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataAccessorOutput = {
    type = "structure",
}

M.GetDataAccessorInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataAccessorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListDataAccessorsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataAccessor = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        dataAccessorId = {
            type = "string",
        },
        dataAccessorArn = {
            type = "string",
        },
        idcApplicationArn = {
            type = "string",
        },
        principal = {
            type = "string",
        },
        authenticationDetail = M.DataAccessorAuthenticationDetail,
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.ListDataAccessorsOutput = {
    type = "structure",
    members = {
        dataAccessors = {
            type = "list",
            member = M.DataAccessor,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataAccessorOutput = {
    type = "structure",
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
}

M.GetApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AppliedAttachmentsConfiguration = {
    type = "structure",
    members = {
        attachmentsControlMode = {
            type = "string",
        },
    },
}

M.AutoSubscriptionStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SubscriptionType = {
    Q_LITE = "Q_LITE",
    Q_BUSINESS = "Q_BUSINESS",
}

M.AutoSubscriptionConfiguration = {
    type = "structure",
    members = {
        autoSubscribe = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultSubscriptionType = {
            type = "string",
        },
    },
}

M.ErrorCode = {
    INTERNAL_ERROR = "InternalError",
    INVALID_REQUEST = "InvalidRequest",
    RESOURCE_INACTIVE = "ResourceInactive",
    RESOURCE_NOT_FOUND = "ResourceNotFound",
}

M.ErrorDetail = {
    type = "structure",
    members = {
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.GetApplicationOutput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        applicationId = {
            type = "string",
        },
        applicationArn = {
            type = "string",
        },
        identityType = {
            type = "string",
        },
        iamIdentityProviderArn = {
            type = "string",
        },
        identityCenterApplicationArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        description = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        error = M.ErrorDetail,
        attachmentsConfiguration = M.AppliedAttachmentsConfiguration,
        qAppsConfiguration = M.QAppsConfiguration,
        personalizationConfiguration = M.PersonalizationConfiguration,
        autoSubscriptionConfiguration = M.AutoSubscriptionConfiguration,
        clientIdsForOIDC = {
            type = "list",
            member = { type = "string" },
        },
        quickSightConfiguration = M.QuickSightConfiguration,
    },
}

M.IndexCapacityConfiguration = {
    type = "structure",
    members = {
        units = {
            type = "integer",
        },
    },
}

M.IndexType = {
    ENTERPRISE = "ENTERPRISE",
    STARTER = "STARTER",
}

M.CreateIndexInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        capacityConfiguration = M.IndexCapacityConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateIndexOutput = {
    type = "structure",
    members = {
        indexId = {
            type = "string",
        },
        indexArn = {
            type = "string",
        },
    },
}

M.DocumentEnrichmentConditionOperator = {
    GREATER_THAN = "GREATER_THAN",
    GREATER_THAN_OR_EQUALS = "GREATER_THAN_OR_EQUALS",
    LESS_THAN = "LESS_THAN",
    LESS_THAN_OR_EQUALS = "LESS_THAN_OR_EQUALS",
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    CONTAINS = "CONTAINS",
    NOT_CONTAINS = "NOT_CONTAINS",
    EXISTS = "EXISTS",
    NOT_EXISTS = "NOT_EXISTS",
    BEGINS_WITH = "BEGINS_WITH",
}

M.DocumentAttributeCondition = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = M.DocumentAttributeValue,
    },
}

M.DocumentContentOperator = {
    DELETE = "DELETE",
}

M.AttributeValueOperator = {
    DELETE = "DELETE",
}

M.DocumentAttributeTarget = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = M.DocumentAttributeValue,
        attributeValueOperator = {
            type = "string",
        },
    },
}

M.InlineDocumentEnrichmentConfiguration = {
    type = "structure",
    members = {
        condition = M.DocumentAttributeCondition,
        target = M.DocumentAttributeTarget,
        documentContentOperator = {
            type = "string",
        },
    },
}

M.HookConfiguration = {
    type = "structure",
    members = {
        invocationCondition = M.DocumentAttributeCondition,
        lambdaArn = {
            type = "string",
        },
        s3BucketName = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.DocumentEnrichmentConfiguration = {
    type = "structure",
    members = {
        inlineConfigurations = {
            type = "list",
            member = M.InlineDocumentEnrichmentConfiguration,
        },
        preExtractionHookConfiguration = M.HookConfiguration,
        postExtractionHookConfiguration = M.HookConfiguration,
    },
}

M.AudioExtractionStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AudioExtractionConfiguration = {
    type = "structure",
    members = {
        audioExtractionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageExtractionStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ImageExtractionConfiguration = {
    type = "structure",
    members = {
        imageExtractionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VideoExtractionStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.VideoExtractionConfiguration = {
    type = "structure",
    members = {
        videoExtractionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MediaExtractionConfiguration = {
    type = "structure",
    members = {
        imageExtractionConfiguration = M.ImageExtractionConfiguration,
        audioExtractionConfiguration = M.AudioExtractionConfiguration,
        videoExtractionConfiguration = M.VideoExtractionConfiguration,
    },
}

M.DataSourceVpcConfiguration = {
    type = "structure",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDataSourceInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "document",
            traits = {
                required = true,
            },
        },
        vpcConfiguration = M.DataSourceVpcConfiguration,
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        syncSchedule = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        documentEnrichmentConfiguration = M.DocumentEnrichmentConfiguration,
        mediaExtractionConfiguration = M.MediaExtractionConfiguration,
    },
}

M.CreateDataSourceOutput = {
    type = "structure",
    members = {
        dataSourceId = {
            type = "string",
        },
        dataSourceArn = {
            type = "string",
        },
    },
}

M.DeleteDataSourceInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataSourceOutput = {
    type = "structure",
}

M.GetDataSourceInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DataSourceStatus = {
    PENDING_CREATION = "PENDING_CREATION",
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
}

M.GetDataSourceOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
        },
        indexId = {
            type = "string",
        },
        dataSourceId = {
            type = "string",
        },
        dataSourceArn = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        type = {
            type = "string",
        },
        configuration = {
            type = "document",
        },
        vpcConfiguration = M.DataSourceVpcConfiguration,
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        syncSchedule = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        error = M.ErrorDetail,
        documentEnrichmentConfiguration = M.DocumentEnrichmentConfiguration,
        mediaExtractionConfiguration = M.MediaExtractionConfiguration,
    },
}

M.ListDataSourcesInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataSource = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        dataSourceId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.ListDataSourcesOutput = {
    type = "structure",
    members = {
        dataSources = {
            type = "list",
            member = M.DataSource,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataSourceInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        configuration = {
            type = "document",
        },
        vpcConfiguration = M.DataSourceVpcConfiguration,
        description = {
            type = "string",
        },
        syncSchedule = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        documentEnrichmentConfiguration = M.DocumentEnrichmentConfiguration,
        mediaExtractionConfiguration = M.MediaExtractionConfiguration,
    },
}

M.UpdateDataSourceOutput = {
    type = "structure",
}

M.DeleteIndexInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIndexOutput = {
    type = "structure",
}

M.GetIndexInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Status = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AttributeType = {
    STRING = "STRING",
    STRING_LIST = "STRING_LIST",
    NUMBER = "NUMBER",
    DATE = "DATE",
}

M.DocumentAttributeConfiguration = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        search = {
            type = "string",
        },
    },
}

M.TextDocumentStatistics = {
    type = "structure",
    members = {
        indexedTextBytes = {
            type = "long",
        },
        indexedTextDocumentCount = {
            type = "integer",
        },
    },
}

M.IndexStatistics = {
    type = "structure",
    members = {
        textDocumentStatistics = M.TextDocumentStatistics,
    },
}

M.IndexStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
}

M.GetIndexOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
        },
        indexId = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        indexArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        capacityConfiguration = M.IndexCapacityConfiguration,
        documentAttributeConfigurations = {
            type = "list",
            member = M.DocumentAttributeConfiguration,
        },
        error = M.ErrorDetail,
        indexStatistics = M.IndexStatistics,
    },
}

M.ListIndicesInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.Index = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        indexId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.ListIndicesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        indices = {
            type = "list",
            member = M.Index,
        },
    },
}

M.UpdateIndexInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        capacityConfiguration = M.IndexCapacityConfiguration,
        documentAttributeConfigurations = {
            type = "list",
            member = M.DocumentAttributeConfiguration,
        },
    },
}

M.UpdateIndexOutput = {
    type = "structure",
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        applications = {
            type = "list",
            member = M.Application,
        },
    },
}

M.BasicAuthConfiguration = {
    type = "structure",
    members = {
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdcAuthConfiguration = {
    type = "structure",
    members = {
        idcApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NoAuthConfiguration = {
    type = "structure",
}

M.OAuth2ClientCredentialConfiguration = {
    type = "structure",
    members = {
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationUrl = {
            type = "string",
        },
        tokenUrl = {
            type = "string",
        },
    },
}

M.PluginAuthConfiguration = {
    type = "union",
    members = {
        basicAuthConfiguration = M.BasicAuthConfiguration,
        oAuth2ClientCredentialConfiguration = M.OAuth2ClientCredentialConfiguration,
        noAuthConfiguration = M.NoAuthConfiguration,
        idcAuthConfiguration = M.IdcAuthConfiguration,
    },
}

M.CustomPluginConfiguration = {
    type = "structure",
    members = {
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiSchemaType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiSchema = M.APISchema,
    },
}

M.CreatePluginInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PluginAuthConfiguration }),
        serverUrl = {
            type = "string",
        },
        customPluginConfiguration = M.CustomPluginConfiguration,
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.PluginBuildStatus = {
    READY = "READY",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreatePluginOutput = {
    type = "structure",
    members = {
        pluginId = {
            type = "string",
        },
        pluginArn = {
            type = "string",
        },
        buildStatus = {
            type = "string",
        },
    },
}

M.DeletePluginInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        pluginId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePluginOutput = {
    type = "structure",
}

M.GetPluginInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        pluginId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PluginState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.GetPluginOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
        },
        pluginId = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        type = {
            type = "string",
        },
        serverUrl = {
            type = "string",
        },
        authConfiguration = M.PluginAuthConfiguration,
        customPluginConfiguration = M.CustomPluginConfiguration,
        buildStatus = {
            type = "string",
        },
        pluginArn = {
            type = "string",
        },
        state = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.ListPluginsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.Plugin = {
    type = "structure",
    members = {
        pluginId = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        type = {
            type = "string",
        },
        serverUrl = {
            type = "string",
        },
        state = {
            type = "string",
        },
        buildStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.ListPluginsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        plugins = {
            type = "list",
            member = M.Plugin,
        },
    },
}

M.UpdatePluginInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        pluginId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        state = {
            type = "string",
        },
        serverUrl = {
            type = "string",
        },
        customPluginConfiguration = M.CustomPluginConfiguration,
        authConfiguration = M.PluginAuthConfiguration,
    },
}

M.UpdatePluginOutput = {
    type = "structure",
}

M.KendraIndexConfiguration = {
    type = "structure",
    members = {
        indexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentAttributeBoostingLevel = {
    NONE = "NONE",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    VERY_HIGH = "VERY_HIGH",
    ONE = "ONE",
    TWO = "TWO",
}

M.DateAttributeBoostingConfiguration = {
    type = "structure",
    members = {
        boostingLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        boostingDurationInSeconds = {
            type = "long",
        },
    },
}

M.NumberAttributeBoostingType = {
    PRIORITIZE_LARGER_VALUES = "PRIORITIZE_LARGER_VALUES",
    PRIORITIZE_SMALLER_VALUES = "PRIORITIZE_SMALLER_VALUES",
}

M.NumberAttributeBoostingConfiguration = {
    type = "structure",
    members = {
        boostingLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        boostingType = {
            type = "string",
        },
    },
}

M.StringAttributeValueBoostingLevel = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    VERY_HIGH = "VERY_HIGH",
    ONE = "ONE",
    TWO = "TWO",
    THREE = "THREE",
    FOUR = "FOUR",
    FIVE = "FIVE",
}

M.StringAttributeBoostingConfiguration = {
    type = "structure",
    members = {
        boostingLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributeValueBoosting = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StringListAttributeBoostingConfiguration = {
    type = "structure",
    members = {
        boostingLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentAttributeBoostingConfiguration = {
    type = "union",
    members = {
        numberConfiguration = M.NumberAttributeBoostingConfiguration,
        stringConfiguration = M.StringAttributeBoostingConfiguration,
        dateConfiguration = M.DateAttributeBoostingConfiguration,
        stringListConfiguration = M.StringListAttributeBoostingConfiguration,
    },
}

M.NativeIndexConfiguration = {
    type = "structure",
    members = {
        indexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "long",
        },
        boostingOverride = {
            type = "map",
            key = { type = "string" },
            value = M.DocumentAttributeBoostingConfiguration,
        },
    },
}

M.RetrieverConfiguration = {
    type = "union",
    members = {
        nativeIndexConfiguration = M.NativeIndexConfiguration,
        kendraIndexConfiguration = M.KendraIndexConfiguration,
    },
}

M.RetrieverType = {
    NATIVE_INDEX = "NATIVE_INDEX",
    KENDRA_INDEX = "KENDRA_INDEX",
}

M.CreateRetrieverInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetrieverConfiguration }),
        roleArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateRetrieverOutput = {
    type = "structure",
    members = {
        retrieverId = {
            type = "string",
        },
        retrieverArn = {
            type = "string",
        },
    },
}

M.DeleteRetrieverInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        retrieverId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRetrieverOutput = {
    type = "structure",
}

M.GetRetrieverInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        retrieverId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RetrieverStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.GetRetrieverOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
        },
        retrieverId = {
            type = "string",
        },
        retrieverArn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        configuration = M.RetrieverConfiguration,
        roleArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.ListRetrieversInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.Retriever = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
        },
        retrieverId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
    },
}

M.ListRetrieversOutput = {
    type = "structure",
    members = {
        retrievers = {
            type = "list",
            member = M.Retriever,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateRetrieverInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        retrieverId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuration = M.RetrieverConfiguration,
        displayName = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.UpdateRetrieverOutput = {
    type = "structure",
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identityCenterInstanceArn = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        attachmentsConfiguration = M.AttachmentsConfiguration,
        qAppsConfiguration = M.QAppsConfiguration,
        personalizationConfiguration = M.PersonalizationConfiguration,
        autoSubscriptionConfiguration = M.AutoSubscriptionConfiguration,
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
}

M.BrowserExtension = {
    FIREFOX = "FIREFOX",
    CHROME = "CHROME",
}

M.BrowserExtensionConfiguration = {
    type = "structure",
    members = {
        enabledBrowserExtensions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CustomizationConfiguration = {
    type = "structure",
    members = {
        customCSSUrl = {
            type = "string",
        },
        logoUrl = {
            type = "string",
        },
        fontUrl = {
            type = "string",
        },
        faviconUrl = {
            type = "string",
        },
    },
}

M.OpenIDConnectProviderConfiguration = {
    type = "structure",
    members = {
        secretsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretsRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SamlProviderConfiguration = {
    type = "structure",
    members = {
        authenticationUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdentityProviderConfiguration = {
    type = "union",
    members = {
        samlConfiguration = M.SamlProviderConfiguration,
        openIDConnectConfiguration = M.OpenIDConnectProviderConfiguration,
    },
}

M.WebExperienceSamplePromptsControlMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateWebExperienceInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        title = {
            type = "string",
        },
        subtitle = {
            type = "string",
        },
        welcomeMessage = {
            type = "string",
        },
        samplePromptsControlMode = {
            type = "string",
        },
        origins = {
            type = "list",
            member = { type = "string" },
        },
        roleArn = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        identityProviderConfiguration = M.IdentityProviderConfiguration,
        browserExtensionConfiguration = M.BrowserExtensionConfiguration,
        customizationConfiguration = M.CustomizationConfiguration,
    },
}

M.CreateWebExperienceOutput = {
    type = "structure",
    members = {
        webExperienceId = {
            type = "string",
        },
        webExperienceArn = {
            type = "string",
        },
    },
}

M.DeleteWebExperienceInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        webExperienceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWebExperienceOutput = {
    type = "structure",
}

M.GetWebExperienceInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        webExperienceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SamlConfiguration = {
    type = "structure",
    members = {
        metadataXML = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userIdAttribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userGroupAttribute = {
            type = "string",
        },
    },
}

M.WebExperienceAuthConfiguration = {
    type = "union",
    members = {
        samlConfiguration = M.SamlConfiguration,
    },
}

M.WebExperienceStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
    PENDING_AUTH_CONFIG = "PENDING_AUTH_CONFIG",
}

M.GetWebExperienceOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
        },
        webExperienceId = {
            type = "string",
        },
        webExperienceArn = {
            type = "string",
        },
        defaultEndpoint = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        title = {
            type = "string",
        },
        subtitle = {
            type = "string",
        },
        welcomeMessage = {
            type = "string",
        },
        samplePromptsControlMode = {
            type = "string",
        },
        origins = {
            type = "list",
            member = { type = "string" },
        },
        roleArn = {
            type = "string",
        },
        identityProviderConfiguration = M.IdentityProviderConfiguration,
        authenticationConfiguration = M.WebExperienceAuthConfiguration,
        error = M.ErrorDetail,
        browserExtensionConfiguration = M.BrowserExtensionConfiguration,
        customizationConfiguration = M.CustomizationConfiguration,
    },
}

M.ListWebExperiencesInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.WebExperience = {
    type = "structure",
    members = {
        webExperienceId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        defaultEndpoint = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ListWebExperiencesOutput = {
    type = "structure",
    members = {
        webExperiences = {
            type = "list",
            member = M.WebExperience,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateWebExperienceInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        webExperienceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        authenticationConfiguration = M.WebExperienceAuthConfiguration,
        title = {
            type = "string",
        },
        subtitle = {
            type = "string",
        },
        welcomeMessage = {
            type = "string",
        },
        samplePromptsControlMode = {
            type = "string",
        },
        identityProviderConfiguration = M.IdentityProviderConfiguration,
        origins = {
            type = "list",
            member = { type = "string" },
        },
        browserExtensionConfiguration = M.BrowserExtensionConfiguration,
        customizationConfiguration = M.CustomizationConfiguration,
    },
}

M.UpdateWebExperienceOutput = {
    type = "structure",
}

M.CreatorModeControl = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AppliedCreatorModeConfiguration = {
    type = "structure",
    members = {
        creatorModeControl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OrchestrationControl = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AppliedOrchestrationConfiguration = {
    type = "structure",
    members = {
        control = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatedGroup = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.AssociatedUser = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.PermissionConditionOperator = {
    STRING_EQUALS = "StringEquals",
}

M.PermissionCondition = {
    type = "structure",
    members = {
        conditionOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conditionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conditionValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatePermissionInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statementId = {
            type = "string",
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
        conditions = {
            type = "list",
            member = M.PermissionCondition,
        },
        principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatePermissionOutput = {
    type = "structure",
    members = {
        statement = {
            type = "string",
        },
    },
}

M.ConversationSource = {
    type = "structure",
    members = {
        conversationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CopyFromSource = {
    type = "union",
    members = {
        conversation = M.ConversationSource,
    },
}

M.AttachmentStatus = {
    FAILED = "FAILED",
    SUCCESS = "SUCCESS",
}

M.Attachment = {
    type = "structure",
    members = {
        attachmentId = {
            type = "string",
        },
        conversationId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        copyFrom = M.CopyFromSource,
        fileType = {
            type = "string",
        },
        fileSize = {
            type = "integer",
        },
        md5chksum = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        error = M.ErrorDetail,
    },
}

M.AttachmentInput = {
    type = "structure",
    members = {
        data = {
            type = "blob",
        },
        name = {
            type = "string",
        },
        copyFrom = M.CopyFromSource,
    },
}

M.AttachmentInputEvent = {
    type = "structure",
    members = {
        attachment = M.AttachmentInput,
    },
}

M.AttachmentOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        error = M.ErrorDetail,
        attachmentId = {
            type = "string",
        },
        conversationId = {
            type = "string",
        },
    },
}

M.AudioExtractionType = {
    TRANSCRIPT = "TRANSCRIPT",
    SUMMARY = "SUMMARY",
}

M.AudioSourceDetails = {
    type = "structure",
    members = {
        mediaId = {
            type = "string",
        },
        mediaMimeType = {
            type = "string",
        },
        startTimeMilliseconds = {
            type = "long",
        },
        endTimeMilliseconds = {
            type = "long",
        },
        audioExtractionType = {
            type = "string",
        },
    },
}

M.AuthChallengeRequest = {
    type = "structure",
    members = {
        authorizationUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthChallengeRequestEvent = {
    type = "structure",
    members = {
        authorizationUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthChallengeResponse = {
    type = "structure",
    members = {
        responseMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AuthChallengeResponseEvent = {
    type = "structure",
    members = {
        responseMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDocument = {
    type = "structure",
    members = {
        documentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteDocumentInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        documents = {
            type = "list",
            member = M.DeleteDocument,
            traits = {
                required = true,
            },
        },
        dataSourceSyncId = {
            type = "string",
        },
    },
}

M.FailedDocument = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        error = M.ErrorDetail,
        dataSourceId = {
            type = "string",
        },
    },
}

M.BatchDeleteDocumentOutput = {
    type = "structure",
    members = {
        failedDocuments = {
            type = "list",
            member = M.FailedDocument,
        },
    },
}

M.DocumentContent = {
    type = "union",
    members = {
        blob = {
            type = "blob",
        },
        s3 = M.S3,
    },
}

M.ContentType = {
    PDF = "PDF",
    HTML = "HTML",
    MS_WORD = "MS_WORD",
    PLAIN_TEXT = "PLAIN_TEXT",
    PPT = "PPT",
    RTF = "RTF",
    XML = "XML",
    XSLT = "XSLT",
    MS_EXCEL = "MS_EXCEL",
    CSV = "CSV",
    JSON = "JSON",
    MD = "MD",
}

M.Document = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "list",
            member = M.DocumentAttribute,
        },
        content = M.DocumentContent,
        contentType = {
            type = "string",
        },
        title = {
            type = "string",
        },
        accessConfiguration = M.AccessConfiguration,
        documentEnrichmentConfiguration = M.DocumentEnrichmentConfiguration,
        mediaExtractionConfiguration = M.MediaExtractionConfiguration,
    },
}

M.BatchPutDocumentInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        documents = {
            type = "list",
            member = M.Document,
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        dataSourceSyncId = {
            type = "string",
        },
    },
}

M.BatchPutDocumentOutput = {
    type = "structure",
    members = {
        failedDocuments = {
            type = "list",
            member = M.FailedDocument,
        },
    },
}

M.BlockedPhrasesConfiguration = {
    type = "structure",
    members = {
        blockedPhrases = {
            type = "list",
            member = { type = "string" },
        },
        systemMessageOverride = {
            type = "string",
        },
    },
}

M.BlockedPhrasesConfigurationUpdate = {
    type = "structure",
    members = {
        blockedPhrasesToCreateOrUpdate = {
            type = "list",
            member = { type = "string" },
        },
        blockedPhrasesToDelete = {
            type = "list",
            member = { type = "string" },
        },
        systemMessageOverride = {
            type = "string",
        },
    },
}

M.CancelSubscriptionInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SubscriptionDetails = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
    },
}

M.CancelSubscriptionOutput = {
    type = "structure",
    members = {
        subscriptionArn = {
            type = "string",
        },
        currentSubscription = M.SubscriptionDetails,
        nextSubscription = M.SubscriptionDetails,
    },
}

M.ChatMode = {
    RETRIEVAL_MODE = "RETRIEVAL_MODE",
    CREATOR_MODE = "CREATOR_MODE",
    PLUGIN_MODE = "PLUGIN_MODE",
}

M.PluginConfiguration = {
    type = "structure",
    members = {
        pluginId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChatModeConfiguration = {
    type = "union",
    members = {
        pluginConfiguration = M.PluginConfiguration,
    },
}

M.EndOfInputEvent = {
    type = "structure",
}

M.TextInputEvent = {
    type = "structure",
    members = {
        userMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FailedAttachmentEvent = {
    type = "structure",
    members = {
        conversationId = {
            type = "string",
        },
        userMessageId = {
            type = "string",
        },
        systemMessageId = {
            type = "string",
        },
        attachment = M.AttachmentOutput,
    },
}

M.SnippetExcerpt = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
    },
}

M.ImageSourceDetails = {
    type = "structure",
    members = {
        mediaId = {
            type = "string",
        },
        mediaMimeType = {
            type = "string",
        },
    },
}

M.VideoExtractionType = {
    TRANSCRIPT = "TRANSCRIPT",
    SUMMARY = "SUMMARY",
}

M.VideoSourceDetails = {
    type = "structure",
    members = {
        mediaId = {
            type = "string",
        },
        mediaMimeType = {
            type = "string",
        },
        startTimeMilliseconds = {
            type = "long",
        },
        endTimeMilliseconds = {
            type = "long",
        },
        videoExtractionType = {
            type = "string",
        },
    },
}

M.SourceDetails = {
    type = "union",
    members = {
        imageSourceDetails = M.ImageSourceDetails,
        audioSourceDetails = M.AudioSourceDetails,
        videoSourceDetails = M.VideoSourceDetails,
    },
}

M.TextSegment = {
    type = "structure",
    members = {
        beginOffset = {
            type = "integer",
        },
        endOffset = {
            type = "integer",
        },
        snippetExcerpt = M.SnippetExcerpt,
        mediaId = {
            type = "string",
        },
        mediaMimeType = {
            type = "string",
        },
        sourceDetails = M.SourceDetails,
    },
}

M.SourceAttribution = {
    type = "structure",
    members = {
        title = {
            type = "string",
        },
        snippet = {
            type = "string",
        },
        url = {
            type = "string",
        },
        citationNumber = {
            type = "integer",
        },
        updatedAt = {
            type = "timestamp",
        },
        textMessageSegments = {
            type = "list",
            member = M.TextSegment,
        },
        documentId = {
            type = "string",
        },
        indexId = {
            type = "string",
        },
        datasourceId = {
            type = "string",
        },
    },
}

M.MetadataEvent = {
    type = "structure",
    members = {
        conversationId = {
            type = "string",
        },
        userMessageId = {
            type = "string",
        },
        systemMessageId = {
            type = "string",
        },
        sourceAttributions = {
            type = "list",
            member = M.SourceAttribution,
        },
        finalTextMessage = {
            type = "string",
        },
    },
}

M.SystemMessageType = {
    RESPONSE = "RESPONSE",
    GROUNDED_RESPONSE = "GROUNDED_RESPONSE",
}

M.TextOutputEvent = {
    type = "structure",
    members = {
        systemMessageType = {
            type = "string",
        },
        conversationId = {
            type = "string",
        },
        userMessageId = {
            type = "string",
        },
        systemMessageId = {
            type = "string",
        },
        systemMessage = {
            type = "string",
        },
    },
}

M.ChatOutputStream = {
    type = "union",
    members = {
        textEvent = M.TextOutputEvent,
        metadataEvent = M.MetadataEvent,
        actionReviewEvent = M.ActionReviewEvent,
        failedAttachmentEvent = M.FailedAttachmentEvent,
        authChallengeRequestEvent = M.AuthChallengeRequestEvent,
    },
}

M.ChatOutput = {
    type = "structure",
    members = {
        outputStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ChatOutputStream }),
    },
}

M.ExternalResourceException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LicenseNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChatResponseConfigurationStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    FAILED = "FAILED",
    ACTIVE = "ACTIVE",
}

M.ChatResponseConfiguration = {
    type = "structure",
    members = {
        chatResponseConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        chatResponseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        responseConfigurationSummary = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.ResponseConfigurationType = {
    ALL = "ALL",
}

M.InstructionCollection = {
    type = "structure",
    members = {
        responseLength = {
            type = "string",
        },
        targetAudience = {
            type = "string",
        },
        perspective = {
            type = "string",
        },
        outputStyle = {
            type = "string",
        },
        identity = {
            type = "string",
        },
        tone = {
            type = "string",
        },
        customInstructions = {
            type = "string",
        },
        examples = {
            type = "string",
        },
    },
}

M.ResponseConfiguration = {
    type = "structure",
    members = {
        instructionCollection = M.InstructionCollection,
    },
}

M.ChatResponseConfigurationDetail = {
    type = "structure",
    members = {
        responseConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.ResponseConfiguration,
        },
        responseConfigurationSummary = {
            type = "string",
        },
        status = {
            type = "string",
        },
        error = M.ErrorDetail,
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.ChatSyncOutput = {
    type = "structure",
    members = {
        conversationId = {
            type = "string",
        },
        systemMessage = {
            type = "string",
        },
        systemMessageId = {
            type = "string",
        },
        userMessageId = {
            type = "string",
        },
        actionReview = M.ActionReview,
        authChallengeRequest = M.AuthChallengeRequest,
        sourceAttributions = {
            type = "list",
            member = M.SourceAttribution,
        },
        failedAttachments = {
            type = "list",
            member = M.AttachmentOutput,
        },
    },
}

M.CheckDocumentAccessInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        documentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_query = "dataSourceId",
            },
        },
    },
}

M.DocumentAclGroup = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.DocumentAclUser = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.DocumentAclCondition = {
    type = "structure",
    members = {
        memberRelation = {
            type = "string",
        },
        users = {
            type = "list",
            member = M.DocumentAclUser,
        },
        groups = {
            type = "list",
            member = M.DocumentAclGroup,
        },
    },
}

M.DocumentAclMembership = {
    type = "structure",
    members = {
        memberRelation = {
            type = "string",
        },
        conditions = {
            type = "list",
            member = M.DocumentAclCondition,
        },
    },
}

M.DocumentAcl = {
    type = "structure",
    members = {
        allowlist = M.DocumentAclMembership,
        denyList = M.DocumentAclMembership,
    },
}

M.CheckDocumentAccessOutput = {
    type = "structure",
    members = {
        userGroups = {
            type = "list",
            member = M.AssociatedGroup,
        },
        userAliases = {
            type = "list",
            member = M.AssociatedUser,
        },
        hasAccess = {
            type = "boolean",
        },
        documentAcl = M.DocumentAcl,
    },
}

M.ContentBlockerRule = {
    type = "structure",
    members = {
        systemMessageOverride = {
            type = "string",
        },
    },
}

M.EligibleDataSource = {
    type = "structure",
    members = {
        indexId = {
            type = "string",
        },
        dataSourceId = {
            type = "string",
        },
    },
}

M.ContentRetrievalRule = {
    type = "structure",
    members = {
        eligibleDataSources = {
            type = "list",
            member = M.EligibleDataSource,
        },
    },
}

M.RetrieverContentSource = {
    type = "structure",
    members = {
        retrieverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContentSource = {
    type = "union",
    members = {
        retriever = M.RetrieverContentSource,
    },
}

M.Conversation = {
    type = "structure",
    members = {
        conversationId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
    },
}

M.CreateAnonymousWebExperienceUrlInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        webExperienceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionDurationInMinutes = {
            type = "integer",
        },
    },
}

M.CreateAnonymousWebExperienceUrlOutput = {
    type = "structure",
    members = {
        anonymousUrl = {
            type = "string",
        },
    },
}

M.CreateChatResponseConfigurationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
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
        responseConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.ResponseConfiguration,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateChatResponseConfigurationOutput = {
    type = "structure",
    members = {
        chatResponseConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        chatResponseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubscriptionPrincipal = {
    type = "union",
    members = {
        user = {
            type = "string",
        },
        group = {
            type = "string",
        },
    },
}

M.CreateSubscriptionInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscriptionPrincipal }),
        type = {
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

M.CreateSubscriptionOutput = {
    type = "structure",
    members = {
        subscriptionId = {
            type = "string",
        },
        subscriptionArn = {
            type = "string",
        },
        currentSubscription = M.SubscriptionDetails,
        nextSubscription = M.SubscriptionDetails,
    },
}

M.UserAlias = {
    type = "structure",
    members = {
        indexId = {
            type = "string",
        },
        dataSourceId = {
            type = "string",
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateUserInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userAliases = {
            type = "list",
            member = M.UserAlias,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
}

M.CreatorModeConfiguration = {
    type = "structure",
    members = {
        creatorModeControl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceSyncJobMetrics = {
    type = "structure",
    members = {
        documentsAdded = {
            type = "string",
        },
        documentsModified = {
            type = "string",
        },
        documentsDeleted = {
            type = "string",
        },
        documentsFailed = {
            type = "string",
        },
        documentsScanned = {
            type = "string",
        },
    },
}

M.DataSourceSyncJobStatus = {
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    SYNCING = "SYNCING",
    INCOMPLETE = "INCOMPLETE",
    STOPPING = "STOPPING",
    ABORTED = "ABORTED",
    SYNCING_INDEXING = "SYNCING_INDEXING",
}

M.DataSourceSyncJob = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        error = M.ErrorDetail,
        dataSourceErrorCode = {
            type = "string",
        },
        metrics = M.DataSourceSyncJobMetrics,
    },
}

M.DeleteAttachmentInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        conversationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        attachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
    },
}

M.DeleteAttachmentOutput = {
    type = "structure",
}

M.DeleteChatControlsConfigurationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteChatControlsConfigurationOutput = {
    type = "structure",
}

M.DeleteChatResponseConfigurationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        chatResponseConfigurationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteChatResponseConfigurationOutput = {
    type = "structure",
}

M.DeleteConversationInput = {
    type = "structure",
    members = {
        conversationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
    },
}

M.DeleteConversationOutput = {
    type = "structure",
}

M.DeleteGroupInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        groupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_query = "dataSourceId",
            },
        },
    },
}

M.DeleteGroupOutput = {
    type = "structure",
}

M.DeleteUserInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
}

M.DisassociatePermissionInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statementId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociatePermissionOutput = {
    type = "structure",
}

M.DocumentStatus = {
    RECEIVED = "RECEIVED",
    PROCESSING = "PROCESSING",
    INDEXED = "INDEXED",
    UPDATED = "UPDATED",
    FAILED = "FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    DOCUMENT_FAILED_TO_INDEX = "DOCUMENT_FAILED_TO_INDEX",
}

M.DocumentDetails = {
    type = "structure",
    members = {
        documentId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        error = M.ErrorDetail,
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.GetChatControlsConfigurationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.HallucinationReductionControl = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.HallucinationReductionConfiguration = {
    type = "structure",
    members = {
        hallucinationReductionControl = {
            type = "string",
        },
    },
}

M.ResponseScope = {
    ENTERPRISE_CONTENT_ONLY = "ENTERPRISE_CONTENT_ONLY",
    EXTENDED_KNOWLEDGE_ENABLED = "EXTENDED_KNOWLEDGE_ENABLED",
}

M.UsersAndGroups = {
    type = "structure",
    members = {
        userIds = {
            type = "list",
            member = { type = "string" },
        },
        userGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RuleConfiguration = {
    type = "union",
    members = {
        contentBlockerRule = M.ContentBlockerRule,
        contentRetrievalRule = M.ContentRetrievalRule,
    },
}

M.RuleType = {
    CONTENT_BLOCKER_RULE = "CONTENT_BLOCKER_RULE",
    CONTENT_RETRIEVAL_RULE = "CONTENT_RETRIEVAL_RULE",
}

M.Rule = {
    type = "structure",
    members = {
        includedUsersAndGroups = M.UsersAndGroups,
        excludedUsersAndGroups = M.UsersAndGroups,
        ruleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleConfiguration = M.RuleConfiguration,
    },
}

M.TopicConfiguration = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        exampleChatMessages = {
            type = "list",
            member = { type = "string" },
        },
        rules = {
            type = "list",
            member = M.Rule,
            traits = {
                required = true,
            },
        },
    },
}

M.GetChatControlsConfigurationOutput = {
    type = "structure",
    members = {
        responseScope = {
            type = "string",
        },
        orchestrationConfiguration = M.AppliedOrchestrationConfiguration,
        blockedPhrases = M.BlockedPhrasesConfiguration,
        topicConfigurations = {
            type = "list",
            member = M.TopicConfiguration,
        },
        creatorModeConfiguration = M.AppliedCreatorModeConfiguration,
        nextToken = {
            type = "string",
        },
        hallucinationReductionConfiguration = M.HallucinationReductionConfiguration,
    },
}

M.GetChatResponseConfigurationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        chatResponseConfigurationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetChatResponseConfigurationOutput = {
    type = "structure",
    members = {
        chatResponseConfigurationId = {
            type = "string",
        },
        chatResponseConfigurationArn = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        inUseConfiguration = M.ChatResponseConfigurationDetail,
        lastUpdateConfiguration = M.ChatResponseConfigurationDetail,
    },
}

M.OutputFormat = {
    RAW = "RAW",
    EXTRACTED = "EXTRACTED",
}

M.GetDocumentContentInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_query = "dataSourceId",
            },
        },
        documentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        outputFormat = {
            type = "string",
            traits = {
                http_query = "outputFormat",
            },
        },
    },
}

M.GetDocumentContentOutput = {
    type = "structure",
    members = {
        presignedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mimeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGroupInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        groupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_query = "dataSourceId",
            },
        },
    },
}

M.GroupStatus = {
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    PROCESSING = "PROCESSING",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.GroupStatusDetail = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        errorDetail = M.ErrorDetail,
    },
}

M.GetGroupOutput = {
    type = "structure",
    members = {
        status = M.GroupStatusDetail,
        statusHistory = {
            type = "list",
            member = M.GroupStatusDetail,
        },
    },
}

M.GetMediaInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        conversationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        mediaId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMediaOutput = {
    type = "structure",
    members = {
        mediaBytes = {
            type = "blob",
        },
        mediaMimeType = {
            type = "string",
        },
    },
}

M.MediaTooLargeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPolicyInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPolicyOutput = {
    type = "structure",
    members = {
        policy = {
            type = "string",
        },
    },
}

M.GetUserInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetUserOutput = {
    type = "structure",
    members = {
        userAliases = {
            type = "list",
            member = M.UserAlias,
        },
    },
}

M.ListAttachmentsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        conversationId = {
            type = "string",
            traits = {
                http_query = "conversationId",
            },
        },
        userId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAttachmentsOutput = {
    type = "structure",
    members = {
        attachments = {
            type = "list",
            member = M.Attachment,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListChatResponseConfigurationsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListChatResponseConfigurationsOutput = {
    type = "structure",
    members = {
        chatResponseConfigurations = {
            type = "list",
            member = M.ChatResponseConfiguration,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListConversationsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListConversationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        conversations = {
            type = "list",
            member = M.Conversation,
        },
    },
}

M.ListDataSourceSyncJobsInput = {
    type = "structure",
    members = {
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
            },
        },
        statusFilter = {
            type = "string",
            traits = {
                http_query = "syncStatus",
            },
        },
    },
}

M.ListDataSourceSyncJobsOutput = {
    type = "structure",
    members = {
        history = {
            type = "list",
            member = M.DataSourceSyncJob,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDocumentsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "dataSourceIds",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListDocumentsOutput = {
    type = "structure",
    members = {
        documentDetailList = {
            type = "list",
            member = M.DocumentDetails,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        updatedEarlierThan = {
            type = "timestamp",
            traits = {
                http_query = "updatedEarlierThan",
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_query = "dataSourceId",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GroupSummary = {
    type = "structure",
    members = {
        groupName = {
            type = "string",
        },
    },
}

M.ListGroupsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.GroupSummary,
        },
    },
}

M.ListMessagesInput = {
    type = "structure",
    members = {
        conversationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.MessageType = {
    USER = "USER",
    SYSTEM = "SYSTEM",
}

M.Message = {
    type = "structure",
    members = {
        messageId = {
            type = "string",
        },
        body = {
            type = "string",
        },
        time = {
            type = "timestamp",
        },
        type = {
            type = "string",
        },
        attachments = {
            type = "list",
            member = M.AttachmentOutput,
        },
        sourceAttribution = {
            type = "list",
            member = M.SourceAttribution,
        },
        actionReview = M.ActionReview,
        actionExecution = M.ActionExecution,
    },
}

M.ListMessagesOutput = {
    type = "structure",
    members = {
        messages = {
            type = "list",
            member = M.Message,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPluginActionsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        pluginId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListPluginActionsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.ActionSummary,
        },
    },
}

M.ListPluginTypeActionsInput = {
    type = "structure",
    members = {
        pluginType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListPluginTypeActionsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.ActionSummary,
        },
    },
}

M.ListPluginTypeMetadataInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PluginTypeCategory = {
    CRM = "Customer relationship management (CRM)",
    PROJECT_MANAGEMENT = "Project management",
    COMMUNICATION = "Communication",
    PRODUCTIVITY = "Productivity",
    TICKETING_MANAGEMENT = "Ticketing and incident management",
}

M.PluginTypeMetadataSummary = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        category = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ListPluginTypeMetadataOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.PluginTypeMetadataSummary,
        },
    },
}

M.ListSubscriptionsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.Subscription = {
    type = "structure",
    members = {
        subscriptionId = {
            type = "string",
        },
        subscriptionArn = {
            type = "string",
        },
        principal = M.SubscriptionPrincipal,
        currentSubscription = M.SubscriptionDetails,
        nextSubscription = M.SubscriptionDetails,
    },
}

M.ListSubscriptionsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        subscriptions = {
            type = "list",
            member = M.Subscription,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceARN = {
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
            type = "list",
            member = M.Tag,
        },
    },
}

M.MessageUsefulnessReason = {
    NOT_FACTUALLY_CORRECT = "NOT_FACTUALLY_CORRECT",
    HARMFUL_OR_UNSAFE = "HARMFUL_OR_UNSAFE",
    INCORRECT_OR_MISSING_SOURCES = "INCORRECT_OR_MISSING_SOURCES",
    NOT_HELPFUL = "NOT_HELPFUL",
    FACTUALLY_CORRECT = "FACTUALLY_CORRECT",
    COMPLETE = "COMPLETE",
    RELEVANT_SOURCES = "RELEVANT_SOURCES",
    HELPFUL = "HELPFUL",
    NOT_BASED_ON_DOCUMENTS = "NOT_BASED_ON_DOCUMENTS",
    NOT_COMPLETE = "NOT_COMPLETE",
    NOT_CONCISE = "NOT_CONCISE",
    OTHER = "OTHER",
}

M.MessageUsefulness = {
    USEFUL = "USEFUL",
    NOT_USEFUL = "NOT_USEFUL",
}

M.MessageUsefulnessFeedback = {
    type = "structure",
    members = {
        usefulness = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
        comment = {
            type = "string",
        },
        submittedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.PutFeedbackInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
        conversationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageCopiedAt = {
            type = "timestamp",
        },
        messageUsefulness = M.MessageUsefulnessFeedback,
    },
}

M.PutFeedbackOutput = {
    type = "structure",
}

M.MemberGroup = {
    type = "structure",
    members = {
        groupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
    },
}

M.MemberUser = {
    type = "structure",
    members = {
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
    },
}

M.GroupMembers = {
    type = "structure",
    members = {
        memberGroups = {
            type = "list",
            member = M.MemberGroup,
        },
        memberUsers = {
            type = "list",
            member = M.MemberUser,
        },
        s3PathForGroupMembers = M.S3,
    },
}

M.PutGroupInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        groupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupMembers = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GroupMembers }),
        roleArn = {
            type = "string",
        },
    },
}

M.PutGroupOutput = {
    type = "structure",
}

M.ScoreConfidence = {
    VERY_HIGH = "VERY_HIGH",
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
    NOT_AVAILABLE = "NOT_AVAILABLE",
}

M.ScoreAttributes = {
    type = "structure",
    members = {
        scoreConfidence = {
            type = "string",
        },
    },
}

M.RelevantContent = {
    type = "structure",
    members = {
        content = {
            type = "string",
        },
        documentId = {
            type = "string",
        },
        documentTitle = {
            type = "string",
        },
        documentUri = {
            type = "string",
        },
        documentAttributes = {
            type = "list",
            member = M.DocumentAttribute,
        },
        scoreAttributes = M.ScoreAttributes,
    },
}

M.SearchRelevantContentOutput = {
    type = "structure",
    members = {
        relevantContent = {
            type = "list",
            member = M.RelevantContent,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartDataSourceSyncJobInput = {
    type = "structure",
    members = {
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartDataSourceSyncJobOutput = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
        },
    },
}

M.StopDataSourceSyncJobInput = {
    type = "structure",
    members = {
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        indexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopDataSourceSyncJobOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
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
        resourceARN = {
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
}

M.OrchestrationConfiguration = {
    type = "structure",
    members = {
        control = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateChatControlsConfigurationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        responseScope = {
            type = "string",
        },
        orchestrationConfiguration = M.OrchestrationConfiguration,
        blockedPhrasesConfigurationUpdate = M.BlockedPhrasesConfigurationUpdate,
        topicConfigurationsToCreateOrUpdate = {
            type = "list",
            member = M.TopicConfiguration,
        },
        topicConfigurationsToDelete = {
            type = "list",
            member = M.TopicConfiguration,
        },
        creatorModeConfiguration = M.CreatorModeConfiguration,
        hallucinationReductionConfiguration = M.HallucinationReductionConfiguration,
    },
}

M.UpdateChatControlsConfigurationOutput = {
    type = "structure",
}

M.UpdateChatResponseConfigurationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        chatResponseConfigurationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        responseConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.ResponseConfiguration,
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

M.UpdateChatResponseConfigurationOutput = {
    type = "structure",
}

M.UpdateSubscriptionInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSubscriptionOutput = {
    type = "structure",
    members = {
        subscriptionArn = {
            type = "string",
        },
        currentSubscription = M.SubscriptionDetails,
        nextSubscription = M.SubscriptionDetails,
    },
}

M.UpdateUserInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userAliasesToUpdate = {
            type = "list",
            member = M.UserAlias,
        },
        userAliasesToDelete = {
            type = "list",
            member = M.UserAlias,
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
    members = {
        userAliasesAdded = {
            type = "list",
            member = M.UserAlias,
        },
        userAliasesUpdated = {
            type = "list",
            member = M.UserAlias,
        },
        userAliasesDeleted = {
            type = "list",
            member = M.UserAlias,
        },
    },
}

M.AttributeFilter = {
    type = "structure",
    members = {
        andAllFilters = {
            type = "list",
            member = M.AttributeFilter,
        },
        orAllFilters = {
            type = "list",
            member = M.AttributeFilter,
        },
        notFilter = M.AttributeFilter,
        equalsTo = M.DocumentAttribute,
        containsAll = M.DocumentAttribute,
        containsAny = M.DocumentAttribute,
        greaterThan = M.DocumentAttribute,
        greaterThanOrEquals = M.DocumentAttribute,
        lessThan = M.DocumentAttribute,
        lessThanOrEquals = M.DocumentAttribute,
    },
}

M.ActionFilterConfiguration = {
    type = "structure",
    members = {
        documentAttributeFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AttributeFilter }),
    },
}

M.ChatSyncInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
        userGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "userGroups",
            },
        },
        userMessage = {
            type = "string",
        },
        attachments = {
            type = "list",
            member = M.AttachmentInput,
        },
        actionExecution = M.ActionExecution,
        authChallengeResponse = M.AuthChallengeResponse,
        conversationId = {
            type = "string",
        },
        parentMessageId = {
            type = "string",
        },
        attributeFilter = M.AttributeFilter,
        chatMode = {
            type = "string",
        },
        chatModeConfiguration = M.ChatModeConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.ConfigurationEvent = {
    type = "structure",
    members = {
        chatMode = {
            type = "string",
        },
        chatModeConfiguration = M.ChatModeConfiguration,
        attributeFilter = M.AttributeFilter,
    },
}

M.SearchRelevantContentInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContentSource }),
        attributeFilter = M.AttributeFilter,
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ActionConfiguration = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterConfiguration = M.ActionFilterConfiguration,
    },
}

M.ChatInputStream = {
    type = "union",
    members = {
        configurationEvent = M.ConfigurationEvent,
        textEvent = M.TextInputEvent,
        attachmentEvent = M.AttachmentInputEvent,
        actionExecutionEvent = M.ActionExecutionEvent,
        endOfInputEvent = M.EndOfInputEvent,
        authChallengeResponseEvent = M.AuthChallengeResponseEvent,
    },
}

M.ChatInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
        userGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "userGroups",
            },
        },
        conversationId = {
            type = "string",
            traits = {
                http_query = "conversationId",
            },
        },
        parentMessageId = {
            type = "string",
            traits = {
                http_query = "parentMessageId",
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
        inputStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ChatInputStream }),
    },
}

M.CreateDataAccessorInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionConfigurations = {
            type = "list",
            member = M.ActionConfiguration,
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
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authenticationDetail = M.DataAccessorAuthenticationDetail,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetDataAccessorOutput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        dataAccessorId = {
            type = "string",
        },
        dataAccessorArn = {
            type = "string",
        },
        applicationId = {
            type = "string",
        },
        idcApplicationArn = {
            type = "string",
        },
        principal = {
            type = "string",
        },
        actionConfigurations = {
            type = "list",
            member = M.ActionConfiguration,
        },
        authenticationDetail = M.DataAccessorAuthenticationDetail,
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.UpdateDataAccessorInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataAccessorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actionConfigurations = {
            type = "list",
            member = M.ActionConfiguration,
            traits = {
                required = true,
            },
        },
        authenticationDetail = M.DataAccessorAuthenticationDetail,
        displayName = {
            type = "string",
        },
    },
}

return M
