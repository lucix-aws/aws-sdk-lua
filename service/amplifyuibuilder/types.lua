local M = {}

M.CodegenJobGenericDataSourceType = {
    DATA_STORE = "DataStore",
}

M.CodegenGenericDataFieldDataType = {
    ID = "ID",
    STRING = "String",
    INT = "Int",
    FLOAT = "Float",
    AWS_DATE = "AWSDate",
    AWS_TIME = "AWSTime",
    AWS_DATE_TIME = "AWSDateTime",
    AWS_TIMESTAMP = "AWSTimestamp",
    AWS_EMAIL = "AWSEmail",
    AWS_URL = "AWSURL",
    AWS_IP_ADDRESS = "AWSIPAddress",
    BOOLEAN = "Boolean",
    AWS_JSON = "AWSJSON",
    AWS_PHONE = "AWSPhone",
    ENUM = "Enum",
    MODEL = "Model",
    NON_MODEL = "NonModel",
}

M.GenericDataRelationshipType = {
    HAS_MANY = "HAS_MANY",
    HAS_ONE = "HAS_ONE",
    BELONGS_TO = "BELONGS_TO",
}

M.JSModule = {
    ES2020 = "es2020",
    ESNEXT = "esnext",
}

M.JSScript = {
    JSX = "jsx",
    TSX = "tsx",
    JS = "js",
}

M.JSTarget = {
    ES2015 = "es2015",
    ES2020 = "es2020",
}

M.CodegenJobStatus = {
    IN_PROGRESS = "in_progress",
    FAILED = "failed",
    SUCCEEDED = "succeeded",
}

M.SortDirection = {
    ASC = "ASC",
    DESC = "DESC",
}

M.TokenProviders = {
    FIGMA = "figma",
}

M.FixedPosition = {
    FIRST = "first",
}

M.FormButtonsPosition = {
    TOP = "top",
    BOTTOM = "bottom",
    TOP_AND_BOTTOM = "top_and_bottom",
}

M.FormDataSourceType = {
    DATASTORE = "DataStore",
    CUSTOM = "Custom",
}

M.StorageAccessLevel = {
    PUBLIC = "public",
    PROTECTED = "protected",
    PRIVATE = "private",
}

M.FormActionType = {
    CREATE = "create",
    UPDATE = "update",
}

M.LabelDecorator = {
    REQUIRED = "required",
    OPTIONAL = "optional",
    NONE = "none",
}

return M
