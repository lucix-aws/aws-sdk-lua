local M = {}

M.CustomControlMethod = {
    RETURN_CONTROL = "RETURN_CONTROL",
}

M.ActionGroupState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Type = {
    STRING = "string",
    NUMBER = "number",
    INTEGER = "integer",
    BOOLEAN = "boolean",
    ARRAY = "array",
}

M.RequireConfirmation = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ActionGroupSignature = {
    AMAZON_USERINPUT = "AMAZON.UserInput",
    AMAZON_CODEINTERPRETER = "AMAZON.CodeInterpreter",
    ANTHROPIC_COMPUTER = "ANTHROPIC.Computer",
    ANTHROPIC_BASH = "ANTHROPIC.Bash",
    ANTHROPIC_TEXTEDITOR = "ANTHROPIC.TextEditor",
}

M.AgentCollaboration = {
    SUPERVISOR = "SUPERVISOR",
    SUPERVISOR_ROUTER = "SUPERVISOR_ROUTER",
    DISABLED = "DISABLED",
}

M.AgentStatus = {
    CREATING = "CREATING",
    PREPARING = "PREPARING",
    PREPARED = "PREPARED",
    NOT_PREPARED = "NOT_PREPARED",
    DELETING = "DELETING",
    FAILED = "FAILED",
    VERSIONING = "VERSIONING",
    UPDATING = "UPDATING",
}

M.MemoryType = {
    SESSION_SUMMARY = "SESSION_SUMMARY",
}

M.OrchestrationType = {
    DEFAULT = "DEFAULT",
    CUSTOM_ORCHESTRATION = "CUSTOM_ORCHESTRATION",
}

M.CreationMode = {
    DEFAULT = "DEFAULT",
    OVERRIDDEN = "OVERRIDDEN",
}

M.PromptState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PromptType = {
    PRE_PROCESSING = "PRE_PROCESSING",
    ORCHESTRATION = "ORCHESTRATION",
    POST_PROCESSING = "POST_PROCESSING",
    KNOWLEDGE_BASE_RESPONSE_GENERATION = "KNOWLEDGE_BASE_RESPONSE_GENERATION",
    MEMORY_SUMMARIZATION = "MEMORY_SUMMARIZATION",
}

M.AgentAliasStatus = {
    CREATING = "CREATING",
    PREPARED = "PREPARED",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DISSOCIATED = "DISSOCIATED",
}

M.AliasInvocationState = {
    ACCEPT_INVOCATIONS = "ACCEPT_INVOCATIONS",
    REJECT_INVOCATIONS = "REJECT_INVOCATIONS",
}

M.RelayConversationHistory = {
    TO_COLLABORATOR = "TO_COLLABORATOR",
    DISABLED = "DISABLED",
}

M.KnowledgeBaseState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DataDeletionPolicy = {
    RETAIN = "RETAIN",
    DELETE = "DELETE",
}

M.CrawlFilterConfigurationType = {
    PATTERN = "PATTERN",
}

M.ConfluenceAuthType = {
    BASIC = "BASIC",
    OAUTH2_CLIENT_CREDENTIALS = "OAUTH2_CLIENT_CREDENTIALS",
}

M.ConfluenceHostType = {
    SAAS = "SAAS",
}

M.SalesforceAuthType = {
    OAUTH2_CLIENT_CREDENTIALS = "OAUTH2_CLIENT_CREDENTIALS",
}

M.SharePointAuthType = {
    OAUTH2_CLIENT_CREDENTIALS = "OAUTH2_CLIENT_CREDENTIALS",
    OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS = "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS",
}

M.SharePointHostType = {
    ONLINE = "ONLINE",
}

M.DataSourceType = {
    S3 = "S3",
    WEB = "WEB",
    CONFLUENCE = "CONFLUENCE",
    SALESFORCE = "SALESFORCE",
    SHAREPOINT = "SHAREPOINT",
    CUSTOM = "CUSTOM",
    REDSHIFT_METADATA = "REDSHIFT_METADATA",
}

M.WebScopeType = {
    HOST_ONLY = "HOST_ONLY",
    SUBDOMAINS = "SUBDOMAINS",
}

M.ChunkingStrategy = {
    FIXED_SIZE = "FIXED_SIZE",
    NONE = "NONE",
    HIERARCHICAL = "HIERARCHICAL",
    SEMANTIC = "SEMANTIC",
}

M.EnrichmentStrategyMethod = {
    CHUNK_ENTITY_EXTRACTION = "CHUNK_ENTITY_EXTRACTION",
}

M.ContextEnrichmentType = {
    BEDROCK_FOUNDATION_MODEL = "BEDROCK_FOUNDATION_MODEL",
}

M.StepType = {
    POST_CHUNKING = "POST_CHUNKING",
}

