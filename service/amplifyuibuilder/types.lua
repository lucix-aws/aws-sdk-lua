local M = {}

M.ComponentPropertyBindingProperties = {
    type = "structure",
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
    members = {
        downloadUrl = {
            type = "string",
        },
    },
}

M.CodegenDependency = {
    type = "structure",
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
    members = {
        values = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
        },
        isHasManyIndex = {
            type = "boolean",
        },
    },
}

M.CodegenGenericDataField = {
    type = "structure",
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
        relationship = {
            type = "structure",
        },
    },
}

M.CodegenGenericDataModel = {
    type = "structure",
    members = {
        fields = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        isJoinTable = {
            type = "boolean",
        },
        primaryKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodegenGenericDataNonModel = {
    type = "structure",
    members = {
        fields = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CodegenJobGenericDataSchema = {
    type = "structure",
    members = {
        dataSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        enums = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        nonModels = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DataStoreRenderConfig = {
    type = "structure",
}

M.GraphQLRenderConfig = {
    type = "structure",
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
}

M.ApiConfiguration = {
    type = "union",
    members = {
        graphQLConfig = {
            type = "structure",
        },
        dataStoreConfig = {
            type = "structure",
        },
        noApiConfig = {
            type = "structure",
        },
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
        },
        inlineSourceMap = {
            type = "boolean",
        },
        apiConfiguration = {
            type = "union",
        },
        dependencies = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CodegenJobRenderConfig = {
    type = "union",
    members = {
        react = {
            type = "structure",
        },
    },
}

M.CodegenJobStatus = {
    IN_PROGRESS = "in_progress",
    FAILED = "failed",
    SUCCEEDED = "succeeded",
}

M.CodegenJob = {
    type = "structure",
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
        renderConfig = {
            type = "union",
        },
        genericDataSchema = {
            type = "structure",
        },
        autoGenerateForms = {
            type = "boolean",
        },
        features = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        asset = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
    },
}

M.GetCodegenJobOutput = {
    type = "structure",
    members = {
        job = {
            type = "structure",
            traits = {
                http_payload = true,
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
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListCodegenJobsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.CodegenJobSummary = {
    type = "structure",
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
    members = {
        entities = {
            type = "list",
            member_type = "structure",
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
    members = {
        renderConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        genericDataSchema = {
            type = "structure",
        },
        autoGenerateForms = {
            type = "boolean",
        },
        features = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartCodegenJobInput = {
    type = "structure",
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
            },
        },
        codegenJobToCreate = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.StartCodegenJobOutput = {
    type = "structure",
    members = {
        entity = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.SortDirection = {
    ASC = "ASC",
    DESC = "DESC",
}

M.SortProperty = {
    type = "structure",
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
    members = {
        variantValues = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        overrides = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
    },
}

M.ResourceConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteComponentInput = {
    type = "structure",
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
}

M.ExportComponentsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ComponentSummary = {
    type = "structure",
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
    members = {
        entities = {
            type = "list",
            member_type = "structure",
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
    members = {
        provider = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        request = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ExchangeCodeForTokenOutput = {
    type = "structure",
    members = {
        accessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresIn = {
            type = "number",
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
    members = {
        excluded = {
            type = "boolean",
        },
        children = {
            type = "string",
        },
        position = {
            type = "union",
        },
    },
}

M.FormButtonsPosition = {
    TOP = "top",
    BOTTOM = "bottom",
    TOP_AND_BOTTOM = "top_and_bottom",
}

M.FormCTA = {
    type = "structure",
    members = {
        position = {
            type = "string",
        },
        clear = {
            type = "structure",
        },
        cancel = {
            type = "structure",
        },
        submit = {
            type = "structure",
        },
    },
}

M.FormDataSourceType = {
    DATASTORE = "DataStore",
    CUSTOM = "Custom",
}

M.FormDataTypeConfig = {
    type = "structure",
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
    members = {
        accessLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        acceptedFileTypes = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        maxSize = {
            type = "number",
        },
    },
}

M.FormInputBindingPropertiesValueProperties = {
    type = "structure",
    members = {
        model = {
            type = "string",
        },
    },
}

M.FormInputBindingPropertiesValue = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        bindingProperties = {
            type = "structure",
        },
    },
}

M.FormInputValuePropertyBindingProperties = {
    type = "structure",
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
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        strValues = {
            type = "list",
            member_type = "string",
        },
        numValues = {
            type = "list",
            member_type = "number",
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
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        position = {
            type = "union",
        },
        text = {
            type = "string",
        },
        level = {
            type = "number",
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
    members = {
        horizontalGap = {
            type = "union",
        },
        verticalGap = {
            type = "union",
        },
        outerPadding = {
            type = "union",
        },
    },
}

M.DeleteFormInput = {
    type = "structure",
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
}

M.ExportFormsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.FormSummary = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "structure",
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
    members = {
        entities = {
            type = "list",
            member_type = "structure",
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
    members = {
        features = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
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
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutMetadataFlagBody = {
    type = "structure",
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
        body = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.PutMetadataFlagOutput = {
    type = "structure",
}

M.RefreshTokenRequestBody = {
    type = "structure",
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
    members = {
        provider = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        refreshTokenBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.RefreshTokenOutput = {
    type = "structure",
    members = {
        accessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresIn = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.DeleteThemeInput = {
    type = "structure",
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
}

M.ExportThemesInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ThemeSummary = {
    type = "structure",
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
    members = {
        entities = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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

M.FormInputValueProperty = {
    type = "structure",
    members = {
        value = {
            type = "string",
        },
        bindingProperties = {
            type = "structure",
        },
        concat = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ThemeValue = {
    type = "structure",
    members = {
        value = {
            type = "string",
        },
        children = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ThemeValues = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "structure",
        },
    },
}

M.Predicate = {
    type = "structure",
    members = {
        or = {
            type = "list",
            member_type = "structure",
        },
        and = {
            type = "list",
            member_type = "structure",
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
    members = {
        model = {
            type = "string",
        },
        field = {
            type = "string",
        },
        predicates = {
            type = "list",
            member_type = "structure",
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
    members = {
        model = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sort = {
            type = "list",
            member_type = "structure",
        },
        predicate = {
            type = "structure",
        },
        identifiers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ComponentProperty = {
    type = "structure",
    members = {
        value = {
            type = "string",
        },
        bindingProperties = {
            type = "structure",
        },
        collectionBindingProperties = {
            type = "structure",
        },
        defaultValue = {
            type = "string",
        },
        model = {
            type = "string",
        },
        bindings = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        event = {
            type = "string",
        },
        userAttribute = {
            type = "string",
        },
        concat = {
            type = "list",
            member_type = "structure",
        },
        condition = {
            type = "structure",
        },
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
    members = {
        displayValue = {
            type = "structure",
        },
        value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ComponentBindingPropertiesValue = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        bindingProperties = {
            type = "structure",
        },
        defaultValue = {
            type = "string",
        },
    },
}

M.CreateThemeData = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        overrides = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Theme = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        overrides = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpdateThemeData = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        overrides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MutationActionSetStateParameter = {
    type = "structure",
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
        set = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ComponentConditionProperty = {
    type = "structure",
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
        then = {
            type = "structure",
        },
        else = {
            type = "structure",
        },
        operandType = {
            type = "string",
        },
    },
}

M.CreateThemeInput = {
    type = "structure",
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
            },
        },
        themeToCreate = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.CreateThemeOutput = {
    type = "structure",
    members = {
        entity = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetThemeOutput = {
    type = "structure",
    members = {
        theme = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.UpdateThemeInput = {
    type = "structure",
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
            },
        },
        updatedTheme = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateThemeOutput = {
    type = "structure",
    members = {
        entity = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.ValueMappings = {
    type = "structure",
    members = {
        values = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        bindingProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ExportThemesOutput = {
    type = "structure",
    members = {
        entities = {
            type = "list",
            member_type = "structure",
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
        valueMappings = {
            type = "structure",
        },
        name = {
            type = "string",
        },
        minValue = {
            type = "number",
        },
        maxValue = {
            type = "number",
        },
        step = {
            type = "number",
        },
        value = {
            type = "string",
        },
        isArray = {
            type = "boolean",
        },
        fileUploaderConfig = {
            type = "structure",
        },
    },
}

M.FieldConfig = {
    type = "structure",
    members = {
        label = {
            type = "string",
        },
        position = {
            type = "union",
        },
        excluded = {
            type = "boolean",
        },
        inputType = {
            type = "structure",
        },
        validations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateFormData = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "structure",
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
        fields = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        style = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        sectionalElements = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
        cta = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        labelDecorator = {
            type = "string",
        },
    },
}

M.Form = {
    type = "structure",
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
        style = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        fields = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        sectionalElements = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        cta = {
            type = "structure",
        },
        labelDecorator = {
            type = "string",
        },
    },
}

M.UpdateFormData = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        dataType = {
            type = "structure",
        },
        formActionType = {
            type = "string",
        },
        fields = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        style = {
            type = "structure",
        },
        sectionalElements = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        schemaVersion = {
            type = "string",
        },
        cta = {
            type = "structure",
        },
        labelDecorator = {
            type = "string",
        },
    },
}

M.CreateFormInput = {
    type = "structure",
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
            },
        },
        formToCreate = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.CreateFormOutput = {
    type = "structure",
    members = {
        entity = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetFormOutput = {
    type = "structure",
    members = {
        form = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.UpdateFormInput = {
    type = "structure",
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
            },
        },
        updatedForm = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateFormOutput = {
    type = "structure",
    members = {
        entity = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.ExportFormsOutput = {
    type = "structure",
    members = {
        entities = {
            type = "list",
            member_type = "structure",
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
    members = {
        type = {
            type = "structure",
        },
        url = {
            type = "structure",
        },
        anchor = {
            type = "structure",
        },
        target = {
            type = "structure",
        },
        global = {
            type = "structure",
        },
        model = {
            type = "string",
        },
        id = {
            type = "structure",
        },
        fields = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        state = {
            type = "structure",
        },
    },
}

M.ComponentEvent = {
    type = "structure",
    members = {
        action = {
            type = "string",
        },
        parameters = {
            type = "structure",
        },
        bindingEvent = {
            type = "string",
        },
    },
}

M.ComponentChild = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        children = {
            type = "list",
            member_type = "structure",
        },
        events = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        sourceId = {
            type = "string",
        },
    },
}

M.Component = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        children = {
            type = "list",
            member_type = "structure",
        },
        variants = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        overrides = {
            type = "map",
            key_type = "string",
            value_type = "map",
            traits = {
                required = true,
            },
        },
        bindingProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        collectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        events = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        schemaVersion = {
            type = "string",
        },
    },
}

M.CreateComponentData = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        children = {
            type = "list",
            member_type = "structure",
        },
        variants = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        overrides = {
            type = "map",
            key_type = "string",
            value_type = "map",
            traits = {
                required = true,
            },
        },
        bindingProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        collectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        events = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        schemaVersion = {
            type = "string",
        },
    },
}

M.UpdateComponentData = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        children = {
            type = "list",
            member_type = "structure",
        },
        variants = {
            type = "list",
            member_type = "structure",
        },
        overrides = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
        bindingProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        collectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        events = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        schemaVersion = {
            type = "string",
        },
    },
}

M.CreateComponentInput = {
    type = "structure",
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
            },
        },
        componentToCreate = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.CreateComponentOutput = {
    type = "structure",
    members = {
        entity = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetComponentOutput = {
    type = "structure",
    members = {
        component = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.UpdateComponentInput = {
    type = "structure",
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
            },
        },
        updatedComponent = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateComponentOutput = {
    type = "structure",
    members = {
        entity = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.ExportComponentsOutput = {
    type = "structure",
    members = {
        entities = {
            type = "list",
            member_type = "structure",
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
