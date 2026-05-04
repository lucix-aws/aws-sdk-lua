local M = {}

M.AccessControlConfigurationSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessControlListConfiguration = {
    type = "structure",
    members = {
        KeyPath = {
            type = "string",
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

M.AclConfiguration = {
    type = "structure",
    members = {
        AllowedGroupsColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HighlightType = {
    STANDARD = "STANDARD",
    THESAURUS_SYNONYM = "THESAURUS_SYNONYM",
}

M.Highlight = {
    type = "structure",
    members = {
        BeginOffset = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EndOffset = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TopAnswer = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Type = {
            type = "string",
        },
    },
}

M.TextWithHighlights = {
    type = "structure",
    members = {
        Text = {
            type = "string",
        },
        Highlights = {
            type = "list",
            member = M.Highlight,
        },
    },
}

M.AdditionalResultAttributeValue = {
    type = "structure",
    members = {
        TextWithHighlightsValue = M.TextWithHighlights,
    },
}

M.AdditionalResultAttributeValueType = {
    TEXT_WITH_HIGHLIGHTS_VALUE = "TEXT_WITH_HIGHLIGHTS_VALUE",
}

M.AdditionalResultAttribute = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AdditionalResultAttributeValue }),
    },
}

M.DataSourceToIndexFieldMapping = {
    type = "structure",
    members = {
        DataSourceFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DateFieldFormat = {
            type = "string",
        },
        IndexFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AlfrescoEntity = {
    wiki = "wiki",
    blog = "blog",
    documentLibrary = "documentLibrary",
}

M.S3Path = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceVpcConfiguration = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AlfrescoConfiguration = {
    type = "structure",
    members = {
        SiteUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SiteId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SslCertificateS3Path = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Path }),
        CrawlSystemFolders = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlComments = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EntityFilter = {
            type = "list",
            member = { type = "string" },
        },
        DocumentLibraryFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        BlogFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        WikiFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        VpcConfiguration = M.DataSourceVpcConfiguration,
    },
}

M.EntityType = {
    USER = "USER",
    GROUP = "GROUP",
}

M.EntityConfiguration = {
    type = "structure",
    members = {
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateEntitiesToExperienceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityList = {
            type = "list",
            member = M.EntityConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.FailedEntity = {
    type = "structure",
    members = {
        EntityId = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.AssociateEntitiesToExperienceOutput = {
    type = "structure",
    members = {
        FailedEntityList = {
            type = "list",
            member = M.FailedEntity,
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

M.ResourceAlreadyExistException = {
    type = "structure",
    error = "client",
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Persona = {
    OWNER = "OWNER",
    VIEWER = "VIEWER",
}

M.EntityPersonaConfiguration = {
    type = "structure",
    members = {
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Persona = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatePersonasToEntitiesInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Personas = {
            type = "list",
            member = M.EntityPersonaConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatePersonasToEntitiesOutput = {
    type = "structure",
    members = {
        FailedEntityList = {
            type = "list",
            member = M.FailedEntity,
        },
    },
}

M.DocumentAttributeValue = {
    type = "structure",
    members = {
        StringValue = {
            type = "string",
        },
        StringListValue = {
            type = "list",
            member = { type = "string" },
        },
        LongValue = {
            type = "long",
        },
        DateValue = {
            type = "timestamp",
        },
    },
}

M.DocumentAttribute = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentAttributeValue }),
    },
}

M.AttributeSuggestionsMode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.SuggestableConfig = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
        },
        Suggestable = {
            type = "boolean",
        },
    },
}

M.AttributeSuggestionsDescribeConfig = {
    type = "structure",
    members = {
        SuggestableConfigList = {
            type = "list",
            member = M.SuggestableConfig,
        },
        AttributeSuggestionsMode = {
            type = "string",
        },
    },
}

M.DataSourceGroup = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserContext = {
    type = "structure",
    members = {
        Token = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        Groups = {
            type = "list",
            member = { type = "string" },
        },
        DataSourceGroups = {
            type = "list",
            member = M.DataSourceGroup,
        },
    },
}

M.AttributeSuggestionsUpdateConfig = {
    type = "structure",
    members = {
        SuggestableConfigList = {
            type = "list",
            member = M.SuggestableConfig,
        },
        AttributeSuggestionsMode = {
            type = "string",
        },
    },
}

M.BasicAuthenticationConfiguration = {
    type = "structure",
    members = {
        Host = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Credentials = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthenticationConfiguration = {
    type = "structure",
    members = {
        BasicAuthentication = {
            type = "list",
            member = M.BasicAuthenticationConfiguration,
        },
    },
}

M.DataSourceSyncJobMetricTarget = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceSyncJobId = {
            type = "string",
        },
    },
}

M.BatchDeleteDocumentInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentIdList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        DataSourceSyncJobMetricTarget = M.DataSourceSyncJobMetricTarget,
    },
}

M.ErrorCode = {
    INTERNAL_ERROR = "InternalError",
    INVALID_REQUEST = "InvalidRequest",
}

M.BatchDeleteDocumentResponseFailedDocument = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchDeleteDocumentOutput = {
    type = "structure",
    members = {
        FailedDocuments = {
            type = "list",
            member = M.BatchDeleteDocumentResponseFailedDocument,
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

M.BatchDeleteFeaturedResultsSetInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeaturedResultsSetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteFeaturedResultsSetError = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteFeaturedResultsSetOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member = M.BatchDeleteFeaturedResultsSetError,
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentInfo = {
    type = "structure",
    members = {
        DocumentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member = M.DocumentAttribute,
        },
    },
}

M.BatchGetDocumentStatusInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentInfoList = {
            type = "list",
            member = M.DocumentInfo,
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentStatus = {
    NOT_FOUND = "NOT_FOUND",
    PROCESSING = "PROCESSING",
    INDEXED = "INDEXED",
    UPDATED = "UPDATED",
    FAILED = "FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.Status = {
    type = "structure",
    members = {
        DocumentId = {
            type = "string",
        },
        DocumentStatus = {
            type = "string",
        },
        FailureCode = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.BatchGetDocumentStatusResponseError = {
    type = "structure",
    members = {
        DocumentId = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchGetDocumentStatusOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member = M.BatchGetDocumentStatusResponseError,
        },
        DocumentStatusList = {
            type = "list",
            member = M.Status,
        },
    },
}

M.ConditionOperator = {
    GreaterThan = "GreaterThan",
    GreaterThanOrEquals = "GreaterThanOrEquals",
    LessThan = "LessThan",
    LessThanOrEquals = "LessThanOrEquals",
    Equals = "Equals",
    NotEquals = "NotEquals",
    Contains = "Contains",
    NotContains = "NotContains",
    Exists = "Exists",
    NotExists = "NotExists",
    BeginsWith = "BeginsWith",
}

M.DocumentAttributeCondition = {
    type = "structure",
    members = {
        ConditionDocumentAttributeKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConditionOnValue = M.DocumentAttributeValue,
    },
}

M.DocumentAttributeTarget = {
    type = "structure",
    members = {
        TargetDocumentAttributeKey = {
            type = "string",
        },
        TargetDocumentAttributeValueDeletion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        TargetDocumentAttributeValue = M.DocumentAttributeValue,
    },
}

M.InlineCustomDocumentEnrichmentConfiguration = {
    type = "structure",
    members = {
        Condition = M.DocumentAttributeCondition,
        Target = M.DocumentAttributeTarget,
        DocumentContentDeletion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.HookConfiguration = {
    type = "structure",
    members = {
        InvocationCondition = M.DocumentAttributeCondition,
        LambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomDocumentEnrichmentConfiguration = {
    type = "structure",
    members = {
        InlineConfigurations = {
            type = "list",
            member = M.InlineCustomDocumentEnrichmentConfiguration,
        },
        PreExtractionHookConfiguration = M.HookConfiguration,
        PostExtractionHookConfiguration = M.HookConfiguration,
        RoleArn = {
            type = "string",
        },
    },
}

M.ReadAccessType = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.PrincipalType = {
    USER = "USER",
    GROUP = "GROUP",
}

M.Principal = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Access = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
        },
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

M.HierarchicalPrincipal = {
    type = "structure",
    members = {
        PrincipalList = {
            type = "list",
            member = M.Principal,
            traits = {
                required = true,
            },
        },
    },
}

M.Document = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
        },
        Blob = {
            type = "blob",
        },
        S3Path = M.S3Path,
        Attributes = {
            type = "list",
            member = M.DocumentAttribute,
        },
        AccessControlList = {
            type = "list",
            member = M.Principal,
        },
        HierarchicalAccessControlList = {
            type = "list",
            member = M.HierarchicalPrincipal,
        },
        ContentType = {
            type = "string",
        },
        AccessControlConfigurationId = {
            type = "string",
        },
    },
}

M.BatchPutDocumentInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        Documents = {
            type = "list",
            member = M.Document,
            traits = {
                required = true,
            },
        },
        CustomDocumentEnrichmentConfiguration = M.CustomDocumentEnrichmentConfiguration,
    },
}

M.BatchPutDocumentResponseFailedDocument = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchPutDocumentOutput = {
    type = "structure",
    members = {
        FailedDocuments = {
            type = "list",
            member = M.BatchPutDocumentResponseFailedDocument,
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

M.ClearQuerySuggestionsInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClearQuerySuggestionsOutput = {
    type = "structure",
}

M.CreateAccessControlConfigurationInput = {
    type = "structure",
    members = {
        IndexId = {
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
        Description = {
            type = "string",
        },
        AccessControlList = {
            type = "list",
            member = M.Principal,
        },
        HierarchicalAccessControlList = {
            type = "list",
            member = M.HierarchicalPrincipal,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateAccessControlConfigurationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BoxConfiguration = {
    type = "structure",
    members = {
        EnterpriseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseChangeLog = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlComments = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlTasks = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlWebLinks = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        FileFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        TaskFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        CommentFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        WebLinkFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        VpcConfiguration = M.DataSourceVpcConfiguration,
    },
}

M.ConfluenceAttachmentFieldName = {
    AUTHOR = "AUTHOR",
    CONTENT_TYPE = "CONTENT_TYPE",
    CREATED_DATE = "CREATED_DATE",
    DISPLAY_URL = "DISPLAY_URL",
    FILE_SIZE = "FILE_SIZE",
    ITEM_TYPE = "ITEM_TYPE",
    PARENT_ID = "PARENT_ID",
    SPACE_KEY = "SPACE_KEY",
    SPACE_NAME = "SPACE_NAME",
    URL = "URL",
    VERSION = "VERSION",
}

M.ConfluenceAttachmentToIndexFieldMapping = {
    type = "structure",
    members = {
        DataSourceFieldName = {
            type = "string",
        },
        DateFieldFormat = {
            type = "string",
        },
        IndexFieldName = {
            type = "string",
        },
    },
}

M.ConfluenceAttachmentConfiguration = {
    type = "structure",
    members = {
        CrawlAttachments = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AttachmentFieldMappings = {
            type = "list",
            member = M.ConfluenceAttachmentToIndexFieldMapping,
        },
    },
}

M.ConfluenceAuthenticationType = {
    HTTP_BASIC = "HTTP_BASIC",
    PAT = "PAT",
}

M.ConfluenceBlogFieldName = {
    AUTHOR = "AUTHOR",
    DISPLAY_URL = "DISPLAY_URL",
    ITEM_TYPE = "ITEM_TYPE",
    LABELS = "LABELS",
    PUBLISH_DATE = "PUBLISH_DATE",
    SPACE_KEY = "SPACE_KEY",
    SPACE_NAME = "SPACE_NAME",
    URL = "URL",
    VERSION = "VERSION",
}

M.ConfluenceBlogToIndexFieldMapping = {
    type = "structure",
    members = {
        DataSourceFieldName = {
            type = "string",
        },
        DateFieldFormat = {
            type = "string",
        },
        IndexFieldName = {
            type = "string",
        },
    },
}

M.ConfluenceBlogConfiguration = {
    type = "structure",
    members = {
        BlogFieldMappings = {
            type = "list",
            member = M.ConfluenceBlogToIndexFieldMapping,
        },
    },
}

M.ConfluencePageFieldName = {
    AUTHOR = "AUTHOR",
    CONTENT_STATUS = "CONTENT_STATUS",
    CREATED_DATE = "CREATED_DATE",
    DISPLAY_URL = "DISPLAY_URL",
    ITEM_TYPE = "ITEM_TYPE",
    LABELS = "LABELS",
    MODIFIED_DATE = "MODIFIED_DATE",
    PARENT_ID = "PARENT_ID",
    SPACE_KEY = "SPACE_KEY",
    SPACE_NAME = "SPACE_NAME",
    URL = "URL",
    VERSION = "VERSION",
}

M.ConfluencePageToIndexFieldMapping = {
    type = "structure",
    members = {
        DataSourceFieldName = {
            type = "string",
        },
        DateFieldFormat = {
            type = "string",
        },
        IndexFieldName = {
            type = "string",
        },
    },
}

M.ConfluencePageConfiguration = {
    type = "structure",
    members = {
        PageFieldMappings = {
            type = "list",
            member = M.ConfluencePageToIndexFieldMapping,
        },
    },
}

M.ProxyConfiguration = {
    type = "structure",
    members = {
        Host = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Credentials = {
            type = "string",
        },
    },
}

M.ConfluenceSpaceFieldName = {
    DISPLAY_URL = "DISPLAY_URL",
    ITEM_TYPE = "ITEM_TYPE",
    SPACE_KEY = "SPACE_KEY",
    URL = "URL",
}

M.ConfluenceSpaceToIndexFieldMapping = {
    type = "structure",
    members = {
        DataSourceFieldName = {
            type = "string",
        },
        DateFieldFormat = {
            type = "string",
        },
        IndexFieldName = {
            type = "string",
        },
    },
}

M.ConfluenceSpaceConfiguration = {
    type = "structure",
    members = {
        CrawlPersonalSpaces = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlArchivedSpaces = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeSpaces = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeSpaces = {
            type = "list",
            member = { type = "string" },
        },
        SpaceFieldMappings = {
            type = "list",
            member = M.ConfluenceSpaceToIndexFieldMapping,
        },
    },
}

M.ConfluenceVersion = {
    CLOUD = "CLOUD",
    SERVER = "SERVER",
}

M.ConfluenceConfiguration = {
    type = "structure",
    members = {
        ServerUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpaceConfiguration = M.ConfluenceSpaceConfiguration,
        PageConfiguration = M.ConfluencePageConfiguration,
        BlogConfiguration = M.ConfluenceBlogConfiguration,
        AttachmentConfiguration = M.ConfluenceAttachmentConfiguration,
        VpcConfiguration = M.DataSourceVpcConfiguration,
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ProxyConfiguration = M.ProxyConfiguration,
        AuthenticationType = {
            type = "string",
        },
    },
}

M.ColumnConfiguration = {
    type = "structure",
    members = {
        DocumentIdColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentDataColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentTitleColumnName = {
            type = "string",
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        ChangeDetectingColumns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionConfiguration = {
    type = "structure",
    members = {
        DatabaseHost = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabasePort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatabaseEngineType = {
    RDS_AURORA_MYSQL = "RDS_AURORA_MYSQL",
    RDS_AURORA_POSTGRESQL = "RDS_AURORA_POSTGRESQL",
    RDS_MYSQL = "RDS_MYSQL",
    RDS_POSTGRESQL = "RDS_POSTGRESQL",
}

M.QueryIdentifiersEnclosingOption = {
    DOUBLE_QUOTES = "DOUBLE_QUOTES",
    NONE = "NONE",
}

M.SqlConfiguration = {
    type = "structure",
    members = {
        QueryIdentifiersEnclosingOption = {
            type = "string",
        },
    },
}

M.DatabaseConfiguration = {
    type = "structure",
    members = {
        DatabaseEngineType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectionConfiguration }),
        VpcConfiguration = M.DataSourceVpcConfiguration,
        ColumnConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnConfiguration }),
        AclConfiguration = M.AclConfiguration,
        SqlConfiguration = M.SqlConfiguration,
    },
}

M.FsxFileSystemType = {
    WINDOWS = "WINDOWS",
}

M.FsxConfiguration = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceVpcConfiguration }),
        SecretArn = {
            type = "string",
        },
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
    },
}

M.GitHubDocumentCrawlProperties = {
    type = "structure",
    members = {
        CrawlRepositoryDocuments = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlIssue = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlIssueComment = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlIssueCommentAttachment = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlPullRequest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlPullRequestComment = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlPullRequestCommentAttachment = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.OnPremiseConfiguration = {
    type = "structure",
    members = {
        HostUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SslCertificateS3Path = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Path }),
    },
}

M.SaaSConfiguration = {
    type = "structure",
    members = {
        OrganizationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Type = {
    SAAS = "SAAS",
    ON_PREMISE = "ON_PREMISE",
}

M.GitHubConfiguration = {
    type = "structure",
    members = {
        SaaSConfiguration = M.SaaSConfiguration,
        OnPremiseConfiguration = M.OnPremiseConfiguration,
        Type = {
            type = "string",
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseChangeLog = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        GitHubDocumentCrawlProperties = M.GitHubDocumentCrawlProperties,
        RepositoryFilter = {
            type = "list",
            member = { type = "string" },
        },
        InclusionFolderNamePatterns = {
            type = "list",
            member = { type = "string" },
        },
        InclusionFileTypePatterns = {
            type = "list",
            member = { type = "string" },
        },
        InclusionFileNamePatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionFolderNamePatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionFileTypePatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionFileNamePatterns = {
            type = "list",
            member = { type = "string" },
        },
        VpcConfiguration = M.DataSourceVpcConfiguration,
        GitHubRepositoryConfigurationFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        GitHubCommitConfigurationFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        GitHubIssueDocumentConfigurationFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        GitHubIssueCommentConfigurationFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        GitHubIssueAttachmentConfigurationFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        GitHubPullRequestCommentConfigurationFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        GitHubPullRequestDocumentConfigurationFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        GitHubPullRequestDocumentAttachmentConfigurationFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
    },
}

M.GoogleDriveConfiguration = {
    type = "structure",
    members = {
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        ExcludeMimeTypes = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeUserAccounts = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeSharedDrives = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.IssueSubEntity = {
    COMMENTS = "COMMENTS",
    ATTACHMENTS = "ATTACHMENTS",
    WORKLOGS = "WORKLOGS",
}

M.JiraConfiguration = {
    type = "structure",
    members = {
        JiraAccountUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseChangeLog = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Project = {
            type = "list",
            member = { type = "string" },
        },
        IssueType = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "list",
            member = { type = "string" },
        },
        IssueSubEntityFilter = {
            type = "list",
            member = { type = "string" },
        },
        AttachmentFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        CommentFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        IssueFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        ProjectFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        WorkLogFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        VpcConfiguration = M.DataSourceVpcConfiguration,
    },
}

M.OneDriveUsers = {
    type = "structure",
    members = {
        OneDriveUserList = {
            type = "list",
            member = { type = "string" },
        },
        OneDriveUserS3Path = M.S3Path,
    },
}

M.OneDriveConfiguration = {
    type = "structure",
    members = {
        TenantDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OneDriveUsers = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OneDriveUsers }),
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        DisableLocalGroups = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.QuipConfiguration = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CrawlFileComments = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlChatRooms = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlAttachments = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        FolderIds = {
            type = "list",
            member = { type = "string" },
        },
        ThreadFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        MessageFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        AttachmentFieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        VpcConfiguration = M.DataSourceVpcConfiguration,
    },
}

M.DocumentsMetadataConfiguration = {
    type = "structure",
    members = {
        S3Prefix = {
            type = "string",
        },
    },
}

M.S3DataSourceConfiguration = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InclusionPrefixes = {
            type = "list",
            member = { type = "string" },
        },
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        DocumentsMetadataConfiguration = M.DocumentsMetadataConfiguration,
        AccessControlListConfiguration = M.AccessControlListConfiguration,
    },
}

M.SalesforceChatterFeedIncludeFilterType = {
    ACTIVE_USER = "ACTIVE_USER",
    STANDARD_USER = "STANDARD_USER",
}

M.SalesforceChatterFeedConfiguration = {
    type = "structure",
    members = {
        DocumentDataFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentTitleFieldName = {
            type = "string",
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        IncludeFilterTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SalesforceCustomKnowledgeArticleTypeConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentDataFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentTitleFieldName = {
            type = "string",
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
    },
}

M.SalesforceKnowledgeArticleState = {
    DRAFT = "DRAFT",
    PUBLISHED = "PUBLISHED",
    ARCHIVED = "ARCHIVED",
}

M.SalesforceStandardKnowledgeArticleTypeConfiguration = {
    type = "structure",
    members = {
        DocumentDataFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentTitleFieldName = {
            type = "string",
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
    },
}

M.SalesforceKnowledgeArticleConfiguration = {
    type = "structure",
    members = {
        IncludedStates = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StandardKnowledgeArticleTypeConfiguration = M.SalesforceStandardKnowledgeArticleTypeConfiguration,
        CustomKnowledgeArticleTypeConfigurations = {
            type = "list",
            member = M.SalesforceCustomKnowledgeArticleTypeConfiguration,
        },
    },
}

M.SalesforceStandardObjectAttachmentConfiguration = {
    type = "structure",
    members = {
        DocumentTitleFieldName = {
            type = "string",
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
    },
}

M.SalesforceStandardObjectName = {
    ACCOUNT = "ACCOUNT",
    CAMPAIGN = "CAMPAIGN",
    CASE = "CASE",
    CONTACT = "CONTACT",
    CONTRACT = "CONTRACT",
    DOCUMENT = "DOCUMENT",
    GROUP = "GROUP",
    IDEA = "IDEA",
    LEAD = "LEAD",
    OPPORTUNITY = "OPPORTUNITY",
    PARTNER = "PARTNER",
    PRICEBOOK = "PRICEBOOK",
    PRODUCT = "PRODUCT",
    PROFILE = "PROFILE",
    SOLUTION = "SOLUTION",
    TASK = "TASK",
    USER = "USER",
}

M.SalesforceStandardObjectConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentDataFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentTitleFieldName = {
            type = "string",
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
    },
}

M.SalesforceConfiguration = {
    type = "structure",
    members = {
        ServerUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StandardObjectConfigurations = {
            type = "list",
            member = M.SalesforceStandardObjectConfiguration,
        },
        KnowledgeArticleConfiguration = M.SalesforceKnowledgeArticleConfiguration,
        ChatterFeedConfiguration = M.SalesforceChatterFeedConfiguration,
        CrawlAttachments = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        StandardObjectAttachmentConfiguration = M.SalesforceStandardObjectAttachmentConfiguration,
        IncludeAttachmentFilePatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeAttachmentFilePatterns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ServiceNowAuthenticationType = {
    HTTP_BASIC = "HTTP_BASIC",
    OAUTH2 = "OAUTH2",
}

M.ServiceNowKnowledgeArticleConfiguration = {
    type = "structure",
    members = {
        CrawlAttachments = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeAttachmentFilePatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeAttachmentFilePatterns = {
            type = "list",
            member = { type = "string" },
        },
        DocumentDataFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentTitleFieldName = {
            type = "string",
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        FilterQuery = {
            type = "string",
        },
    },
}

M.ServiceNowServiceCatalogConfiguration = {
    type = "structure",
    members = {
        CrawlAttachments = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeAttachmentFilePatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeAttachmentFilePatterns = {
            type = "list",
            member = { type = "string" },
        },
        DocumentDataFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentTitleFieldName = {
            type = "string",
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
    },
}

M.ServiceNowBuildVersionType = {
    LONDON = "LONDON",
    OTHERS = "OTHERS",
}

M.ServiceNowConfiguration = {
    type = "structure",
    members = {
        HostUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceNowBuildVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KnowledgeArticleConfiguration = M.ServiceNowKnowledgeArticleConfiguration,
        ServiceCatalogConfiguration = M.ServiceNowServiceCatalogConfiguration,
        AuthenticationType = {
            type = "string",
        },
    },
}

M.SharePointOnlineAuthenticationType = {
    HTTP_BASIC = "HTTP_BASIC",
    OAUTH2 = "OAUTH2",
}

M.SharePointVersion = {
    SHAREPOINT_2013 = "SHAREPOINT_2013",
    SHAREPOINT_2016 = "SHAREPOINT_2016",
    SHAREPOINT_ONLINE = "SHAREPOINT_ONLINE",
    SHAREPOINT_2019 = "SHAREPOINT_2019",
}

M.SharePointConfiguration = {
    type = "structure",
    members = {
        SharePointVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Urls = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CrawlAttachments = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        UseChangeLog = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        VpcConfiguration = M.DataSourceVpcConfiguration,
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
        DocumentTitleFieldName = {
            type = "string",
        },
        DisableLocalGroups = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SslCertificateS3Path = M.S3Path,
        AuthenticationType = {
            type = "string",
        },
        ProxyConfiguration = M.ProxyConfiguration,
    },
}

M.SlackEntity = {
    PUBLIC_CHANNEL = "PUBLIC_CHANNEL",
    PRIVATE_CHANNEL = "PRIVATE_CHANNEL",
    GROUP_MESSAGE = "GROUP_MESSAGE",
    DIRECT_MESSAGE = "DIRECT_MESSAGE",
}

M.SlackConfiguration = {
    type = "structure",
    members = {
        TeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfiguration = M.DataSourceVpcConfiguration,
        SlackEntityList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        UseChangeLog = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CrawlBotMessage = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExcludeArchived = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SinceCrawlDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LookBackPeriod = {
            type = "integer",
        },
        PrivateChannelFilter = {
            type = "list",
            member = { type = "string" },
        },
        PublicChannelFilter = {
            type = "list",
            member = { type = "string" },
        },
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
    },
}

M.TemplateConfiguration = {
    type = "structure",
    members = {
        Template = {
            type = "document",
        },
    },
}

M.WebCrawlerMode = {
    HOST_ONLY = "HOST_ONLY",
    SUBDOMAINS = "SUBDOMAINS",
    EVERYTHING = "EVERYTHING",
}

M.SeedUrlConfiguration = {
    type = "structure",
    members = {
        SeedUrls = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        WebCrawlerMode = {
            type = "string",
        },
    },
}

M.SiteMapsConfiguration = {
    type = "structure",
    members = {
        SiteMaps = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Urls = {
    type = "structure",
    members = {
        SeedUrlConfiguration = M.SeedUrlConfiguration,
        SiteMapsConfiguration = M.SiteMapsConfiguration,
    },
}

M.WebCrawlerConfiguration = {
    type = "structure",
    members = {
        Urls = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Urls }),
        CrawlDepth = {
            type = "integer",
        },
        MaxLinksPerPage = {
            type = "integer",
        },
        MaxContentSizePerPageInMegaBytes = {
            type = "float",
        },
        MaxUrlsPerMinuteCrawlRate = {
            type = "integer",
        },
        UrlInclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        UrlExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ProxyConfiguration = M.ProxyConfiguration,
        AuthenticationConfiguration = M.AuthenticationConfiguration,
    },
}

M.WorkDocsConfiguration = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CrawlComments = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        UseChangeLog = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        InclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        ExclusionPatterns = {
            type = "list",
            member = { type = "string" },
        },
        FieldMappings = {
            type = "list",
            member = M.DataSourceToIndexFieldMapping,
        },
    },
}

M.DataSourceConfiguration = {
    type = "structure",
    members = {
        S3Configuration = M.S3DataSourceConfiguration,
        SharePointConfiguration = M.SharePointConfiguration,
        DatabaseConfiguration = M.DatabaseConfiguration,
        SalesforceConfiguration = M.SalesforceConfiguration,
        OneDriveConfiguration = M.OneDriveConfiguration,
        ServiceNowConfiguration = M.ServiceNowConfiguration,
        ConfluenceConfiguration = M.ConfluenceConfiguration,
        GoogleDriveConfiguration = M.GoogleDriveConfiguration,
        WebCrawlerConfiguration = M.WebCrawlerConfiguration,
        WorkDocsConfiguration = M.WorkDocsConfiguration,
        FsxConfiguration = M.FsxConfiguration,
        SlackConfiguration = M.SlackConfiguration,
        BoxConfiguration = M.BoxConfiguration,
        QuipConfiguration = M.QuipConfiguration,
        JiraConfiguration = M.JiraConfiguration,
        GitHubConfiguration = M.GitHubConfiguration,
        AlfrescoConfiguration = M.AlfrescoConfiguration,
        TemplateConfiguration = M.TemplateConfiguration,
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceType = {
    S3 = "S3",
    SHAREPOINT = "SHAREPOINT",
    DATABASE = "DATABASE",
    SALESFORCE = "SALESFORCE",
    ONEDRIVE = "ONEDRIVE",
    SERVICENOW = "SERVICENOW",
    CUSTOM = "CUSTOM",
    CONFLUENCE = "CONFLUENCE",
    GOOGLEDRIVE = "GOOGLEDRIVE",
    WEBCRAWLER = "WEBCRAWLER",
    WORKDOCS = "WORKDOCS",
    FSX = "FSX",
    SLACK = "SLACK",
    BOX = "BOX",
    QUIP = "QUIP",
    JIRA = "JIRA",
    GITHUB = "GITHUB",
    ALFRESCO = "ALFRESCO",
    TEMPLATE = "TEMPLATE",
}

M.CreateDataSourceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = M.DataSourceConfiguration,
        VpcConfiguration = M.DataSourceVpcConfiguration,
        Description = {
            type = "string",
        },
        Schedule = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        LanguageCode = {
            type = "string",
        },
        CustomDocumentEnrichmentConfiguration = M.CustomDocumentEnrichmentConfiguration,
    },
}

M.CreateDataSourceOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContentSourceConfiguration = {
    type = "structure",
    members = {
        DataSourceIds = {
            type = "list",
            member = { type = "string" },
        },
        FaqIds = {
            type = "list",
            member = { type = "string" },
        },
        DirectPutContent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UserIdentityConfiguration = {
    type = "structure",
    members = {
        IdentityAttributeName = {
            type = "string",
        },
    },
}

M.ExperienceConfiguration = {
    type = "structure",
    members = {
        ContentSourceConfiguration = M.ContentSourceConfiguration,
        UserIdentityConfiguration = M.UserIdentityConfiguration,
    },
}

M.CreateExperienceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        Configuration = M.ExperienceConfiguration,
        Description = {
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

M.CreateExperienceOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FaqFileFormat = {
    CSV = "CSV",
    CSV_WITH_HEADER = "CSV_WITH_HEADER",
    JSON = "JSON",
}

M.CreateFaqInput = {
    type = "structure",
    members = {
        IndexId = {
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
        Description = {
            type = "string",
        },
        S3Path = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Path }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FileFormat = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        LanguageCode = {
            type = "string",
        },
    },
}

M.CreateFaqOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.FeaturedDocument = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.FeaturedResultsSetStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.CreateFeaturedResultsSetInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeaturedResultsSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        QueryTexts = {
            type = "list",
            member = { type = "string" },
        },
        FeaturedDocuments = {
            type = "list",
            member = M.FeaturedDocument,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.FeaturedResultsSet = {
    type = "structure",
    members = {
        FeaturedResultsSetId = {
            type = "string",
        },
        FeaturedResultsSetName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        QueryTexts = {
            type = "list",
            member = { type = "string" },
        },
        FeaturedDocuments = {
            type = "list",
            member = M.FeaturedDocument,
        },
        LastUpdatedTimestamp = {
            type = "long",
        },
        CreationTimestamp = {
            type = "long",
        },
    },
}

M.CreateFeaturedResultsSetOutput = {
    type = "structure",
    members = {
        FeaturedResultsSet = M.FeaturedResultsSet,
    },
}

M.ConflictingItem = {
    type = "structure",
    members = {
        QueryText = {
            type = "string",
        },
        SetName = {
            type = "string",
        },
        SetId = {
            type = "string",
        },
    },
}

M.FeaturedResultsConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ConflictingItems = {
            type = "list",
            member = M.ConflictingItem,
        },
    },
}

M.IndexEdition = {
    DEVELOPER_EDITION = "DEVELOPER_EDITION",
    ENTERPRISE_EDITION = "ENTERPRISE_EDITION",
    GEN_AI_ENTERPRISE_EDITION = "GEN_AI_ENTERPRISE_EDITION",
}

M.ServerSideEncryptionConfiguration = {
    type = "structure",
    members = {
        KmsKeyId = {
            type = "string",
        },
    },
}

M.UserContextPolicy = {
    ATTRIBUTE_FILTER = "ATTRIBUTE_FILTER",
    USER_TOKEN = "USER_TOKEN",
}

M.UserGroupResolutionMode = {
    AWS_SSO = "AWS_SSO",
    NONE = "NONE",
}

M.UserGroupResolutionConfiguration = {
    type = "structure",
    members = {
        UserGroupResolutionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JsonTokenTypeConfiguration = {
    type = "structure",
    members = {
        UserNameAttributeField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupAttributeField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KeyLocation = {
    URL = "URL",
    SECRET_MANAGER = "SECRET_MANAGER",
}

M.JwtTokenTypeConfiguration = {
    type = "structure",
    members = {
        KeyLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        URL = {
            type = "string",
        },
        SecretManagerArn = {
            type = "string",
        },
        UserNameAttributeField = {
            type = "string",
        },
        GroupAttributeField = {
            type = "string",
        },
        Issuer = {
            type = "string",
        },
        ClaimRegex = {
            type = "string",
        },
    },
}

M.UserTokenConfiguration = {
    type = "structure",
    members = {
        JwtTokenTypeConfiguration = M.JwtTokenTypeConfiguration,
        JsonTokenTypeConfiguration = M.JsonTokenTypeConfiguration,
    },
}

M.CreateIndexInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Edition = {
            type = "string",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        UserTokenConfigurations = {
            type = "list",
            member = M.UserTokenConfiguration,
        },
        UserContextPolicy = {
            type = "string",
        },
        UserGroupResolutionConfiguration = M.UserGroupResolutionConfiguration,
    },
}

M.CreateIndexOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.CreateQuerySuggestionsBlockListInput = {
    type = "structure",
    members = {
        IndexId = {
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
        Description = {
            type = "string",
        },
        SourceS3Path = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Path }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateQuerySuggestionsBlockListOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.CreateThesaurusInput = {
    type = "structure",
    members = {
        IndexId = {
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
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SourceS3Path = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Path }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateThesaurusOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.DeleteAccessControlConfigurationInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAccessControlConfigurationOutput = {
    type = "structure",
}

M.DeleteDataSourceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDataSourceOutput = {
    type = "structure",
}

M.DeleteExperienceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteExperienceOutput = {
    type = "structure",
}

M.DeleteFaqInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFaqOutput = {
    type = "structure",
}

M.DeleteIndexInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIndexOutput = {
    type = "structure",
}

M.DeletePrincipalMappingInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrderingId = {
            type = "long",
        },
    },
}

M.DeletePrincipalMappingOutput = {
    type = "structure",
}

M.DeleteQuerySuggestionsBlockListInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteQuerySuggestionsBlockListOutput = {
    type = "structure",
}

M.DeleteThesaurusInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteThesaurusOutput = {
    type = "structure",
}

M.DescribeAccessControlConfigurationInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAccessControlConfigurationOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        AccessControlList = {
            type = "list",
            member = M.Principal,
        },
        HierarchicalAccessControlList = {
            type = "list",
            member = M.HierarchicalPrincipal,
        },
    },
}

M.DescribeDataSourceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
}

M.DescribeDataSourceOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        IndexId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Configuration = M.DataSourceConfiguration,
        VpcConfiguration = M.DataSourceVpcConfiguration,
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Schedule = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        CustomDocumentEnrichmentConfiguration = M.CustomDocumentEnrichmentConfiguration,
    },
}

M.DescribeExperienceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointType = {
    HOME = "HOME",
}

M.ExperienceEndpoint = {
    type = "structure",
    members = {
        EndpointType = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
    },
}

M.ExperienceStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.DescribeExperienceOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        IndexId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Endpoints = {
            type = "list",
            member = M.ExperienceEndpoint,
        },
        Configuration = M.ExperienceConfiguration,
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.DescribeFaqInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FaqStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.DescribeFaqOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        IndexId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        S3Path = M.S3Path,
        Status = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        FileFormat = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
    },
}

M.DescribeFeaturedResultsSetInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeaturedResultsSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FeaturedDocumentMissing = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.FeaturedDocumentWithMetadata = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        URI = {
            type = "string",
        },
    },
}

M.DescribeFeaturedResultsSetOutput = {
    type = "structure",
    members = {
        FeaturedResultsSetId = {
            type = "string",
        },
        FeaturedResultsSetName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        QueryTexts = {
            type = "list",
            member = { type = "string" },
        },
        FeaturedDocumentsWithMetadata = {
            type = "list",
            member = M.FeaturedDocumentWithMetadata,
        },
        FeaturedDocumentsMissing = {
            type = "list",
            member = M.FeaturedDocumentMissing,
        },
        LastUpdatedTimestamp = {
            type = "long",
        },
        CreationTimestamp = {
            type = "long",
        },
    },
}

M.DescribeIndexInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CapacityUnitsConfiguration = {
    type = "structure",
    members = {
        StorageCapacityUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        QueryCapacityUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.Order = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.Relevance = {
    type = "structure",
    members = {
        Freshness = {
            type = "boolean",
        },
        Importance = {
            type = "integer",
        },
        Duration = {
            type = "string",
        },
        RankOrder = {
            type = "string",
        },
        ValueImportanceMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.Search = {
    type = "structure",
    members = {
        Facetable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Searchable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Displayable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Sortable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DocumentAttributeValueType = {
    STRING_VALUE = "STRING_VALUE",
    STRING_LIST_VALUE = "STRING_LIST_VALUE",
    LONG_VALUE = "LONG_VALUE",
    DATE_VALUE = "DATE_VALUE",
}

M.DocumentMetadataConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Relevance = M.Relevance,
        Search = M.Search,
    },
}

M.FaqStatistics = {
    type = "structure",
    members = {
        IndexedQuestionAnswersCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.TextDocumentStatistics = {
    type = "structure",
    members = {
        IndexedTextDocumentsCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        IndexedTextBytes = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.IndexStatistics = {
    type = "structure",
    members = {
        FaqStatistics = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FaqStatistics }),
        TextDocumentStatistics = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TextDocumentStatistics }),
    },
}

M.IndexStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
    SYSTEM_UPDATING = "SYSTEM_UPDATING",
}

M.DescribeIndexOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Edition = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ServerSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        Status = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        DocumentMetadataConfigurations = {
            type = "list",
            member = M.DocumentMetadataConfiguration,
        },
        IndexStatistics = M.IndexStatistics,
        ErrorMessage = {
            type = "string",
        },
        CapacityUnits = M.CapacityUnitsConfiguration,
        UserTokenConfigurations = {
            type = "list",
            member = M.UserTokenConfiguration,
        },
        UserContextPolicy = {
            type = "string",
        },
        UserGroupResolutionConfiguration = M.UserGroupResolutionConfiguration,
    },
}

M.DescribePrincipalMappingInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PrincipalMappingStatus = {
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    PROCESSING = "PROCESSING",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.GroupOrderingIdSummary = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        ReceivedAt = {
            type = "timestamp",
        },
        OrderingId = {
            type = "long",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.DescribePrincipalMappingOutput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        GroupId = {
            type = "string",
        },
        GroupOrderingIdSummaries = {
            type = "list",
            member = M.GroupOrderingIdSummary,
        },
    },
}

M.DescribeQuerySuggestionsBlockListInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QuerySuggestionsBlockListStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    ACTIVE_BUT_UPDATE_FAILED = "ACTIVE_BUT_UPDATE_FAILED",
    FAILED = "FAILED",
}

M.DescribeQuerySuggestionsBlockListOutput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        SourceS3Path = M.S3Path,
        ItemCount = {
            type = "integer",
        },
        FileSizeBytes = {
            type = "long",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.DescribeQuerySuggestionsConfigInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Mode = {
    ENABLED = "ENABLED",
    LEARN_ONLY = "LEARN_ONLY",
}

M.QuerySuggestionsStatus = {
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
}

M.DescribeQuerySuggestionsConfigOutput = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        QueryLogLookBackWindowInDays = {
            type = "integer",
        },
        IncludeQueriesWithoutUserInformation = {
            type = "boolean",
        },
        MinimumNumberOfQueryingUsers = {
            type = "integer",
        },
        MinimumQueryCount = {
            type = "integer",
        },
        LastSuggestionsBuildTime = {
            type = "timestamp",
        },
        LastClearTime = {
            type = "timestamp",
        },
        TotalSuggestionsCount = {
            type = "integer",
        },
        AttributeSuggestionsConfig = M.AttributeSuggestionsDescribeConfig,
    },
}

M.DescribeThesaurusInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThesaurusStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    ACTIVE_BUT_UPDATE_FAILED = "ACTIVE_BUT_UPDATE_FAILED",
    FAILED = "FAILED",
}

M.DescribeThesaurusOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        IndexId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        RoleArn = {
            type = "string",
        },
        SourceS3Path = M.S3Path,
        FileSizeBytes = {
            type = "long",
        },
        TermCount = {
            type = "long",
        },
        SynonymRuleCount = {
            type = "long",
        },
    },
}

M.DisassociateEntitiesFromExperienceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityList = {
            type = "list",
            member = M.EntityConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateEntitiesFromExperienceOutput = {
    type = "structure",
    members = {
        FailedEntityList = {
            type = "list",
            member = M.FailedEntity,
        },
    },
}

M.DisassociatePersonasFromEntitiesInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociatePersonasFromEntitiesOutput = {
    type = "structure",
    members = {
        FailedEntityList = {
            type = "list",
            member = M.FailedEntity,
        },
    },
}

M.SuggestionType = {
    QUERY = "QUERY",
    DOCUMENT_ATTRIBUTES = "DOCUMENT_ATTRIBUTES",
}

M.SourceDocument = {
    type = "structure",
    members = {
        DocumentId = {
            type = "string",
        },
        SuggestionAttributes = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalAttributes = {
            type = "list",
            member = M.DocumentAttribute,
        },
    },
}

M.SuggestionHighlight = {
    type = "structure",
    members = {
        BeginOffset = {
            type = "integer",
        },
        EndOffset = {
            type = "integer",
        },
    },
}

M.SuggestionTextWithHighlights = {
    type = "structure",
    members = {
        Text = {
            type = "string",
        },
        Highlights = {
            type = "list",
            member = M.SuggestionHighlight,
        },
    },
}

M.SuggestionValue = {
    type = "structure",
    members = {
        Text = M.SuggestionTextWithHighlights,
    },
}

M.Suggestion = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Value = M.SuggestionValue,
        SourceDocuments = {
            type = "list",
            member = M.SourceDocument,
        },
    },
}

M.GetQuerySuggestionsOutput = {
    type = "structure",
    members = {
        QuerySuggestionsId = {
            type = "string",
        },
        Suggestions = {
            type = "list",
            member = M.Suggestion,
        },
    },
}

M.Interval = {
    THIS_MONTH = "THIS_MONTH",
    THIS_WEEK = "THIS_WEEK",
    ONE_WEEK_AGO = "ONE_WEEK_AGO",
    TWO_WEEKS_AGO = "TWO_WEEKS_AGO",
    ONE_MONTH_AGO = "ONE_MONTH_AGO",
    TWO_MONTHS_AGO = "TWO_MONTHS_AGO",
}

M.MetricType = {
    QUERIES_BY_COUNT = "QUERIES_BY_COUNT",
    QUERIES_BY_ZERO_CLICK_RATE = "QUERIES_BY_ZERO_CLICK_RATE",
    QUERIES_BY_ZERO_RESULT_RATE = "QUERIES_BY_ZERO_RESULT_RATE",
    DOCS_BY_CLICK_COUNT = "DOCS_BY_CLICK_COUNT",
    AGG_QUERY_DOC_METRICS = "AGG_QUERY_DOC_METRICS",
    TREND_QUERY_DOC_METRICS = "TREND_QUERY_DOC_METRICS",
}

M.GetSnapshotsInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Interval = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.TimeRange = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.GetSnapshotsOutput = {
    type = "structure",
    members = {
        SnapShotTimeFilter = M.TimeRange,
        SnapshotsDataHeader = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotsData = {
            type = "list",
            member = { type = "list" },
        },
        NextToken = {
            type = "string",
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

M.ListAccessControlConfigurationsInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListAccessControlConfigurationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        AccessControlConfigurations = {
            type = "list",
            member = M.AccessControlConfigurationSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListDataSourcesInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DataSourceSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
    },
}

M.ListDataSourcesOutput = {
    type = "structure",
    members = {
        SummaryItems = {
            type = "list",
            member = M.DataSourceSummary,
        },
        NextToken = {
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

M.ListDataSourceSyncJobsInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        StartTimeFilter = M.TimeRange,
        StatusFilter = {
            type = "string",
        },
    },
}

M.DataSourceSyncJobMetrics = {
    type = "structure",
    members = {
        DocumentsAdded = {
            type = "string",
        },
        DocumentsModified = {
            type = "string",
        },
        DocumentsDeleted = {
            type = "string",
        },
        DocumentsFailed = {
            type = "string",
        },
        DocumentsScanned = {
            type = "string",
        },
    },
}

M.DataSourceSyncJob = {
    type = "structure",
    members = {
        ExecutionId = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        DataSourceErrorCode = {
            type = "string",
        },
        Metrics = M.DataSourceSyncJobMetrics,
    },
}

M.ListDataSourceSyncJobsOutput = {
    type = "structure",
    members = {
        History = {
            type = "list",
            member = M.DataSourceSyncJob,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEntityPersonasInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.PersonasSummary = {
    type = "structure",
    members = {
        EntityId = {
            type = "string",
        },
        Persona = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListEntityPersonasOutput = {
    type = "structure",
    members = {
        SummaryItems = {
            type = "list",
            member = M.PersonasSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExperienceEntitiesInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EntityDisplayData = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        IdentifiedUserName = {
            type = "string",
        },
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
    },
}

M.ExperienceEntitiesSummary = {
    type = "structure",
    members = {
        EntityId = {
            type = "string",
        },
        EntityType = {
            type = "string",
        },
        DisplayData = M.EntityDisplayData,
    },
}

M.ListExperienceEntitiesOutput = {
    type = "structure",
    members = {
        SummaryItems = {
            type = "list",
            member = M.ExperienceEntitiesSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExperiencesInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ExperiencesSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Endpoints = {
            type = "list",
            member = M.ExperienceEndpoint,
        },
    },
}

M.ListExperiencesOutput = {
    type = "structure",
    members = {
        SummaryItems = {
            type = "list",
            member = M.ExperiencesSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFaqsInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.FaqSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        FileFormat = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
    },
}

M.ListFaqsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        FaqSummaryItems = {
            type = "list",
            member = M.FaqSummary,
        },
    },
}

M.ListFeaturedResultsSetsInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.FeaturedResultsSetSummary = {
    type = "structure",
    members = {
        FeaturedResultsSetId = {
            type = "string",
        },
        FeaturedResultsSetName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "long",
        },
        CreationTimestamp = {
            type = "long",
        },
    },
}

M.ListFeaturedResultsSetsOutput = {
    type = "structure",
    members = {
        FeaturedResultsSetSummaryItems = {
            type = "list",
            member = M.FeaturedResultsSetSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupsOlderThanOrderingIdInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
        },
        OrderingId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GroupSummary = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
        },
        OrderingId = {
            type = "long",
        },
    },
}

M.ListGroupsOlderThanOrderingIdOutput = {
    type = "structure",
    members = {
        GroupsSummaries = {
            type = "list",
            member = M.GroupSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIndicesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.IndexConfigurationSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Edition = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
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
    },
}

M.ListIndicesOutput = {
    type = "structure",
    members = {
        IndexConfigurationSummaryItems = {
            type = "list",
            member = M.IndexConfigurationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListQuerySuggestionsBlockListsInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.QuerySuggestionsBlockListSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        ItemCount = {
            type = "integer",
        },
    },
}

M.ListQuerySuggestionsBlockListsOutput = {
    type = "structure",
    members = {
        BlockListSummaryItems = {
            type = "list",
            member = M.QuerySuggestionsBlockListSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ResourceUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListThesauriInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ThesaurusSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListThesauriOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ThesaurusSummaryItems = {
            type = "list",
            member = M.ThesaurusSummary,
        },
    },
}

M.MemberGroup = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
        },
    },
}

M.MemberUser = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GroupMembers = {
    type = "structure",
    members = {
        MemberGroups = {
            type = "list",
            member = M.MemberGroup,
        },
        MemberUsers = {
            type = "list",
            member = M.MemberUser,
        },
        S3PathforGroupMembers = M.S3Path,
    },
}

M.PutPrincipalMappingInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupMembers = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GroupMembers }),
        OrderingId = {
            type = "long",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.PutPrincipalMappingOutput = {
    type = "structure",
}

M.ExpandConfiguration = {
    type = "structure",
    members = {
        MaxResultItemsToExpand = {
            type = "integer",
        },
        MaxExpandedResultsPerItem = {
            type = "integer",
        },
    },
}

M.MissingAttributeKeyStrategy = {
    IGNORE = "IGNORE",
    COLLAPSE = "COLLAPSE",
    EXPAND = "EXPAND",
}

M.SortOrder = {
    DESC = "DESC",
    ASC = "ASC",
}

M.SortingConfiguration = {
    type = "structure",
    members = {
        DocumentAttributeKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CollapseConfiguration = {
    type = "structure",
    members = {
        DocumentAttributeKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortingConfigurations = {
            type = "list",
            member = M.SortingConfiguration,
        },
        MissingAttributeKeyStrategy = {
            type = "string",
        },
        Expand = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExpandConfiguration = M.ExpandConfiguration,
    },
}

M.DocumentRelevanceConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Relevance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Relevance }),
    },
}

M.QueryResultType = {
    DOCUMENT = "DOCUMENT",
    QUESTION_ANSWER = "QUESTION_ANSWER",
    ANSWER = "ANSWER",
}

M.SpellCorrectionConfiguration = {
    type = "structure",
    members = {
        IncludeQuerySpellCheckSuggestions = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.FeaturedResultsItem = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        AdditionalAttributes = {
            type = "list",
            member = M.AdditionalResultAttribute,
        },
        DocumentId = {
            type = "string",
        },
        DocumentTitle = M.TextWithHighlights,
        DocumentExcerpt = M.TextWithHighlights,
        DocumentURI = {
            type = "string",
        },
        DocumentAttributes = {
            type = "list",
            member = M.DocumentAttribute,
        },
        FeedbackToken = {
            type = "string",
        },
    },
}

M.ExpandedResultItem = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        DocumentId = {
            type = "string",
        },
        DocumentTitle = M.TextWithHighlights,
        DocumentExcerpt = M.TextWithHighlights,
        DocumentURI = {
            type = "string",
        },
        DocumentAttributes = {
            type = "list",
            member = M.DocumentAttribute,
        },
    },
}

M.CollapsedResultDetail = {
    type = "structure",
    members = {
        DocumentAttribute = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentAttribute }),
        ExpandedResults = {
            type = "list",
            member = M.ExpandedResultItem,
        },
    },
}

M.QueryResultFormat = {
    TABLE = "TABLE",
    TEXT = "TEXT",
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
        ScoreConfidence = {
            type = "string",
        },
    },
}

M.TableCell = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        TopAnswer = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Highlighted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Header = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.TableRow = {
    type = "structure",
    members = {
        Cells = {
            type = "list",
            member = M.TableCell,
        },
    },
}

M.TableExcerpt = {
    type = "structure",
    members = {
        Rows = {
            type = "list",
            member = M.TableRow,
        },
        TotalNumberOfRows = {
            type = "integer",
        },
    },
}

M.QueryResultItem = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Format = {
            type = "string",
        },
        AdditionalAttributes = {
            type = "list",
            member = M.AdditionalResultAttribute,
        },
        DocumentId = {
            type = "string",
        },
        DocumentTitle = M.TextWithHighlights,
        DocumentExcerpt = M.TextWithHighlights,
        DocumentURI = {
            type = "string",
        },
        DocumentAttributes = {
            type = "list",
            member = M.DocumentAttribute,
        },
        ScoreAttributes = M.ScoreAttributes,
        FeedbackToken = {
            type = "string",
        },
        TableExcerpt = M.TableExcerpt,
        CollapsedResultDetail = M.CollapsedResultDetail,
    },
}

M.Correction = {
    type = "structure",
    members = {
        BeginOffset = {
            type = "integer",
        },
        EndOffset = {
            type = "integer",
        },
        Term = {
            type = "string",
        },
        CorrectedTerm = {
            type = "string",
        },
    },
}

M.SpellCorrectedQuery = {
    type = "structure",
    members = {
        SuggestedQueryText = {
            type = "string",
        },
        Corrections = {
            type = "list",
            member = M.Correction,
        },
    },
}

M.WarningCode = {
    QUERY_LANGUAGE_INVALID_SYNTAX = "QUERY_LANGUAGE_INVALID_SYNTAX",
}

M.Warning = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.RetrieveResultItem = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        DocumentId = {
            type = "string",
        },
        DocumentTitle = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        DocumentURI = {
            type = "string",
        },
        DocumentAttributes = {
            type = "list",
            member = M.DocumentAttribute,
        },
        ScoreAttributes = M.ScoreAttributes,
    },
}

M.RetrieveOutput = {
    type = "structure",
    members = {
        QueryId = {
            type = "string",
        },
        ResultItems = {
            type = "list",
            member = M.RetrieveResultItem,
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartDataSourceSyncJobInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDataSourceSyncJobOutput = {
    type = "structure",
    members = {
        ExecutionId = {
            type = "string",
        },
    },
}

M.StopDataSourceSyncJobInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopDataSourceSyncJobOutput = {
    type = "structure",
}

M.ClickFeedback = {
    type = "structure",
    members = {
        ResultId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClickTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.RelevanceType = {
    RELEVANT = "RELEVANT",
    NOT_RELEVANT = "NOT_RELEVANT",
}

M.RelevanceFeedback = {
    type = "structure",
    members = {
        ResultId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelevanceValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubmitFeedbackInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClickFeedbackItems = {
            type = "list",
            member = M.ClickFeedback,
        },
        RelevanceFeedbackItems = {
            type = "list",
            member = M.RelevanceFeedback,
        },
    },
}

M.SubmitFeedbackOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
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
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateAccessControlConfigurationInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
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
        AccessControlList = {
            type = "list",
            member = M.Principal,
        },
        HierarchicalAccessControlList = {
            type = "list",
            member = M.HierarchicalPrincipal,
        },
    },
}

M.UpdateAccessControlConfigurationOutput = {
    type = "structure",
}

M.UpdateDataSourceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = M.DataSourceConfiguration,
        VpcConfiguration = M.DataSourceVpcConfiguration,
        Description = {
            type = "string",
        },
        Schedule = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        CustomDocumentEnrichmentConfiguration = M.CustomDocumentEnrichmentConfiguration,
    },
}

M.UpdateDataSourceOutput = {
    type = "structure",
}

M.UpdateExperienceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        Configuration = M.ExperienceConfiguration,
        Description = {
            type = "string",
        },
    },
}

M.UpdateExperienceOutput = {
    type = "structure",
}

M.UpdateFeaturedResultsSetInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeaturedResultsSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeaturedResultsSetName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        QueryTexts = {
            type = "list",
            member = { type = "string" },
        },
        FeaturedDocuments = {
            type = "list",
            member = M.FeaturedDocument,
        },
    },
}

