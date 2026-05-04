local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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

M.Action = {
    READ = "read",
    WRITE = "write",
}

M.CardType = {
    TEXT_INPUT = "text-input",
    Q_QUERY = "q-query",
    FILE_UPLOAD = "file-upload",
    Q_PLUGIN = "q-plugin",
    FORM_INPUT = "form-input",
}

M.FileUploadCard = {
    type = "structure",
    id = "FileUploadCard",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dependencies = {
            type = "list",
            member = { type = "string" },
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
        filename = {
            type = "string",
        },
        fileId = {
            type = "string",
        },
        allowOverride = {
            type = "boolean",
        },
    },
}

M.InputCardComputeMode = {
    APPEND = "append",
    REPLACE = "replace",
}

M.FormInputCardMetadata = {
    type = "structure",
    id = "FormInputCardMetadata",
    members = {
        schema = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.FormInputCard = {
    type = "structure",
    id = "FormInputCard",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dependencies = {
            type = "list",
            member = { type = "string" },
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
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FormInputCardMetadata }),
        computeMode = {
            type = "string",
        },
    },
}

M.PluginType = {
    SERVICE_NOW = "SERVICE_NOW",
    SALESFORCE = "SALESFORCE",
    JIRA = "JIRA",
    ZENDESK = "ZENDESK",
    CUSTOM = "CUSTOM",
    ASANA = "ASANA",
    ATLASSIAN_CONFLUENCE = "ATLASSIAN_CONFLUENCE",
    GOOGLE_CALENDAR = "GOOGLE_CALENDAR",
    JIRA_CLOUD = "JIRA_CLOUD",
    MICROSOFT_EXCHANGE = "MICROSOFT_EXCHANGE",
    MICROSOFT_TEAMS = "MICROSOFT_TEAMS",
    PAGERDUTY_ADVANCE = "PAGERDUTY_ADVANCE",
    SALESFORCE_CRM = "SALESFORCE_CRM",
    SERVICENOW_NOW_PLATFORM = "SERVICENOW_NOW_PLATFORM",
    SMARTSHEET = "SMARTSHEET",
    ZENDESK_SUITE = "ZENDESK_SUITE",
}

M.QPluginCard = {
    type = "structure",
    id = "QPluginCard",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dependencies = {
            type = "list",
            member = { type = "string" },
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
        prompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pluginType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pluginId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionIdentifier = {
            type = "string",
        },
    },
}

M.DocumentAttributeValue = {
    type = "union",
    id = "DocumentAttributeValue",
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
    id = "DocumentAttribute",
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

M.CardOutputSource = {
    APPROVED_SOURCES = "approved-sources",
    LLM = "llm",
}

M.TextInputCard = {
    type = "structure",
    id = "TextInputCard",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dependencies = {
            type = "list",
            member = { type = "string" },
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
        placeholder = {
            type = "string",
        },
        defaultValue = {
            type = "string",
        },
    },
}

M.FileUploadCardInput = {
    type = "structure",
    id = "FileUploadCardInput",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                default = "file-upload",
                required = true,
            },
        },
        filename = {
            type = "string",
        },
        fileId = {
            type = "string",
        },
        allowOverride = {
            type = "boolean",
        },
    },
}

M.FormInputCardInput = {
    type = "structure",
    id = "FormInputCardInput",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                default = "form-input",
                required = true,
            },
        },
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FormInputCardMetadata }),
        computeMode = {
            type = "string",
        },
    },
}

M.QPluginCardInput = {
    type = "structure",
    id = "QPluginCardInput",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                default = "q-plugin",
                required = true,
            },
        },
        prompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pluginId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionIdentifier = {
            type = "string",
        },
    },
}

M.TextInputCardInput = {
    type = "structure",
    id = "TextInputCardInput",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                default = "text-input",
                required = true,
            },
        },
        placeholder = {
            type = "string",
        },
        defaultValue = {
            type = "string",
        },
    },
}

M.AppRequiredCapability = {
    FILE_UPLOAD = "FileUpload",
    CREATOR_MODE = "CreatorMode",
    RETRIEVAL_MODE = "RetrievalMode",
    PLUGIN_MODE = "PluginMode",
}