M.ParsingModality = {
    MULTIMODAL = "MULTIMODAL",
}

M.ParsingStrategy = {
    BEDROCK_FOUNDATION_MODEL = "BEDROCK_FOUNDATION_MODEL",
    BEDROCK_DATA_AUTOMATION = "BEDROCK_DATA_AUTOMATION",
}

M.DataSourceStatus = {
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
    DELETE_UNSUCCESSFUL = "DELETE_UNSUCCESSFUL",
}

M.FlowConnectionType = {
    DATA = "Data",
    CONDITIONAL = "Conditional",
}

M.SupportedLanguages = {
    PYTHON_3 = "Python_3",
}

M.PerformanceConfigLatency = {
    STANDARD = "standard",
    OPTIMIZED = "optimized",
}

M.RerankingMetadataSelectionMode = {
    SELECTIVE = "SELECTIVE",
    ALL = "ALL",
}

M.VectorSearchRerankingConfigurationType = {
    BEDROCK_RERANKING_MODEL = "BEDROCK_RERANKING_MODEL",
}

M.CachePointType = {
    DEFAULT = "default",
}

M.ConversationRole = {
    USER = "user",
    ASSISTANT = "assistant",
}

M.PromptTemplateType = {
    TEXT = "TEXT",
    CHAT = "CHAT",
}

M.FlowNodeInputCategory = {
    LOOP_CONDITION = "LoopCondition",
    RETURN_VALUE_TO_LOOP_START = "ReturnValueToLoopStart",
    EXIT_LOOP = "ExitLoop",
}

M.FlowNodeIODataType = {
    STRING = "String",
    NUMBER = "Number",
    BOOLEAN = "Boolean",
    OBJECT = "Object",
    ARRAY = "Array",
}

M.FlowNodeType = {
    INPUT = "Input",
    OUTPUT = "Output",
    KNOWLEDGE_BASE = "KnowledgeBase",
    CONDITION = "Condition",
    LEX = "Lex",
    PROMPT = "Prompt",
    LAMBDA_FUNCTION = "LambdaFunction",
    STORAGE = "Storage",
    AGENT = "Agent",
    RETRIEVAL = "Retrieval",
    ITERATOR = "Iterator",
    COLLECTOR = "Collector",
    INLINE_CODE = "InlineCode",
    LOOP = "Loop",
    LOOP_INPUT = "LoopInput",
    LOOP_CONTROLLER = "LoopController",
}

M.FlowStatus = {
    FAILED = "Failed",
    PREPARED = "Prepared",
    PREPARING = "Preparing",
    NOT_PREPARED = "NotPrepared",
}

M.ConcurrencyType = {
    AUTOMATIC = "Automatic",
    MANUAL = "Manual",
}

M.IncompatibleLoopNodeType = {
    INPUT = "Input",
    CONDITION = "Condition",
    ITERATOR = "Iterator",
    COLLECTOR = "Collector",
}

M.FlowValidationSeverity = {
    WARNING = "Warning",
    ERROR = "Error",
}

M.FlowValidationType = {
    CYCLIC_CONNECTION = "CyclicConnection",
    DUPLICATE_CONNECTIONS = "DuplicateConnections",
    DUPLICATE_CONDITION_EXPRESSION = "DuplicateConditionExpression",
    UNREACHABLE_NODE = "UnreachableNode",
    UNKNOWN_CONNECTION_SOURCE = "UnknownConnectionSource",
    UNKNOWN_CONNECTION_SOURCE_OUTPUT = "UnknownConnectionSourceOutput",
    UNKNOWN_CONNECTION_TARGET = "UnknownConnectionTarget",
    UNKNOWN_CONNECTION_TARGET_INPUT = "UnknownConnectionTargetInput",
    UNKNOWN_CONNECTION_CONDITION = "UnknownConnectionCondition",
    MALFORMED_CONDITION_EXPRESSION = "MalformedConditionExpression",
    MALFORMED_NODE_INPUT_EXPRESSION = "MalformedNodeInputExpression",
    MISMATCHED_NODE_INPUT_TYPE = "MismatchedNodeInputType",
    MISMATCHED_NODE_OUTPUT_TYPE = "MismatchedNodeOutputType",
    INCOMPATIBLE_CONNECTION_DATA_TYPE = "IncompatibleConnectionDataType",
    MISSING_CONNECTION_CONFIGURATION = "MissingConnectionConfiguration",
    MISSING_DEFAULT_CONDITION = "MissingDefaultCondition",
    MISSING_ENDING_NODES = "MissingEndingNodes",
    MISSING_NODE_CONFIGURATION = "MissingNodeConfiguration",
    MISSING_NODE_INPUT = "MissingNodeInput",
    MISSING_NODE_OUTPUT = "MissingNodeOutput",
    MISSING_STARTING_NODES = "MissingStartingNodes",
    MULTIPLE_NODE_INPUT_CONNECTIONS = "MultipleNodeInputConnections",
    UNFULFILLED_NODE_INPUT = "UnfulfilledNodeInput",
    UNSATISFIED_CONNECTION_CONDITIONS = "UnsatisfiedConnectionConditions",
    UNSPECIFIED = "Unspecified",
    UNKNOWN_NODE_INPUT = "UnknownNodeInput",
    UNKNOWN_NODE_OUTPUT = "UnknownNodeOutput",
    MISSING_LOOP_INPUT_NODE = "MissingLoopInputNode",
    MISSING_LOOP_CONTROLLER_NODE = "MissingLoopControllerNode",
    MULTIPLE_LOOP_INPUT_NODES = "MultipleLoopInputNodes",
    MULTIPLE_LOOP_CONTROLLER_NODES = "MultipleLoopControllerNodes",
    LOOP_INCOMPATIBLE_NODE_TYPE = "LoopIncompatibleNodeType",
    INVALID_LOOP_BOUNDARY = "InvalidLoopBoundary",
}

