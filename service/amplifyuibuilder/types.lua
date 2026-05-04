local M = {}

M.ComponentPropertyBindingProperties = {
    type = "structure",
    id = "ComponentPropertyBindingProperties",
    members = {
        property = {
            type = "string",
            traits = {
                required = true,
            },
        },
        field = {
            type = "string",
        },
    },
}

M.FormBindingElement = {
    type = "structure",
    id = "FormBindingElement",
    members = {
        element = {
            type = "string",
            traits = {
                required = true,
            },
        },
        property = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCodegenJobInput = {
    type = "structure",
    id = "GetCodegenJobInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CodegenJobAsset = {
    type = "structure",
    id = "CodegenJobAsset",
    members = {
        downloadUrl = {
            type = "string",
        },
    },
}

M.CodegenDependency = {
    type = "structure",
    id = "CodegenDependency",
    members = {
        name = {
            type = "string",
        },
        supportedVersion = {
            type = "string",
        },
        isSemVer = {
            type = "boolean",
        },
        reason = {
            type = "string",
        },
    },
}

M.CodegenFeatureFlags = {
    type = "structure",
    id = "CodegenFeatureFlags",
    members = {
        isRelationshipSupported = {
            type = "boolean",
        },
        isNonModelSupported = {
            type = "boolean",
        },
    },
}

M.CodegenJobGenericDataSourceType = {
    DATA_STORE = "DataStore",
}

M.CodegenGenericDataEnum = {
    type = "structure",
    id = "CodegenGenericDataEnum",
    members = {
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
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

M.CodegenGenericDataRelationshipType = {
    type = "structure",
    id = "CodegenGenericDataRelationshipType",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relatedModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relatedModelFields = {
            type = "list",
            member = { type = "string" },
        },
        canUnlinkAssociatedModel = {
            type = "boolean",
        },
        relatedJoinFieldName = {
            type = "string",
        },
        relatedJoinTableName = {
            type = "string",
        },
        belongsToFieldOnRelatedModel = {
            type = "string",
        },
        associatedFields = {
            type = "list",
            member = { type = "string" },
        },
        isHasManyIndex = {
            type = "boolean",
        },
    },
}

M.CodegenGenericDataField = {
    type = "structure",
    id = "CodegenGenericDataField",
    members = {
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataTypeValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        required = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        readOnly = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        isArray = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        relationship = M.CodegenGenericDataRelationshipType,
    },
}

M.CodegenGenericDataModel = {
    type = "structure",
    id = "CodegenGenericDataModel",
    members = {
        fields = {
            type = "map",
            key = { type = "string" },
            value = M.CodegenGenericDataField,
            traits = {
                required = true,
            },
        },
        isJoinTable = {
            type = "boolean",
        },
        primaryKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CodegenGenericDataNonModel = {
    type = "structure",
    id = "CodegenGenericDataNonModel",
    members = {
        fields = {
            type = "map",
            key = { type = "string" },
            value = M.CodegenGenericDataField,
            traits = {
                required = true,
            },
        },
    },
}

M.CodegenJobGenericDataSchema = {
    type = "structure",
    id = "CodegenJobGenericDataSchema",
    members = {
        dataSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "map",
            key = { type = "string" },
            value = M.CodegenGenericDataModel,
            traits = {
                required = true,
            },
        },
        enums = {
            type = "map",
            key = { type = "string" },
            value = M.CodegenGenericDataEnum,
            traits = {
                required = true,
            },
        },
        nonModels = {
            type = "map",
            key = { type = "string" },
            value = M.CodegenGenericDataNonModel,
            traits = {
                required = true,
            },
        },
    },
}

M.DataStoreRenderConfig = {
    type = "structure",
    id = "DataStoreRenderConfig",
}

M.GraphQLRenderConfig = {
    type = "structure",
    id = "GraphQLRenderConfig",
    members = {
        typesFilePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queriesFilePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mutationsFilePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionsFilePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fragmentsFilePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NoApiRenderConfig = {
    type = "structure",
    id = "NoApiRenderConfig",
}

M.ApiConfiguration = {
    type = "union",
    id = "ApiConfiguration",
    members = {
        graphQLConfig = M.GraphQLRenderConfig,
        dataStoreConfig = M.DataStoreRenderConfig,
        noApiConfig = M.NoApiRenderConfig,
    },
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

M.ReactStartCodegenJobData = {
    type = "structure",
    id = "ReactStartCodegenJobData",
    members = {
        module = {
            type = "string",
        },
        target = {
            type = "string",
        },
        script = {
            type = "string",
        },
        renderTypeDeclarations = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        inlineSourceMap = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        apiConfiguration = M.ApiConfiguration,
        dependencies = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CodegenJobRenderConfig = {
    type = "union",
    id = "CodegenJobRenderConfig",
    members = {
        react = M.ReactStartCodegenJobData,
    },
}

M.CodegenJobStatus = {
    IN_PROGRESS = "in_progress",
    FAILED = "failed",
    SUCCEEDED = "succeeded",
}

M.CodegenJob = {
    type = "structure",
    id = "CodegenJob",
    members = {
        id = {
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
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        renderConfig = M.CodegenJobRenderConfig,
        genericDataSchema = M.CodegenJobGenericDataSchema,
        autoGenerateForms = {
            type = "boolean",
        },
        features = M.CodegenFeatureFlags,
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        asset = M.CodegenJobAsset,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        dependencies = {
            type = "list",
            member = M.CodegenDependency,
        },
    },
}

M.GetCodegenJobOutput = {
    type = "structure",
    id = "GetCodegenJobOutput",
    members = {
        job = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CodegenJob }),
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.ListCodegenJobsInput = {
    type = "structure",
    id = "ListCodegenJobsInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
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
                default = 100,
                http_query = "maxResults",
            },
        },
    },
}

M.CodegenJobSummary = {
    type = "structure",
    id = "CodegenJobSummary",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListCodegenJobsOutput = {
    type = "structure",
    id = "ListCodegenJobsOutput",
    members = {
        entities = {
            type = "list",
            member = M.CodegenJobSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartCodegenJobData = {
    type = "structure",
    id = "StartCodegenJobData",
    members = {
        renderConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodegenJobRenderConfig }),
        genericDataSchema = M.CodegenJobGenericDataSchema,
        autoGenerateForms = {
            type = "boolean",
        },
        features = M.CodegenFeatureFlags,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartCodegenJobInput = {
    type = "structure",
    id = "StartCodegenJobInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
        codegenJobToCreate = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.StartCodegenJobData }),
    },
}

M.StartCodegenJobOutput = {
    type = "structure",
    id = "StartCodegenJobOutput",
    members = {
        entity = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CodegenJob }),
    },
}

M.SortDirection = {
    ASC = "ASC",
    DESC = "DESC",
}

M.SortProperty = {
    type = "structure",
    id = "SortProperty",
    members = {
        field = {
            type = "string",
            traits = {
                required = true,
            },
        },
        direction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComponentVariant = {
    type = "structure",
    id = "ComponentVariant",
    members = {
        variantValues = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        overrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.ResourceConflictException = {
    type = "structure",
    id = "ResourceConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.DeleteComponentInput = {
    type = "structure",
    id = "DeleteComponentInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteComponentOutput = {
    type = "structure",
    id = "DeleteComponentOutput",
}

M.ExportComponentsInput = {
    type = "structure",
    id = "ExportComponentsInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
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
    },
}

M.GetComponentInput = {
    type = "structure",
    id = "GetComponentInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListComponentsInput = {
    type = "structure",
    id = "ListComponentsInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
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
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ComponentSummary = {
    type = "structure",
    id = "ComponentSummary",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        componentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListComponentsOutput = {
    type = "structure",
    id = "ListComponentsOutput",
    members = {
        entities = {
            type = "list",
            member = M.ComponentSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TokenProviders = {
    FIGMA = "figma",
}

M.ExchangeCodeForTokenRequestBody = {
    type = "structure",
    id = "ExchangeCodeForTokenRequestBody",
    members = {
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        redirectUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientId = {
            type = "string",
        },
    },
}

M.ExchangeCodeForTokenInput = {
    type = "structure",
    id = "ExchangeCodeForTokenInput",
    members = {
        provider = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        request = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ExchangeCodeForTokenRequestBody }),
    },
}

M.ExchangeCodeForTokenOutput = {
    type = "structure",
    id = "ExchangeCodeForTokenOutput",
    members = {
        accessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresIn = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        refreshToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FixedPosition = {
    FIRST = "first",
}

M.FieldPosition = {
    type = "union",
    id = "FieldPosition",
    members = {
        fixed = {
            type = "string",
        },
        rightOf = {
            type = "string",
        },
        below = {
            type = "string",
        },
    },
}

M.FormButton = {
    type = "structure",
    id = "FormButton",
    members = {
        excluded = {
            type = "boolean",
        },
        children = {
            type = "string",
        },
        position = M.FieldPosition,
    },
}

M.FormButtonsPosition = {
    TOP = "top",
    BOTTOM = "bottom",
    TOP_AND_BOTTOM = "top_and_bottom",
}

M.FormCTA = {
    type = "structure",
    id = "FormCTA",
    members = {
        position = {
            type = "string",
        },
        clear = M.FormButton,
        cancel = M.FormButton,
        submit = M.FormButton,
    },
}

M.FormDataSourceType = {
    DATASTORE = "DataStore",
    CUSTOM = "Custom",
}

M.FormDataTypeConfig = {
    type = "structure",
    id = "FormDataTypeConfig",
    members = {
        dataSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StorageAccessLevel = {
    PUBLIC = "public",
    PROTECTED = "protected",
    PRIVATE = "private",
}

M.FileUploaderFieldConfig = {
    type = "structure",
    id = "FileUploaderFieldConfig",
    members = {
        accessLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        acceptedFileTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        showThumbnails = {
            type = "boolean",
        },
        isResumable = {
            type = "boolean",
        },
        maxFileCount = {
            type = "integer",
        },
        maxSize = {
            type = "integer",
        },
    },
}

M.FormInputBindingPropertiesValueProperties = {
    type = "structure",
    id = "FormInputBindingPropertiesValueProperties",
    members = {
        model = {
            type = "string",
        },
    },
}

M.FormInputBindingPropertiesValue = {
    type = "structure",
    id = "FormInputBindingPropertiesValue",
    members = {
        type = {
            type = "string",
        },
        bindingProperties = M.FormInputBindingPropertiesValueProperties,
    },
}

M.FormInputValuePropertyBindingProperties = {
    type = "structure",
    id = "FormInputValuePropertyBindingProperties",
    members = {
        property = {
            type = "string",
            traits = {
                required = true,
            },
        },
        field = {
            type = "string",
        },
    },
}

M.FieldValidationConfiguration = {
    type = "structure",
    id = "FieldValidationConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        strValues = {
            type = "list",
            member = { type = "string" },
        },
        numValues = {
            type = "list",
            member = { type = "integer" },
        },
        validationMessage = {
            type = "string",
        },
    },
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

M.SectionalElement = {
    type = "structure",
    id = "SectionalElement",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        position = M.FieldPosition,
        text = {
            type = "string",
        },
        level = {
            type = "integer",
        },
        orientation = {
            type = "string",
        },
        excluded = {
            type = "boolean",
        },
    },
}

M.FormStyleConfig = {
    type = "union",
    id = "FormStyleConfig",
    members = {
        tokenReference = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.FormStyle = {
    type = "structure",
    id = "FormStyle",
    members = {
        horizontalGap = M.FormStyleConfig,
        verticalGap = M.FormStyleConfig,
        outerPadding = M.FormStyleConfig,
    },
}

M.DeleteFormInput = {
    type = "structure",
    id = "DeleteFormInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFormOutput = {
    type = "structure",
    id = "DeleteFormOutput",
}

M.ExportFormsInput = {
    type = "structure",
    id = "ExportFormsInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
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
    },
}

M.GetFormInput = {
    type = "structure",
    id = "GetFormInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListFormsInput = {
    type = "structure",
    id = "ListFormsInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
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
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.FormSummary = {
    type = "structure",
    id = "FormSummary",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FormDataTypeConfig }),
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        formActionType = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFormsOutput = {
    type = "structure",
    id = "ListFormsOutput",
    members = {
        entities = {
            type = "list",
            member = M.FormSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetMetadataInput = {
    type = "structure",
    id = "GetMetadataInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMetadataOutput = {
    type = "structure",
    id = "GetMetadataOutput",
    members = {
        features = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
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
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.PutMetadataFlagBody = {
    type = "structure",
    id = "PutMetadataFlagBody",
    members = {
        newValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutMetadataFlagInput = {
    type = "structure",
    id = "PutMetadataFlagInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        featureName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        body = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.PutMetadataFlagBody }),
    },
}

M.PutMetadataFlagOutput = {
    type = "structure",
    id = "PutMetadataFlagOutput",
}

M.RefreshTokenRequestBody = {
    type = "structure",
    id = "RefreshTokenRequestBody",
    members = {
        token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientId = {
            type = "string",
        },
    },
}

M.RefreshTokenInput = {
    type = "structure",
    id = "RefreshTokenInput",
    members = {
        provider = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        refreshTokenBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RefreshTokenRequestBody }),
    },
}

M.RefreshTokenOutput = {
    type = "structure",
    id = "RefreshTokenOutput",
    members = {
        accessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresIn = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
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

M.DeleteThemeInput = {
    type = "structure",
    id = "DeleteThemeInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteThemeOutput = {
    type = "structure",
    id = "DeleteThemeOutput",
}

M.ExportThemesInput = {
    type = "structure",
    id = "ExportThemesInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
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
    },
}

M.GetThemeInput = {
    type = "structure",
    id = "GetThemeInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListThemesInput = {
    type = "structure",
    id = "ListThemesInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
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
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ThemeSummary = {
    type = "structure",
    id = "ThemeSummary",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListThemesOutput = {
    type = "structure",
    id = "ListThemesOutput",
    members = {
        entities = {
            type = "list",
            member = M.ThemeSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
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

M.FormInputValueProperty = {
    type = "structure",
    id = "FormInputValueProperty",
    members = {
        value = {
            type = "string",
        },
        bindingProperties = M.FormInputValuePropertyBindingProperties,
        concat = {
            type = "list",
            member = M.FormInputValueProperty,
        },
    },
}

M.ThemeValue = {
    type = "structure",
    id = "ThemeValue",
    members = {
        value = {
            type = "string",
        },
        children = {
            type = "list",
            member = M.ThemeValues,
        },
    },
}

M.ThemeValues = {
    type = "structure",
    id = "ThemeValues",
    members = {
        key = {
            type = "string",
        },
        value = M.ThemeValue,
    },
}

M.Predicate = {
    type = "structure",
    id = "Predicate",
    members = {
        or = {
            type = "list",
            member = M.Predicate,
        },
        and = {
            type = "list",
            member = M.Predicate,
        },
        field = {
            type = "string",
        },
        operator = {
            type = "string",
        },
        operand = {
            type = "string",
        },
        operandType = {
            type = "string",
        },
    },
}

M.ComponentBindingPropertiesValueProperties = {
    type = "structure",
    id = "ComponentBindingPropertiesValueProperties",
    members = {
        model = {
            type = "string",
        },
        field = {
            type = "string",
        },
        predicates = {
            type = "list",
            member = M.Predicate,
        },
        userAttribute = {
            type = "string",
        },
        bucket = {
            type = "string",
        },
        key = {
            type = "string",
        },
        defaultValue = {
            type = "string",
        },
        slotName = {
            type = "string",
        },
    },
}

M.ComponentDataConfiguration = {
    type = "structure",
    id = "ComponentDataConfiguration",
    members = {
        model = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sort = {
            type = "list",
            member = M.SortProperty,
        },
        predicate = M.Predicate,
        identifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ComponentProperty = {
    type = "structure",
    id = "ComponentProperty",
    members = {
        value = {
            type = "string",
        },
        bindingProperties = M.ComponentPropertyBindingProperties,
        collectionBindingProperties = M.ComponentPropertyBindingProperties,
        defaultValue = {
            type = "string",
        },
        model = {
            type = "string",
        },
        bindings = {
            type = "map",
            key = { type = "string" },
            value = M.FormBindingElement,
        },
        event = {
            type = "string",
        },
        userAttribute = {
            type = "string",
        },
        concat = {
            type = "list",
            member = M.ComponentProperty,
        },
        condition = M.ComponentConditionProperty,
        configured = {
            type = "boolean",
        },
        type = {
            type = "string",
        },
        importedValue = {
            type = "string",
        },
        componentName = {
            type = "string",
        },
        property = {
            type = "string",
        },
    },
}

M.ValueMapping = {
    type = "structure",
    id = "ValueMapping",
    members = {
        displayValue = M.FormInputValueProperty,
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FormInputValueProperty }),
    },
}

M.ComponentBindingPropertiesValue = {
    type = "structure",
    id = "ComponentBindingPropertiesValue",
    members = {
        type = {
            type = "string",
        },
        bindingProperties = M.ComponentBindingPropertiesValueProperties,
        defaultValue = {
            type = "string",
        },
    },
}

M.CreateThemeData = {
    type = "structure",
    id = "CreateThemeData",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = M.ThemeValues,
            traits = {
                required = true,
            },
        },
        overrides = {
            type = "list",
            member = M.ThemeValues,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Theme = {
    type = "structure",
    id = "Theme",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
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
        name = {
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
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        values = {
            type = "list",
            member = M.ThemeValues,
            traits = {
                required = true,
            },
        },
        overrides = {
            type = "list",
            member = M.ThemeValues,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateThemeData = {
    type = "structure",
    id = "UpdateThemeData",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = M.ThemeValues,
            traits = {
                required = true,
            },
        },
        overrides = {
            type = "list",
            member = M.ThemeValues,
        },
    },
}

M.MutationActionSetStateParameter = {
    type = "structure",
    id = "MutationActionSetStateParameter",
    members = {
        componentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        property = {
            type = "string",
            traits = {
                required = true,
            },
        },
        set = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComponentProperty }),
    },
}

M.ComponentConditionProperty = {
    type = "structure",
    id = "ComponentConditionProperty",
    members = {
        property = {
            type = "string",
        },
        field = {
            type = "string",
        },
        operator = {
            type = "string",
        },
        operand = {
            type = "string",
        },
        then = M.ComponentProperty,
        else = M.ComponentProperty,
        operandType = {
            type = "string",
        },
    },
}

M.CreateThemeInput = {
    type = "structure",
    id = "CreateThemeInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
        themeToCreate = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CreateThemeData }),
    },
}

M.CreateThemeOutput = {
    type = "structure",
    id = "CreateThemeOutput",
    members = {
        entity = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Theme }),
    },
}

M.GetThemeOutput = {
    type = "structure",
    id = "GetThemeOutput",
    members = {
        theme = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Theme }),
    },
}

M.UpdateThemeInput = {
    type = "structure",
    id = "UpdateThemeInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
        updatedTheme = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.UpdateThemeData }),
    },
}

M.UpdateThemeOutput = {
    type = "structure",
    id = "UpdateThemeOutput",
    members = {
        entity = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Theme }),
    },
}

M.ValueMappings = {
    type = "structure",
    id = "ValueMappings",
    members = {
        values = {
            type = "list",
            member = M.ValueMapping,
            traits = {
                required = true,
            },
        },
        bindingProperties = {
            type = "map",
            key = { type = "string" },
            value = M.FormInputBindingPropertiesValue,
        },
    },
}

M.ExportThemesOutput = {
    type = "structure",
    id = "ExportThemesOutput",
    members = {
        entities = {
            type = "list",
            member = M.Theme,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FieldInputConfig = {
    type = "structure",
    id = "FieldInputConfig",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        required = {
            type = "boolean",
        },
        readOnly = {
            type = "boolean",
        },
        placeholder = {
            type = "string",
        },
        defaultValue = {
            type = "string",
        },
        descriptiveText = {
            type = "string",
        },
        defaultChecked = {
            type = "boolean",
        },
        defaultCountryCode = {
            type = "string",
        },
        valueMappings = M.ValueMappings,
        name = {
            type = "string",
        },
        minValue = {
            type = "float",
        },
        maxValue = {
            type = "float",
        },
        step = {
            type = "float",
        },
        value = {
            type = "string",
        },
        isArray = {
            type = "boolean",
        },
        fileUploaderConfig = M.FileUploaderFieldConfig,
    },
}

M.FieldConfig = {
    type = "structure",
    id = "FieldConfig",
    members = {
        label = {
            type = "string",
        },
        position = M.FieldPosition,
        excluded = {
            type = "boolean",
        },
        inputType = M.FieldInputConfig,
        validations = {
            type = "list",
            member = M.FieldValidationConfiguration,
        },
    },
}

M.CreateFormData = {
    type = "structure",
    id = "CreateFormData",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FormDataTypeConfig }),
        formActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fields = {
            type = "map",
            key = { type = "string" },
            value = M.FieldConfig,
            traits = {
                required = true,
            },
        },
        style = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FormStyle }),
        sectionalElements = {
            type = "map",
            key = { type = "string" },
            value = M.SectionalElement,
            traits = {
                required = true,
            },
        },
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cta = M.FormCTA,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        labelDecorator = {
            type = "string",
        },
    },
}

M.Form = {
    type = "structure",
    id = "Form",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        formActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        style = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FormStyle }),
        dataType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FormDataTypeConfig }),
        fields = {
            type = "map",
            key = { type = "string" },
            value = M.FieldConfig,
            traits = {
                required = true,
            },
        },
        sectionalElements = {
            type = "map",
            key = { type = "string" },
            value = M.SectionalElement,
            traits = {
                required = true,
            },
        },
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        cta = M.FormCTA,
        labelDecorator = {
            type = "string",
        },
    },
}

M.UpdateFormData = {
    type = "structure",
    id = "UpdateFormData",
    members = {
        name = {
            type = "string",
        },
        dataType = M.FormDataTypeConfig,
        formActionType = {
            type = "string",
        },
        fields = {
            type = "map",
            key = { type = "string" },
            value = M.FieldConfig,
        },
        style = M.FormStyle,
        sectionalElements = {
            type = "map",
            key = { type = "string" },
            value = M.SectionalElement,
        },
        schemaVersion = {
            type = "string",
        },
        cta = M.FormCTA,
        labelDecorator = {
            type = "string",
        },
    },
}

M.CreateFormInput = {
    type = "structure",
    id = "CreateFormInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
        formToCreate = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CreateFormData }),
    },
}

M.CreateFormOutput = {
    type = "structure",
    id = "CreateFormOutput",
    members = {
        entity = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Form }),
    },
}