M.AppStatus = {
    PUBLISHED = "PUBLISHED",
    DRAFT = "DRAFT",
    DELETED = "DELETED",
}

M.AssociateLibraryItemReviewInput = {
    type = "structure",
    id = "AssociateLibraryItemReviewInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        libraryItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateLibraryItemReviewOutput = {
    type = "structure",
    id = "AssociateLibraryItemReviewOutput",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
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
    id = "ServiceQuotaExceededException",
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
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
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

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
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

M.AssociateQAppWithUserInput = {
    type = "structure",
    id = "AssociateQAppWithUserInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateQAppWithUserOutput = {
    type = "structure",
    id = "AssociateQAppWithUserOutput",
}

M.BatchCreateCategoryInputCategory = {
    type = "structure",
    id = "BatchCreateCategoryInputCategory",
    members = {
        id = {
            type = "string",
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        color = {
            type = "string",
        },
    },
}

M.BatchCreateCategoryInput = {
    type = "structure",
    id = "BatchCreateCategoryInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        categories = {
            type = "list",
            member = M.BatchCreateCategoryInputCategory,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateCategoryOutput = {
    type = "structure",
    id = "BatchCreateCategoryOutput",
}

M.BatchDeleteCategoryInput = {
    type = "structure",
    id = "BatchDeleteCategoryInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        categories = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteCategoryOutput = {
    type = "structure",
    id = "BatchDeleteCategoryOutput",
}

M.CategoryInput = {
    type = "structure",
    id = "CategoryInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        color = {
            type = "string",
        },
    },
}

M.BatchUpdateCategoryInput = {
    type = "structure",
    id = "BatchUpdateCategoryInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        categories = {
            type = "list",
            member = M.CategoryInput,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateCategoryOutput = {
    type = "structure",
    id = "BatchUpdateCategoryOutput",
}

M.ExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    WAITING = "WAITING",
    COMPLETED = "COMPLETED",
    ERROR = "ERROR",
}

M.Submission = {
    type = "structure",
    id = "Submission",
    members = {
        value = {
            type = "document",
        },
        submissionId = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CardStatus = {
    type = "structure",
    id = "CardStatus",
    members = {
        currentState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currentValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        submissions = {
            type = "list",
            member = M.Submission,
        },
    },
}

M.SubmissionMutationKind = {
    edit = "edit",
    delete = "delete",
    add = "add",
}

M.SubmissionMutation = {
    type = "structure",
    id = "SubmissionMutation",
    members = {
        submissionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mutationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CardValue = {
    type = "structure",
    id = "CardValue",
    members = {
        cardId = {
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
        submissionMutation = M.SubmissionMutation,
    },
}

M.Category = {
    type = "structure",
    id = "Category",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        color = {
            type = "string",
        },
        appCount = {
            type = "integer",
        },
    },
}

M.ContentTooLargeException = {
    type = "structure",
    id = "ContentTooLargeException",
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

M.Sender = {
    USER = "USER",
    SYSTEM = "SYSTEM",
}

M.ConversationMessage = {
    type = "structure",
    id = "ConversationMessage",
    members = {
        body = {
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
    },
}

M.CreateLibraryItemInput = {
    type = "structure",
    id = "CreateLibraryItemInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        categories = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLibraryItemOutput = {
    type = "structure",
    id = "CreateLibraryItemOutput",
    members = {
        libraryItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        ratingCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        isVerified = {
            type = "boolean",
        },
    },
}

M.DocumentScope = {
    APPLICATION = "APPLICATION",
    SESSION = "SESSION",
}

M.CreatePresignedUrlInput = {
    type = "structure",
    id = "CreatePresignedUrlInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        cardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileContentsSha256 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
        },
    },
}

M.CreatePresignedUrlOutput = {
    type = "structure",
    id = "CreatePresignedUrlOutput",
    members = {
        fileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        presignedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        presignedUrlFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        presignedUrlExpiration = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateQAppOutput = {
    type = "structure",
    id = "CreateQAppOutput",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        initialPrompt = {
            type = "string",
        },
        appVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requiredCapabilities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteLibraryItemInput = {
    type = "structure",
    id = "DeleteLibraryItemInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        libraryItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLibraryItemOutput = {
    type = "structure",
    id = "DeleteLibraryItemOutput",
}

M.DeleteQAppInput = {
    type = "structure",
    id = "DeleteQAppInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteQAppOutput = {
    type = "structure",
    id = "DeleteQAppOutput",
}

M.DescribeQAppPermissionsInput = {
    type = "structure",
    id = "DescribeQAppPermissionsInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                http_query = "appId",
                required = true,
            },
        },
    },
}

M.UserType = {
    OWNER = "owner",
    USER = "user",
}

M.PrincipalOutput = {
    type = "structure",
    id = "PrincipalOutput",
    members = {
        userId = {
            type = "string",
        },
        userType = {
            type = "string",
        },
        email = {
            type = "string",
        },
    },
}

M.PermissionOutput = {
    type = "structure",
    id = "PermissionOutput",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrincipalOutput }),
    },
}

M.DescribeQAppPermissionsOutput = {
    type = "structure",
    id = "DescribeQAppPermissionsOutput",
    members = {
        resourceArn = {
            type = "string",
        },
        appId = {
            type = "string",
        },
        permissions = {
            type = "list",
            member = M.PermissionOutput,
        },
    },
}

M.DisassociateLibraryItemReviewInput = {
    type = "structure",
    id = "DisassociateLibraryItemReviewInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        libraryItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateLibraryItemReviewOutput = {
    type = "structure",
    id = "DisassociateLibraryItemReviewOutput",
}

M.DisassociateQAppFromUserInput = {
    type = "structure",
    id = "DisassociateQAppFromUserInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateQAppFromUserOutput = {
    type = "structure",
    id = "DisassociateQAppFromUserOutput",
}

M.ExportQAppSessionDataInput = {
    type = "structure",
    id = "ExportQAppSessionDataInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportQAppSessionDataOutput = {
    type = "structure",
    id = "ExportQAppSessionDataOutput",
    members = {
        csvFileLink = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLibraryItemInput = {
    type = "structure",
    id = "GetLibraryItemInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        libraryItemId = {
            type = "string",
            traits = {
                http_query = "libraryItemId",
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                http_query = "appId",
            },
        },
    },
}

M.GetLibraryItemOutput = {
    type = "structure",
    id = "GetLibraryItemOutput",
    members = {
        libraryItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        categories = {
            type = "list",
            member = M.Category,
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        ratingCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        isRatedByUser = {
            type = "boolean",
        },
        userCount = {
            type = "integer",
        },
        isVerified = {
            type = "boolean",
        },
    },
}

M.GetQAppInput = {
    type = "structure",
    id = "GetQAppInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                http_query = "appId",
                required = true,
            },
        },
        appVersion = {
            type = "integer",
            traits = {
                http_query = "appVersion",
            },
        },
    },
}