M.UpdateFeaturedResultsSetOutput = {
    type = "structure",
    members = {
        FeaturedResultsSet = M.FeaturedResultsSet,
    },
}

M.UpdateIndexInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DocumentMetadataConfigurationUpdates = {
            type = "list",
            member = M.DocumentMetadataConfiguration,
        },
        CapacityUnits = M.CapacityUnitsConfiguration,
        UserTokenConfigurations = {
            type = "list",
            member = M.UserTokenConfiguration,
        },
        UserContextPolicy = {
            type = "string",
        },
        UserGroupResolutionConfiguration = M.UserGroupResolutionConfiguration,
    },
}

M.UpdateIndexOutput = {
    type = "structure",
}

M.UpdateQuerySuggestionsBlockListInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
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
        SourceS3Path = M.S3Path,
        RoleArn = {
            type = "string",
        },
    },
}

M.UpdateQuerySuggestionsBlockListOutput = {
    type = "structure",
}

M.UpdateQuerySuggestionsConfigInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mode = {
            type = "string",
        },
        QueryLogLookBackWindowInDays = {
            type = "integer",
        },
        IncludeQueriesWithoutUserInformation = {
            type = "boolean",
        },
        MinimumNumberOfQueryingUsers = {
            type = "integer",
        },
        MinimumQueryCount = {
            type = "integer",
        },
        AttributeSuggestionsConfig = M.AttributeSuggestionsUpdateConfig,
    },
}