M.GetFormOutput = {
    type = "structure",
    id = "GetFormOutput",
    members = {
        form = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Form }),
    },
}

M.UpdateFormInput = {
    type = "structure",
    id = "UpdateFormInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
        updatedForm = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.UpdateFormData }),
    },
}

M.UpdateFormOutput = {
    type = "structure",
    id = "UpdateFormOutput",
    members = {
        entity = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Form }),
    },
}

M.ExportFormsOutput = {
    type = "structure",
    id = "ExportFormsOutput",
    members = {
        entities = {
            type = "list",
            member = M.Form,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ActionParameters = {
    type = "structure",
    id = "ActionParameters",
    members = {
        type = M.ComponentProperty,
        url = M.ComponentProperty,
        anchor = M.ComponentProperty,
        target = M.ComponentProperty,
        global = M.ComponentProperty,
        model = {
            type = "string",
        },
        id = M.ComponentProperty,
        fields = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentProperty,
        },
        state = M.MutationActionSetStateParameter,
    },
}

M.ComponentEvent = {
    type = "structure",
    id = "ComponentEvent",
    members = {
        action = {
            type = "string",
        },
        parameters = M.ActionParameters,
        bindingEvent = {
            type = "string",
        },
    },
}

M.ComponentChild = {
    type = "structure",
    id = "ComponentChild",
    members = {
        componentType = {
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
        properties = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentProperty,
            traits = {
                required = true,
            },
        },
        children = {
            type = "list",
            member = M.ComponentChild,
        },
        events = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentEvent,
        },
        sourceId = {
            type = "string",
        },
    },
}

M.Component = {
    type = "structure",
    id = "Component",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceId = {
            type = "string",
        },
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
        componentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentProperty,
            traits = {
                required = true,
            },
        },
        children = {
            type = "list",
            member = M.ComponentChild,
        },
        variants = {
            type = "list",
            member = M.ComponentVariant,
            traits = {
                required = true,
            },
        },
        overrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
            traits = {
                required = true,
            },
        },
        bindingProperties = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentBindingPropertiesValue,
            traits = {
                required = true,
            },
        },
        collectionProperties = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentDataConfiguration,
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        events = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentEvent,
        },
        schemaVersion = {
            type = "string",
        },
    },
}