M.GetQAppSessionInput = {
    type = "structure",
    id = "GetQAppSessionInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
                required = true,
            },
        },
    },
}

M.GetQAppSessionOutput = {
    type = "structure",
    id = "GetQAppSessionOutput",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionName = {
            type = "string",
        },
        appVersion = {
            type = "integer",
        },
        latestPublishedAppVersion = {
            type = "integer",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cardStatus = {
            type = "map",
            key = { type = "string" },
            value = M.CardStatus,
            traits = {
                required = true,
            },
        },
        userIsHost = {
            type = "boolean",
        },
    },
}

M.GetQAppSessionMetadataInput = {
    type = "structure",
    id = "GetQAppSessionMetadataInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
                required = true,
            },
        },
    },
}

M.SessionSharingConfiguration = {
    type = "structure",
    id = "SessionSharingConfiguration",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        acceptResponses = {
            type = "boolean",
        },
        revealCards = {
            type = "boolean",
        },
    },
}

M.GetQAppSessionMetadataOutput = {
    type = "structure",
    id = "GetQAppSessionMetadataOutput",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionName = {
            type = "string",
        },
        sharingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionSharingConfiguration }),
        sessionOwner = {
            type = "boolean",
        },
    },
}

M.ImportDocumentInput = {
    type = "structure",
    id = "ImportDocumentInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        cardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileContentsBase64 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
        },
    },
}

