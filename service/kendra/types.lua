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
            type = "number",
            traits = {
                required = true,
            },
        },
        EndOffset = {
            type = "number",
            traits = {
                required = true,
            },
        },
        TopAnswer = {
            type = "boolean",
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
            member_type = "structure",
        },
    },
}

M.AdditionalResultAttributeValue = {
    type = "structure",
    members = {
        TextWithHighlightsValue = {
            type = "structure",
        },
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
        Value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
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
        SslCertificateS3Path = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CrawlSystemFolders = {
            type = "boolean",
        },
        CrawlComments = {
            type = "boolean",
        },
        EntityFilter = {
            type = "list",
            member_type = "string",
        },
        DocumentLibraryFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        BlogFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        WikiFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        InclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        VpcConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        LongValue = {
            type = "number",
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
        Value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            member_type = "string",
        },
        DataSourceGroups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AttributeSuggestionsUpdateConfig = {
    type = "structure",
    members = {
        SuggestableConfigList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceSyncJobMetricTarget = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        DocumentStatusList = {
            type = "list",
            member_type = "structure",
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
        ConditionOnValue = {
            type = "structure",
        },
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
        },
        TargetDocumentAttributeValue = {
            type = "structure",
        },
    },
}

M.InlineCustomDocumentEnrichmentConfiguration = {
    type = "structure",
    members = {
        Condition = {
            type = "structure",
        },
        Target = {
            type = "structure",
        },
        DocumentContentDeletion = {
            type = "boolean",
        },
    },
}

M.HookConfiguration = {
    type = "structure",
    members = {
        InvocationCondition = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        PreExtractionHookConfiguration = {
            type = "structure",
        },
        PostExtractionHookConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
        S3Path = {
            type = "structure",
        },
        Attributes = {
            type = "list",
            member_type = "structure",
        },
        AccessControlList = {
            type = "list",
            member_type = "structure",
        },
        HierarchicalAccessControlList = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        CustomDocumentEnrichmentConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        HierarchicalAccessControlList = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
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
        },
        CrawlComments = {
            type = "boolean",
        },
        CrawlTasks = {
            type = "boolean",
        },
        CrawlWebLinks = {
            type = "boolean",
        },
        FileFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        TaskFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        CommentFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        WebLinkFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        InclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        VpcConfiguration = {
            type = "structure",
        },
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
        },
        AttachmentFieldMappings = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
        },
        CrawlArchivedSpaces = {
            type = "boolean",
        },
        IncludeSpaces = {
            type = "list",
            member_type = "string",
        },
        ExcludeSpaces = {
            type = "list",
            member_type = "string",
        },
        SpaceFieldMappings = {
            type = "list",
            member_type = "structure",
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
        SpaceConfiguration = {
            type = "structure",
        },
        PageConfiguration = {
            type = "structure",
        },
        BlogConfiguration = {
            type = "structure",
        },
        AttachmentConfiguration = {
            type = "structure",
        },
        VpcConfiguration = {
            type = "structure",
        },
        InclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ProxyConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ChangeDetectingColumns = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
        ConnectionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        VpcConfiguration = {
            type = "structure",
        },
        ColumnConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AclConfiguration = {
            type = "structure",
        },
        SqlConfiguration = {
            type = "structure",
        },
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
        VpcConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
        },
        InclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        FieldMappings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GitHubDocumentCrawlProperties = {
    type = "structure",
    members = {
        CrawlRepositoryDocuments = {
            type = "boolean",
        },
        CrawlIssue = {
            type = "boolean",
        },
        CrawlIssueComment = {
            type = "boolean",
        },
        CrawlIssueCommentAttachment = {
            type = "boolean",
        },
        CrawlPullRequest = {
            type = "boolean",
        },
        CrawlPullRequestComment = {
            type = "boolean",
        },
        CrawlPullRequestCommentAttachment = {
            type = "boolean",
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
        SslCertificateS3Path = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        SaaSConfiguration = {
            type = "structure",
        },
        OnPremiseConfiguration = {
            type = "structure",
        },
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
        },
        GitHubDocumentCrawlProperties = {
            type = "structure",
        },
        RepositoryFilter = {
            type = "list",
            member_type = "string",
        },
        InclusionFolderNamePatterns = {
            type = "list",
            member_type = "string",
        },
        InclusionFileTypePatterns = {
            type = "list",
            member_type = "string",
        },
        InclusionFileNamePatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionFolderNamePatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionFileTypePatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionFileNamePatterns = {
            type = "list",
            member_type = "string",
        },
        VpcConfiguration = {
            type = "structure",
        },
        GitHubRepositoryConfigurationFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        GitHubCommitConfigurationFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        GitHubIssueDocumentConfigurationFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        GitHubIssueCommentConfigurationFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        GitHubIssueAttachmentConfigurationFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        GitHubPullRequestCommentConfigurationFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        GitHubPullRequestDocumentConfigurationFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        GitHubPullRequestDocumentAttachmentConfigurationFieldMappings = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        FieldMappings = {
            type = "list",
            member_type = "structure",
        },
        ExcludeMimeTypes = {
            type = "list",
            member_type = "string",
        },
        ExcludeUserAccounts = {
            type = "list",
            member_type = "string",
        },
        ExcludeSharedDrives = {
            type = "list",
            member_type = "string",
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
        },
        Project = {
            type = "list",
            member_type = "string",
        },
        IssueType = {
            type = "list",
            member_type = "string",
        },
        Status = {
            type = "list",
            member_type = "string",
        },
        IssueSubEntityFilter = {
            type = "list",
            member_type = "string",
        },
        AttachmentFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        CommentFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        IssueFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        ProjectFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        WorkLogFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        InclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        VpcConfiguration = {
            type = "structure",
        },
    },
}

M.OneDriveUsers = {
    type = "structure",
    members = {
        OneDriveUserList = {
            type = "list",
            member_type = "string",
        },
        OneDriveUserS3Path = {
            type = "structure",
        },
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
        OneDriveUsers = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        InclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        FieldMappings = {
            type = "list",
            member_type = "structure",
        },
        DisableLocalGroups = {
            type = "boolean",
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
        },
        CrawlChatRooms = {
            type = "boolean",
        },
        CrawlAttachments = {
            type = "boolean",
        },
        FolderIds = {
            type = "list",
            member_type = "string",
        },
        ThreadFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        MessageFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        AttachmentFieldMappings = {
            type = "list",
            member_type = "structure",
        },
        InclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        VpcConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        InclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        DocumentsMetadataConfiguration = {
            type = "structure",
        },
        AccessControlListConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        IncludeFilterTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.SalesforceKnowledgeArticleConfiguration = {
    type = "structure",
    members = {
        IncludedStates = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        StandardKnowledgeArticleTypeConfiguration = {
            type = "structure",
        },
        CustomKnowledgeArticleTypeConfigurations = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        KnowledgeArticleConfiguration = {
            type = "structure",
        },
        ChatterFeedConfiguration = {
            type = "structure",
        },
        CrawlAttachments = {
            type = "boolean",
        },
        StandardObjectAttachmentConfiguration = {
            type = "structure",
        },
        IncludeAttachmentFilePatterns = {
            type = "list",
            member_type = "string",
        },
        ExcludeAttachmentFilePatterns = {
            type = "list",
            member_type = "string",
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
        },
        IncludeAttachmentFilePatterns = {
            type = "list",
            member_type = "string",
        },
        ExcludeAttachmentFilePatterns = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        },
        IncludeAttachmentFilePatterns = {
            type = "list",
            member_type = "string",
        },
        ExcludeAttachmentFilePatterns = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        KnowledgeArticleConfiguration = {
            type = "structure",
        },
        ServiceCatalogConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
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
        },
        UseChangeLog = {
            type = "boolean",
        },
        InclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        VpcConfiguration = {
            type = "structure",
        },
        FieldMappings = {
            type = "list",
            member_type = "structure",
        },
        DocumentTitleFieldName = {
            type = "string",
        },
        DisableLocalGroups = {
            type = "boolean",
        },
        SslCertificateS3Path = {
            type = "structure",
        },
        AuthenticationType = {
            type = "string",
        },
        ProxyConfiguration = {
            type = "structure",
        },
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
        VpcConfiguration = {
            type = "structure",
        },
        SlackEntityList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        UseChangeLog = {
            type = "boolean",
        },
        CrawlBotMessage = {
            type = "boolean",
        },
        ExcludeArchived = {
            type = "boolean",
        },
        SinceCrawlDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LookBackPeriod = {
            type = "number",
        },
        PrivateChannelFilter = {
            type = "list",
            member_type = "string",
        },
        PublicChannelFilter = {
            type = "list",
            member_type = "string",
        },
        InclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        FieldMappings = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Urls = {
    type = "structure",
    members = {
        SeedUrlConfiguration = {
            type = "structure",
        },
        SiteMapsConfiguration = {
            type = "structure",
        },
    },
}

M.WebCrawlerConfiguration = {
    type = "structure",
    members = {
        Urls = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CrawlDepth = {
            type = "number",
        },
        MaxLinksPerPage = {
            type = "number",
        },
        MaxContentSizePerPageInMegaBytes = {
            type = "number",
        },
        MaxUrlsPerMinuteCrawlRate = {
            type = "number",
        },
        UrlInclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        UrlExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ProxyConfiguration = {
            type = "structure",
        },
        AuthenticationConfiguration = {
            type = "structure",
        },
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
        },
        UseChangeLog = {
            type = "boolean",
        },
        InclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        ExclusionPatterns = {
            type = "list",
            member_type = "string",
        },
        FieldMappings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DataSourceConfiguration = {
    type = "structure",
    members = {
        S3Configuration = {
            type = "structure",
        },
        SharePointConfiguration = {
            type = "structure",
        },
        DatabaseConfiguration = {
            type = "structure",
        },
        SalesforceConfiguration = {
            type = "structure",
        },
        OneDriveConfiguration = {
            type = "structure",
        },
        ServiceNowConfiguration = {
            type = "structure",
        },
        ConfluenceConfiguration = {
            type = "structure",
        },
        GoogleDriveConfiguration = {
            type = "structure",
        },
        WebCrawlerConfiguration = {
            type = "structure",
        },
        WorkDocsConfiguration = {
            type = "structure",
        },
        FsxConfiguration = {
            type = "structure",
        },
        SlackConfiguration = {
            type = "structure",
        },
        BoxConfiguration = {
            type = "structure",
        },
        QuipConfiguration = {
            type = "structure",
        },
        JiraConfiguration = {
            type = "structure",
        },
        GitHubConfiguration = {
            type = "structure",
        },
        AlfrescoConfiguration = {
            type = "structure",
        },
        TemplateConfiguration = {
            type = "structure",
        },
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
        Configuration = {
            type = "structure",
        },
        VpcConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        CustomDocumentEnrichmentConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        FaqIds = {
            type = "list",
            member_type = "string",
        },
        DirectPutContent = {
            type = "boolean",
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
        ContentSourceConfiguration = {
            type = "structure",
        },
        UserIdentityConfiguration = {
            type = "structure",
        },
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
        Configuration = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
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
        S3Path = {
            type = "structure",
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
        Tags = {
            type = "list",
            member_type = "structure",
        },
        FileFormat = {
            type = "string",
        },
        ClientToken = {
            type = "string",
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
            member_type = "string",
        },
        FeaturedDocuments = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        FeaturedDocuments = {
            type = "list",
            member_type = "structure",
        },
        LastUpdatedTimestamp = {
            type = "number",
        },
        CreationTimestamp = {
            type = "number",
        },
    },
}

M.CreateFeaturedResultsSetOutput = {
    type = "structure",
    members = {
        FeaturedResultsSet = {
            type = "structure",
        },
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
            member_type = "structure",
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
        JwtTokenTypeConfiguration = {
            type = "structure",
        },
        JsonTokenTypeConfiguration = {
            type = "structure",
        },
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
        ServerSideEncryptionConfiguration = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        UserTokenConfigurations = {
            type = "list",
            member_type = "structure",
        },
        UserContextPolicy = {
            type = "string",
        },
        UserGroupResolutionConfiguration = {
            type = "structure",
        },
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
        SourceS3Path = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
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
            member_type = "structure",
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
            member_type = "structure",
        },
        SourceS3Path = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
            type = "number",
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
            member_type = "structure",
        },
        HierarchicalAccessControlList = {
            type = "list",
            member_type = "structure",
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
        Configuration = {
            type = "structure",
        },
        VpcConfiguration = {
            type = "structure",
        },
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
        CustomDocumentEnrichmentConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Configuration = {
            type = "structure",
        },
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
        S3Path = {
            type = "structure",
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
            member_type = "string",
        },
        FeaturedDocumentsWithMetadata = {
            type = "list",
            member_type = "structure",
        },
        FeaturedDocumentsMissing = {
            type = "list",
            member_type = "structure",
        },
        LastUpdatedTimestamp = {
            type = "number",
        },
        CreationTimestamp = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        QueryCapacityUnits = {
            type = "number",
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
            type = "number",
        },
        Duration = {
            type = "string",
        },
        RankOrder = {
            type = "string",
        },
        ValueImportanceMap = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
    },
}

M.Search = {
    type = "structure",
    members = {
        Facetable = {
            type = "boolean",
        },
        Searchable = {
            type = "boolean",
        },
        Displayable = {
            type = "boolean",
        },
        Sortable = {
            type = "boolean",
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
        Relevance = {
            type = "structure",
        },
        Search = {
            type = "structure",
        },
    },
}

M.FaqStatistics = {
    type = "structure",
    members = {
        IndexedQuestionAnswersCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TextDocumentStatistics = {
    type = "structure",
    members = {
        IndexedTextDocumentsCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        IndexedTextBytes = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.IndexStatistics = {
    type = "structure",
    members = {
        FaqStatistics = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TextDocumentStatistics = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ServerSideEncryptionConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        IndexStatistics = {
            type = "structure",
        },
        ErrorMessage = {
            type = "string",
        },
        CapacityUnits = {
            type = "structure",
        },
        UserTokenConfigurations = {
            type = "list",
            member_type = "structure",
        },
        UserContextPolicy = {
            type = "string",
        },
        UserGroupResolutionConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
        SourceS3Path = {
            type = "structure",
        },
        ItemCount = {
            type = "number",
        },
        FileSizeBytes = {
            type = "number",
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
            type = "number",
        },
        IncludeQueriesWithoutUserInformation = {
            type = "boolean",
        },
        MinimumNumberOfQueryingUsers = {
            type = "number",
        },
        MinimumQueryCount = {
            type = "number",
        },
        LastSuggestionsBuildTime = {
            type = "timestamp",
        },
        LastClearTime = {
            type = "timestamp",
        },
        TotalSuggestionsCount = {
            type = "number",
        },
        AttributeSuggestionsConfig = {
            type = "structure",
        },
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
        SourceS3Path = {
            type = "structure",
        },
        FileSizeBytes = {
            type = "number",
        },
        TermCount = {
            type = "number",
        },
        SynonymRuleCount = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
        },
        AdditionalAttributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SuggestionHighlight = {
    type = "structure",
    members = {
        BeginOffset = {
            type = "number",
        },
        EndOffset = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.SuggestionValue = {
    type = "structure",
    members = {
        Text = {
            type = "structure",
        },
    },
}

M.Suggestion = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Value = {
            type = "structure",
        },
        SourceDocuments = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
        SnapShotTimeFilter = {
            type = "structure",
        },
        SnapshotsDataHeader = {
            type = "list",
            member_type = "string",
        },
        SnapshotsData = {
            type = "list",
            member_type = "list",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        StartTimeFilter = {
            type = "structure",
        },
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
        Metrics = {
            type = "structure",
        },
    },
}

M.ListDataSourceSyncJobsOutput = {
    type = "structure",
    members = {
        History = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
        DisplayData = {
            type = "structure",
        },
    },
}

M.ListExperienceEntitiesOutput = {
    type = "structure",
    members = {
        SummaryItems = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.ListExperiencesOutput = {
    type = "structure",
    members = {
        SummaryItems = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        CreationTimestamp = {
            type = "number",
        },
    },
}

M.ListFeaturedResultsSetsOutput = {
    type = "structure",
    members = {
        FeaturedResultsSetSummaryItems = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
            type = "number",
        },
    },
}

M.ListGroupsOlderThanOrderingIdOutput = {
    type = "structure",
    members = {
        GroupsSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.ListQuerySuggestionsBlockListsOutput = {
    type = "structure",
    members = {
        BlockListSummaryItems = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MemberUsers = {
            type = "list",
            member_type = "structure",
        },
        S3PathforGroupMembers = {
            type = "structure",
        },
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
        GroupMembers = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OrderingId = {
            type = "number",
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
            type = "number",
        },
        MaxExpandedResultsPerItem = {
            type = "number",
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
            member_type = "structure",
        },
        MissingAttributeKeyStrategy = {
            type = "string",
        },
        Expand = {
            type = "boolean",
        },
        ExpandConfiguration = {
            type = "structure",
        },
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
        Relevance = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        DocumentId = {
            type = "string",
        },
        DocumentTitle = {
            type = "structure",
        },
        DocumentExcerpt = {
            type = "structure",
        },
        DocumentURI = {
            type = "string",
        },
        DocumentAttributes = {
            type = "list",
            member_type = "structure",
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
        DocumentTitle = {
            type = "structure",
        },
        DocumentExcerpt = {
            type = "structure",
        },
        DocumentURI = {
            type = "string",
        },
        DocumentAttributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CollapsedResultDetail = {
    type = "structure",
    members = {
        DocumentAttribute = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ExpandedResults = {
            type = "list",
            member_type = "structure",
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
        },
        Highlighted = {
            type = "boolean",
        },
        Header = {
            type = "boolean",
        },
    },
}

M.TableRow = {
    type = "structure",
    members = {
        Cells = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TableExcerpt = {
    type = "structure",
    members = {
        Rows = {
            type = "list",
            member_type = "structure",
        },
        TotalNumberOfRows = {
            type = "number",
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
            member_type = "structure",
        },
        DocumentId = {
            type = "string",
        },
        DocumentTitle = {
            type = "structure",
        },
        DocumentExcerpt = {
            type = "structure",
        },
        DocumentURI = {
            type = "string",
        },
        DocumentAttributes = {
            type = "list",
            member_type = "structure",
        },
        ScoreAttributes = {
            type = "structure",
        },
        FeedbackToken = {
            type = "string",
        },
        TableExcerpt = {
            type = "structure",
        },
        CollapsedResultDetail = {
            type = "structure",
        },
    },
}

M.Correction = {
    type = "structure",
    members = {
        BeginOffset = {
            type = "number",
        },
        EndOffset = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        ScoreAttributes = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        RelevanceFeedbackItems = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        HierarchicalAccessControlList = {
            type = "list",
            member_type = "structure",
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
        Configuration = {
            type = "structure",
        },
        VpcConfiguration = {
            type = "structure",
        },
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
        CustomDocumentEnrichmentConfiguration = {
            type = "structure",
        },
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
        Configuration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        FeaturedDocuments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateFeaturedResultsSetOutput = {
    type = "structure",
    members = {
        FeaturedResultsSet = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        CapacityUnits = {
            type = "structure",
        },
        UserTokenConfigurations = {
            type = "list",
            member_type = "structure",
        },
        UserContextPolicy = {
            type = "string",
        },
        UserGroupResolutionConfiguration = {
            type = "structure",
        },
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
        SourceS3Path = {
            type = "structure",
        },
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
            type = "number",
        },
        IncludeQueriesWithoutUserInformation = {
            type = "boolean",
        },
        MinimumNumberOfQueryingUsers = {
            type = "number",
        },
        MinimumQueryCount = {
            type = "number",
        },
        AttributeSuggestionsConfig = {
            type = "structure",
        },
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
        SourceS3Path = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.DocumentAttributeValueCountPair = {
    type = "structure",
    members = {
        DocumentAttributeValue = {
            type = "structure",
        },
        Count = {
            type = "number",
        },
        FacetResults = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.AttributeFilter = {
    type = "structure",
    members = {
        AndAllFilters = {
            type = "list",
            member_type = "structure",
        },
        OrAllFilters = {
            type = "list",
            member_type = "structure",
        },
        NotFilter = {
            type = "structure",
        },
        EqualsTo = {
            type = "structure",
        },
        ContainsAll = {
            type = "structure",
        },
        ContainsAny = {
            type = "structure",
        },
        GreaterThan = {
            type = "structure",
        },
        GreaterThanOrEquals = {
            type = "structure",
        },
        LessThan = {
            type = "structure",
        },
        LessThanOrEquals = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        FacetResults = {
            type = "list",
            member_type = "structure",
        },
        TotalNumberOfResults = {
            type = "number",
        },
        Warnings = {
            type = "list",
            member_type = "structure",
        },
        SpellCorrectedQueries = {
            type = "list",
            member_type = "structure",
        },
        FeaturedResultsItems = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AttributeSuggestionsGetConfig = {
    type = "structure",
    members = {
        SuggestionAttributes = {
            type = "list",
            member_type = "string",
        },
        AdditionalResponseAttributes = {
            type = "list",
            member_type = "string",
        },
        AttributeFilter = {
            type = "structure",
        },
        UserContext = {
            type = "structure",
        },
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
        AttributeFilter = {
            type = "structure",
        },
        RequestedDocumentAttributes = {
            type = "list",
            member_type = "string",
        },
        DocumentRelevanceOverrideConfigurations = {
            type = "list",
            member_type = "structure",
        },
        PageNumber = {
            type = "number",
        },
        PageSize = {
            type = "number",
        },
        UserContext = {
            type = "structure",
        },
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
            type = "number",
        },
        SuggestionTypes = {
            type = "list",
            member_type = "string",
        },
        AttributeSuggestionsConfig = {
            type = "structure",
        },
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
        AttributeFilter = {
            type = "structure",
        },
        Facets = {
            type = "list",
            member_type = "structure",
        },
        RequestedDocumentAttributes = {
            type = "list",
            member_type = "string",
        },
        QueryResultTypeFilter = {
            type = "string",
        },
        DocumentRelevanceOverrideConfigurations = {
            type = "list",
            member_type = "structure",
        },
        PageNumber = {
            type = "number",
        },
        PageSize = {
            type = "number",
        },
        SortingConfiguration = {
            type = "structure",
        },
        SortingConfigurations = {
            type = "list",
            member_type = "structure",
        },
        UserContext = {
            type = "structure",
        },
        VisitorId = {
            type = "string",
        },
        SpellCorrectionConfiguration = {
            type = "structure",
        },
        CollapseConfiguration = {
            type = "structure",
        },
    },
}

return M