M.CreateComponentData = {
    type = "structure",
    id = "CreateComponentData",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceId = {
            type = "string",
        },
        componentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentProperty,
            traits = {
                required = true,
            },
        },
        children = {
            type = "list",
            member = M.ComponentChild,
        },
        variants = {
            type = "list",
            member = M.ComponentVariant,
            traits = {
                required = true,
            },
        },
        overrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
            traits = {
                required = true,
            },
        },
        bindingProperties = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentBindingPropertiesValue,
            traits = {
                required = true,
            },
        },
        collectionProperties = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentDataConfiguration,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        events = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentEvent,
        },
        schemaVersion = {
            type = "string",
        },
    },
}

M.UpdateComponentData = {
    type = "structure",
    id = "UpdateComponentData",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        sourceId = {
            type = "string",
        },
        componentType = {
            type = "string",
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentProperty,
        },
        children = {
            type = "list",
            member = M.ComponentChild,
        },
        variants = {
            type = "list",
            member = M.ComponentVariant,
        },
        overrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
        bindingProperties = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentBindingPropertiesValue,
        },
        collectionProperties = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentDataConfiguration,
        },
        events = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentEvent,
        },
        schemaVersion = {
            type = "string",
        },
    },
}

M.CreateComponentInput = {
    type = "structure",
    id = "CreateComponentInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
        componentToCreate = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CreateComponentData }),
    },
}

M.CreateComponentOutput = {
    type = "structure",
    id = "CreateComponentOutput",
    members = {
        entity = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Component }),
    },
}

M.GetComponentOutput = {
    type = "structure",
    id = "GetComponentOutput",
    members = {
        component = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Component }),
    },
}

M.UpdateComponentInput = {
    type = "structure",
    id = "UpdateComponentInput",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
        updatedComponent = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.UpdateComponentData }),
    },
}

M.UpdateComponentOutput = {
    type = "structure",
    id = "UpdateComponentOutput",
    members = {
        entity = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Component }),
    },
}

M.ExportComponentsOutput = {
    type = "structure",
    id = "ExportComponentsOutput",
    members = {
        entities = {
            type = "list",
            member = M.Component,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