M.ImportDocumentOutput = {
    type = "structure",
    id = "ImportDocumentOutput",
    members = {
        fileId = {
            type = "string",
        },
    },
}

M.LibraryItemMember = {
    type = "structure",
    id = "LibraryItemMember",
    members = {
        libraryItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        categories = {
            type = "list",
            member = M.Category,
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        ratingCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        isRatedByUser = {
            type = "boolean",
        },
        userCount = {
            type = "integer",
        },
        isVerified = {
            type = "boolean",
        },
    },
}

M.LibraryItemStatus = {
    PUBLISHED = "PUBLISHED",
    DISABLED = "DISABLED",
}

M.ListCategoriesInput = {
    type = "structure",
    id = "ListCategoriesInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
    },
}

M.ListCategoriesOutput = {
    type = "structure",
    id = "ListCategoriesOutput",
    members = {
        categories = {
            type = "list",
            member = M.Category,
        },
    },
}

M.ListLibraryItemsInput = {
    type = "structure",
    id = "ListLibraryItemsInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        categoryId = {
            type = "string",
            traits = {
                http_query = "categoryId",
            },
        },
    },
}

M.ListLibraryItemsOutput = {
    type = "structure",
    id = "ListLibraryItemsOutput",
    members = {
        libraryItems = {
            type = "list",
            member = M.LibraryItemMember,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListQAppsInput = {
    type = "structure",
    id = "ListQAppsInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
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

M.UserAppItem = {
    type = "structure",
    id = "UserAppItem",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        canEdit = {
            type = "boolean",
        },
        status = {
            type = "string",
        },
        isVerified = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListQAppsOutput = {
    type = "structure",
    id = "ListQAppsOutput",
    members = {
        apps = {
            type = "list",
            member = M.UserAppItem,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListQAppSessionDataInput = {
    type = "structure",
    id = "ListQAppSessionDataInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
                required = true,
            },
        },
    },
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        userId = {
            type = "string",
        },
    },
}

M.QAppSessionData = {
    type = "structure",
    id = "QAppSessionData",
    members = {
        cardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "document",
        },
        user = setmetatable({ traits = {
            required = true,
        } }, { __index = M.User }),
        submissionId = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListQAppSessionDataOutput = {
    type = "structure",
    id = "ListQAppSessionDataOutput",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionData = {
            type = "list",
            member = M.QAppSessionData,
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PermissionInput = {
    type = "structure",
    id = "PermissionInput",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PredictQAppInputOptions = {
    type = "union",
    id = "PredictQAppInputOptions",
    members = {
        conversation = {
            type = "list",
            member = M.ConversationMessage,
        },
        problemStatement = {
            type = "string",
        },
    },
}

M.PredictQAppInput = {
    type = "structure",
    id = "PredictQAppInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        options = M.PredictQAppInputOptions,
    },
}

M.StartQAppSessionInput = {
    type = "structure",
    id = "StartQAppSessionInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        initialValues = {
            type = "list",
            member = M.CardValue,
        },
        sessionId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartQAppSessionOutput = {
    type = "structure",
    id = "StartQAppSessionOutput",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopQAppSessionInput = {
    type = "structure",
    id = "StopQAppSessionInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopQAppSessionOutput = {
    type = "structure",
    id = "StopQAppSessionOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceARN = {
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

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateLibraryItemInput = {
    type = "structure",
    id = "UpdateLibraryItemInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        libraryItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        categories = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateLibraryItemOutput = {
    type = "structure",
    id = "UpdateLibraryItemOutput",
    members = {
        libraryItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        categories = {
            type = "list",
            member = M.Category,
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        ratingCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        isRatedByUser = {
            type = "boolean",
        },
        userCount = {
            type = "integer",
        },
        isVerified = {
            type = "boolean",
        },
    },
}

M.UpdateLibraryItemMetadataInput = {
    type = "structure",
    id = "UpdateLibraryItemMetadataInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        libraryItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isVerified = {
            type = "boolean",
        },
    },
}

M.UpdateLibraryItemMetadataOutput = {
    type = "structure",
    id = "UpdateLibraryItemMetadataOutput",
}

M.UpdateQAppOutput = {
    type = "structure",
    id = "UpdateQAppOutput",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        initialPrompt = {
            type = "string",
        },
        appVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requiredCapabilities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateQAppPermissionsInput = {
    type = "structure",
    id = "UpdateQAppPermissionsInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grantPermissions = {
            type = "list",
            member = M.PermissionInput,
        },
        revokePermissions = {
            type = "list",
            member = M.PermissionInput,
        },
    },
}

M.UpdateQAppPermissionsOutput = {
    type = "structure",
    id = "UpdateQAppPermissionsOutput",
    members = {
        resourceArn = {
            type = "string",
        },
        appId = {
            type = "string",
        },
        permissions = {
            type = "list",
            member = M.PermissionOutput,
        },
    },
}

M.UpdateQAppSessionInput = {
    type = "structure",
    id = "UpdateQAppSessionInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = M.CardValue,
        },
    },
}

M.UpdateQAppSessionOutput = {
    type = "structure",
    id = "UpdateQAppSessionOutput",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateQAppSessionMetadataInput = {
    type = "structure",
    id = "UpdateQAppSessionMetadataInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionName = {
            type = "string",
        },
        sharingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionSharingConfiguration }),
    },
}

M.UpdateQAppSessionMetadataOutput = {
    type = "structure",
    id = "UpdateQAppSessionMetadataOutput",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionName = {
            type = "string",
        },
        sharingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionSharingConfiguration }),
    },
}

