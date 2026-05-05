local M = {}

M.ABTestExecutionStatus = {
    PAUSED = "PAUSED",
    RUNNING = "RUNNING",
    STOPPED = "STOPPED",
    NOT_STARTED = "NOT_STARTED",
}

M.ABTestStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    FAILED = "FAILED",
}

M.ValidationExceptionReason = {
    CANNOT_PARSE = "CannotParse",
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    IDEMPOTENT_PARAMETER_MISMATCH_EXCEPTION = "IdempotentParameterMismatchException",
    ROOT_EVENT_IN_OTHER_SESSION = "EventInOtherSession",
    RESOURCE_CONFLICT = "ResourceConflict",
}

M.CommandExecutionStatus = {
    COMPLETED = "COMPLETED",
    TIMED_OUT = "TIMED_OUT",
}

M.CloudWatchLogsFilterOperator = {
    EQUALS = "Equals",
    NOT_EQUALS = "NotEquals",
    GREATER_THAN = "GreaterThan",
    LESS_THAN = "LessThan",
    GREATER_THAN_OR_EQUAL = "GreaterThanOrEqual",
    LESS_THAN_OR_EQUAL = "LessThanOrEqual",
    CONTAINS = "Contains",
    NOT_CONTAINS = "NotContains",
}

M.BrowserEnterprisePolicyType = {
    MANAGED = "MANAGED",
    RECOMMENDED = "RECOMMENDED",
}

M.BrowserSessionStatus = {
    READY = "READY",
    TERMINATED = "TERMINATED",
}

M.AutomationStreamStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.MouseButton = {
    LEFT = "LEFT",
    RIGHT = "RIGHT",
    MIDDLE = "MIDDLE",
}

M.ScreenshotFormat = {
    PNG = "PNG",
}

M.BrowserActionStatus = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.CodeInterpreterSessionStatus = {
    READY = "READY",
    TERMINATED = "TERMINATED",
}

M.BatchEvaluationStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS",
    FAILED = "FAILED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    DELETING = "DELETING",
}

M.RecommendationStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    DELETING = "DELETING",
}

M.RecommendationType = {
    SYSTEM_PROMPT_RECOMMENDATION = "SYSTEM_PROMPT_RECOMMENDATION",
    TOOL_DESCRIPTION_RECOMMENDATION = "TOOL_DESCRIPTION_RECOMMENDATION",
}

M.Oauth2FlowType = {
    USER_FEDERATION = "USER_FEDERATION",
    M2M = "M2M",
    ON_BEHALF_OF_TOKEN_EXCHANGE = "ON_BEHALF_OF_TOKEN_EXCHANGE",
}

M.SessionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.ProgrammingLanguage = {
    PYTHON = "python",
    JAVASCRIPT = "javascript",
    TYPESCRIPT = "typescript",
}

M.LanguageRuntime = {
    NODEJS = "nodejs",
    DENO = "deno",
    PYTHON = "python",
}

M.ToolName = {
    EXECUTE_CODE = "executeCode",
    EXECUTE_COMMAND = "executeCommand",
    READ_FILES = "readFiles",
    LIST_FILES = "listFiles",
    REMOVE_FILES = "removeFiles",
    WRITE_FILES = "writeFiles",
    START_COMMAND_EXECUTION = "startCommandExecution",
    GET_TASK = "getTask",
    STOP_TASK = "stopTask",
}

M.ResourceContentType = {
    TEXT = "text",
    BLOB = "blob",
}

M.ContentBlockType = {
    TEXT = "text",
    IMAGE = "image",
    EMBEDDED_RESOURCE = "resource",
    RESOURCE_LINK = "resource_link",
}

M.TaskStatus = {
    SUBMITTED = "submitted",
    WORKING = "working",
    COMPLETED = "completed",
    CANCELED = "canceled",
    FAILED = "failed",
}

M.HarnessToolUseStatus = {
    SUCCESS = "success",
    ERROR = "error",
}

M.HarnessToolUseType = {
    TOOL_USE = "tool_use",
    SERVER_TOOL_USE = "server_tool_use",
    MCP_TOOL_USE = "mcp_tool_use",
}

M.HarnessConversationRole = {
    USER = "user",
    ASSISTANT = "assistant",
}

M.OAuthGrantType = {
    CLIENT_CREDENTIALS = "CLIENT_CREDENTIALS",
    AUTHORIZATION_CODE = "AUTHORIZATION_CODE",
}

M.HarnessToolType = {
    REMOTE_MCP = "remote_mcp",
    AGENTCORE_BROWSER = "agentcore_browser",
    AGENTCORE_GATEWAY = "agentcore_gateway",
    INLINE_FUNCTION = "inline_function",
    AGENTCORE_CODE_INTERPRETER = "agentcore_code_interpreter",
}

M.HarnessStopReason = {
    END_TURN = "end_turn",
    TOOL_USE = "tool_use",
    TOOL_RESULT = "tool_result",
    MAX_TOKENS = "max_tokens",
    STOP_SEQUENCE = "stop_sequence",
    CONTENT_FILTERED = "content_filtered",
    MALFORMED_MODEL_OUTPUT = "malformed_model_output",
    MALFORMED_TOOL_USE = "malformed_tool_use",
    INTERRUPTED = "interrupted",
    PARTIAL_TURN = "partial_turn",
    MODEL_CONTEXT_WINDOW_EXCEEDED = "model_context_window_exceeded",
    MAX_ITERATIONS_EXCEEDED = "max_iterations_exceeded",
    MAX_OUTPUT_TOKENS_EXCEEDED = "max_output_tokens_exceeded",
    TIMEOUT_EXCEEDED = "timeout_exceeded",
}

M.MemoryRecordStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.Role = {
    ASSISTANT = "ASSISTANT",
    USER = "USER",
    TOOL = "TOOL",
    OTHER = "OTHER",
}

M.OperatorType = {
    EQUALS_TO = "EQUALS_TO",
    EXISTS = "EXISTS",
    NOT_EXISTS = "NOT_EXISTS",
}

M.ExtractionJobStatus = {
    FAILED = "FAILED",
}

M.MemoryRecordOperatorType = {
    EQUALS_TO = "EQUALS_TO",
    EXISTS = "EXISTS",
    NOT_EXISTS = "NOT_EXISTS",
    BEFORE = "BEFORE",
    AFTER = "AFTER",
    CONTAINS = "CONTAINS",
    GREATER_THAN = "GREATER_THAN",
    GREATER_THAN_OR_EQUALS = "GREATER_THAN_OR_EQUALS",
    LESS_THAN = "LESS_THAN",
    LESS_THAN_OR_EQUALS = "LESS_THAN_OR_EQUALS",
}

M.EventFilterCondition = {
    HAS_EVENTS = "HAS_EVENTS",
}

M.DescriptorType = {
    MCP = "MCP",
    A2A = "A2A",
    CUSTOM = "CUSTOM",
    AGENT_SKILLS = "AGENT_SKILLS",
}

M.RegistryRecordStatus = {
    DRAFT = "DRAFT",
    PENDING_APPROVAL = "PENDING_APPROVAL",
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    DEPRECATED = "DEPRECATED",
}

return M