M.IngestionJobStatus = {
    STARTING = "STARTING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.IngestionJobFilterAttribute = {
    STATUS = "STATUS",
}

M.IngestionJobFilterOperator = {
    EQ = "EQ",
}

M.IngestionJobSortByAttribute = {
    STATUS = "STATUS",
    STARTED_AT = "STARTED_AT",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ContentDataSourceType = {
    CUSTOM = "CUSTOM",
    S3 = "S3",
}

M.DocumentStatus = {
    INDEXED = "INDEXED",
    PARTIALLY_INDEXED = "PARTIALLY_INDEXED",
    PENDING = "PENDING",
    FAILED = "FAILED",
    METADATA_PARTIALLY_INDEXED = "METADATA_PARTIALLY_INDEXED",
    METADATA_UPDATE_FAILED = "METADATA_UPDATE_FAILED",
    IGNORED = "IGNORED",
    NOT_FOUND = "NOT_FOUND",
    STARTING = "STARTING",
    IN_PROGRESS = "IN_PROGRESS",
    DELETING = "DELETING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
}

M.InlineContentType = {
    BYTE = "BYTE",
    TEXT = "TEXT",
}

M.CustomSourceType = {
    IN_LINE = "IN_LINE",
    S3_LOCATION = "S3_LOCATION",
}

M.MetadataValueType = {
    BOOLEAN = "BOOLEAN",
    NUMBER = "NUMBER",
    STRING = "STRING",
    STRING_LIST = "STRING_LIST",
}

M.MetadataSourceType = {
    IN_LINE_ATTRIBUTE = "IN_LINE_ATTRIBUTE",
    S3_LOCATION = "S3_LOCATION",
}

M.RedshiftProvisionedAuthType = {
    IAM = "IAM",
    USERNAME_PASSWORD = "USERNAME_PASSWORD",
    USERNAME = "USERNAME",
}

M.RedshiftServerlessAuthType = {
    IAM = "IAM",
    USERNAME_PASSWORD = "USERNAME_PASSWORD",
}

M.RedshiftQueryEngineType = {
    SERVERLESS = "SERVERLESS",
    PROVISIONED = "PROVISIONED",
}

M.IncludeExclude = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.RedshiftQueryEngineStorageType = {
    REDSHIFT = "REDSHIFT",
    AWS_DATA_CATALOG = "AWS_DATA_CATALOG",
}

M.QueryEngineType = {
    REDSHIFT = "REDSHIFT",
}

M.KnowledgeBaseType = {
    VECTOR = "VECTOR",
    KENDRA = "KENDRA",
    SQL = "SQL",
}

M.EmbeddingDataType = {
    FLOAT32 = "FLOAT32",
    BINARY = "BINARY",
}

M.SupplementalDataStorageLocationType = {
    S3 = "S3",
}

M.KnowledgeBaseStorageType = {
    OPENSEARCH_SERVERLESS = "OPENSEARCH_SERVERLESS",
    PINECONE = "PINECONE",
    REDIS_ENTERPRISE_CLOUD = "REDIS_ENTERPRISE_CLOUD",
    RDS = "RDS",
    MONGO_DB_ATLAS = "MONGO_DB_ATLAS",
    NEPTUNE_ANALYTICS = "NEPTUNE_ANALYTICS",
    OPENSEARCH_MANAGED_CLUSTER = "OPENSEARCH_MANAGED_CLUSTER",
    S3_VECTORS = "S3_VECTORS",
}

M.KnowledgeBaseStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    FAILED = "FAILED",
    DELETE_UNSUCCESSFUL = "DELETE_UNSUCCESSFUL",
}

return M