M.AttributeFilter = {
    type = "structure",
    id = "AttributeFilter",
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

M.QQueryCard = {
    type = "structure",
    id = "QQueryCard",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dependencies = {
            type = "list",
            member = { type = "string" },
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
        prompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributeFilter = M.AttributeFilter,
        memoryReferences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.QQueryCardInput = {
    type = "structure",
    id = "QQueryCardInput",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                default = "q-query",
                required = true,
            },
        },
        prompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputSource = {
            type = "string",
            traits = {
                default = "approved-sources",
            },
        },
        attributeFilter = M.AttributeFilter,
    },
}

M.Card = {
    type = "union",
    id = "Card",
    members = {
        textInput = M.TextInputCard,
        qQuery = M.QQueryCard,
        qPlugin = M.QPluginCard,
        fileUpload = M.FileUploadCard,
        formInput = M.FormInputCard,
    },
}

M.CardInput = {
    type = "union",
    id = "CardInput",
    members = {
        textInput = M.TextInputCardInput,
        qQuery = M.QQueryCardInput,
        qPlugin = M.QPluginCardInput,
        fileUpload = M.FileUploadCardInput,
        formInput = M.FormInputCardInput,
    },
}

M.AppDefinition = {
    type = "structure",
    id = "AppDefinition",
    members = {
        appDefinitionVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cards = {
            type = "list",
            member = M.Card,
            traits = {
                required = true,
            },
        },
        canEdit = {
            type = "boolean",
        },
    },
}

M.AppDefinitionInput = {
    type = "structure",
    id = "AppDefinitionInput",
    members = {
        cards = {
            type = "list",
            member = M.CardInput,
            traits = {
                required = true,
            },
        },
        initialPrompt = {
            type = "string",
        },
    },
}

M.CreateQAppInput = {
    type = "structure",
    id = "CreateQAppInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        appDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppDefinitionInput }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetQAppOutput = {
    type = "structure",
    id = "GetQAppOutput",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        initialPrompt = {
            type = "string",
        },
        appVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requiredCapabilities = {
            type = "list",
            member = { type = "string" },
        },
        appDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppDefinition }),
    },
}

M.PredictAppDefinition = {
    type = "structure",
    id = "PredictAppDefinition",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        appDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppDefinitionInput }),
    },
}

M.UpdateQAppInput = {
    type = "structure",
    id = "UpdateQAppInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_header = "instance-id",
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
        },
        description = {
            type = "string",
        },
        appDefinition = M.AppDefinitionInput,
    },
}

M.PredictQAppOutput = {
    type = "structure",
    id = "PredictQAppOutput",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PredictAppDefinition }),
        problemStatement = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