M.UpdateQuerySuggestionsConfigOutput = {
    type = "structure",
}

M.UpdateThesaurusInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        SourceS3Path = M.S3Path,
    },
}

M.UpdateThesaurusOutput = {
    type = "structure",
}

M.Facet = {
    type = "structure",
    members = {
        DocumentAttributeKey = {
            type = "string",
        },
        Facets = {
            type = "list",
            member = M.Facet,
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DocumentAttributeValueCountPair = {
    type = "structure",
    members = {
        DocumentAttributeValue = M.DocumentAttributeValue,
        Count = {
            type = "integer",
        },
        FacetResults = {
            type = "list",
            member = M.FacetResult,
        },
    },
}

M.FacetResult = {
    type = "structure",
    members = {
        DocumentAttributeKey = {
            type = "string",
        },
        DocumentAttributeValueType = {
            type = "string",
        },
        DocumentAttributeValueCountPairs = {
            type = "list",
            member = M.DocumentAttributeValueCountPair,
        },
    },
}

M.AttributeFilter = {
    type = "structure",
    members = {
        AndAllFilters = {
            type = "list",
            member = M.AttributeFilter,
        },
        OrAllFilters = {
            type = "list",
            member = M.AttributeFilter,
        },
        NotFilter = M.AttributeFilter,
        EqualsTo = M.DocumentAttribute,
        ContainsAll = M.DocumentAttribute,
        ContainsAny = M.DocumentAttribute,
        GreaterThan = M.DocumentAttribute,
        GreaterThanOrEquals = M.DocumentAttribute,
        LessThan = M.DocumentAttribute,
        LessThanOrEquals = M.DocumentAttribute,
    },
}

M.QueryOutput = {
    type = "structure",
    members = {
        QueryId = {
            type = "string",
        },
        ResultItems = {
            type = "list",
            member = M.QueryResultItem,
        },
        FacetResults = {
            type = "list",
            member = M.FacetResult,
        },
        TotalNumberOfResults = {
            type = "integer",
        },
        Warnings = {
            type = "list",
            member = M.Warning,
        },
        SpellCorrectedQueries = {
            type = "list",
            member = M.SpellCorrectedQuery,
        },
        FeaturedResultsItems = {
            type = "list",
            member = M.FeaturedResultsItem,
        },
    },
}

M.AttributeSuggestionsGetConfig = {
    type = "structure",
    members = {
        SuggestionAttributes = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalResponseAttributes = {
            type = "list",
            member = { type = "string" },
        },
        AttributeFilter = M.AttributeFilter,
        UserContext = M.UserContext,
    },
}

M.RetrieveInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeFilter = M.AttributeFilter,
        RequestedDocumentAttributes = {
            type = "list",
            member = { type = "string" },
        },
        DocumentRelevanceOverrideConfigurations = {
            type = "list",
            member = M.DocumentRelevanceConfiguration,
        },
        PageNumber = {
            type = "integer",
        },
        PageSize = {
            type = "integer",
        },
        UserContext = M.UserContext,
    },
}

M.GetQuerySuggestionsInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxSuggestionsCount = {
            type = "integer",
        },
        SuggestionTypes = {
            type = "list",
            member = { type = "string" },
        },
        AttributeSuggestionsConfig = M.AttributeSuggestionsGetConfig,
    },
}

M.QueryInput = {
    type = "structure",
    members = {
        IndexId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryText = {
            type = "string",
        },
        AttributeFilter = M.AttributeFilter,
        Facets = {
            type = "list",
            member = M.Facet,
        },
        RequestedDocumentAttributes = {
            type = "list",
            member = { type = "string" },
        },
        QueryResultTypeFilter = {
            type = "string",
        },
        DocumentRelevanceOverrideConfigurations = {
            type = "list",
            member = M.DocumentRelevanceConfiguration,
        },
        PageNumber = {
            type = "integer",
        },
        PageSize = {
            type = "integer",
        },
        SortingConfiguration = M.SortingConfiguration,
        SortingConfigurations = {
            type = "list",
            member = M.SortingConfiguration,
        },
        UserContext = M.UserContext,
        VisitorId = {
            type = "string",
        },
        SpellCorrectionConfiguration = M.SpellCorrectionConfiguration,
        CollapseConfiguration = M.CollapseConfiguration,
    },
}

return M
