local M = {}

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

M.CardOutputSource = {
    APPROVED_SOURCES = "approved-sources",
    LLM = "llm",
}

M.TextInputCard = {
    type = "structure",
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
}

M.BatchCreateCategoryInputCategory = {
    type = "structure",
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
}

M.BatchDeleteCategoryInput = {
    type = "structure",
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
}

M.CategoryInput = {
    type = "structure",
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
}

M.ExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    WAITING = "WAITING",
    COMPLETED = "COMPLETED",
    ERROR = "ERROR",
}

M.Submission = {
    type = "structure",
    members = {
        value = {
            type = "document",
        },
        submissionId = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
        },
    },
}

M.CardStatus = {
    type = "structure",
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
            },
        },
    },
}

M.CreateQAppOutput = {
    type = "structure",
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
}

M.DeleteQAppInput = {
    type = "structure",
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
}

M.DescribeQAppPermissionsInput = {
    type = "structure",
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
}

M.DisassociateQAppFromUserInput = {
    type = "structure",
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
}

M.ExportQAppSessionDataInput = {
    type = "structure",
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
    members = {
        fileId = {
            type = "string",
        },
    },
}

M.LibraryItemMember = {
    type = "structure",
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
    members = {
        categories = {
            type = "list",
            member = M.Category,
        },
    },
}

M.ListLibraryItemsInput = {
    type = "structure",
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
    members = {
        userId = {
            type = "string",
        },
    },
}

M.QAppSessionData = {
    type = "structure",
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
        },
    },
}

M.ListQAppSessionDataOutput = {
    type = "structure",
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PermissionInput = {
    type = "structure",
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

M.UpdateLibraryItemInput = {
    type = "structure",
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
}

M.UpdateQAppOutput = {
    type = "structure",
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
