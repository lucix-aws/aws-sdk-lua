local M = {}

M.HighlightType = {
    STANDARD = "STANDARD",
    THESAURUS_SYNONYM = "THESAURUS_SYNONYM",
}

M.AdditionalResultAttributeValueType = {
    TEXT_WITH_HIGHLIGHTS_VALUE = "TEXT_WITH_HIGHLIGHTS_VALUE",
}

M.AlfrescoEntity = {
    wiki = "wiki",
    blog = "blog",
    documentLibrary = "documentLibrary",
}

M.EntityType = {
    USER = "USER",
    GROUP = "GROUP",
}

M.Persona = {
    OWNER = "OWNER",
    VIEWER = "VIEWER",
}

M.AttributeSuggestionsMode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.ErrorCode = {
    INTERNAL_ERROR = "InternalError",
    INVALID_REQUEST = "InvalidRequest",
}

M.DocumentStatus = {
    NOT_FOUND = "NOT_FOUND",
    PROCESSING = "PROCESSING",
    INDEXED = "INDEXED",
    UPDATED = "UPDATED",
    FAILED = "FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
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

M.ReadAccessType = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.PrincipalType = {
    USER = "USER",
    GROUP = "GROUP",
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

M.ConfluenceSpaceFieldName = {
    DISPLAY_URL = "DISPLAY_URL",
    ITEM_TYPE = "ITEM_TYPE",
    SPACE_KEY = "SPACE_KEY",
    URL = "URL",
}

M.ConfluenceVersion = {
    CLOUD = "CLOUD",
    SERVER = "SERVER",
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

M.FsxFileSystemType = {
    WINDOWS = "WINDOWS",
}

M.Type = {
    SAAS = "SAAS",
    ON_PREMISE = "ON_PREMISE",
}

M.IssueSubEntity = {
    COMMENTS = "COMMENTS",
    ATTACHMENTS = "ATTACHMENTS",
    WORKLOGS = "WORKLOGS",
}

M.SalesforceChatterFeedIncludeFilterType = {
    ACTIVE_USER = "ACTIVE_USER",
    STANDARD_USER = "STANDARD_USER",
}

M.SalesforceKnowledgeArticleState = {
    DRAFT = "DRAFT",
    PUBLISHED = "PUBLISHED",
    ARCHIVED = "ARCHIVED",
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

M.ServiceNowAuthenticationType = {
    HTTP_BASIC = "HTTP_BASIC",
    OAUTH2 = "OAUTH2",
}

M.ServiceNowBuildVersionType = {
    LONDON = "LONDON",
    OTHERS = "OTHERS",
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

M.SlackEntity = {
    PUBLIC_CHANNEL = "PUBLIC_CHANNEL",
    PRIVATE_CHANNEL = "PRIVATE_CHANNEL",
    GROUP_MESSAGE = "GROUP_MESSAGE",
    DIRECT_MESSAGE = "DIRECT_MESSAGE",
}

M.WebCrawlerMode = {
    HOST_ONLY = "HOST_ONLY",
    SUBDOMAINS = "SUBDOMAINS",
    EVERYTHING = "EVERYTHING",
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

M.FaqFileFormat = {
    CSV = "CSV",
    CSV_WITH_HEADER = "CSV_WITH_HEADER",
    JSON = "JSON",
}

M.FeaturedResultsSetStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.IndexEdition = {
    DEVELOPER_EDITION = "DEVELOPER_EDITION",
    ENTERPRISE_EDITION = "ENTERPRISE_EDITION",
    GEN_AI_ENTERPRISE_EDITION = "GEN_AI_ENTERPRISE_EDITION",
}

M.UserContextPolicy = {
    ATTRIBUTE_FILTER = "ATTRIBUTE_FILTER",
    USER_TOKEN = "USER_TOKEN",
}

M.UserGroupResolutionMode = {
    AWS_SSO = "AWS_SSO",
    NONE = "NONE",
}

M.KeyLocation = {
    URL = "URL",
    SECRET_MANAGER = "SECRET_MANAGER",
}

M.DataSourceStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
}

M.EndpointType = {
    HOME = "HOME",
}

M.ExperienceStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.FaqStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.Order = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.DocumentAttributeValueType = {
    STRING_VALUE = "STRING_VALUE",
    STRING_LIST_VALUE = "STRING_LIST_VALUE",
    LONG_VALUE = "LONG_VALUE",
    DATE_VALUE = "DATE_VALUE",
}

M.IndexStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
    SYSTEM_UPDATING = "SYSTEM_UPDATING",
}

M.PrincipalMappingStatus = {
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    PROCESSING = "PROCESSING",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.QuerySuggestionsBlockListStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    ACTIVE_BUT_UPDATE_FAILED = "ACTIVE_BUT_UPDATE_FAILED",
    FAILED = "FAILED",
}

M.Mode = {
    ENABLED = "ENABLED",
    LEARN_ONLY = "LEARN_ONLY",
}

M.QuerySuggestionsStatus = {
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
}

M.ThesaurusStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    ACTIVE_BUT_UPDATE_FAILED = "ACTIVE_BUT_UPDATE_FAILED",
    FAILED = "FAILED",
}

M.SuggestionType = {
    QUERY = "QUERY",
    DOCUMENT_ATTRIBUTES = "DOCUMENT_ATTRIBUTES",
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

M.DataSourceSyncJobStatus = {
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    SYNCING = "SYNCING",
    INCOMPLETE = "INCOMPLETE",
    STOPPING = "STOPPING",
    ABORTED = "ABORTED",
    SYNCING_INDEXING = "SYNCING_INDEXING",
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

M.QueryResultType = {
    DOCUMENT = "DOCUMENT",
    QUESTION_ANSWER = "QUESTION_ANSWER",
    ANSWER = "ANSWER",
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

M.WarningCode = {
    QUERY_LANGUAGE_INVALID_SYNTAX = "QUERY_LANGUAGE_INVALID_SYNTAX",
}

M.RelevanceType = {
    RELEVANT = "RELEVANT",
    NOT_RELEVANT = "NOT_RELEVANT",
}

return M
