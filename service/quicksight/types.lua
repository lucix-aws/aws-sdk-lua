local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.AccountCustomization = {
    type = "structure",
    members = {
        DefaultTheme = {
            type = "string",
        },
        DefaultEmailCustomizationTemplate = {
            type = "string",
        },
    },
}

M.Edition = {
    STANDARD = "STANDARD",
    ENTERPRISE = "ENTERPRISE",
    ENTERPRISE_AND_Q = "ENTERPRISE_AND_Q",
}

M.AccountInfo = {
    type = "structure",
    members = {
        AccountName = {
            type = "string",
        },
        Edition = {
            type = "string",
        },
        NotificationEmail = {
            type = "string",
        },
        AuthenticationType = {
            type = "string",
        },
        AccountSubscriptionStatus = {
            type = "string",
        },
        IAMIdentityCenterInstanceArn = {
            type = "string",
        },
    },
}

M.AccountSettings = {
    type = "structure",
    members = {
        AccountName = {
            type = "string",
        },
        Edition = {
            type = "string",
        },
        DefaultNamespace = {
            type = "string",
        },
        NotificationEmail = {
            type = "string",
        },
        PublicSharingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        TerminationProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ReadAPIKeyConnectionMetadata = {
    type = "structure",
    members = {
        BaseEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Email = {
            type = "string",
        },
    },
}

M.AuthorizationCodeGrantCredentialsSource = {
    PLAIN_CREDENTIALS = "PLAIN_CREDENTIALS",
}

M.ReadAuthorizationCodeGrantDetails = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TokenEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizationEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReadAuthorizationCodeGrantCredentialsDetails = {
    type = "union",
    members = {
        ReadAuthorizationCodeGrantDetails = M.ReadAuthorizationCodeGrantDetails,
    },
}

M.ReadAuthorizationCodeGrantMetadata = {
    type = "structure",
    members = {
        BaseEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RedirectUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReadAuthorizationCodeGrantCredentialsDetails = M.ReadAuthorizationCodeGrantCredentialsDetails,
        AuthorizationCodeGrantCredentialsSource = {
            type = "string",
        },
    },
}

M.ReadBasicAuthConnectionMetadata = {
    type = "structure",
    members = {
        BaseEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClientCredentialsSource = {
    PLAIN_CREDENTIALS = "PLAIN_CREDENTIALS",
}

M.ReadClientCredentialsGrantDetails = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TokenEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReadClientCredentialsDetails = {
    type = "union",
    members = {
        ReadClientCredentialsGrantDetails = M.ReadClientCredentialsGrantDetails,
    },
}

M.ReadClientCredentialsGrantMetadata = {
    type = "structure",
    members = {
        BaseEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReadClientCredentialsDetails = M.ReadClientCredentialsDetails,
        ClientCredentialsSource = {
            type = "string",
        },
    },
}

M.ReadIamConnectionMetadata = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReadNoneConnectionMetadata = {
    type = "structure",
    members = {
        BaseEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReadAuthenticationMetadata = {
    type = "union",
    members = {
        AuthorizationCodeGrantMetadata = M.ReadAuthorizationCodeGrantMetadata,
        ClientCredentialsGrantMetadata = M.ReadClientCredentialsGrantMetadata,
        BasicAuthConnectionMetadata = M.ReadBasicAuthConnectionMetadata,
        ApiKeyConnectionMetadata = M.ReadAPIKeyConnectionMetadata,
        NoneConnectionMetadata = M.ReadNoneConnectionMetadata,
        IamConnectionMetadata = M.ReadIamConnectionMetadata,
    },
}

M.ConnectionAuthType = {
    BASIC = "BASIC",
    API_KEY = "API_KEY",
    OAUTH2_CLIENT_CREDENTIALS = "OAUTH2_CLIENT_CREDENTIALS",
    NONE = "NONE",
    IAM = "IAM",
    OAUTH2_AUTHORIZATION_CODE = "OAUTH2_AUTHORIZATION_CODE",
}

M.ReadAuthConfig = {
    type = "structure",
    members = {
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReadAuthenticationMetadata }),
    },
}

M.ActionConnectorErrorType = {
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.ActionConnectorError = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ResourceStatus = {
    CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS",
    CREATION_SUCCESSFUL = "CREATION_SUCCESSFUL",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_SUCCESSFUL = "UPDATE_SUCCESSFUL",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETED = "DELETED",
}

M.ActionConnectorType = {
    GENERIC_HTTP = "GENERIC_HTTP",
    SERVICENOW_NOW_PLATFORM = "SERVICENOW_NOW_PLATFORM",
    SALESFORCE_CRM = "SALESFORCE_CRM",
    MICROSOFT_OUTLOOK = "MICROSOFT_OUTLOOK",
    PAGERDUTY_ADVANCE = "PAGERDUTY_ADVANCE",
    JIRA_CLOUD = "JIRA_CLOUD",
    ATLASSIAN_CONFLUENCE = "ATLASSIAN_CONFLUENCE",
    AMAZON_S3 = "AMAZON_S3",
    AMAZON_BEDROCK_AGENT_RUNTIME = "AMAZON_BEDROCK_AGENT_RUNTIME",
    AMAZON_BEDROCK_RUNTIME = "AMAZON_BEDROCK_RUNTIME",
    AMAZON_BEDROCK_DATA_AUTOMATION_RUNTIME = "AMAZON_BEDROCK_DATA_AUTOMATION_RUNTIME",
    AMAZON_TEXTRACT = "AMAZON_TEXTRACT",
    AMAZON_COMPREHEND = "AMAZON_COMPREHEND",
    AMAZON_COMPREHEND_MEDICAL = "AMAZON_COMPREHEND_MEDICAL",
    MICROSOFT_ONEDRIVE = "MICROSOFT_ONEDRIVE",
    MICROSOFT_SHAREPOINT = "MICROSOFT_SHAREPOINT",
    MICROSOFT_TEAMS = "MICROSOFT_TEAMS",
    SAP_BUSINESSPARTNER = "SAP_BUSINESSPARTNER",
    SAP_PRODUCTMASTERDATA = "SAP_PRODUCTMASTERDATA",
    SAP_PHYSICALINVENTORY = "SAP_PHYSICALINVENTORY",
    SAP_BILLOFMATERIALS = "SAP_BILLOFMATERIALS",
    SAP_MATERIALSTOCK = "SAP_MATERIALSTOCK",
    ZENDESK_SUITE = "ZENDESK_SUITE",
    SMARTSHEET = "SMARTSHEET",
    SLACK = "SLACK",
    ASANA = "ASANA",
    BAMBOO_HR = "BAMBOO_HR",
}

M.ActionConnector = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionConnectorId = {
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
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        Error = M.ActionConnectorError,
        Description = {
            type = "string",
        },
        AuthenticationConfig = M.ReadAuthConfig,
        EnabledActions = {
            type = "list",
            member = { type = "string" },
        },
        VpcConnectionArn = {
            type = "string",
        },
    },
}

M.ActionConnectorSearchFilterNameEnum = {
    ACTION_CONNECTOR_NAME = "ACTION_CONNECTOR_NAME",
    ACTION_CONNECTOR_TYPE = "ACTION_CONNECTOR_TYPE",
    QUICKSIGHT_OWNER = "QUICKSIGHT_OWNER",
    QUICKSIGHT_VIEWER_OR_OWNER = "QUICKSIGHT_VIEWER_OR_OWNER",
    DIRECT_QUICKSIGHT_SOLE_OWNER = "DIRECT_QUICKSIGHT_SOLE_OWNER",
    DIRECT_QUICKSIGHT_OWNER = "DIRECT_QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_VIEWER_OR_OWNER = "DIRECT_QUICKSIGHT_VIEWER_OR_OWNER",
}

M.FilterOperator = {
    StringEquals = "StringEquals",
    StringLike = "StringLike",
}

M.ActionConnectorSearchFilter = {
    type = "structure",
    members = {
        Name = {
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
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionConnectorSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionConnectorId = {
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
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        Error = M.ActionConnectorError,
    },
}

M.ActiveIAMPolicyAssignment = {
    type = "structure",
    members = {
        AssignmentName = {
            type = "string",
        },
        PolicyArn = {
            type = "string",
        },
    },
}

M.DashboardBehavior = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AdHocFilteringOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.AggType = {
    SUM = "SUM",
    MIN = "MIN",
    MAX = "MAX",
    COUNT = "COUNT",
    AVERAGE = "AVERAGE",
    DISTINCT_COUNT = "DISTINCT_COUNT",
    STDEV = "STDEV",
    STDEVP = "STDEVP",
    VAR = "VAR",
    VARP = "VARP",
    PERCENTILE = "PERCENTILE",
    MEDIAN = "MEDIAN",
    PTD_SUM = "PTD_SUM",
    PTD_MIN = "PTD_MIN",
    PTD_MAX = "PTD_MAX",
    PTD_COUNT = "PTD_COUNT",
    PTD_DISTINCT_COUNT = "PTD_DISTINCT_COUNT",
    PTD_AVERAGE = "PTD_AVERAGE",
    COLUMN = "COLUMN",
    CUSTOM = "CUSTOM",
}

M.TopicTimeGranularity = {
    SECOND = "SECOND",
    MINUTE = "MINUTE",
    HOUR = "HOUR",
    DAY = "DAY",
    WEEK = "WEEK",
    MONTH = "MONTH",
    QUARTER = "QUARTER",
    YEAR = "YEAR",
}

M.AggFunction = {
    type = "structure",
    members = {
        Aggregation = {
            type = "string",
        },
        AggregationFunctionParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Period = {
            type = "string",
        },
        PeriodField = {
            type = "string",
        },
    },
}

M.DataPrepListAggregationFunction = {
    type = "structure",
    members = {
        InputColumnName = {
            type = "string",
        },
        Separator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Distinct = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.DataPrepSimpleAggregationFunctionType = {
    COUNT = "COUNT",
    DISTINCT_COUNT = "DISTINCT_COUNT",
    SUM = "SUM",
    AVERAGE = "AVERAGE",
    MAX = "MAX",
    MIN = "MIN",
}

M.DataPrepSimpleAggregationFunction = {
    type = "structure",
    members = {
        InputColumnName = {
            type = "string",
        },
        FunctionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataPrepAggregationFunction = {
    type = "structure",
    members = {
        SimpleAggregation = M.DataPrepSimpleAggregationFunction,
        ListAggregation = M.DataPrepListAggregationFunction,
    },
}

M.Aggregation = {
    type = "structure",
    members = {
        AggregationFunction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataPrepAggregationFunction }),
        NewColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewColumnId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSetColumnIdMapping = {
    type = "structure",
    members = {
        SourceColumnId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetColumnId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransformOperationSource = {
    type = "structure",
    members = {
        TransformOperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnIdMappings = {
            type = "list",
            member = M.DataSetColumnIdMapping,
        },
    },
}

M.AggregateOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformOperationSource }),
        GroupByColumnNames = {
            type = "list",
            member = { type = "string" },
        },
        Aggregations = {
            type = "list",
            member = M.Aggregation,
            traits = {
                required = true,
            },
        },
    },
}

M.SimpleAttributeAggregationFunction = {
    UNIQUE_VALUE = "UNIQUE_VALUE",
}

M.AttributeAggregationFunction = {
    type = "structure",
    members = {
        SimpleAttributeAggregation = {
            type = "string",
        },
        ValueForMultipleValues = {
            type = "string",
        },
    },
}

M.CategoricalAggregationFunction = {
    COUNT = "COUNT",
    DISTINCT_COUNT = "DISTINCT_COUNT",
}

M.DateAggregationFunction = {
    COUNT = "COUNT",
    DISTINCT_COUNT = "DISTINCT_COUNT",
    MIN = "MIN",
    MAX = "MAX",
}

M.PercentileAggregation = {
    type = "structure",
    members = {
        PercentileValue = {
            type = "double",
        },
    },
}

M.SimpleNumericalAggregationFunction = {
    SUM = "SUM",
    AVERAGE = "AVERAGE",
    MIN = "MIN",
    MAX = "MAX",
    COUNT = "COUNT",
    DISTINCT_COUNT = "DISTINCT_COUNT",
    VAR = "VAR",
    VARP = "VARP",
    STDEV = "STDEV",
    STDEVP = "STDEVP",
    MEDIAN = "MEDIAN",
}

M.NumericalAggregationFunction = {
    type = "structure",
    members = {
        SimpleNumericalAggregation = {
            type = "string",
        },
        PercentileAggregation = M.PercentileAggregation,
    },
}

M.AggregationFunction = {
    type = "structure",
    members = {
        NumericalAggregationFunction = M.NumericalAggregationFunction,
        CategoricalAggregationFunction = {
            type = "string",
        },
        DateAggregationFunction = {
            type = "string",
        },
        AttributeAggregationFunction = M.AttributeAggregationFunction,
    },
}

M.TimeGranularity = {
    YEAR = "YEAR",
    QUARTER = "QUARTER",
    MONTH = "MONTH",
    WEEK = "WEEK",
    DAY = "DAY",
    HOUR = "HOUR",
    MINUTE = "MINUTE",
    SECOND = "SECOND",
    MILLISECOND = "MILLISECOND",
}

M.AggregationPartitionBy = {
    type = "structure",
    members = {
        FieldName = {
            type = "string",
        },
        TimeGranularity = {
            type = "string",
        },
    },
}

M.ColumnIdentifier = {
    type = "structure",
    members = {
        DataSetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SortDirection = {
    ASC = "ASC",
    DESC = "DESC",
}

M.AggregationSortConfiguration = {
    type = "structure",
    members = {
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        SortDirection = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AggregationFunction = M.AggregationFunction,
    },
}

M.AllSheetsFilterScopeConfiguration = {
    type = "structure",
}

M.AmazonElasticsearchParameters = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AmazonOpenSearchParameters = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataQnAConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.DataStoriesConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.ExecutiveSummaryConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.GenerativeAuthoringConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.AmazonQInQuickSightConsoleConfigurations = {
    type = "structure",
    members = {
        DataQnA = M.DataQnAConfigurations,
        GenerativeAuthoring = M.GenerativeAuthoringConfigurations,
        ExecutiveSummary = M.ExecutiveSummaryConfigurations,
        DataStories = M.DataStoriesConfigurations,
    },
}

M.AmazonQInQuickSightDashboardConfigurations = {
    type = "structure",
    members = {
        ExecutiveSummary = M.ExecutiveSummaryConfigurations,
    },
}

M.AnalysisErrorType = {
    ACCESS_DENIED = "ACCESS_DENIED",
    SOURCE_NOT_FOUND = "SOURCE_NOT_FOUND",
    DATA_SET_NOT_FOUND = "DATA_SET_NOT_FOUND",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
    PARAMETER_VALUE_INCOMPATIBLE = "PARAMETER_VALUE_INCOMPATIBLE",
    PARAMETER_TYPE_INVALID = "PARAMETER_TYPE_INVALID",
    PARAMETER_NOT_FOUND = "PARAMETER_NOT_FOUND",
    COLUMN_TYPE_MISMATCH = "COLUMN_TYPE_MISMATCH",
    COLUMN_GEOGRAPHIC_ROLE_MISMATCH = "COLUMN_GEOGRAPHIC_ROLE_MISMATCH",
    COLUMN_REPLACEMENT_MISSING = "COLUMN_REPLACEMENT_MISSING",
}

M.Entity = {
    type = "structure",
    members = {
        Path = {
            type = "string",
        },
    },
}

M.AnalysisError = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ViolatedEntities = {
            type = "list",
            member = M.Entity,
        },
    },
}

M.LocalNavigationConfiguration = {
    type = "structure",
    members = {
        TargetSheetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomActionNavigationOperation = {
    type = "structure",
    members = {
        LocalNavigationConfiguration = M.LocalNavigationConfiguration,
    },
}

M.CustomParameterValues = {
    type = "structure",
    members = {
        StringValues = {
            type = "list",
            member = { type = "string" },
        },
        IntegerValues = {
            type = "list",
            member = { type = "long" },
        },
        DecimalValues = {
            type = "list",
            member = { type = "double" },
        },
        DateTimeValues = {
            type = "list",
            member = { type = "timestamp" },
        },
    },
}

M.CustomValuesConfiguration = {
    type = "structure",
    members = {
        IncludeNullValue = {
            type = "boolean",
        },
        CustomValues = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomParameterValues }),
    },
}

M.SelectAllValueOptions = {
    ALL_VALUES = "ALL_VALUES",
}

M.DestinationParameterValueConfiguration = {
    type = "structure",
    members = {
        CustomValuesConfiguration = M.CustomValuesConfiguration,
        SelectAllValueOptions = {
            type = "string",
        },
        SourceParameterName = {
            type = "string",
        },
        SourceField = {
            type = "string",
        },
        SourceColumn = M.ColumnIdentifier,
    },
}

M.SetParameterValueConfiguration = {
    type = "structure",
    members = {
        DestinationParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationParameterValueConfiguration }),
    },
}

M.CustomActionSetParametersOperation = {
    type = "structure",
    members = {
        ParameterValueConfigurations = {
            type = "list",
            member = M.SetParameterValueConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.URLTargetConfiguration = {
    NEW_TAB = "NEW_TAB",
    NEW_WINDOW = "NEW_WINDOW",
    SAME_TAB = "SAME_TAB",
}

M.CustomActionURLOperation = {
    type = "structure",
    members = {
        URLTemplate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        URLTarget = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageCustomActionOperation = {
    type = "structure",
    members = {
        NavigationOperation = M.CustomActionNavigationOperation,
        URLOperation = M.CustomActionURLOperation,
        SetParametersOperation = M.CustomActionSetParametersOperation,
    },
}

M.WidgetStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ImageCustomActionTrigger = {
    CLICK = "CLICK",
    MENU = "MENU",
}

M.ImageCustomAction = {
    type = "structure",
    members = {
        CustomActionId = {
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
        Status = {
            type = "string",
        },
        Trigger = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionOperations = {
            type = "list",
            member = M.ImageCustomActionOperation,
            traits = {
                required = true,
            },
        },
    },
}

M.ImageMenuOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.ImageInteractionOptions = {
    type = "structure",
    members = {
        ImageMenuOption = M.ImageMenuOption,
    },
}

M.SheetImageScalingType = {
    SCALE_TO_WIDTH = "SCALE_TO_WIDTH",
    SCALE_TO_HEIGHT = "SCALE_TO_HEIGHT",
    SCALE_TO_CONTAINER = "SCALE_TO_CONTAINER",
    SCALE_NONE = "SCALE_NONE",
}

M.SheetImageScalingConfiguration = {
    type = "structure",
    members = {
        ScalingType = {
            type = "string",
        },
    },
}

M.SheetImageStaticFileSource = {
    type = "structure",
    members = {
        StaticFileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SheetImageSource = {
    type = "structure",
    members = {
        SheetImageStaticFileSource = M.SheetImageStaticFileSource,
    },
}

M.SheetImageTooltipText = {
    type = "structure",
    members = {
        PlainText = {
            type = "string",
        },
    },
}

M.Visibility = {
    HIDDEN = "HIDDEN",
    VISIBLE = "VISIBLE",
}

M.SheetImageTooltipConfiguration = {
    type = "structure",
    members = {
        TooltipText = M.SheetImageTooltipText,
        Visibility = {
            type = "string",
        },
    },
}

M.SheetImage = {
    type = "structure",
    members = {
        SheetImageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SheetImageSource }),
        Scaling = M.SheetImageScalingConfiguration,
        Tooltip = M.SheetImageTooltipConfiguration,
        ImageContentAltText = {
            type = "string",
        },
        Interactions = M.ImageInteractionOptions,
        Actions = {
            type = "list",
            member = M.ImageCustomAction,
        },
    },
}

M.Sheet = {
    type = "structure",
    members = {
        SheetId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Images = {
            type = "list",
            member = M.SheetImage,
        },
    },
}

M.Analysis = {
    type = "structure",
    members = {
        AnalysisId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.AnalysisError,
        },
        DataSetArns = {
            type = "list",
            member = { type = "string" },
        },
        ThemeArn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        Sheets = {
            type = "list",
            member = M.Sheet,
        },
    },
}

M.FreeFormLayoutScreenCanvasSizeOptions = {
    type = "structure",
    members = {
        OptimizedViewPortWidth = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FreeFormLayoutCanvasSizeOptions = {
    type = "structure",
    members = {
        ScreenCanvasSizeOptions = M.FreeFormLayoutScreenCanvasSizeOptions,
    },
}

M.DefaultFreeFormLayoutConfiguration = {
    type = "structure",
    members = {
        CanvasSizeOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FreeFormLayoutCanvasSizeOptions }),
    },
}

M.ResizeOption = {
    FIXED = "FIXED",
    RESPONSIVE = "RESPONSIVE",
}

M.GridLayoutScreenCanvasSizeOptions = {
    type = "structure",
    members = {
        ResizeOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptimizedViewPortWidth = {
            type = "string",
        },
    },
}

M.GridLayoutCanvasSizeOptions = {
    type = "structure",
    members = {
        ScreenCanvasSizeOptions = M.GridLayoutScreenCanvasSizeOptions,
    },
}

M.DefaultGridLayoutConfiguration = {
    type = "structure",
    members = {
        CanvasSizeOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GridLayoutCanvasSizeOptions }),
    },
}

M.DefaultInteractiveLayoutConfiguration = {
    type = "structure",
    members = {
        Grid = M.DefaultGridLayoutConfiguration,
        FreeForm = M.DefaultFreeFormLayoutConfiguration,
    },
}

M.Spacing = {
    type = "structure",
    members = {
        Top = {
            type = "string",
        },
        Bottom = {
            type = "string",
        },
        Left = {
            type = "string",
        },
        Right = {
            type = "string",
        },
    },
}

M.PaperOrientation = {
    PORTRAIT = "PORTRAIT",
    LANDSCAPE = "LANDSCAPE",
}

M.PaperSize = {
    US_LETTER = "US_LETTER",
    US_LEGAL = "US_LEGAL",
    US_TABLOID_LEDGER = "US_TABLOID_LEDGER",
    A0 = "A0",
    A1 = "A1",
    A2 = "A2",
    A3 = "A3",
    A4 = "A4",
    A5 = "A5",
    JIS_B4 = "JIS_B4",
    JIS_B5 = "JIS_B5",
}

M.SectionBasedLayoutPaperCanvasSizeOptions = {
    type = "structure",
    members = {
        PaperSize = {
            type = "string",
        },
        PaperOrientation = {
            type = "string",
        },
        PaperMargin = M.Spacing,
    },
}

M.SectionBasedLayoutCanvasSizeOptions = {
    type = "structure",
    members = {
        PaperCanvasSizeOptions = M.SectionBasedLayoutPaperCanvasSizeOptions,
    },
}

M.DefaultSectionBasedLayoutConfiguration = {
    type = "structure",
    members = {
        CanvasSizeOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SectionBasedLayoutCanvasSizeOptions }),
    },
}

M.DefaultPaginatedLayoutConfiguration = {
    type = "structure",
    members = {
        SectionBased = M.DefaultSectionBasedLayoutConfiguration,
    },
}

M.SheetContentType = {
    PAGINATED = "PAGINATED",
    INTERACTIVE = "INTERACTIVE",
}

M.DefaultNewSheetConfiguration = {
    type = "structure",
    members = {
        InteractiveLayoutConfiguration = M.DefaultInteractiveLayoutConfiguration,
        PaginatedLayoutConfiguration = M.DefaultPaginatedLayoutConfiguration,
        SheetContentType = {
            type = "string",
        },
    },
}

M.AnalysisDefaults = {
    type = "structure",
    members = {
        DefaultNewSheetConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefaultNewSheetConfiguration }),
    },
}

M.CalculatedField = {
    type = "structure",
    members = {
        DataSetIdentifier = {
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
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SpecialValue = {
    EMPTY = "EMPTY",
    NULL = "NULL",
    OTHER = "OTHER",
}

M.CustomColor = {
    type = "structure",
    members = {
        FieldValue = {
            type = "string",
        },
        Color = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpecialValue = {
            type = "string",
        },
    },
}

M.ColorsConfiguration = {
    type = "structure",
    members = {
        CustomColors = {
            type = "list",
            member = M.CustomColor,
        },
    },
}

M.DecalPatternType = {
    SOLID = "SOLID",
    DIAGONAL_MEDIUM = "DIAGONAL_MEDIUM",
    CIRCLE_MEDIUM = "CIRCLE_MEDIUM",
    DIAMOND_GRID_MEDIUM = "DIAMOND_GRID_MEDIUM",
    CHECKERBOARD_MEDIUM = "CHECKERBOARD_MEDIUM",
    TRIANGLE_MEDIUM = "TRIANGLE_MEDIUM",
    DIAGONAL_OPPOSITE_MEDIUM = "DIAGONAL_OPPOSITE_MEDIUM",
    DIAMOND_MEDIUM = "DIAMOND_MEDIUM",
    DIAGONAL_LARGE = "DIAGONAL_LARGE",
    CIRCLE_LARGE = "CIRCLE_LARGE",
    DIAMOND_GRID_LARGE = "DIAMOND_GRID_LARGE",
    CHECKERBOARD_LARGE = "CHECKERBOARD_LARGE",
    TRIANGLE_LARGE = "TRIANGLE_LARGE",
    DIAGONAL_OPPOSITE_LARGE = "DIAGONAL_OPPOSITE_LARGE",
    DIAMOND_LARGE = "DIAMOND_LARGE",
    DIAGONAL_SMALL = "DIAGONAL_SMALL",
    CIRCLE_SMALL = "CIRCLE_SMALL",
    DIAMOND_GRID_SMALL = "DIAMOND_GRID_SMALL",
    CHECKERBOARD_SMALL = "CHECKERBOARD_SMALL",
    TRIANGLE_SMALL = "TRIANGLE_SMALL",
    DIAGONAL_OPPOSITE_SMALL = "DIAGONAL_OPPOSITE_SMALL",
    DIAMOND_SMALL = "DIAMOND_SMALL",
}

M.DecalStyleType = {
    Manual = "Manual",
    Auto = "Auto",
}

M.DecalSettings = {
    type = "structure",
    members = {
        ElementValue = {
            type = "string",
        },
        DecalVisibility = {
            type = "string",
        },
        DecalColor = {
            type = "string",
        },
        DecalPatternType = {
            type = "string",
        },
        DecalStyleType = {
            type = "string",
        },
    },
}

M.DecalSettingsConfiguration = {
    type = "structure",
    members = {
        CustomDecalSettings = {
            type = "list",
            member = M.DecalSettings,
        },
    },
}

M.NullValueFormatConfiguration = {
    type = "structure",
    members = {
        NullString = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DecimalPlacesConfiguration = {
    type = "structure",
    members = {
        DecimalPlaces = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.NegativeValueDisplayMode = {
    POSITIVE = "POSITIVE",
    NEGATIVE = "NEGATIVE",
}

M.NegativeValueConfiguration = {
    type = "structure",
    members = {
        DisplayMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NumberScale = {
    NONE = "NONE",
    AUTO = "AUTO",
    THOUSANDS = "THOUSANDS",
    MILLIONS = "MILLIONS",
    BILLIONS = "BILLIONS",
    TRILLIONS = "TRILLIONS",
    LAKHS = "LAKHS",
    CRORES = "CRORES",
}

M.NumericSeparatorSymbol = {
    COMMA = "COMMA",
    DOT = "DOT",
    SPACE = "SPACE",
}

M.DigitGroupingStyle = {
    DEFAULT = "DEFAULT",
    LAKHS = "LAKHS",
}

M.ThousandSeparatorOptions = {
    type = "structure",
    members = {
        Symbol = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        GroupingStyle = {
            type = "string",
        },
    },
}

M.NumericSeparatorConfiguration = {
    type = "structure",
    members = {
        DecimalSeparator = {
            type = "string",
        },
        ThousandsSeparator = M.ThousandSeparatorOptions,
    },
}

M.CurrencyDisplayFormatConfiguration = {
    type = "structure",
    members = {
        Prefix = {
            type = "string",
        },
        Suffix = {
            type = "string",
        },
        SeparatorConfiguration = M.NumericSeparatorConfiguration,
        Symbol = {
            type = "string",
        },
        DecimalPlacesConfiguration = M.DecimalPlacesConfiguration,
        NumberScale = {
            type = "string",
        },
        NegativeValueConfiguration = M.NegativeValueConfiguration,
        NullValueFormatConfiguration = M.NullValueFormatConfiguration,
    },
}

M.NumberDisplayFormatConfiguration = {
    type = "structure",
    members = {
        Prefix = {
            type = "string",
        },
        Suffix = {
            type = "string",
        },
        SeparatorConfiguration = M.NumericSeparatorConfiguration,
        DecimalPlacesConfiguration = M.DecimalPlacesConfiguration,
        NumberScale = {
            type = "string",
        },
        NegativeValueConfiguration = M.NegativeValueConfiguration,
        NullValueFormatConfiguration = M.NullValueFormatConfiguration,
    },
}

M.PercentageDisplayFormatConfiguration = {
    type = "structure",
    members = {
        Prefix = {
            type = "string",
        },
        Suffix = {
            type = "string",
        },
        SeparatorConfiguration = M.NumericSeparatorConfiguration,
        DecimalPlacesConfiguration = M.DecimalPlacesConfiguration,
        NegativeValueConfiguration = M.NegativeValueConfiguration,
        NullValueFormatConfiguration = M.NullValueFormatConfiguration,
    },
}

M.NumericFormatConfiguration = {
    type = "structure",
    members = {
        NumberDisplayFormatConfiguration = M.NumberDisplayFormatConfiguration,
        CurrencyDisplayFormatConfiguration = M.CurrencyDisplayFormatConfiguration,
        PercentageDisplayFormatConfiguration = M.PercentageDisplayFormatConfiguration,
    },
}

M.DateTimeFormatConfiguration = {
    type = "structure",
    members = {
        DateTimeFormat = {
            type = "string",
        },
        NullValueFormatConfiguration = M.NullValueFormatConfiguration,
        NumericFormatConfiguration = M.NumericFormatConfiguration,
    },
}

M.NumberFormatConfiguration = {
    type = "structure",
    members = {
        FormatConfiguration = M.NumericFormatConfiguration,
    },
}

M.StringFormatConfiguration = {
    type = "structure",
    members = {
        NullValueFormatConfiguration = M.NullValueFormatConfiguration,
        NumericFormatConfiguration = M.NumericFormatConfiguration,
    },
}

M.FormatConfiguration = {
    type = "structure",
    members = {
        StringFormatConfiguration = M.StringFormatConfiguration,
        NumberFormatConfiguration = M.NumberFormatConfiguration,
        DateTimeFormatConfiguration = M.DateTimeFormatConfiguration,
    },
}

M.ColumnRole = {
    DIMENSION = "DIMENSION",
    MEASURE = "MEASURE",
}

M.ColumnConfiguration = {
    type = "structure",
    members = {
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        FormatConfiguration = M.FormatConfiguration,
        Role = {
            type = "string",
        },
        ColorsConfiguration = M.ColorsConfiguration,
        DecalSettingsConfiguration = M.DecalSettingsConfiguration,
    },
}

M.DataSetIdentifierDeclaration = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CrossDatasetTypes = {
    ALL_DATASETS = "ALL_DATASETS",
    SINGLE_DATASET = "SINGLE_DATASET",
}

M.CategoryFilterMatchOperator = {
    EQUALS = "EQUALS",
    DOES_NOT_EQUAL = "DOES_NOT_EQUAL",
    CONTAINS = "CONTAINS",
    DOES_NOT_CONTAIN = "DOES_NOT_CONTAIN",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
}

M.FilterNullOption = {
    ALL_VALUES = "ALL_VALUES",
    NULLS_ONLY = "NULLS_ONLY",
    NON_NULLS_ONLY = "NON_NULLS_ONLY",
}

M.CategoryFilterSelectAllOptions = {
    FILTER_ALL_VALUES = "FILTER_ALL_VALUES",
}

M.CustomFilterConfiguration = {
    type = "structure",
    members = {
        MatchOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CategoryValue = {
            type = "string",
        },
        SelectAllOptions = {
            type = "string",
        },
        ParameterName = {
            type = "string",
        },
        NullOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomFilterListConfiguration = {
    type = "structure",
    members = {
        MatchOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CategoryValues = {
            type = "list",
            member = { type = "string" },
        },
        SelectAllOptions = {
            type = "string",
        },
        NullOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FilterListConfiguration = {
    type = "structure",
    members = {
        MatchOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CategoryValues = {
            type = "list",
            member = { type = "string" },
        },
        SelectAllOptions = {
            type = "string",
        },
        NullOption = {
            type = "string",
        },
    },
}

M.CategoryFilterConfiguration = {
    type = "structure",
    members = {
        FilterListConfiguration = M.FilterListConfiguration,
        CustomFilterListConfiguration = M.CustomFilterListConfiguration,
        CustomFilterConfiguration = M.CustomFilterConfiguration,
    },
}

M.CommitMode = {
    AUTO = "AUTO",
    MANUAL = "MANUAL",
}

M.SheetControlInfoIconLabelOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        InfoIconText = {
            type = "string",
        },
    },
}

M.FontDecoration = {
    UNDERLINE = "UNDERLINE",
    NONE = "NONE",
}

M.RelativeFontSize = {
    EXTRA_SMALL = "EXTRA_SMALL",
    SMALL = "SMALL",
    MEDIUM = "MEDIUM",
    LARGE = "LARGE",
    EXTRA_LARGE = "EXTRA_LARGE",
}

M.FontSize = {
    type = "structure",
    members = {
        Relative = {
            type = "string",
        },
        Absolute = {
            type = "string",
        },
    },
}

M.FontStyle = {
    NORMAL = "NORMAL",
    ITALIC = "ITALIC",
}

M.FontWeightName = {
    NORMAL = "NORMAL",
    BOLD = "BOLD",
}

M.FontWeight = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.FontConfiguration = {
    type = "structure",
    members = {
        FontSize = M.FontSize,
        FontDecoration = {
            type = "string",
        },
        FontColor = {
            type = "string",
        },
        FontWeight = M.FontWeight,
        FontStyle = {
            type = "string",
        },
        FontFamily = {
            type = "string",
        },
    },
}

M.LabelOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        FontConfiguration = M.FontConfiguration,
        CustomLabel = {
            type = "string",
        },
    },
}

M.DateTimePickerControlDisplayOptions = {
    type = "structure",
    members = {
        TitleOptions = M.LabelOptions,
        DateTimeFormat = {
            type = "string",
        },
        InfoIconLabelOptions = M.SheetControlInfoIconLabelOptions,
        HelperTextVisibility = {
            type = "string",
        },
        DateIconVisibility = {
            type = "string",
        },
    },
}

M.SheetControlDateTimePickerType = {
    SINGLE_VALUED = "SINGLE_VALUED",
    DATE_RANGE = "DATE_RANGE",
}

M.DefaultDateTimePickerControlOptions = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        DisplayOptions = M.DateTimePickerControlDisplayOptions,
        CommitMode = {
            type = "string",
        },
    },
}

M.ControlSortDirection = {
    ASC = "ASC",
    DESC = "DESC",
    USER_DEFINED_ORDER = "USER_DEFINED_ORDER",
}

M.SelectableValuesSort = {
    type = "structure",
    members = {
        Direction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ControlSortConfiguration = {
    type = "structure",
    members = {
        SelectableValuesSort = M.SelectableValuesSort,
        ControlColumnSort = M.AggregationSortConfiguration,
    },
}

M.ListControlSelectAllOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.DropDownControlDisplayOptions = {
    type = "structure",
    members = {
        SelectAllOptions = M.ListControlSelectAllOptions,
        TitleOptions = M.LabelOptions,
        InfoIconLabelOptions = M.SheetControlInfoIconLabelOptions,
    },
}

M.FilterSelectableValues = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SheetControlListType = {
    MULTI_SELECT = "MULTI_SELECT",
    SINGLE_SELECT = "SINGLE_SELECT",
}

M.DefaultFilterDropDownControlOptions = {
    type = "structure",
    members = {
        DisplayOptions = M.DropDownControlDisplayOptions,
        Type = {
            type = "string",
        },
        SelectableValues = M.FilterSelectableValues,
        CommitMode = {
            type = "string",
        },
        ControlSortConfigurations = {
            type = "list",
            member = M.ControlSortConfiguration,
        },
    },
}

M.ListControlSearchOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.ListControlDisplayOptions = {
    type = "structure",
    members = {
        SearchOptions = M.ListControlSearchOptions,
        SelectAllOptions = M.ListControlSelectAllOptions,
        TitleOptions = M.LabelOptions,
        InfoIconLabelOptions = M.SheetControlInfoIconLabelOptions,
    },
}

M.DefaultFilterListControlOptions = {
    type = "structure",
    members = {
        DisplayOptions = M.ListControlDisplayOptions,
        Type = {
            type = "string",
        },
        SelectableValues = M.FilterSelectableValues,
        ControlSortConfigurations = {
            type = "list",
            member = M.ControlSortConfiguration,
        },
    },
}

M.RelativeDateTimeControlDisplayOptions = {
    type = "structure",
    members = {
        TitleOptions = M.LabelOptions,
        DateTimeFormat = {
            type = "string",
        },
        InfoIconLabelOptions = M.SheetControlInfoIconLabelOptions,
    },
}

M.DefaultRelativeDateTimeControlOptions = {
    type = "structure",
    members = {
        DisplayOptions = M.RelativeDateTimeControlDisplayOptions,
        CommitMode = {
            type = "string",
        },
    },
}

M.SliderControlDisplayOptions = {
    type = "structure",
    members = {
        TitleOptions = M.LabelOptions,
        InfoIconLabelOptions = M.SheetControlInfoIconLabelOptions,
    },
}

M.SheetControlSliderType = {
    SINGLE_POINT = "SINGLE_POINT",
    RANGE = "RANGE",
}

M.DefaultSliderControlOptions = {
    type = "structure",
    members = {
        DisplayOptions = M.SliderControlDisplayOptions,
        Type = {
            type = "string",
        },
        MaximumValue = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        MinimumValue = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        StepSize = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.TextControlPlaceholderOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.TextAreaControlDisplayOptions = {
    type = "structure",
    members = {
        TitleOptions = M.LabelOptions,
        PlaceholderOptions = M.TextControlPlaceholderOptions,
        InfoIconLabelOptions = M.SheetControlInfoIconLabelOptions,
    },
}

M.DefaultTextAreaControlOptions = {
    type = "structure",
    members = {
        Delimiter = {
            type = "string",
        },
        DisplayOptions = M.TextAreaControlDisplayOptions,
    },
}

M.TextFieldControlDisplayOptions = {
    type = "structure",
    members = {
        TitleOptions = M.LabelOptions,
        PlaceholderOptions = M.TextControlPlaceholderOptions,
        InfoIconLabelOptions = M.SheetControlInfoIconLabelOptions,
    },
}

M.DefaultTextFieldControlOptions = {
    type = "structure",
    members = {
        DisplayOptions = M.TextFieldControlDisplayOptions,
    },
}

M.DefaultFilterControlOptions = {
    type = "structure",
    members = {
        DefaultDateTimePickerOptions = M.DefaultDateTimePickerControlOptions,
        DefaultListOptions = M.DefaultFilterListControlOptions,
        DefaultDropdownOptions = M.DefaultFilterDropDownControlOptions,
        DefaultTextFieldOptions = M.DefaultTextFieldControlOptions,
        DefaultTextAreaOptions = M.DefaultTextAreaControlOptions,
        DefaultSliderOptions = M.DefaultSliderControlOptions,
        DefaultRelativeDateTimeOptions = M.DefaultRelativeDateTimeControlOptions,
    },
}

M.ControlTitleFormatText = {
    type = "structure",
    members = {
        PlainText = {
            type = "string",
        },
        RichText = {
            type = "string",
        },
    },
}

M.DefaultFilterControlConfiguration = {
    type = "structure",
    members = {
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        ControlOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefaultFilterControlOptions }),
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.CategoryFilter = {
    type = "structure",
    members = {
        FilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CategoryFilterConfiguration }),
        DefaultFilterControlConfiguration = M.DefaultFilterControlConfiguration,
    },
}

M.CategoryInnerFilter = {
    type = "structure",
    members = {
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CategoryFilterConfiguration }),
        DefaultFilterControlConfiguration = M.DefaultFilterControlConfiguration,
    },
}

M.InnerFilter = {
    type = "structure",
    members = {
        CategoryInnerFilter = M.CategoryInnerFilter,
    },
}

M.NestedFilter = {
    type = "structure",
    members = {
        FilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        IncludeInnerSet = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        InnerFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InnerFilter }),
    },
}

M.NumericEqualityMatchOperator = {
    EQUALS = "EQUALS",
    DOES_NOT_EQUAL = "DOES_NOT_EQUAL",
}

M.NumericFilterSelectAllOptions = {
    FILTER_ALL_VALUES = "FILTER_ALL_VALUES",
}

M.NumericEqualityFilter = {
    type = "structure",
    members = {
        FilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        Value = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        SelectAllOptions = {
            type = "string",
        },
        MatchOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AggregationFunction = M.AggregationFunction,
        ParameterName = {
            type = "string",
        },
        NullOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultFilterControlConfiguration = M.DefaultFilterControlConfiguration,
    },
}

M.NumericRangeFilterValue = {
    type = "structure",
    members = {
        StaticValue = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Parameter = {
            type = "string",
        },
    },
}

M.NumericRangeFilter = {
    type = "structure",
    members = {
        FilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        IncludeMinimum = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        IncludeMaximum = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        RangeMinimum = M.NumericRangeFilterValue,
        RangeMaximum = M.NumericRangeFilterValue,
        SelectAllOptions = {
            type = "string",
        },
        AggregationFunction = M.AggregationFunction,
        NullOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultFilterControlConfiguration = M.DefaultFilterControlConfiguration,
    },
}

M.AnchorOption = {
    NOW = "NOW",
}

M.AnchorDateConfiguration = {
    type = "structure",
    members = {
        AnchorOption = {
            type = "string",
        },
        ParameterName = {
            type = "string",
        },
    },
}

M.ExcludePeriodConfiguration = {
    type = "structure",
    members = {
        Amount = {
            type = "integer",
            traits = {
                default = nil,
                required = true,
            },
        },
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
    },
}

M.RelativeDateType = {
    PREVIOUS = "PREVIOUS",
    THIS = "THIS",
    LAST = "LAST",
    NOW = "NOW",
    NEXT = "NEXT",
}

M.RelativeDatesFilter = {
    type = "structure",
    members = {
        FilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        AnchorDateConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnchorDateConfiguration }),
        MinimumGranularity = {
            type = "string",
        },
        TimeGranularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelativeDateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelativeDateValue = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        ParameterName = {
            type = "string",
        },
        NullOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExcludePeriodConfiguration = M.ExcludePeriodConfiguration,
        DefaultFilterControlConfiguration = M.DefaultFilterControlConfiguration,
    },
}

M.RollingDateConfiguration = {
    type = "structure",
    members = {
        DataSetIdentifier = {
            type = "string",
        },
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TimeEqualityFilter = {
    type = "structure",
    members = {
        FilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        Value = {
            type = "timestamp",
        },
        ParameterName = {
            type = "string",
        },
        TimeGranularity = {
            type = "string",
        },
        RollingDate = M.RollingDateConfiguration,
        DefaultFilterControlConfiguration = M.DefaultFilterControlConfiguration,
    },
}

M.TimeRangeFilterValue = {
    type = "structure",
    members = {
        StaticValue = {
            type = "timestamp",
        },
        RollingDate = M.RollingDateConfiguration,
        Parameter = {
            type = "string",
        },
    },
}

M.TimeRangeFilter = {
    type = "structure",
    members = {
        FilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        IncludeMinimum = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        IncludeMaximum = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        RangeMinimumValue = M.TimeRangeFilterValue,
        RangeMaximumValue = M.TimeRangeFilterValue,
        NullOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExcludePeriodConfiguration = M.ExcludePeriodConfiguration,
        TimeGranularity = {
            type = "string",
        },
        DefaultFilterControlConfiguration = M.DefaultFilterControlConfiguration,
    },
}

M.TopBottomFilter = {
    type = "structure",
    members = {
        FilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        Limit = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        AggregationSortConfigurations = {
            type = "list",
            member = M.AggregationSortConfiguration,
            traits = {
                required = true,
            },
        },
        TimeGranularity = {
            type = "string",
        },
        ParameterName = {
            type = "string",
        },
        DefaultFilterControlConfiguration = M.DefaultFilterControlConfiguration,
    },
}

M.Filter = {
    type = "structure",
    members = {
        CategoryFilter = M.CategoryFilter,
        NumericRangeFilter = M.NumericRangeFilter,
        NumericEqualityFilter = M.NumericEqualityFilter,
        TimeEqualityFilter = M.TimeEqualityFilter,
        TimeRangeFilter = M.TimeRangeFilter,
        RelativeDatesFilter = M.RelativeDatesFilter,
        TopBottomFilter = M.TopBottomFilter,
        NestedFilter = M.NestedFilter,
    },
}

M.FilterVisualScope = {
    ALL_VISUALS = "ALL_VISUALS",
    SELECTED_VISUALS = "SELECTED_VISUALS",
}

M.SheetVisualScopingConfiguration = {
    type = "structure",
    members = {
        SheetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VisualIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SelectedSheetsFilterScopeConfiguration = {
    type = "structure",
    members = {
        SheetVisualScopingConfigurations = {
            type = "list",
            member = M.SheetVisualScopingConfiguration,
        },
    },
}

M.FilterScopeConfiguration = {
    type = "structure",
    members = {
        SelectedSheets = M.SelectedSheetsFilterScopeConfiguration,
        AllSheets = M.AllSheetsFilterScopeConfiguration,
    },
}

M.FilterGroup = {
    type = "structure",
    members = {
        FilterGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.Filter,
            traits = {
                required = true,
            },
        },
        ScopeConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FilterScopeConfiguration }),
        Status = {
            type = "string",
        },
        CrossDataset = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VisualHighlightTrigger = {
    DATA_POINT_CLICK = "DATA_POINT_CLICK",
    DATA_POINT_HOVER = "DATA_POINT_HOVER",
    NONE = "NONE",
}

M.VisualHighlightOperation = {
    type = "structure",
    members = {
        Trigger = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VisualCustomActionDefaults = {
    type = "structure",
    members = {
        highlightOperation = M.VisualHighlightOperation,
    },
}

M.QBusinessInsightsStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DayOfTheWeek = {
    SUNDAY = "SUNDAY",
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
}

M.AssetOptions = {
    type = "structure",
    members = {
        Timezone = {
            type = "string",
        },
        WeekStart = {
            type = "string",
        },
        QBusinessInsightsStatus = {
            type = "string",
        },
        ExcludedDataSetArns = {
            type = "list",
            member = { type = "string" },
        },
        CustomActionDefaults = M.VisualCustomActionDefaults,
    },
}

M.DynamicDefaultValue = {
    type = "structure",
    members = {
        UserNameColumn = M.ColumnIdentifier,
        GroupNameColumn = M.ColumnIdentifier,
        DefaultValueColumn = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
    },
}

M.DateTimeDefaultValues = {
    type = "structure",
    members = {
        DynamicValue = M.DynamicDefaultValue,
        StaticValues = {
            type = "list",
            member = { type = "timestamp" },
        },
        RollingDate = M.RollingDateConfiguration,
    },
}

M.MappedDataSetParameter = {
    type = "structure",
    members = {
        DataSetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValueWhenUnsetOption = {
    RECOMMENDED_VALUE = "RECOMMENDED_VALUE",
    NULL = "NULL",
}

M.DateTimeValueWhenUnsetConfiguration = {
    type = "structure",
    members = {
        ValueWhenUnsetOption = {
            type = "string",
        },
        CustomValue = {
            type = "timestamp",
        },
    },
}

M.DateTimeParameterDeclaration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultValues = M.DateTimeDefaultValues,
        TimeGranularity = {
            type = "string",
        },
        ValueWhenUnset = M.DateTimeValueWhenUnsetConfiguration,
        MappedDataSetParameters = {
            type = "list",
            member = M.MappedDataSetParameter,
        },
    },
}

M.DecimalDefaultValues = {
    type = "structure",
    members = {
        DynamicValue = M.DynamicDefaultValue,
        StaticValues = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.ParameterValueType = {
    MULTI_VALUED = "MULTI_VALUED",
    SINGLE_VALUED = "SINGLE_VALUED",
}

M.DecimalValueWhenUnsetConfiguration = {
    type = "structure",
    members = {
        ValueWhenUnsetOption = {
            type = "string",
        },
        CustomValue = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.DecimalParameterDeclaration = {
    type = "structure",
    members = {
        ParameterValueType = {
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
        DefaultValues = M.DecimalDefaultValues,
        ValueWhenUnset = M.DecimalValueWhenUnsetConfiguration,
        MappedDataSetParameters = {
            type = "list",
            member = M.MappedDataSetParameter,
        },
    },
}

M.IntegerDefaultValues = {
    type = "structure",
    members = {
        DynamicValue = M.DynamicDefaultValue,
        StaticValues = {
            type = "list",
            member = { type = "long" },
        },
    },
}

M.IntegerValueWhenUnsetConfiguration = {
    type = "structure",
    members = {
        ValueWhenUnsetOption = {
            type = "string",
        },
        CustomValue = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.IntegerParameterDeclaration = {
    type = "structure",
    members = {
        ParameterValueType = {
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
        DefaultValues = M.IntegerDefaultValues,
        ValueWhenUnset = M.IntegerValueWhenUnsetConfiguration,
        MappedDataSetParameters = {
            type = "list",
            member = M.MappedDataSetParameter,
        },
    },
}

M.StringDefaultValues = {
    type = "structure",
    members = {
        DynamicValue = M.DynamicDefaultValue,
        StaticValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StringValueWhenUnsetConfiguration = {
    type = "structure",
    members = {
        ValueWhenUnsetOption = {
            type = "string",
        },
        CustomValue = {
            type = "string",
        },
    },
}

M.StringParameterDeclaration = {
    type = "structure",
    members = {
        ParameterValueType = {
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
        DefaultValues = M.StringDefaultValues,
        ValueWhenUnset = M.StringValueWhenUnsetConfiguration,
        MappedDataSetParameters = {
            type = "list",
            member = M.MappedDataSetParameter,
        },
    },
}

M.ParameterDeclaration = {
    type = "structure",
    members = {
        StringParameterDeclaration = M.StringParameterDeclaration,
        DecimalParameterDeclaration = M.DecimalParameterDeclaration,
        IntegerParameterDeclaration = M.IntegerParameterDeclaration,
        DateTimeParameterDeclaration = M.DateTimeParameterDeclaration,
    },
}

M.QueryExecutionMode = {
    AUTO = "AUTO",
    MANUAL = "MANUAL",
}

M.QueryExecutionOptions = {
    type = "structure",
    members = {
        QueryExecutionMode = {
            type = "string",
        },
    },
}

M.CascadingControlSource = {
    type = "structure",
    members = {
        SourceSheetControlId = {
            type = "string",
        },
        ColumnToMatch = M.ColumnIdentifier,
    },
}

M.CascadingControlConfiguration = {
    type = "structure",
    members = {
        SourceControls = {
            type = "list",
            member = M.CascadingControlSource,
        },
    },
}

M.FilterCrossSheetControl = {
    type = "structure",
    members = {
        FilterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CascadingControlConfiguration = M.CascadingControlConfiguration,
    },
}

M.FilterDateTimePickerControl = {
    type = "structure",
    members = {
        FilterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = M.DateTimePickerControlDisplayOptions,
        Type = {
            type = "string",
        },
        CommitMode = {
            type = "string",
        },
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.FilterDropDownControl = {
    type = "structure",
    members = {
        FilterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = M.DropDownControlDisplayOptions,
        Type = {
            type = "string",
        },
        SelectableValues = M.FilterSelectableValues,
        CascadingControlConfiguration = M.CascadingControlConfiguration,
        CommitMode = {
            type = "string",
        },
        ControlSortConfigurations = {
            type = "list",
            member = M.ControlSortConfiguration,
        },
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.FilterListControl = {
    type = "structure",
    members = {
        FilterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = M.ListControlDisplayOptions,
        Type = {
            type = "string",
        },
        SelectableValues = M.FilterSelectableValues,
        CascadingControlConfiguration = M.CascadingControlConfiguration,
        ControlSortConfigurations = {
            type = "list",
            member = M.ControlSortConfiguration,
        },
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.FilterRelativeDateTimeControl = {
    type = "structure",
    members = {
        FilterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = M.RelativeDateTimeControlDisplayOptions,
        CommitMode = {
            type = "string",
        },
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.FilterSliderControl = {
    type = "structure",
    members = {
        FilterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = M.SliderControlDisplayOptions,
        Type = {
            type = "string",
        },
        MaximumValue = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        MinimumValue = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        StepSize = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.FilterTextAreaControl = {
    type = "structure",
    members = {
        FilterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Delimiter = {
            type = "string",
        },
        DisplayOptions = M.TextAreaControlDisplayOptions,
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.FilterTextFieldControl = {
    type = "structure",
    members = {
        FilterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = M.TextFieldControlDisplayOptions,
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.FilterControl = {
    type = "structure",
    members = {
        DateTimePicker = M.FilterDateTimePickerControl,
        List = M.FilterListControl,
        Dropdown = M.FilterDropDownControl,
        TextField = M.FilterTextFieldControl,
        TextArea = M.FilterTextAreaControl,
        Slider = M.FilterSliderControl,
        RelativeDateTime = M.FilterRelativeDateTimeControl,
        CrossSheet = M.FilterCrossSheetControl,
    },
}

M.FreeFormLayoutElementBackgroundStyle = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        Color = {
            type = "string",
        },
    },
}

M.FreeFormLayoutElementBorderStyle = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        Color = {
            type = "string",
        },
        Width = {
            type = "string",
        },
    },
}

M.LayoutElementType = {
    VISUAL = "VISUAL",
    FILTER_CONTROL = "FILTER_CONTROL",
    PARAMETER_CONTROL = "PARAMETER_CONTROL",
    TEXT_BOX = "TEXT_BOX",
    IMAGE = "IMAGE",
}

M.LoadingAnimation = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.SheetElementConfigurationOverrides = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.SheetElementRenderingRule = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationOverrides = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SheetElementConfigurationOverrides }),
    },
}

M.FreeFormLayoutElement = {
    type = "structure",
    members = {
        ElementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ElementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        XAxisLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        YAxisLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Width = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Height = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Visibility = {
            type = "string",
        },
        RenderingRules = {
            type = "list",
            member = M.SheetElementRenderingRule,
        },
        BorderStyle = M.FreeFormLayoutElementBorderStyle,
        SelectedBorderStyle = M.FreeFormLayoutElementBorderStyle,
        BackgroundStyle = M.FreeFormLayoutElementBackgroundStyle,
        LoadingAnimation = M.LoadingAnimation,
        BorderRadius = {
            type = "string",
        },
        Padding = {
            type = "string",
        },
    },
}

M.SheetLayoutGroupMemberType = {
    ELEMENT = "ELEMENT",
    GROUP = "GROUP",
}

M.SheetLayoutGroupMember = {
    type = "structure",
    members = {
        Id = {
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
    },
}

M.SheetLayoutGroup = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Members = {
            type = "list",
            member = M.SheetLayoutGroupMember,
            traits = {
                required = true,
            },
        },
    },
}

M.FreeFormLayoutConfiguration = {
    type = "structure",
    members = {
        Elements = {
            type = "list",
            member = M.FreeFormLayoutElement,
            traits = {
                required = true,
            },
        },
        CanvasSizeOptions = M.FreeFormLayoutCanvasSizeOptions,
        Groups = {
            type = "list",
            member = M.SheetLayoutGroup,
        },
    },
}

M.GridLayoutElementBackgroundStyle = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        Color = {
            type = "string",
        },
    },
}

M.GridLayoutElementBorderStyle = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        Color = {
            type = "string",
        },
        Width = {
            type = "string",
        },
    },
}

M.GridLayoutElement = {
    type = "structure",
    members = {
        ElementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ElementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnIndex = {
            type = "integer",
        },
        ColumnSpan = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        RowIndex = {
            type = "integer",
        },
        RowSpan = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        BorderStyle = M.GridLayoutElementBorderStyle,
        SelectedBorderStyle = M.GridLayoutElementBorderStyle,
        BackgroundStyle = M.GridLayoutElementBackgroundStyle,
        LoadingAnimation = M.LoadingAnimation,
        BorderRadius = {
            type = "string",
        },
        Padding = {
            type = "string",
        },
    },
}

M.GridLayoutConfiguration = {
    type = "structure",
    members = {
        Elements = {
            type = "list",
            member = M.GridLayoutElement,
            traits = {
                required = true,
            },
        },
        CanvasSizeOptions = M.GridLayoutCanvasSizeOptions,
    },
}

M.FreeFormSectionLayoutConfiguration = {
    type = "structure",
    members = {
        Elements = {
            type = "list",
            member = M.FreeFormLayoutElement,
            traits = {
                required = true,
            },
        },
    },
}

M.SectionLayoutConfiguration = {
    type = "structure",
    members = {
        FreeFormLayout = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FreeFormSectionLayoutConfiguration }),
    },
}

M.BodySectionContent = {
    type = "structure",
    members = {
        Layout = M.SectionLayoutConfiguration,
    },
}

M.SectionPageBreakStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SectionAfterPageBreak = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.SectionPageBreakConfiguration = {
    type = "structure",
    members = {
        After = M.SectionAfterPageBreak,
    },
}

M.ColumnSort = {
    type = "structure",
    members = {
        SortBy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        Direction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AggregationFunction = M.AggregationFunction,
    },
}

M.BodySectionDynamicCategoryDimensionConfiguration = {
    type = "structure",
    members = {
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        Limit = {
            type = "integer",
        },
        SortByMetrics = {
            type = "list",
            member = M.ColumnSort,
        },
    },
}

M.BodySectionDynamicNumericDimensionConfiguration = {
    type = "structure",
    members = {
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        Limit = {
            type = "integer",
        },
        SortByMetrics = {
            type = "list",
            member = M.ColumnSort,
        },
    },
}

M.BodySectionRepeatDimensionConfiguration = {
    type = "structure",
    members = {
        DynamicCategoryDimensionConfiguration = M.BodySectionDynamicCategoryDimensionConfiguration,
        DynamicNumericDimensionConfiguration = M.BodySectionDynamicNumericDimensionConfiguration,
    },
}

M.BodySectionRepeatPageBreakConfiguration = {
    type = "structure",
    members = {
        After = M.SectionAfterPageBreak,
    },
}

M.BodySectionRepeatConfiguration = {
    type = "structure",
    members = {
        DimensionConfigurations = {
            type = "list",
            member = M.BodySectionRepeatDimensionConfiguration,
        },
        PageBreakConfiguration = M.BodySectionRepeatPageBreakConfiguration,
        NonRepeatingVisuals = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SectionStyle = {
    type = "structure",
    members = {
        Height = {
            type = "string",
        },
        Padding = M.Spacing,
    },
}

M.BodySectionConfiguration = {
    type = "structure",
    members = {
        SectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BodySectionContent }),
        Style = M.SectionStyle,
        PageBreakConfiguration = M.SectionPageBreakConfiguration,
        RepeatConfiguration = M.BodySectionRepeatConfiguration,
    },
}

M.HeaderFooterSectionConfiguration = {
    type = "structure",
    members = {
        SectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Layout = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SectionLayoutConfiguration }),
        Style = M.SectionStyle,
    },
}

M.SectionBasedLayoutConfiguration = {
    type = "structure",
    members = {
        HeaderSections = {
            type = "list",
            member = M.HeaderFooterSectionConfiguration,
            traits = {
                required = true,
            },
        },
        BodySections = {
            type = "list",
            member = M.BodySectionConfiguration,
            traits = {
                required = true,
            },
        },
        FooterSections = {
            type = "list",
            member = M.HeaderFooterSectionConfiguration,
            traits = {
                required = true,
            },
        },
        CanvasSizeOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SectionBasedLayoutCanvasSizeOptions }),
    },
}

M.LayoutConfiguration = {
    type = "structure",
    members = {
        GridLayout = M.GridLayoutConfiguration,
        FreeFormLayout = M.FreeFormLayoutConfiguration,
        SectionBasedLayout = M.SectionBasedLayoutConfiguration,
    },
}

M.Layout = {
    type = "structure",
    members = {
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LayoutConfiguration }),
    },
}

M.ParameterDateTimePickerControl = {
    type = "structure",
    members = {
        ParameterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = M.DateTimePickerControlDisplayOptions,
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.ParameterSelectableValues = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
        },
        LinkToDataSetColumn = M.ColumnIdentifier,
    },
}

M.ParameterDropDownControl = {
    type = "structure",
    members = {
        ParameterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = M.DropDownControlDisplayOptions,
        Type = {
            type = "string",
        },
        SelectableValues = M.ParameterSelectableValues,
        CascadingControlConfiguration = M.CascadingControlConfiguration,
        CommitMode = {
            type = "string",
        },
        ControlSortConfigurations = {
            type = "list",
            member = M.ControlSortConfiguration,
        },
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.ParameterListControl = {
    type = "structure",
    members = {
        ParameterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = M.ListControlDisplayOptions,
        Type = {
            type = "string",
        },
        SelectableValues = M.ParameterSelectableValues,
        CascadingControlConfiguration = M.CascadingControlConfiguration,
        ControlSortConfigurations = {
            type = "list",
            member = M.ControlSortConfiguration,
        },
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.ParameterSliderControl = {
    type = "structure",
    members = {
        ParameterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = M.SliderControlDisplayOptions,
        MaximumValue = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        MinimumValue = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        StepSize = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.ParameterTextAreaControl = {
    type = "structure",
    members = {
        ParameterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Delimiter = {
            type = "string",
        },
        DisplayOptions = M.TextAreaControlDisplayOptions,
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.ParameterTextFieldControl = {
    type = "structure",
    members = {
        ParameterControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SourceParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = M.TextFieldControlDisplayOptions,
        ControlTitleFormatText = M.ControlTitleFormatText,
    },
}

M.ParameterControl = {
    type = "structure",
    members = {
        DateTimePicker = M.ParameterDateTimePickerControl,
        List = M.ParameterListControl,
        Dropdown = M.ParameterDropDownControl,
        TextField = M.ParameterTextFieldControl,
        TextArea = M.ParameterTextAreaControl,
        Slider = M.ParameterSliderControl,
    },
}

M.SheetControlLayoutConfiguration = {
    type = "structure",
    members = {
        GridLayout = M.GridLayoutConfiguration,
    },
}

M.SheetControlLayout = {
    type = "structure",
    members = {
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SheetControlLayoutConfiguration }),
    },
}

M.TextBoxMenuOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.TextBoxInteractionOptions = {
    type = "structure",
    members = {
        TextBoxMenuOption = M.TextBoxMenuOption,
    },
}

M.SheetTextBox = {
    type = "structure",
    members = {
        SheetTextBoxId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
        },
        Interactions = M.TextBoxInteractionOptions,
    },
}

M.SelectedFieldOptions = {
    ALL_FIELDS = "ALL_FIELDS",
}

M.FilterOperationSelectedFieldsConfiguration = {
    type = "structure",
    members = {
        SelectedFields = {
            type = "list",
            member = { type = "string" },
        },
        SelectedFieldOptions = {
            type = "string",
        },
        SelectedColumns = {
            type = "list",
            member = M.ColumnIdentifier,
        },
    },
}

M.TargetVisualOptions = {
    ALL_VISUALS = "ALL_VISUALS",
}

M.SameSheetTargetVisualConfiguration = {
    type = "structure",
    members = {
        TargetVisuals = {
            type = "list",
            member = { type = "string" },
        },
        TargetVisualOptions = {
            type = "string",
        },
    },
}

M.FilterOperationTargetVisualsConfiguration = {
    type = "structure",
    members = {
        SameSheetTargetVisualConfiguration = M.SameSheetTargetVisualConfiguration,
    },
}

M.CustomActionFilterOperation = {
    type = "structure",
    members = {
        SelectedFieldsConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FilterOperationSelectedFieldsConfiguration }),
        TargetVisualsConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FilterOperationTargetVisualsConfiguration }),
    },
}

M.VisualCustomActionOperation = {
    type = "structure",
    members = {
        FilterOperation = M.CustomActionFilterOperation,
        NavigationOperation = M.CustomActionNavigationOperation,
        URLOperation = M.CustomActionURLOperation,
        SetParametersOperation = M.CustomActionSetParametersOperation,
    },
}

M.VisualCustomActionTrigger = {
    DATA_POINT_CLICK = "DATA_POINT_CLICK",
    DATA_POINT_MENU = "DATA_POINT_MENU",
}

M.VisualCustomAction = {
    type = "structure",
    members = {
        CustomActionId = {
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
        Status = {
            type = "string",
        },
        Trigger = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionOperations = {
            type = "list",
            member = M.VisualCustomActionOperation,
            traits = {
                required = true,
            },
        },
    },
}

M.BarsArrangement = {
    CLUSTERED = "CLUSTERED",
    STACKED = "STACKED",
    STACKED_PERCENT = "STACKED_PERCENT",
}

M.DateAxisOptions = {
    type = "structure",
    members = {
        MissingDateVisibility = {
            type = "string",
        },
    },
}

M.AxisDisplayDataDrivenRange = {
    type = "structure",
}

M.AxisDisplayMinMaxRange = {
    type = "structure",
    members = {
        Minimum = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Maximum = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.AxisDisplayRange = {
    type = "structure",
    members = {
        MinMax = M.AxisDisplayMinMaxRange,
        DataDriven = M.AxisDisplayDataDrivenRange,
    },
}

M.AxisLinearScale = {
    type = "structure",
    members = {
        StepCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        StepSize = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.AxisLogarithmicScale = {
    type = "structure",
    members = {
        Base = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.AxisScale = {
    type = "structure",
    members = {
        Linear = M.AxisLinearScale,
        Logarithmic = M.AxisLogarithmicScale,
    },
}

M.NumericAxisOptions = {
    type = "structure",
    members = {
        Scale = M.AxisScale,
        Range = M.AxisDisplayRange,
    },
}

M.AxisDataOptions = {
    type = "structure",
    members = {
        NumericAxisOptions = M.NumericAxisOptions,
        DateAxisOptions = M.DateAxisOptions,
    },
}

M.PercentVisibleRange = {
    type = "structure",
    members = {
        From = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        To = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.VisibleRangeOptions = {
    type = "structure",
    members = {
        PercentRange = M.PercentVisibleRange,
    },
}

M.ScrollBarOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        VisibleRange = M.VisibleRangeOptions,
    },
}

M.AxisTickLabelOptions = {
    type = "structure",
    members = {
        LabelOptions = M.LabelOptions,
        RotationAngle = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.AxisDisplayOptions = {
    type = "structure",
    members = {
        TickLabelOptions = M.AxisTickLabelOptions,
        AxisLineVisibility = {
            type = "string",
        },
        GridLineVisibility = {
            type = "string",
        },
        DataOptions = M.AxisDataOptions,
        ScrollbarOptions = M.ScrollBarOptions,
        AxisOffset = {
            type = "string",
        },
    },
}

M.AxisLabelReferenceOptions = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
    },
}

M.AxisLabelOptions = {
    type = "structure",
    members = {
        FontConfiguration = M.FontConfiguration,
        CustomLabel = {
            type = "string",
        },
        ApplyTo = M.AxisLabelReferenceOptions,
    },
}

M.ChartAxisLabelOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        SortIconVisibility = {
            type = "string",
        },
        AxisLabelOptions = {
            type = "list",
            member = M.AxisLabelOptions,
        },
    },
}

M.ContributionAnalysisDefault = {
    type = "structure",
    members = {
        MeasureFieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContributorDimensions = {
            type = "list",
            member = M.ColumnIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.DataPathLabelType = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
        },
        FieldValue = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.FieldLabelType = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.MaximumLabelType = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.MinimumLabelType = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.RangeEndsLabelType = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.DataLabelType = {
    type = "structure",
    members = {
        FieldLabelType = M.FieldLabelType,
        DataPathLabelType = M.DataPathLabelType,
        RangeEndsLabelType = M.RangeEndsLabelType,
        MinimumLabelType = M.MinimumLabelType,
        MaximumLabelType = M.MaximumLabelType,
    },
}

M.DataLabelContent = {
    VALUE = "VALUE",
    PERCENT = "PERCENT",
    VALUE_AND_PERCENT = "VALUE_AND_PERCENT",
}

M.DataLabelOverlap = {
    DISABLE_OVERLAP = "DISABLE_OVERLAP",
    ENABLE_OVERLAP = "ENABLE_OVERLAP",
}

M.DataLabelPosition = {
    INSIDE = "INSIDE",
    OUTSIDE = "OUTSIDE",
    LEFT = "LEFT",
    TOP = "TOP",
    BOTTOM = "BOTTOM",
    RIGHT = "RIGHT",
}

M.DataLabelOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        CategoryLabelVisibility = {
            type = "string",
        },
        MeasureLabelVisibility = {
            type = "string",
        },
        DataLabelTypes = {
            type = "list",
            member = M.DataLabelType,
        },
        Position = {
            type = "string",
        },
        LabelContent = {
            type = "string",
        },
        LabelFontConfiguration = M.FontConfiguration,
        LabelColor = {
            type = "string",
        },
        Overlap = {
            type = "string",
        },
        TotalsVisibility = {
            type = "string",
        },
    },
}

M.BorderSettings = {
    type = "structure",
    members = {
        BorderVisibility = {
            type = "string",
        },
        BorderWidth = {
            type = "string",
        },
        BorderColor = {
            type = "string",
        },
    },
}

M.BarChartDefaultSeriesSettings = {
    type = "structure",
    members = {
        DecalSettings = M.DecalSettings,
        BorderSettings = M.BorderSettings,
    },
}

M.CategoricalDimensionField = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        HierarchyId = {
            type = "string",
        },
        FormatConfiguration = M.StringFormatConfiguration,
    },
}

M.DateDimensionField = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        DateGranularity = {
            type = "string",
        },
        HierarchyId = {
            type = "string",
        },
        FormatConfiguration = M.DateTimeFormatConfiguration,
    },
}

M.NumericalDimensionField = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        HierarchyId = {
            type = "string",
        },
        FormatConfiguration = M.NumberFormatConfiguration,
    },
}

M.DimensionField = {
    type = "structure",
    members = {
        NumericalDimensionField = M.NumericalDimensionField,
        CategoricalDimensionField = M.CategoricalDimensionField,
        DateDimensionField = M.DateDimensionField,
    },
}

M.CalculatedMeasureField = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CategoricalMeasureField = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        AggregationFunction = {
            type = "string",
        },
        FormatConfiguration = M.StringFormatConfiguration,
    },
}

M.DateMeasureField = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        AggregationFunction = {
            type = "string",
        },
        FormatConfiguration = M.DateTimeFormatConfiguration,
    },
}

M.NumericalMeasureField = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        AggregationFunction = M.NumericalAggregationFunction,
        FormatConfiguration = M.NumberFormatConfiguration,
    },
}

M.MeasureField = {
    type = "structure",
    members = {
        NumericalMeasureField = M.NumericalMeasureField,
        CategoricalMeasureField = M.CategoricalMeasureField,
        DateMeasureField = M.DateMeasureField,
        CalculatedMeasureField = M.CalculatedMeasureField,
    },
}

M.BarChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Category = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
        Colors = {
            type = "list",
            member = M.DimensionField,
        },
        SmallMultiples = {
            type = "list",
            member = M.DimensionField,
        },
    },
}

M.BarChartFieldWells = {
    type = "structure",
    members = {
        BarChartAggregatedFieldWells = M.BarChartAggregatedFieldWells,
    },
}

M.ContextMenuOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.VisualMenuOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.VisualInteractionOptions = {
    type = "structure",
    members = {
        VisualMenuOption = M.VisualMenuOption,
        ContextMenuOption = M.ContextMenuOption,
    },
}

M.LegendPosition = {
    AUTO = "AUTO",
    RIGHT = "RIGHT",
    BOTTOM = "BOTTOM",
    TOP = "TOP",
}

M.LegendOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        Title = M.LabelOptions,
        Position = {
            type = "string",
        },
        Width = {
            type = "string",
        },
        Height = {
            type = "string",
        },
        ValueFontConfiguration = M.FontConfiguration,
    },
}

M.BarChartOrientation = {
    HORIZONTAL = "HORIZONTAL",
    VERTICAL = "VERTICAL",
}

M.AxisBinding = {
    PRIMARY_YAXIS = "PRIMARY_YAXIS",
    SECONDARY_YAXIS = "SECONDARY_YAXIS",
}

M.ReferenceLineDynamicDataConfiguration = {
    type = "structure",
    members = {
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        MeasureAggregationFunction = M.AggregationFunction,
        Calculation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NumericalAggregationFunction }),
    },
}

M.ReferenceLineSeriesType = {
    BAR = "BAR",
    LINE = "LINE",
}

M.ReferenceLineStaticDataConfiguration = {
    type = "structure",
    members = {
        Value = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ReferenceLineDataConfiguration = {
    type = "structure",
    members = {
        StaticConfiguration = M.ReferenceLineStaticDataConfiguration,
        DynamicConfiguration = M.ReferenceLineDynamicDataConfiguration,
        AxisBinding = {
            type = "string",
        },
        SeriesType = {
            type = "string",
        },
    },
}

M.ReferenceLineCustomLabelConfiguration = {
    type = "structure",
    members = {
        CustomLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReferenceLineLabelHorizontalPosition = {
    LEFT = "LEFT",
    CENTER = "CENTER",
    RIGHT = "RIGHT",
}

M.ReferenceLineValueLabelRelativePosition = {
    BEFORE_CUSTOM_LABEL = "BEFORE_CUSTOM_LABEL",
    AFTER_CUSTOM_LABEL = "AFTER_CUSTOM_LABEL",
}

M.ReferenceLineValueLabelConfiguration = {
    type = "structure",
    members = {
        RelativePosition = {
            type = "string",
        },
        FormatConfiguration = M.NumericFormatConfiguration,
    },
}

M.ReferenceLineLabelVerticalPosition = {
    ABOVE = "ABOVE",
    BELOW = "BELOW",
}

M.ReferenceLineLabelConfiguration = {
    type = "structure",
    members = {
        ValueLabelConfiguration = M.ReferenceLineValueLabelConfiguration,
        CustomLabelConfiguration = M.ReferenceLineCustomLabelConfiguration,
        FontConfiguration = M.FontConfiguration,
        FontColor = {
            type = "string",
        },
        HorizontalPosition = {
            type = "string",
        },
        VerticalPosition = {
            type = "string",
        },
    },
}

M.ReferenceLinePatternType = {
    SOLID = "SOLID",
    DASHED = "DASHED",
    DOTTED = "DOTTED",
}

M.ReferenceLineStyleConfiguration = {
    type = "structure",
    members = {
        Pattern = {
            type = "string",
        },
        Color = {
            type = "string",
        },
    },
}

M.ReferenceLine = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        DataConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReferenceLineDataConfiguration }),
        StyleConfiguration = M.ReferenceLineStyleConfiguration,
        LabelConfiguration = M.ReferenceLineLabelConfiguration,
    },
}

M.BarChartSeriesSettings = {
    type = "structure",
    members = {
        DecalSettings = M.DecalSettings,
        BorderSettings = M.BorderSettings,
    },
}

M.DataFieldBarSeriesItem = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldValue = {
            type = "string",
        },
        Settings = M.BarChartSeriesSettings,
    },
}

M.FieldBarSeriesItem = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = M.BarChartSeriesSettings,
    },
}

M.BarSeriesItem = {
    type = "structure",
    members = {
        FieldBarSeriesItem = M.FieldBarSeriesItem,
        DataFieldBarSeriesItem = M.DataFieldBarSeriesItem,
    },
}

M.PanelBorderStyle = {
    SOLID = "SOLID",
    DASHED = "DASHED",
    DOTTED = "DOTTED",
}

M.HorizontalTextAlignment = {
    LEFT = "LEFT",
    CENTER = "CENTER",
    RIGHT = "RIGHT",
    AUTO = "AUTO",
}

M.PanelTitleOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        FontConfiguration = M.FontConfiguration,
        HorizontalTextAlignment = {
            type = "string",
        },
    },
}

M.PanelConfiguration = {
    type = "structure",
    members = {
        Title = M.PanelTitleOptions,
        BorderVisibility = {
            type = "string",
        },
        BorderThickness = {
            type = "string",
        },
        BorderStyle = {
            type = "string",
        },
        BorderColor = {
            type = "string",
        },
        GutterVisibility = {
            type = "string",
        },
        GutterSpacing = {
            type = "string",
        },
        BackgroundVisibility = {
            type = "string",
        },
        BackgroundColor = {
            type = "string",
        },
    },
}

M.SmallMultiplesAxisPlacement = {
    OUTSIDE = "OUTSIDE",
    INSIDE = "INSIDE",
}

M.SmallMultiplesAxisScale = {
    SHARED = "SHARED",
    INDEPENDENT = "INDEPENDENT",
}

M.SmallMultiplesAxisProperties = {
    type = "structure",
    members = {
        Scale = {
            type = "string",
        },
        Placement = {
            type = "string",
        },
    },
}

M.SmallMultiplesOptions = {
    type = "structure",
    members = {
        MaxVisibleRows = {
            type = "long",
        },
        MaxVisibleColumns = {
            type = "long",
        },
        PanelConfiguration = M.PanelConfiguration,
        XAxis = M.SmallMultiplesAxisProperties,
        YAxis = M.SmallMultiplesAxisProperties,
    },
}

M.OtherCategories = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.ItemsLimitConfiguration = {
    type = "structure",
    members = {
        ItemsLimit = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        OtherCategories = {
            type = "string",
        },
    },
}

M.FieldSort = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Direction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FieldSortOptions = {
    type = "structure",
    members = {
        FieldSort = M.FieldSort,
        ColumnSort = M.ColumnSort,
    },
}

M.BarChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        CategoryItemsLimit = M.ItemsLimitConfiguration,
        ColorSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        ColorItemsLimit = M.ItemsLimitConfiguration,
        SmallMultiplesSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        SmallMultiplesLimitConfiguration = M.ItemsLimitConfiguration,
    },
}

M.TooltipTarget = {
    BOTH = "BOTH",
    BAR = "BAR",
    LINE = "LINE",
}

M.ColumnTooltipItem = {
    type = "structure",
    members = {
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        Label = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        Aggregation = M.AggregationFunction,
        TooltipTarget = {
            type = "string",
        },
    },
}

M.FieldTooltipItem = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Label = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        TooltipTarget = {
            type = "string",
        },
    },
}

M.TooltipItem = {
    type = "structure",
    members = {
        FieldTooltipItem = M.FieldTooltipItem,
        ColumnTooltipItem = M.ColumnTooltipItem,
    },
}

M.TooltipTitleType = {
    NONE = "NONE",
    PRIMARY_VALUE = "PRIMARY_VALUE",
}

M.FieldBasedTooltip = {
    type = "structure",
    members = {
        AggregationVisibility = {
            type = "string",
        },
        TooltipTitleType = {
            type = "string",
        },
        TooltipFields = {
            type = "list",
            member = M.TooltipItem,
        },
    },
}

M.SelectedTooltipType = {
    BASIC = "BASIC",
    DETAILED = "DETAILED",
    SHEET = "SHEET",
}

M.SheetTooltip = {
    type = "structure",
    members = {
        SheetId = {
            type = "string",
        },
    },
}

M.TooltipOptions = {
    type = "structure",
    members = {
        TooltipVisibility = {
            type = "string",
        },
        SelectedTooltipType = {
            type = "string",
        },
        FieldBasedTooltip = M.FieldBasedTooltip,
        SheetTooltip = M.SheetTooltip,
    },
}

M.PivotTableDataPathType = {
    HIERARCHY_ROWS_LAYOUT_COLUMN = "HIERARCHY_ROWS_LAYOUT_COLUMN",
    MULTIPLE_ROW_METRICS_COLUMN = "MULTIPLE_ROW_METRICS_COLUMN",
    EMPTY_COLUMN_HEADER = "EMPTY_COLUMN_HEADER",
    COUNT_METRIC_COLUMN = "COUNT_METRIC_COLUMN",
}

M.DataPathType = {
    type = "structure",
    members = {
        PivotTableDataPathType = {
            type = "string",
        },
    },
}

M.DataPathValue = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
        },
        FieldValue = {
            type = "string",
        },
        DataPathType = M.DataPathType,
    },
}

M.DataPathColor = {
    type = "structure",
    members = {
        Element = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataPathValue }),
        Color = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeGranularity = {
            type = "string",
        },
    },
}

M.VisualPalette = {
    type = "structure",
    members = {
        ChartColor = {
            type = "string",
        },
        ColorMap = {
            type = "list",
            member = M.DataPathColor,
        },
    },
}

M.BarChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.BarChartFieldWells,
        SortConfiguration = M.BarChartSortConfiguration,
        Orientation = {
            type = "string",
        },
        BarsArrangement = {
            type = "string",
        },
        VisualPalette = M.VisualPalette,
        SmallMultiplesOptions = M.SmallMultiplesOptions,
        CategoryAxis = M.AxisDisplayOptions,
        CategoryLabelOptions = M.ChartAxisLabelOptions,
        ValueAxis = M.AxisDisplayOptions,
        ValueLabelOptions = M.ChartAxisLabelOptions,
        ColorLabelOptions = M.ChartAxisLabelOptions,
        DefaultSeriesSettings = M.BarChartDefaultSeriesSettings,
        Series = {
            type = "list",
            member = M.BarSeriesItem,
        },
        Legend = M.LegendOptions,
        DataLabels = M.DataLabelOptions,
        Tooltip = M.TooltipOptions,
        ReferenceLines = {
            type = "list",
            member = M.ReferenceLine,
        },
        ContributionAnalysisDefaults = {
            type = "list",
            member = M.ContributionAnalysisDefault,
        },
        Interactions = M.VisualInteractionOptions,
    },
}

M.CategoryDrillDownFilter = {
    type = "structure",
    members = {
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        CategoryValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.NumericEqualityDrillDownFilter = {
    type = "structure",
    members = {
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        Value = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.TimeRangeDrillDownFilter = {
    type = "structure",
    members = {
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        RangeMinimum = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RangeMaximum = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        TimeGranularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DrillDownFilter = {
    type = "structure",
    members = {
        NumericEqualityFilter = M.NumericEqualityDrillDownFilter,
        CategoryFilter = M.CategoryDrillDownFilter,
        TimeRangeFilter = M.TimeRangeDrillDownFilter,
    },
}

M.DateTimeHierarchy = {
    type = "structure",
    members = {
        HierarchyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DrillDownFilters = {
            type = "list",
            member = M.DrillDownFilter,
        },
    },
}

M.ExplicitHierarchy = {
    type = "structure",
    members = {
        HierarchyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Columns = {
            type = "list",
            member = M.ColumnIdentifier,
            traits = {
                required = true,
            },
        },
        DrillDownFilters = {
            type = "list",
            member = M.DrillDownFilter,
        },
    },
}

M.PredefinedHierarchy = {
    type = "structure",
    members = {
        HierarchyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Columns = {
            type = "list",
            member = M.ColumnIdentifier,
            traits = {
                required = true,
            },
        },
        DrillDownFilters = {
            type = "list",
            member = M.DrillDownFilter,
        },
    },
}

M.ColumnHierarchy = {
    type = "structure",
    members = {
        ExplicitHierarchy = M.ExplicitHierarchy,
        DateTimeHierarchy = M.DateTimeHierarchy,
        PredefinedHierarchy = M.PredefinedHierarchy,
    },
}

M.LongFormatText = {
    type = "structure",
    members = {
        PlainText = {
            type = "string",
        },
        RichText = {
            type = "string",
        },
    },
}

M.VisualSubtitleLabelOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        FormatText = M.LongFormatText,
    },
}

M.ShortFormatText = {
    type = "structure",
    members = {
        PlainText = {
            type = "string",
        },
        RichText = {
            type = "string",
        },
    },
}

M.VisualTitleLabelOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        FormatText = M.ShortFormatText,
    },
}

M.BarChartVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.BarChartConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.BoxPlotFillStyle = {
    SOLID = "SOLID",
    TRANSPARENT = "TRANSPARENT",
}

M.BoxPlotStyleOptions = {
    type = "structure",
    members = {
        FillStyle = {
            type = "string",
        },
    },
}

M.BoxPlotOptions = {
    type = "structure",
    members = {
        StyleOptions = M.BoxPlotStyleOptions,
        OutlierVisibility = {
            type = "string",
        },
        AllDataPointsVisibility = {
            type = "string",
        },
    },
}

M.BoxPlotAggregatedFieldWells = {
    type = "structure",
    members = {
        GroupBy = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.BoxPlotFieldWells = {
    type = "structure",
    members = {
        BoxPlotAggregatedFieldWells = M.BoxPlotAggregatedFieldWells,
    },
}

M.PaginationConfiguration = {
    type = "structure",
    members = {
        PageSize = {
            type = "long",
            traits = {
                default = nil,
                required = true,
            },
        },
        PageNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.BoxPlotSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        PaginationConfiguration = M.PaginationConfiguration,
    },
}

M.BoxPlotChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.BoxPlotFieldWells,
        SortConfiguration = M.BoxPlotSortConfiguration,
        BoxPlotOptions = M.BoxPlotOptions,
        CategoryAxis = M.AxisDisplayOptions,
        CategoryLabelOptions = M.ChartAxisLabelOptions,
        PrimaryYAxisDisplayOptions = M.AxisDisplayOptions,
        PrimaryYAxisLabelOptions = M.ChartAxisLabelOptions,
        Legend = M.LegendOptions,
        Tooltip = M.TooltipOptions,
        ReferenceLines = {
            type = "list",
            member = M.ReferenceLine,
        },
        VisualPalette = M.VisualPalette,
        Interactions = M.VisualInteractionOptions,
    },
}

M.BoxPlotVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.BoxPlotChartConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.LineInterpolation = {
    LINEAR = "LINEAR",
    SMOOTH = "SMOOTH",
    STEPPED = "STEPPED",
}

M.LineChartLineStyle = {
    SOLID = "SOLID",
    DOTTED = "DOTTED",
    DASHED = "DASHED",
}

M.LineChartLineStyleSettings = {
    type = "structure",
    members = {
        LineVisibility = {
            type = "string",
        },
        LineInterpolation = {
            type = "string",
        },
        LineStyle = {
            type = "string",
        },
        LineWidth = {
            type = "string",
        },
    },
}

M.LineChartMarkerShape = {
    CIRCLE = "CIRCLE",
    TRIANGLE = "TRIANGLE",
    SQUARE = "SQUARE",
    DIAMOND = "DIAMOND",
    ROUNDED_SQUARE = "ROUNDED_SQUARE",
}

M.LineChartMarkerStyleSettings = {
    type = "structure",
    members = {
        MarkerVisibility = {
            type = "string",
        },
        MarkerShape = {
            type = "string",
        },
        MarkerSize = {
            type = "string",
        },
        MarkerColor = {
            type = "string",
        },
    },
}

M.ComboChartDefaultSeriesSettings = {
    type = "structure",
    members = {
        LineStyleSettings = M.LineChartLineStyleSettings,
        MarkerStyleSettings = M.LineChartMarkerStyleSettings,
        DecalSettings = M.DecalSettings,
        BorderSettings = M.BorderSettings,
    },
}

M.ComboChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Category = {
            type = "list",
            member = M.DimensionField,
        },
        BarValues = {
            type = "list",
            member = M.MeasureField,
        },
        Colors = {
            type = "list",
            member = M.DimensionField,
        },
        LineValues = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.ComboChartFieldWells = {
    type = "structure",
    members = {
        ComboChartAggregatedFieldWells = M.ComboChartAggregatedFieldWells,
    },
}

M.ComboChartSeriesSettings = {
    type = "structure",
    members = {
        LineStyleSettings = M.LineChartLineStyleSettings,
        MarkerStyleSettings = M.LineChartMarkerStyleSettings,
        DecalSettings = M.DecalSettings,
        BorderSettings = M.BorderSettings,
    },
}

M.DataFieldComboSeriesItem = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldValue = {
            type = "string",
        },
        Settings = M.ComboChartSeriesSettings,
    },
}

M.FieldComboSeriesItem = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = M.ComboChartSeriesSettings,
    },
}

M.ComboSeriesItem = {
    type = "structure",
    members = {
        FieldComboSeriesItem = M.FieldComboSeriesItem,
        DataFieldComboSeriesItem = M.DataFieldComboSeriesItem,
    },
}

M.SingleYAxisOption = {
    PRIMARY_Y_AXIS = "PRIMARY_Y_AXIS",
}

M.YAxisOptions = {
    type = "structure",
    members = {
        YAxis = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SingleAxisOptions = {
    type = "structure",
    members = {
        YAxisOptions = M.YAxisOptions,
    },
}

M.ComboChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        CategoryItemsLimit = M.ItemsLimitConfiguration,
        ColorSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        ColorItemsLimit = M.ItemsLimitConfiguration,
    },
}

M.ComboChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.ComboChartFieldWells,
        SortConfiguration = M.ComboChartSortConfiguration,
        BarsArrangement = {
            type = "string",
        },
        CategoryAxis = M.AxisDisplayOptions,
        CategoryLabelOptions = M.ChartAxisLabelOptions,
        PrimaryYAxisDisplayOptions = M.AxisDisplayOptions,
        PrimaryYAxisLabelOptions = M.ChartAxisLabelOptions,
        SecondaryYAxisDisplayOptions = M.AxisDisplayOptions,
        SecondaryYAxisLabelOptions = M.ChartAxisLabelOptions,
        SingleAxisOptions = M.SingleAxisOptions,
        ColorLabelOptions = M.ChartAxisLabelOptions,
        DefaultSeriesSettings = M.ComboChartDefaultSeriesSettings,
        Series = {
            type = "list",
            member = M.ComboSeriesItem,
        },
        Legend = M.LegendOptions,
        BarDataLabels = M.DataLabelOptions,
        LineDataLabels = M.DataLabelOptions,
        Tooltip = M.TooltipOptions,
        ReferenceLines = {
            type = "list",
            member = M.ReferenceLine,
        },
        VisualPalette = M.VisualPalette,
        Interactions = M.VisualInteractionOptions,
    },
}

M.ComboChartVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.ComboChartConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.CustomContentType = {
    IMAGE = "IMAGE",
    OTHER_EMBEDDED_CONTENT = "OTHER_EMBEDDED_CONTENT",
}

M.CustomContentImageScalingConfiguration = {
    FIT_TO_HEIGHT = "FIT_TO_HEIGHT",
    FIT_TO_WIDTH = "FIT_TO_WIDTH",
    DO_NOT_SCALE = "DO_NOT_SCALE",
    SCALE_TO_VISUAL = "SCALE_TO_VISUAL",
}

M.CustomContentConfiguration = {
    type = "structure",
    members = {
        ContentUrl = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        ImageScaling = {
            type = "string",
        },
        Interactions = M.VisualInteractionOptions,
    },
}

M.CustomContentVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.CustomContentConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        DataSetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.EmptyVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
    },
}

M.FilledMapAggregatedFieldWells = {
    type = "structure",
    members = {
        Geospatial = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.FilledMapFieldWells = {
    type = "structure",
    members = {
        FilledMapAggregatedFieldWells = M.FilledMapAggregatedFieldWells,
    },
}

M.BaseMapStyleType = {
    LIGHT_GRAY = "LIGHT_GRAY",
    DARK_GRAY = "DARK_GRAY",
    STREET = "STREET",
    IMAGERY = "IMAGERY",
}

M.GeospatialMapStyleOptions = {
    type = "structure",
    members = {
        BaseMapStyle = {
            type = "string",
        },
    },
}

M.FilledMapSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member = M.FieldSortOptions,
        },
    },
}

M.GeospatialCoordinateBounds = {
    type = "structure",
    members = {
        North = {
            type = "double",
            traits = {
                required = true,
            },
        },
        South = {
            type = "double",
            traits = {
                required = true,
            },
        },
        West = {
            type = "double",
            traits = {
                required = true,
            },
        },
        East = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.MapZoomMode = {
    AUTO = "AUTO",
    MANUAL = "MANUAL",
}

M.GeospatialWindowOptions = {
    type = "structure",
    members = {
        Bounds = M.GeospatialCoordinateBounds,
        MapZoomMode = {
            type = "string",
        },
    },
}

M.FilledMapConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.FilledMapFieldWells,
        SortConfiguration = M.FilledMapSortConfiguration,
        Legend = M.LegendOptions,
        Tooltip = M.TooltipOptions,
        WindowOptions = M.GeospatialWindowOptions,
        MapStyleOptions = M.GeospatialMapStyleOptions,
        Interactions = M.VisualInteractionOptions,
    },
}

M.GradientStop = {
    type = "structure",
    members = {
        GradientOffset = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        DataValue = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Color = {
            type = "string",
        },
    },
}

M.GradientColor = {
    type = "structure",
    members = {
        Stops = {
            type = "list",
            member = M.GradientStop,
        },
    },
}

M.ConditionalFormattingGradientColor = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Color = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GradientColor }),
    },
}

M.ConditionalFormattingSolidColor = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Color = {
            type = "string",
        },
    },
}

M.ConditionalFormattingColor = {
    type = "structure",
    members = {
        Solid = M.ConditionalFormattingSolidColor,
        Gradient = M.ConditionalFormattingGradientColor,
    },
}

M.ShapeConditionalFormat = {
    type = "structure",
    members = {
        BackgroundColor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConditionalFormattingColor }),
    },
}

M.FilledMapShapeConditionalFormatting = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Format = M.ShapeConditionalFormat,
    },
}

M.FilledMapConditionalFormattingOption = {
    type = "structure",
    members = {
        Shape = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FilledMapShapeConditionalFormatting }),
    },
}

M.FilledMapConditionalFormatting = {
    type = "structure",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member = M.FilledMapConditionalFormattingOption,
            traits = {
                required = true,
            },
        },
    },
}

M.Coordinate = {
    type = "structure",
    members = {
        Latitude = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Longitude = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.GeocoderHierarchy = {
    type = "structure",
    members = {
        Country = {
            type = "string",
        },
        State = {
            type = "string",
        },
        County = {
            type = "string",
        },
        City = {
            type = "string",
        },
        PostCode = {
            type = "string",
        },
    },
}

M.GeocodePreferenceValue = {
    type = "union",
    members = {
        GeocoderHierarchy = M.GeocoderHierarchy,
        Coordinate = M.Coordinate,
    },
}

M.GeocodePreference = {
    type = "structure",
    members = {
        RequestKey = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeocoderHierarchy }),
        Preference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeocodePreferenceValue }),
    },
}

M.FilledMapVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.FilledMapConfiguration,
        ConditionalFormatting = M.FilledMapConditionalFormatting,
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        VisualContentAltText = {
            type = "string",
        },
        GeocodingPreferences = {
            type = "list",
            member = M.GeocodePreference,
        },
    },
}

M.FunnelChartMeasureDataLabelStyle = {
    VALUE_ONLY = "VALUE_ONLY",
    PERCENTAGE_BY_FIRST_STAGE = "PERCENTAGE_BY_FIRST_STAGE",
    PERCENTAGE_BY_PREVIOUS_STAGE = "PERCENTAGE_BY_PREVIOUS_STAGE",
    VALUE_AND_PERCENTAGE_BY_FIRST_STAGE = "VALUE_AND_PERCENTAGE_BY_FIRST_STAGE",
    VALUE_AND_PERCENTAGE_BY_PREVIOUS_STAGE = "VALUE_AND_PERCENTAGE_BY_PREVIOUS_STAGE",
}

M.FunnelChartDataLabelOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        CategoryLabelVisibility = {
            type = "string",
        },
        MeasureLabelVisibility = {
            type = "string",
        },
        Position = {
            type = "string",
        },
        LabelFontConfiguration = M.FontConfiguration,
        LabelColor = {
            type = "string",
        },
        MeasureDataLabelStyle = {
            type = "string",
        },
    },
}

M.FunnelChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Category = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.FunnelChartFieldWells = {
    type = "structure",
    members = {
        FunnelChartAggregatedFieldWells = M.FunnelChartAggregatedFieldWells,
    },
}

M.FunnelChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        CategoryItemsLimit = M.ItemsLimitConfiguration,
    },
}

M.FunnelChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.FunnelChartFieldWells,
        SortConfiguration = M.FunnelChartSortConfiguration,
        CategoryLabelOptions = M.ChartAxisLabelOptions,
        ValueLabelOptions = M.ChartAxisLabelOptions,
        Tooltip = M.TooltipOptions,
        DataLabelOptions = M.FunnelChartDataLabelOptions,
        VisualPalette = M.VisualPalette,
        Interactions = M.VisualInteractionOptions,
    },
}

M.FunnelChartVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.FunnelChartConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.GaugeChartColorConfiguration = {
    type = "structure",
    members = {
        ForegroundColor = {
            type = "string",
        },
        BackgroundColor = {
            type = "string",
        },
    },
}

M.GaugeChartFieldWells = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member = M.MeasureField,
        },
        TargetValues = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.ArcThicknessOptions = {
    SMALL = "SMALL",
    MEDIUM = "MEDIUM",
    LARGE = "LARGE",
}

M.ArcConfiguration = {
    type = "structure",
    members = {
        ArcAngle = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        ArcThickness = {
            type = "string",
        },
    },
}

M.ArcAxisDisplayRange = {
    type = "structure",
    members = {
        Min = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Max = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.ArcAxisConfiguration = {
    type = "structure",
    members = {
        Range = M.ArcAxisDisplayRange,
        ReserveRange = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ComparisonFormatConfiguration = {
    type = "structure",
    members = {
        NumberDisplayFormatConfiguration = M.NumberDisplayFormatConfiguration,
        PercentageDisplayFormatConfiguration = M.PercentageDisplayFormatConfiguration,
    },
}

M.ComparisonMethod = {
    DIFFERENCE = "DIFFERENCE",
    PERCENT_DIFFERENCE = "PERCENT_DIFFERENCE",
    PERCENT = "PERCENT",
}

M.ComparisonConfiguration = {
    type = "structure",
    members = {
        ComparisonMethod = {
            type = "string",
        },
        ComparisonFormat = M.ComparisonFormatConfiguration,
    },
}

M.PrimaryValueDisplayType = {
    HIDDEN = "HIDDEN",
    COMPARISON = "COMPARISON",
    ACTUAL = "ACTUAL",
}

M.GaugeChartOptions = {
    type = "structure",
    members = {
        PrimaryValueDisplayType = {
            type = "string",
        },
        Comparison = M.ComparisonConfiguration,
        ArcAxis = M.ArcAxisConfiguration,
        Arc = M.ArcConfiguration,
        PrimaryValueFontConfiguration = M.FontConfiguration,
    },
}

M.GaugeChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.GaugeChartFieldWells,
        GaugeChartOptions = M.GaugeChartOptions,
        DataLabels = M.DataLabelOptions,
        TooltipOptions = M.TooltipOptions,
        VisualPalette = M.VisualPalette,
        ColorConfiguration = M.GaugeChartColorConfiguration,
        Interactions = M.VisualInteractionOptions,
    },
}

M.GaugeChartArcConditionalFormatting = {
    type = "structure",
    members = {
        ForegroundColor = M.ConditionalFormattingColor,
    },
}

M.ConditionalFormattingIconDisplayOption = {
    ICON_ONLY = "ICON_ONLY",
}

M.ConditionalFormattingIconDisplayConfiguration = {
    type = "structure",
    members = {
        IconDisplayOption = {
            type = "string",
        },
    },
}

M.Icon = {
    CARET_UP = "CARET_UP",
    CARET_DOWN = "CARET_DOWN",
    PLUS = "PLUS",
    MINUS = "MINUS",
    ARROW_UP = "ARROW_UP",
    ARROW_DOWN = "ARROW_DOWN",
    ARROW_LEFT = "ARROW_LEFT",
    ARROW_UP_LEFT = "ARROW_UP_LEFT",
    ARROW_DOWN_LEFT = "ARROW_DOWN_LEFT",
    ARROW_RIGHT = "ARROW_RIGHT",
    ARROW_UP_RIGHT = "ARROW_UP_RIGHT",
    ARROW_DOWN_RIGHT = "ARROW_DOWN_RIGHT",
    FACE_UP = "FACE_UP",
    FACE_DOWN = "FACE_DOWN",
    FACE_FLAT = "FACE_FLAT",
    ONE_BAR = "ONE_BAR",
    TWO_BAR = "TWO_BAR",
    THREE_BAR = "THREE_BAR",
    CIRCLE = "CIRCLE",
    TRIANGLE = "TRIANGLE",
    SQUARE = "SQUARE",
    FLAG = "FLAG",
    THUMBS_UP = "THUMBS_UP",
    THUMBS_DOWN = "THUMBS_DOWN",
    CHECKMARK = "CHECKMARK",
    X = "X",
}

M.ConditionalFormattingCustomIconOptions = {
    type = "structure",
    members = {
        Icon = {
            type = "string",
        },
        UnicodeIcon = {
            type = "string",
        },
    },
}

M.ConditionalFormattingCustomIconCondition = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IconOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConditionalFormattingCustomIconOptions }),
        Color = {
            type = "string",
        },
        DisplayConfiguration = M.ConditionalFormattingIconDisplayConfiguration,
    },
}

M.ConditionalFormattingIconSetType = {
    PLUS_MINUS = "PLUS_MINUS",
    CHECK_X = "CHECK_X",
    THREE_COLOR_ARROW = "THREE_COLOR_ARROW",
    THREE_GRAY_ARROW = "THREE_GRAY_ARROW",
    CARET_UP_MINUS_DOWN = "CARET_UP_MINUS_DOWN",
    THREE_SHAPE = "THREE_SHAPE",
    THREE_CIRCLE = "THREE_CIRCLE",
    FLAGS = "FLAGS",
    BARS = "BARS",
    FOUR_COLOR_ARROW = "FOUR_COLOR_ARROW",
    FOUR_GRAY_ARROW = "FOUR_GRAY_ARROW",
}

M.ConditionalFormattingIconSet = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IconSetType = {
            type = "string",
        },
    },
}

M.ConditionalFormattingIcon = {
    type = "structure",
    members = {
        IconSet = M.ConditionalFormattingIconSet,
        CustomCondition = M.ConditionalFormattingCustomIconCondition,
    },
}

M.GaugeChartPrimaryValueConditionalFormatting = {
    type = "structure",
    members = {
        TextColor = M.ConditionalFormattingColor,
        Icon = M.ConditionalFormattingIcon,
    },
}

M.GaugeChartConditionalFormattingOption = {
    type = "structure",
    members = {
        PrimaryValue = M.GaugeChartPrimaryValueConditionalFormatting,
        Arc = M.GaugeChartArcConditionalFormatting,
    },
}

M.GaugeChartConditionalFormatting = {
    type = "structure",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member = M.GaugeChartConditionalFormattingOption,
        },
    },
}

M.GaugeChartVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.GaugeChartConfiguration,
        ConditionalFormatting = M.GaugeChartConditionalFormatting,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.GeospatialMapAggregatedFieldWells = {
    type = "structure",
    members = {
        Geospatial = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
        Colors = {
            type = "list",
            member = M.DimensionField,
        },
    },
}

M.GeospatialMapFieldWells = {
    type = "structure",
    members = {
        GeospatialMapAggregatedFieldWells = M.GeospatialMapAggregatedFieldWells,
    },
}

M.SimpleClusterMarker = {
    type = "structure",
    members = {
        Color = {
            type = "string",
        },
    },
}

M.ClusterMarker = {
    type = "structure",
    members = {
        SimpleClusterMarker = M.SimpleClusterMarker,
    },
}

M.ClusterMarkerConfiguration = {
    type = "structure",
    members = {
        ClusterMarker = M.ClusterMarker,
    },
}

M.GeospatialHeatmapDataColor = {
    type = "structure",
    members = {
        Color = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GeospatialHeatmapColorScale = {
    type = "structure",
    members = {
        Colors = {
            type = "list",
            member = M.GeospatialHeatmapDataColor,
        },
    },
}

M.GeospatialHeatmapConfiguration = {
    type = "structure",
    members = {
        HeatmapColor = M.GeospatialHeatmapColorScale,
    },
}

M.GeospatialSelectedPointStyle = {
    POINT = "POINT",
    CLUSTER = "CLUSTER",
    HEATMAP = "HEATMAP",
}

M.GeospatialPointStyleOptions = {
    type = "structure",
    members = {
        SelectedPointStyle = {
            type = "string",
        },
        ClusterMarkerConfiguration = M.ClusterMarkerConfiguration,
        HeatmapConfiguration = M.GeospatialHeatmapConfiguration,
    },
}

M.GeospatialMapConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.GeospatialMapFieldWells,
        Legend = M.LegendOptions,
        Tooltip = M.TooltipOptions,
        WindowOptions = M.GeospatialWindowOptions,
        MapStyleOptions = M.GeospatialMapStyleOptions,
        PointStyleOptions = M.GeospatialPointStyleOptions,
        VisualPalette = M.VisualPalette,
        Interactions = M.VisualInteractionOptions,
    },
}

M.GeospatialMapVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.GeospatialMapConfiguration,
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        VisualContentAltText = {
            type = "string",
        },
        GeocodingPreferences = {
            type = "list",
            member = M.GeocodePreference,
        },
    },
}

M.ColorFillType = {
    DISCRETE = "DISCRETE",
    GRADIENT = "GRADIENT",
}

M.DataColor = {
    type = "structure",
    members = {
        Color = {
            type = "string",
        },
        DataValue = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.ColorScale = {
    type = "structure",
    members = {
        Colors = {
            type = "list",
            member = M.DataColor,
            traits = {
                required = true,
            },
        },
        ColorFillType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NullValueColor = M.DataColor,
    },
}

M.HeatMapAggregatedFieldWells = {
    type = "structure",
    members = {
        Rows = {
            type = "list",
            member = M.DimensionField,
        },
        Columns = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.HeatMapFieldWells = {
    type = "structure",
    members = {
        HeatMapAggregatedFieldWells = M.HeatMapAggregatedFieldWells,
    },
}

M.HeatMapSortConfiguration = {
    type = "structure",
    members = {
        HeatMapRowSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        HeatMapColumnSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        HeatMapRowItemsLimitConfiguration = M.ItemsLimitConfiguration,
        HeatMapColumnItemsLimitConfiguration = M.ItemsLimitConfiguration,
    },
}

M.HeatMapConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.HeatMapFieldWells,
        SortConfiguration = M.HeatMapSortConfiguration,
        RowAxisDisplayOptions = M.AxisDisplayOptions,
        RowLabelOptions = M.ChartAxisLabelOptions,
        ColumnAxisDisplayOptions = M.AxisDisplayOptions,
        ColumnLabelOptions = M.ChartAxisLabelOptions,
        ColorScale = M.ColorScale,
        Legend = M.LegendOptions,
        DataLabels = M.DataLabelOptions,
        Tooltip = M.TooltipOptions,
        Interactions = M.VisualInteractionOptions,
    },
}

M.HeatMapVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.HeatMapConfiguration,
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.BinCountOptions = {
    type = "structure",
    members = {
        Value = {
            type = "integer",
        },
    },
}

M.BinWidthOptions = {
    type = "structure",
    members = {
        Value = {
            type = "double",
        },
        BinCountLimit = {
            type = "long",
        },
    },
}

M.HistogramBinType = {
    BIN_COUNT = "BIN_COUNT",
    BIN_WIDTH = "BIN_WIDTH",
}

M.HistogramBinOptions = {
    type = "structure",
    members = {
        SelectedBinType = {
            type = "string",
        },
        BinCount = M.BinCountOptions,
        BinWidth = M.BinWidthOptions,
        StartValue = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.HistogramAggregatedFieldWells = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.HistogramFieldWells = {
    type = "structure",
    members = {
        HistogramAggregatedFieldWells = M.HistogramAggregatedFieldWells,
    },
}

M.HistogramConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.HistogramFieldWells,
        XAxisDisplayOptions = M.AxisDisplayOptions,
        XAxisLabelOptions = M.ChartAxisLabelOptions,
        YAxisDisplayOptions = M.AxisDisplayOptions,
        BinOptions = M.HistogramBinOptions,
        DataLabels = M.DataLabelOptions,
        Tooltip = M.TooltipOptions,
        VisualPalette = M.VisualPalette,
        Interactions = M.VisualInteractionOptions,
    },
}

M.HistogramVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.HistogramConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.ForecastComputationSeasonality = {
    AUTOMATIC = "AUTOMATIC",
    CUSTOM = "CUSTOM",
}

M.ForecastComputation = {
    type = "structure",
    members = {
        ComputationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Time = M.DimensionField,
        Value = M.MeasureField,
        PeriodsForward = {
            type = "integer",
        },
        PeriodsBackward = {
            type = "integer",
        },
        UpperBoundary = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        LowerBoundary = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        PredictionInterval = {
            type = "integer",
        },
        Seasonality = {
            type = "string",
        },
        CustomSeasonalityValue = {
            type = "integer",
        },
    },
}

M.GrowthRateComputation = {
    type = "structure",
    members = {
        ComputationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Time = M.DimensionField,
        Value = M.MeasureField,
        PeriodSize = {
            type = "integer",
        },
    },
}

M.MaximumMinimumComputationType = {
    MAXIMUM = "MAXIMUM",
    MINIMUM = "MINIMUM",
}

M.MaximumMinimumComputation = {
    type = "structure",
    members = {
        ComputationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Time = M.DimensionField,
        Value = M.MeasureField,
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricComparisonComputation = {
    type = "structure",
    members = {
        ComputationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Time = M.DimensionField,
        FromValue = M.MeasureField,
        TargetValue = M.MeasureField,
    },
}

M.PeriodOverPeriodComputation = {
    type = "structure",
    members = {
        ComputationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Time = M.DimensionField,
        Value = M.MeasureField,
    },
}

M.PeriodToDateComputation = {
    type = "structure",
    members = {
        ComputationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Time = M.DimensionField,
        Value = M.MeasureField,
        PeriodTimeGranularity = {
            type = "string",
        },
    },
}

M.TopBottomSortOrder = {
    PERCENT_DIFFERENCE = "PERCENT_DIFFERENCE",
    ABSOLUTE_DIFFERENCE = "ABSOLUTE_DIFFERENCE",
}

M.TopBottomComputationType = {
    TOP = "TOP",
    BOTTOM = "BOTTOM",
}

M.TopBottomMoversComputation = {
    type = "structure",
    members = {
        ComputationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Time = M.DimensionField,
        Category = M.DimensionField,
        Value = M.MeasureField,
        MoverSize = {
            type = "integer",
        },
        SortOrder = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TopBottomRankedComputation = {
    type = "structure",
    members = {
        ComputationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Category = M.DimensionField,
        Value = M.MeasureField,
        ResultSize = {
            type = "integer",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TotalAggregationComputation = {
    type = "structure",
    members = {
        ComputationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Value = M.MeasureField,
    },
}

M.UniqueValuesComputation = {
    type = "structure",
    members = {
        ComputationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Category = M.DimensionField,
    },
}

M.Computation = {
    type = "structure",
    members = {
        TopBottomRanked = M.TopBottomRankedComputation,
        TopBottomMovers = M.TopBottomMoversComputation,
        TotalAggregation = M.TotalAggregationComputation,
        MaximumMinimum = M.MaximumMinimumComputation,
        MetricComparison = M.MetricComparisonComputation,
        PeriodOverPeriod = M.PeriodOverPeriodComputation,
        PeriodToDate = M.PeriodToDateComputation,
        GrowthRate = M.GrowthRateComputation,
        UniqueValues = M.UniqueValuesComputation,
        Forecast = M.ForecastComputation,
    },
}

M.CustomNarrativeOptions = {
    type = "structure",
    members = {
        Narrative = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InsightConfiguration = {
    type = "structure",
    members = {
        Computations = {
            type = "list",
            member = M.Computation,
        },
        CustomNarrative = M.CustomNarrativeOptions,
        Interactions = M.VisualInteractionOptions,
    },
}

M.InsightVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        InsightConfiguration = M.InsightConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        DataSetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.KPIFieldWells = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member = M.MeasureField,
        },
        TargetValues = {
            type = "list",
            member = M.MeasureField,
        },
        TrendGroups = {
            type = "list",
            member = M.DimensionField,
        },
    },
}

M.ProgressBarOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.SecondaryValueOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.KPISparklineType = {
    LINE = "LINE",
    AREA = "AREA",
}

M.KPISparklineOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Color = {
            type = "string",
        },
        TooltipVisibility = {
            type = "string",
        },
    },
}

M.TrendArrowOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.KPIVisualStandardLayoutType = {
    CLASSIC = "CLASSIC",
    VERTICAL = "VERTICAL",
}

M.KPIVisualStandardLayout = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KPIVisualLayoutOptions = {
    type = "structure",
    members = {
        StandardLayout = M.KPIVisualStandardLayout,
    },
}

M.KPIOptions = {
    type = "structure",
    members = {
        ProgressBar = M.ProgressBarOptions,
        TrendArrows = M.TrendArrowOptions,
        SecondaryValue = M.SecondaryValueOptions,
        Comparison = M.ComparisonConfiguration,
        PrimaryValueDisplayType = {
            type = "string",
        },
        PrimaryValueFontConfiguration = M.FontConfiguration,
        SecondaryValueFontConfiguration = M.FontConfiguration,
        Sparkline = M.KPISparklineOptions,
        VisualLayoutOptions = M.KPIVisualLayoutOptions,
    },
}

M.KPISortConfiguration = {
    type = "structure",
    members = {
        TrendGroupSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
    },
}

M.KPIConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.KPIFieldWells,
        SortConfiguration = M.KPISortConfiguration,
        KPIOptions = M.KPIOptions,
        Interactions = M.VisualInteractionOptions,
    },
}

M.KPIActualValueConditionalFormatting = {
    type = "structure",
    members = {
        TextColor = M.ConditionalFormattingColor,
        Icon = M.ConditionalFormattingIcon,
    },
}

M.KPIComparisonValueConditionalFormatting = {
    type = "structure",
    members = {
        TextColor = M.ConditionalFormattingColor,
        Icon = M.ConditionalFormattingIcon,
    },
}

M.KPIPrimaryValueConditionalFormatting = {
    type = "structure",
    members = {
        TextColor = M.ConditionalFormattingColor,
        Icon = M.ConditionalFormattingIcon,
    },
}

M.KPIProgressBarConditionalFormatting = {
    type = "structure",
    members = {
        ForegroundColor = M.ConditionalFormattingColor,
    },
}

M.KPIConditionalFormattingOption = {
    type = "structure",
    members = {
        PrimaryValue = M.KPIPrimaryValueConditionalFormatting,
        ProgressBar = M.KPIProgressBarConditionalFormatting,
        ActualValue = M.KPIActualValueConditionalFormatting,
        ComparisonValue = M.KPIComparisonValueConditionalFormatting,
    },
}

M.KPIConditionalFormatting = {
    type = "structure",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member = M.KPIConditionalFormattingOption,
        },
    },
}

M.KPIVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.KPIConfiguration,
        ConditionalFormatting = M.KPIConditionalFormatting,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.LayerCustomActionOperation = {
    type = "structure",
    members = {
        FilterOperation = M.CustomActionFilterOperation,
        NavigationOperation = M.CustomActionNavigationOperation,
        URLOperation = M.CustomActionURLOperation,
        SetParametersOperation = M.CustomActionSetParametersOperation,
    },
}

M.LayerCustomActionTrigger = {
    DATA_POINT_CLICK = "DATA_POINT_CLICK",
    DATA_POINT_MENU = "DATA_POINT_MENU",
}

M.LayerCustomAction = {
    type = "structure",
    members = {
        CustomActionId = {
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
        Status = {
            type = "string",
        },
        Trigger = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionOperations = {
            type = "list",
            member = M.LayerCustomActionOperation,
            traits = {
                required = true,
            },
        },
    },
}

M.GeospatialStaticFileSource = {
    type = "structure",
    members = {
        StaticFileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GeospatialDataSourceItem = {
    type = "structure",
    members = {
        StaticFileDataSource = M.GeospatialStaticFileSource,
    },
}

M.GeospatialLayerColorField = {
    type = "structure",
    members = {
        ColorDimensionsFields = {
            type = "list",
            member = M.DimensionField,
        },
        ColorValuesFields = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.UnaggregatedField = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Column = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnIdentifier }),
        FormatConfiguration = M.FormatConfiguration,
    },
}

M.GeospatialLayerJoinDefinition = {
    type = "structure",
    members = {
        ShapeKeyField = {
            type = "string",
        },
        DatasetKeyField = M.UnaggregatedField,
        ColorField = M.GeospatialLayerColorField,
    },
}

M.GeospatialCategoricalDataColor = {
    type = "structure",
    members = {
        Color = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GeospatialNullSymbolStyle = {
    type = "structure",
    members = {
        FillColor = {
            type = "string",
        },
        StrokeColor = {
            type = "string",
        },
        StrokeWidth = {
            type = "double",
        },
    },
}

M.GeospatialNullDataSettings = {
    type = "structure",
    members = {
        SymbolStyle = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeospatialNullSymbolStyle }),
    },
}

M.GeospatialCategoricalColor = {
    type = "structure",
    members = {
        CategoryDataColors = {
            type = "list",
            member = M.GeospatialCategoricalDataColor,
            traits = {
                required = true,
            },
        },
        NullDataVisibility = {
            type = "string",
        },
        NullDataSettings = M.GeospatialNullDataSettings,
        DefaultOpacity = {
            type = "double",
        },
    },
}

M.GeospatialGradientStepColor = {
    type = "structure",
    members = {
        Color = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataValue = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.GeospatialGradientColor = {
    type = "structure",
    members = {
        StepColors = {
            type = "list",
            member = M.GeospatialGradientStepColor,
            traits = {
                required = true,
            },
        },
        NullDataVisibility = {
            type = "string",
        },
        NullDataSettings = M.GeospatialNullDataSettings,
        DefaultOpacity = {
            type = "double",
        },
    },
}

M.GeospatialColorState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.GeospatialSolidColor = {
    type = "structure",
    members = {
        Color = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
        },
    },
}

M.GeospatialColor = {
    type = "structure",
    members = {
        Solid = M.GeospatialSolidColor,
        Gradient = M.GeospatialGradientColor,
        Categorical = M.GeospatialCategoricalColor,
    },
}

M.GeospatialLineWidth = {
    type = "structure",
    members = {
        LineWidth = {
            type = "double",
        },
    },
}

M.GeospatialLineSymbolStyle = {
    type = "structure",
    members = {
        FillColor = M.GeospatialColor,
        LineWidth = M.GeospatialLineWidth,
    },
}

M.GeospatialLineStyle = {
    type = "structure",
    members = {
        LineSymbolStyle = M.GeospatialLineSymbolStyle,
    },
}

M.GeospatialLineLayer = {
    type = "structure",
    members = {
        Style = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeospatialLineStyle }),
    },
}

M.GeospatialCircleRadius = {
    type = "structure",
    members = {
        Radius = {
            type = "double",
        },
    },
}

M.GeospatialCircleSymbolStyle = {
    type = "structure",
    members = {
        FillColor = M.GeospatialColor,
        StrokeColor = M.GeospatialColor,
        StrokeWidth = M.GeospatialLineWidth,
        CircleRadius = M.GeospatialCircleRadius,
    },
}

M.GeospatialPointStyle = {
    type = "structure",
    members = {
        CircleSymbolStyle = M.GeospatialCircleSymbolStyle,
    },
}

M.GeospatialPointLayer = {
    type = "structure",
    members = {
        Style = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeospatialPointStyle }),
    },
}

M.GeospatialPolygonSymbolStyle = {
    type = "structure",
    members = {
        FillColor = M.GeospatialColor,
        StrokeColor = M.GeospatialColor,
        StrokeWidth = M.GeospatialLineWidth,
    },
}

M.GeospatialPolygonStyle = {
    type = "structure",
    members = {
        PolygonSymbolStyle = M.GeospatialPolygonSymbolStyle,
    },
}

M.GeospatialPolygonLayer = {
    type = "structure",
    members = {
        Style = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeospatialPolygonStyle }),
    },
}

M.GeospatialLayerDefinition = {
    type = "structure",
    members = {
        PointLayer = M.GeospatialPointLayer,
        LineLayer = M.GeospatialLineLayer,
        PolygonLayer = M.GeospatialPolygonLayer,
    },
}

M.GeospatialLayerType = {
    POINT = "POINT",
    LINE = "LINE",
    POLYGON = "POLYGON",
}

M.GeospatialLayerItem = {
    type = "structure",
    members = {
        LayerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LayerType = {
            type = "string",
        },
        DataSource = M.GeospatialDataSourceItem,
        Label = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        LayerDefinition = M.GeospatialLayerDefinition,
        Tooltip = M.TooltipOptions,
        JoinDefinition = M.GeospatialLayerJoinDefinition,
        Actions = {
            type = "list",
            member = M.LayerCustomAction,
        },
    },
}

M.GeospatialMapNavigation = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.GeospatialMapState = {
    type = "structure",
    members = {
        Bounds = M.GeospatialCoordinateBounds,
        MapNavigation = {
            type = "string",
        },
    },
}

M.GeospatialMapStyle = {
    type = "structure",
    members = {
        BaseMapStyle = {
            type = "string",
        },
        BackgroundColor = {
            type = "string",
        },
        BaseMapVisibility = {
            type = "string",
        },
    },
}

M.GeospatialLayerMapConfiguration = {
    type = "structure",
    members = {
        Legend = M.LegendOptions,
        MapLayers = {
            type = "list",
            member = M.GeospatialLayerItem,
        },
        MapState = M.GeospatialMapState,
        MapStyle = M.GeospatialMapStyle,
        Interactions = M.VisualInteractionOptions,
    },
}

M.LayerMapVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.GeospatialLayerMapConfiguration,
        DataSetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.LineChartDefaultSeriesSettings = {
    type = "structure",
    members = {
        AxisBinding = {
            type = "string",
        },
        LineStyleSettings = M.LineChartLineStyleSettings,
        MarkerStyleSettings = M.LineChartMarkerStyleSettings,
        DecalSettings = M.DecalSettings,
    },
}

M.LineChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Category = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
        Colors = {
            type = "list",
            member = M.DimensionField,
        },
        SmallMultiples = {
            type = "list",
            member = M.DimensionField,
        },
    },
}

M.LineChartFieldWells = {
    type = "structure",
    members = {
        LineChartAggregatedFieldWells = M.LineChartAggregatedFieldWells,
    },
}

M.TimeBasedForecastProperties = {
    type = "structure",
    members = {
        PeriodsForward = {
            type = "integer",
        },
        PeriodsBackward = {
            type = "integer",
        },
        UpperBoundary = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        LowerBoundary = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        PredictionInterval = {
            type = "integer",
        },
        Seasonality = {
            type = "integer",
        },
    },
}

M.WhatIfPointScenario = {
    type = "structure",
    members = {
        Date = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.WhatIfRangeScenario = {
    type = "structure",
    members = {
        StartDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ForecastScenario = {
    type = "structure",
    members = {
        WhatIfPointScenario = M.WhatIfPointScenario,
        WhatIfRangeScenario = M.WhatIfRangeScenario,
    },
}

M.ForecastConfiguration = {
    type = "structure",
    members = {
        ForecastProperties = M.TimeBasedForecastProperties,
        Scenario = M.ForecastScenario,
    },
}

M.MissingDataTreatmentOption = {
    INTERPOLATE = "INTERPOLATE",
    SHOW_AS_ZERO = "SHOW_AS_ZERO",
    SHOW_AS_BLANK = "SHOW_AS_BLANK",
}

M.MissingDataConfiguration = {
    type = "structure",
    members = {
        TreatmentOption = {
            type = "string",
        },
    },
}

M.LineSeriesAxisDisplayOptions = {
    type = "structure",
    members = {
        AxisOptions = M.AxisDisplayOptions,
        MissingDataConfigurations = {
            type = "list",
            member = M.MissingDataConfiguration,
        },
    },
}

M.LineChartSeriesSettings = {
    type = "structure",
    members = {
        LineStyleSettings = M.LineChartLineStyleSettings,
        MarkerStyleSettings = M.LineChartMarkerStyleSettings,
        DecalSettings = M.DecalSettings,
    },
}

M.DataFieldSeriesItem = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldValue = {
            type = "string",
        },
        AxisBinding = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = M.LineChartSeriesSettings,
    },
}

M.FieldSeriesItem = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AxisBinding = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = M.LineChartSeriesSettings,
    },
}

M.SeriesItem = {
    type = "structure",
    members = {
        FieldSeriesItem = M.FieldSeriesItem,
        DataFieldSeriesItem = M.DataFieldSeriesItem,
    },
}

M.LineChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        CategoryItemsLimitConfiguration = M.ItemsLimitConfiguration,
        ColorItemsLimitConfiguration = M.ItemsLimitConfiguration,
        SmallMultiplesSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        SmallMultiplesLimitConfiguration = M.ItemsLimitConfiguration,
    },
}

M.LineChartType = {
    LINE = "LINE",
    AREA = "AREA",
    STACKED_AREA = "STACKED_AREA",
}

M.LineChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.LineChartFieldWells,
        SortConfiguration = M.LineChartSortConfiguration,
        ForecastConfigurations = {
            type = "list",
            member = M.ForecastConfiguration,
        },
        Type = {
            type = "string",
        },
        SmallMultiplesOptions = M.SmallMultiplesOptions,
        XAxisDisplayOptions = M.AxisDisplayOptions,
        XAxisLabelOptions = M.ChartAxisLabelOptions,
        PrimaryYAxisDisplayOptions = M.LineSeriesAxisDisplayOptions,
        PrimaryYAxisLabelOptions = M.ChartAxisLabelOptions,
        SecondaryYAxisDisplayOptions = M.LineSeriesAxisDisplayOptions,
        SecondaryYAxisLabelOptions = M.ChartAxisLabelOptions,
        SingleAxisOptions = M.SingleAxisOptions,
        DefaultSeriesSettings = M.LineChartDefaultSeriesSettings,
        Series = {
            type = "list",
            member = M.SeriesItem,
        },
        Legend = M.LegendOptions,
        DataLabels = M.DataLabelOptions,
        ReferenceLines = {
            type = "list",
            member = M.ReferenceLine,
        },
        Tooltip = M.TooltipOptions,
        ContributionAnalysisDefaults = {
            type = "list",
            member = M.ContributionAnalysisDefault,
        },
        VisualPalette = M.VisualPalette,
        Interactions = M.VisualInteractionOptions,
    },
}

M.LineChartVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.LineChartConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.ArcThickness = {
    SMALL = "SMALL",
    MEDIUM = "MEDIUM",
    LARGE = "LARGE",
    WHOLE = "WHOLE",
}

M.ArcOptions = {
    type = "structure",
    members = {
        ArcThickness = {
            type = "string",
        },
    },
}

M.DonutCenterOptions = {
    type = "structure",
    members = {
        LabelVisibility = {
            type = "string",
        },
    },
}

M.DonutOptions = {
    type = "structure",
    members = {
        ArcOptions = M.ArcOptions,
        DonutCenterOptions = M.DonutCenterOptions,
    },
}

M.PieChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Category = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
        SmallMultiples = {
            type = "list",
            member = M.DimensionField,
        },
    },
}

M.PieChartFieldWells = {
    type = "structure",
    members = {
        PieChartAggregatedFieldWells = M.PieChartAggregatedFieldWells,
    },
}

M.PieChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        CategoryItemsLimit = M.ItemsLimitConfiguration,
        SmallMultiplesSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        SmallMultiplesLimitConfiguration = M.ItemsLimitConfiguration,
    },
}

M.PieChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.PieChartFieldWells,
        SortConfiguration = M.PieChartSortConfiguration,
        DonutOptions = M.DonutOptions,
        SmallMultiplesOptions = M.SmallMultiplesOptions,
        CategoryLabelOptions = M.ChartAxisLabelOptions,
        ValueLabelOptions = M.ChartAxisLabelOptions,
        Legend = M.LegendOptions,
        DataLabels = M.DataLabelOptions,
        Tooltip = M.TooltipOptions,
        VisualPalette = M.VisualPalette,
        ContributionAnalysisDefaults = {
            type = "list",
            member = M.ContributionAnalysisDefault,
        },
        Interactions = M.VisualInteractionOptions,
    },
}

M.PieChartVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.PieChartConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.DashboardCustomizationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.VisualCustomizationFieldsConfiguration = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        AdditionalFields = {
            type = "list",
            member = M.ColumnIdentifier,
        },
    },
}

M.DashboardCustomizationVisualOptions = {
    type = "structure",
    members = {
        FieldsConfiguration = M.VisualCustomizationFieldsConfiguration,
    },
}

M.PivotTableFieldCollapseState = {
    COLLAPSED = "COLLAPSED",
    EXPANDED = "EXPANDED",
}

M.PivotTableFieldCollapseStateTarget = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
        },
        FieldDataPathValues = {
            type = "list",
            member = M.DataPathValue,
        },
    },
}

M.PivotTableFieldCollapseStateOption = {
    type = "structure",
    members = {
        Target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PivotTableFieldCollapseStateTarget }),
        State = {
            type = "string",
        },
    },
}

M.PivotTableDataPathOption = {
    type = "structure",
    members = {
        DataPathList = {
            type = "list",
            member = M.DataPathValue,
            traits = {
                required = true,
            },
        },
        Width = {
            type = "string",
        },
    },
}

M.PivotTableFieldOption = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomLabel = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.PivotTableFieldOptions = {
    type = "structure",
    members = {
        SelectedFieldOptions = {
            type = "list",
            member = M.PivotTableFieldOption,
        },
        DataPathOptions = {
            type = "list",
            member = M.PivotTableDataPathOption,
        },
        CollapseStateOptions = {
            type = "list",
            member = M.PivotTableFieldCollapseStateOption,
        },
    },
}

M.PivotTableAggregatedFieldWells = {
    type = "structure",
    members = {
        Rows = {
            type = "list",
            member = M.DimensionField,
        },
        Columns = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.PivotTableFieldWells = {
    type = "structure",
    members = {
        PivotTableAggregatedFieldWells = M.PivotTableAggregatedFieldWells,
    },
}

M.PivotTablePaginatedReportOptions = {
    type = "structure",
    members = {
        VerticalOverflowVisibility = {
            type = "string",
        },
        OverflowColumnHeaderVisibility = {
            type = "string",
        },
    },
}

M.DataPathSort = {
    type = "structure",
    members = {
        Direction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortPaths = {
            type = "list",
            member = M.DataPathValue,
            traits = {
                required = true,
            },
        },
    },
}

M.PivotTableSortBy = {
    type = "structure",
    members = {
        Field = M.FieldSort,
        Column = M.ColumnSort,
        DataPath = M.DataPathSort,
    },
}

M.PivotFieldSortOptions = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortBy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PivotTableSortBy }),
    },
}

M.PivotTableSortConfiguration = {
    type = "structure",
    members = {
        FieldSortOptions = {
            type = "list",
            member = M.PivotFieldSortOptions,
        },
    },
}

M.TableBorderStyle = {
    NONE = "NONE",
    SOLID = "SOLID",
}

M.TableBorderOptions = {
    type = "structure",
    members = {
        Color = {
            type = "string",
        },
        Thickness = {
            type = "integer",
        },
        Style = {
            type = "string",
        },
    },
}

M.TableSideBorderOptions = {
    type = "structure",
    members = {
        InnerVertical = M.TableBorderOptions,
        InnerHorizontal = M.TableBorderOptions,
        Left = M.TableBorderOptions,
        Right = M.TableBorderOptions,
        Top = M.TableBorderOptions,
        Bottom = M.TableBorderOptions,
    },
}

M.GlobalTableBorderOptions = {
    type = "structure",
    members = {
        UniformBorder = M.TableBorderOptions,
        SideSpecificBorder = M.TableSideBorderOptions,
    },
}

M.TextWrap = {
    NONE = "NONE",
    WRAP = "WRAP",
}

M.VerticalTextAlignment = {
    TOP = "TOP",
    MIDDLE = "MIDDLE",
    BOTTOM = "BOTTOM",
    AUTO = "AUTO",
}

M.TableCellStyle = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        FontConfiguration = M.FontConfiguration,
        TextWrap = {
            type = "string",
        },
        HorizontalTextAlignment = {
            type = "string",
        },
        VerticalTextAlignment = {
            type = "string",
        },
        BackgroundColor = {
            type = "string",
        },
        Height = {
            type = "integer",
        },
        Border = M.GlobalTableBorderOptions,
    },
}

M.PivotTableMetricPlacement = {
    ROW = "ROW",
    COLUMN = "COLUMN",
}

M.RowAlternateColorOptions = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        RowAlternateColors = {
            type = "list",
            member = { type = "string" },
        },
        UsePrimaryBackgroundColor = {
            type = "string",
        },
    },
}

M.PivotTableRowsLabelOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        CustomLabel = {
            type = "string",
        },
    },
}

M.PivotTableRowsLayout = {
    TABULAR = "TABULAR",
    HIERARCHY = "HIERARCHY",
}

M.PivotTableOptions = {
    type = "structure",
    members = {
        MetricPlacement = {
            type = "string",
        },
        SingleMetricVisibility = {
            type = "string",
        },
        ColumnNamesVisibility = {
            type = "string",
        },
        ToggleButtonsVisibility = {
            type = "string",
        },
        ColumnHeaderStyle = M.TableCellStyle,
        RowHeaderStyle = M.TableCellStyle,
        CellStyle = M.TableCellStyle,
        RowFieldNamesStyle = M.TableCellStyle,
        RowAlternateColorOptions = M.RowAlternateColorOptions,
        CollapsedRowDimensionsVisibility = {
            type = "string",
        },
        RowsLayout = {
            type = "string",
        },
        RowsLabelOptions = M.PivotTableRowsLabelOptions,
        DefaultCellWidth = {
            type = "string",
        },
    },
}

M.PivotTableSubtotalLevel = {
    ALL = "ALL",
    CUSTOM = "CUSTOM",
    LAST = "LAST",
}

M.PivotTableFieldSubtotalOptions = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
        },
    },
}

M.StyledCellType = {
    TOTAL = "TOTAL",
    METRIC_HEADER = "METRIC_HEADER",
    VALUE = "VALUE",
}

M.TableStyleTarget = {
    type = "structure",
    members = {
        CellType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubtotalOptions = {
    type = "structure",
    members = {
        TotalsVisibility = {
            type = "string",
        },
        CustomLabel = {
            type = "string",
        },
        FieldLevel = {
            type = "string",
        },
        FieldLevelOptions = {
            type = "list",
            member = M.PivotTableFieldSubtotalOptions,
        },
        TotalCellStyle = M.TableCellStyle,
        ValueCellStyle = M.TableCellStyle,
        MetricHeaderCellStyle = M.TableCellStyle,
        StyleTargets = {
            type = "list",
            member = M.TableStyleTarget,
        },
    },
}

M.TableTotalsPlacement = {
    START = "START",
    END = "END",
    AUTO = "AUTO",
}

M.TableTotalsScrollStatus = {
    PINNED = "PINNED",
    SCROLLED = "SCROLLED",
}

M.SimpleTotalAggregationFunction = {
    DEFAULT = "DEFAULT",
    SUM = "SUM",
    AVERAGE = "AVERAGE",
    MIN = "MIN",
    MAX = "MAX",
    NONE = "NONE",
}

M.TotalAggregationFunction = {
    type = "structure",
    members = {
        SimpleTotalAggregationFunction = {
            type = "string",
        },
    },
}

M.TotalAggregationOption = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TotalAggregationFunction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TotalAggregationFunction }),
    },
}

M.PivotTotalOptions = {
    type = "structure",
    members = {
        TotalsVisibility = {
            type = "string",
        },
        Placement = {
            type = "string",
        },
        ScrollStatus = {
            type = "string",
        },
        CustomLabel = {
            type = "string",
        },
        TotalCellStyle = M.TableCellStyle,
        ValueCellStyle = M.TableCellStyle,
        MetricHeaderCellStyle = M.TableCellStyle,
        TotalAggregationOptions = {
            type = "list",
            member = M.TotalAggregationOption,
        },
    },
}

M.PivotTableTotalOptions = {
    type = "structure",
    members = {
        RowSubtotalOptions = M.SubtotalOptions,
        ColumnSubtotalOptions = M.SubtotalOptions,
        RowTotalOptions = M.PivotTotalOptions,
        ColumnTotalOptions = M.PivotTotalOptions,
    },
}

M.PivotTableConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.PivotTableFieldWells,
        SortConfiguration = M.PivotTableSortConfiguration,
        TableOptions = M.PivotTableOptions,
        TotalOptions = M.PivotTableTotalOptions,
        FieldOptions = M.PivotTableFieldOptions,
        PaginatedReportOptions = M.PivotTablePaginatedReportOptions,
        Tooltip = M.TooltipOptions,
        DashboardCustomizationVisualOptions = M.DashboardCustomizationVisualOptions,
        Interactions = M.VisualInteractionOptions,
    },
}

M.PivotTableConditionalFormattingScopeRole = {
    FIELD = "FIELD",
    FIELD_TOTAL = "FIELD_TOTAL",
    GRAND_TOTAL = "GRAND_TOTAL",
}

M.PivotTableConditionalFormattingScope = {
    type = "structure",
    members = {
        Role = {
            type = "string",
        },
    },
}

M.TextConditionalFormat = {
    type = "structure",
    members = {
        BackgroundColor = M.ConditionalFormattingColor,
        TextColor = M.ConditionalFormattingColor,
        Icon = M.ConditionalFormattingIcon,
    },
}

M.PivotTableCellConditionalFormatting = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextFormat = M.TextConditionalFormat,
        Scope = M.PivotTableConditionalFormattingScope,
        Scopes = {
            type = "list",
            member = M.PivotTableConditionalFormattingScope,
        },
    },
}

M.PivotTableConditionalFormattingOption = {
    type = "structure",
    members = {
        Cell = M.PivotTableCellConditionalFormatting,
    },
}

M.PivotTableConditionalFormatting = {
    type = "structure",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member = M.PivotTableConditionalFormattingOption,
        },
    },
}

M.PivotTableVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.PivotTableConfiguration,
        ConditionalFormatting = M.PivotTableConditionalFormatting,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.PluginVisualAxisName = {
    GROUP_BY = "GROUP_BY",
    VALUE = "VALUE",
}

M.PluginVisualFieldWell = {
    type = "structure",
    members = {
        AxisName = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.DimensionField,
        },
        Measures = {
            type = "list",
            member = M.MeasureField,
        },
        Unaggregated = {
            type = "list",
            member = M.UnaggregatedField,
        },
    },
}

M.PluginVisualItemsLimitConfiguration = {
    type = "structure",
    members = {
        ItemsLimit = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.PluginVisualTableQuerySort = {
    type = "structure",
    members = {
        RowSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        ItemsLimitConfiguration = M.PluginVisualItemsLimitConfiguration,
    },
}

M.PluginVisualSortConfiguration = {
    type = "structure",
    members = {
        PluginVisualTableQuerySort = M.PluginVisualTableQuerySort,
    },
}

M.PluginVisualProperty = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.PluginVisualOptions = {
    type = "structure",
    members = {
        VisualProperties = {
            type = "list",
            member = M.PluginVisualProperty,
        },
    },
}

M.PluginVisualConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "list",
            member = M.PluginVisualFieldWell,
        },
        VisualOptions = M.PluginVisualOptions,
        SortConfiguration = M.PluginVisualSortConfiguration,
    },
}

M.PluginVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PluginArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.PluginVisualConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.RadarChartAxesRangeScale = {
    AUTO = "AUTO",
    INDEPENDENT = "INDEPENDENT",
    SHARED = "SHARED",
}

M.RadarChartAreaStyleSettings = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.RadarChartSeriesSettings = {
    type = "structure",
    members = {
        AreaStyleSettings = M.RadarChartAreaStyleSettings,
    },
}

M.RadarChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Category = {
            type = "list",
            member = M.DimensionField,
        },
        Color = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.RadarChartFieldWells = {
    type = "structure",
    members = {
        RadarChartAggregatedFieldWells = M.RadarChartAggregatedFieldWells,
    },
}

M.RadarChartShape = {
    CIRCLE = "CIRCLE",
    POLYGON = "POLYGON",
}

M.RadarChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        CategoryItemsLimit = M.ItemsLimitConfiguration,
        ColorSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        ColorItemsLimit = M.ItemsLimitConfiguration,
    },
}

M.RadarChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.RadarChartFieldWells,
        SortConfiguration = M.RadarChartSortConfiguration,
        Shape = {
            type = "string",
        },
        BaseSeriesSettings = M.RadarChartSeriesSettings,
        StartAngle = {
            type = "double",
        },
        VisualPalette = M.VisualPalette,
        AlternateBandColorsVisibility = {
            type = "string",
        },
        AlternateBandEvenColor = {
            type = "string",
        },
        AlternateBandOddColor = {
            type = "string",
        },
        CategoryAxis = M.AxisDisplayOptions,
        CategoryLabelOptions = M.ChartAxisLabelOptions,
        ColorAxis = M.AxisDisplayOptions,
        ColorLabelOptions = M.ChartAxisLabelOptions,
        Legend = M.LegendOptions,
        AxesRangeScale = {
            type = "string",
        },
        Interactions = M.VisualInteractionOptions,
    },
}

M.RadarChartVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.RadarChartConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.SankeyDiagramAggregatedFieldWells = {
    type = "structure",
    members = {
        Source = {
            type = "list",
            member = M.DimensionField,
        },
        Destination = {
            type = "list",
            member = M.DimensionField,
        },
        Weight = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.SankeyDiagramFieldWells = {
    type = "structure",
    members = {
        SankeyDiagramAggregatedFieldWells = M.SankeyDiagramAggregatedFieldWells,
    },
}

M.SankeyDiagramSortConfiguration = {
    type = "structure",
    members = {
        WeightSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        SourceItemsLimit = M.ItemsLimitConfiguration,
        DestinationItemsLimit = M.ItemsLimitConfiguration,
    },
}

M.SankeyDiagramChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.SankeyDiagramFieldWells,
        SortConfiguration = M.SankeyDiagramSortConfiguration,
        DataLabels = M.DataLabelOptions,
        Interactions = M.VisualInteractionOptions,
    },
}

M.SankeyDiagramVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.SankeyDiagramChartConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.ScatterPlotCategoricallyAggregatedFieldWells = {
    type = "structure",
    members = {
        XAxis = {
            type = "list",
            member = M.MeasureField,
        },
        YAxis = {
            type = "list",
            member = M.MeasureField,
        },
        Category = {
            type = "list",
            member = M.DimensionField,
        },
        Size = {
            type = "list",
            member = M.MeasureField,
        },
        Label = {
            type = "list",
            member = M.DimensionField,
        },
    },
}

M.ScatterPlotUnaggregatedFieldWells = {
    type = "structure",
    members = {
        XAxis = {
            type = "list",
            member = M.DimensionField,
        },
        YAxis = {
            type = "list",
            member = M.DimensionField,
        },
        Size = {
            type = "list",
            member = M.MeasureField,
        },
        Category = {
            type = "list",
            member = M.DimensionField,
        },
        Label = {
            type = "list",
            member = M.DimensionField,
        },
    },
}

M.ScatterPlotFieldWells = {
    type = "structure",
    members = {
        ScatterPlotCategoricallyAggregatedFieldWells = M.ScatterPlotCategoricallyAggregatedFieldWells,
        ScatterPlotUnaggregatedFieldWells = M.ScatterPlotUnaggregatedFieldWells,
    },
}

M.ScatterPlotSortConfiguration = {
    type = "structure",
    members = {
        ScatterPlotLimitConfiguration = M.ItemsLimitConfiguration,
    },
}

M.ScatterPlotConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.ScatterPlotFieldWells,
        SortConfiguration = M.ScatterPlotSortConfiguration,
        XAxisLabelOptions = M.ChartAxisLabelOptions,
        XAxisDisplayOptions = M.AxisDisplayOptions,
        YAxisLabelOptions = M.ChartAxisLabelOptions,
        YAxisDisplayOptions = M.AxisDisplayOptions,
        Legend = M.LegendOptions,
        DataLabels = M.DataLabelOptions,
        Tooltip = M.TooltipOptions,
        VisualPalette = M.VisualPalette,
        Interactions = M.VisualInteractionOptions,
    },
}

M.ScatterPlotVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.ScatterPlotConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.TablePinnedFieldOptions = {
    type = "structure",
    members = {
        PinnedLeftFields = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TableCellImageScalingConfiguration = {
    FIT_TO_CELL_HEIGHT = "FIT_TO_CELL_HEIGHT",
    FIT_TO_CELL_WIDTH = "FIT_TO_CELL_WIDTH",
    DO_NOT_SCALE = "DO_NOT_SCALE",
}

M.TableCellImageSizingConfiguration = {
    type = "structure",
    members = {
        TableCellImageScalingConfiguration = {
            type = "string",
        },
    },
}

M.TableFieldImageConfiguration = {
    type = "structure",
    members = {
        SizingOptions = M.TableCellImageSizingConfiguration,
    },
}

M.TableFieldIconSetType = {
    LINK = "LINK",
}

M.TableFieldCustomIconContent = {
    type = "structure",
    members = {
        Icon = {
            type = "string",
        },
    },
}

M.TableFieldCustomTextContent = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        FontConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FontConfiguration }),
    },
}

M.TableFieldLinkContentConfiguration = {
    type = "structure",
    members = {
        CustomTextContent = M.TableFieldCustomTextContent,
        CustomIconContent = M.TableFieldCustomIconContent,
    },
}

M.TableFieldLinkConfiguration = {
    type = "structure",
    members = {
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableFieldLinkContentConfiguration }),
    },
}

M.TableFieldURLConfiguration = {
    type = "structure",
    members = {
        LinkConfiguration = M.TableFieldLinkConfiguration,
        ImageConfiguration = M.TableFieldImageConfiguration,
    },
}

M.TableFieldOption = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Width = {
            type = "string",
        },
        CustomLabel = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        URLStyling = M.TableFieldURLConfiguration,
    },
}

M.TransposedColumnType = {
    ROW_HEADER_COLUMN = "ROW_HEADER_COLUMN",
    VALUE_COLUMN = "VALUE_COLUMN",
}

M.TransposedTableOption = {
    type = "structure",
    members = {
        ColumnIndex = {
            type = "integer",
        },
        ColumnWidth = {
            type = "string",
        },
        ColumnType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TableFieldOptions = {
    type = "structure",
    members = {
        SelectedFieldOptions = {
            type = "list",
            member = M.TableFieldOption,
        },
        Order = {
            type = "list",
            member = { type = "string" },
        },
        PinnedFieldOptions = M.TablePinnedFieldOptions,
        TransposedTableOptions = {
            type = "list",
            member = M.TransposedTableOption,
        },
    },
}

M.TableAggregatedFieldWells = {
    type = "structure",
    members = {
        GroupBy = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.TableUnaggregatedFieldWells = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member = M.UnaggregatedField,
        },
    },
}

M.TableFieldWells = {
    type = "structure",
    members = {
        TableAggregatedFieldWells = M.TableAggregatedFieldWells,
        TableUnaggregatedFieldWells = M.TableUnaggregatedFieldWells,
    },
}

M.TablePaginatedReportOptions = {
    type = "structure",
    members = {
        VerticalOverflowVisibility = {
            type = "string",
        },
        OverflowColumnHeaderVisibility = {
            type = "string",
        },
    },
}

M.TableSortConfiguration = {
    type = "structure",
    members = {
        RowSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        PaginationConfiguration = M.PaginationConfiguration,
    },
}

M.DataBarsOptions = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PositiveColor = {
            type = "string",
        },
        NegativeColor = {
            type = "string",
        },
    },
}

M.SparklineVisualType = {
    LINE = "LINE",
    AREA_LINE = "AREA_LINE",
}

M.SparklineAxisBehavior = {
    SHARED = "SHARED",
    INDEPENDENT = "INDEPENDENT",
}

M.SparklinesOptions = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        XAxisField = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DimensionField }),
        YAxisBehavior = {
            type = "string",
        },
        VisualType = {
            type = "string",
        },
        LineColor = {
            type = "string",
        },
        LineInterpolation = {
            type = "string",
        },
        AllPointsMarker = M.LineChartMarkerStyleSettings,
        MaxValueMarker = M.LineChartMarkerStyleSettings,
        MinValueMarker = M.LineChartMarkerStyleSettings,
    },
}

M.TableInlineVisualization = {
    type = "structure",
    members = {
        DataBars = M.DataBarsOptions,
        Sparklines = M.SparklinesOptions,
    },
}

M.TableOrientation = {
    VERTICAL = "VERTICAL",
    HORIZONTAL = "HORIZONTAL",
}

M.TableOptions = {
    type = "structure",
    members = {
        Orientation = {
            type = "string",
        },
        HeaderStyle = M.TableCellStyle,
        CellStyle = M.TableCellStyle,
        RowAlternateColorOptions = M.RowAlternateColorOptions,
    },
}

M.TotalOptions = {
    type = "structure",
    members = {
        TotalsVisibility = {
            type = "string",
        },
        Placement = {
            type = "string",
        },
        ScrollStatus = {
            type = "string",
        },
        CustomLabel = {
            type = "string",
        },
        TotalCellStyle = M.TableCellStyle,
        TotalAggregationOptions = {
            type = "list",
            member = M.TotalAggregationOption,
        },
    },
}

M.TableConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.TableFieldWells,
        SortConfiguration = M.TableSortConfiguration,
        TableOptions = M.TableOptions,
        TotalOptions = M.TotalOptions,
        FieldOptions = M.TableFieldOptions,
        PaginatedReportOptions = M.TablePaginatedReportOptions,
        TableInlineVisualizations = {
            type = "list",
            member = M.TableInlineVisualization,
        },
        Tooltip = M.TooltipOptions,
        DashboardCustomizationVisualOptions = M.DashboardCustomizationVisualOptions,
        Interactions = M.VisualInteractionOptions,
    },
}

M.TableCellConditionalFormatting = {
    type = "structure",
    members = {
        FieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextFormat = M.TextConditionalFormat,
    },
}

M.TableRowConditionalFormatting = {
    type = "structure",
    members = {
        BackgroundColor = M.ConditionalFormattingColor,
        TextColor = M.ConditionalFormattingColor,
    },
}

M.TableConditionalFormattingOption = {
    type = "structure",
    members = {
        Cell = M.TableCellConditionalFormatting,
        Row = M.TableRowConditionalFormatting,
    },
}

M.TableConditionalFormatting = {
    type = "structure",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member = M.TableConditionalFormattingOption,
        },
    },
}

M.TableVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.TableConfiguration,
        ConditionalFormatting = M.TableConditionalFormatting,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.TreeMapAggregatedFieldWells = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member = M.DimensionField,
        },
        Sizes = {
            type = "list",
            member = M.MeasureField,
        },
        Colors = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.TreeMapFieldWells = {
    type = "structure",
    members = {
        TreeMapAggregatedFieldWells = M.TreeMapAggregatedFieldWells,
    },
}

M.TreeMapSortConfiguration = {
    type = "structure",
    members = {
        TreeMapSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        TreeMapGroupItemsLimitConfiguration = M.ItemsLimitConfiguration,
    },
}

M.TreeMapConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.TreeMapFieldWells,
        SortConfiguration = M.TreeMapSortConfiguration,
        GroupLabelOptions = M.ChartAxisLabelOptions,
        SizeLabelOptions = M.ChartAxisLabelOptions,
        ColorLabelOptions = M.ChartAxisLabelOptions,
        ColorScale = M.ColorScale,
        Legend = M.LegendOptions,
        DataLabels = M.DataLabelOptions,
        Tooltip = M.TooltipOptions,
        Interactions = M.VisualInteractionOptions,
    },
}

M.TreeMapVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.TreeMapConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.WaterfallChartGroupColorConfiguration = {
    type = "structure",
    members = {
        PositiveBarColor = {
            type = "string",
        },
        NegativeBarColor = {
            type = "string",
        },
        TotalBarColor = {
            type = "string",
        },
    },
}

M.WaterfallChartColorConfiguration = {
    type = "structure",
    members = {
        GroupColorConfiguration = M.WaterfallChartGroupColorConfiguration,
    },
}

M.WaterfallChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Categories = {
            type = "list",
            member = M.DimensionField,
        },
        Values = {
            type = "list",
            member = M.MeasureField,
        },
        Breakdowns = {
            type = "list",
            member = M.DimensionField,
        },
    },
}

M.WaterfallChartFieldWells = {
    type = "structure",
    members = {
        WaterfallChartAggregatedFieldWells = M.WaterfallChartAggregatedFieldWells,
    },
}

M.WaterfallChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member = M.FieldSortOptions,
        },
        BreakdownItemsLimit = M.ItemsLimitConfiguration,
    },
}

M.WaterfallChartOptions = {
    type = "structure",
    members = {
        TotalBarLabel = {
            type = "string",
        },
    },
}

M.WaterfallChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.WaterfallChartFieldWells,
        SortConfiguration = M.WaterfallChartSortConfiguration,
        WaterfallChartOptions = M.WaterfallChartOptions,
        CategoryAxisLabelOptions = M.ChartAxisLabelOptions,
        CategoryAxisDisplayOptions = M.AxisDisplayOptions,
        PrimaryYAxisLabelOptions = M.ChartAxisLabelOptions,
        PrimaryYAxisDisplayOptions = M.AxisDisplayOptions,
        Legend = M.LegendOptions,
        DataLabels = M.DataLabelOptions,
        VisualPalette = M.VisualPalette,
        ColorConfiguration = M.WaterfallChartColorConfiguration,
        Interactions = M.VisualInteractionOptions,
    },
}

M.WaterfallVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.WaterfallChartConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.WordCloudAggregatedFieldWells = {
    type = "structure",
    members = {
        GroupBy = {
            type = "list",
            member = M.DimensionField,
        },
        Size = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.WordCloudFieldWells = {
    type = "structure",
    members = {
        WordCloudAggregatedFieldWells = M.WordCloudAggregatedFieldWells,
    },
}

M.WordCloudSortConfiguration = {
    type = "structure",
    members = {
        CategoryItemsLimit = M.ItemsLimitConfiguration,
        CategorySort = {
            type = "list",
            member = M.FieldSortOptions,
        },
    },
}

M.WordCloudCloudLayout = {
    FLUID = "FLUID",
    NORMAL = "NORMAL",
}

M.WordCloudWordCasing = {
    LOWER_CASE = "LOWER_CASE",
    EXISTING_CASE = "EXISTING_CASE",
}

M.WordCloudWordOrientation = {
    HORIZONTAL = "HORIZONTAL",
    HORIZONTAL_AND_VERTICAL = "HORIZONTAL_AND_VERTICAL",
}

M.WordCloudWordPadding = {
    NONE = "NONE",
    SMALL = "SMALL",
    MEDIUM = "MEDIUM",
    LARGE = "LARGE",
}

M.WordCloudWordScaling = {
    EMPHASIZE = "EMPHASIZE",
    NORMAL = "NORMAL",
}

M.WordCloudOptions = {
    type = "structure",
    members = {
        WordOrientation = {
            type = "string",
        },
        WordScaling = {
            type = "string",
        },
        CloudLayout = {
            type = "string",
        },
        WordCasing = {
            type = "string",
        },
        WordPadding = {
            type = "string",
        },
        MaximumStringLength = {
            type = "integer",
        },
    },
}

M.WordCloudChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = M.WordCloudFieldWells,
        SortConfiguration = M.WordCloudSortConfiguration,
        CategoryLabelOptions = M.ChartAxisLabelOptions,
        WordCloudOptions = M.WordCloudOptions,
        Interactions = M.VisualInteractionOptions,
    },
}

M.WordCloudVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = M.VisualTitleLabelOptions,
        Subtitle = M.VisualSubtitleLabelOptions,
        ChartConfiguration = M.WordCloudChartConfiguration,
        Actions = {
            type = "list",
            member = M.VisualCustomAction,
        },
        ColumnHierarchies = {
            type = "list",
            member = M.ColumnHierarchy,
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.Visual = {
    type = "structure",
    members = {
        TableVisual = M.TableVisual,
        PivotTableVisual = M.PivotTableVisual,
        BarChartVisual = M.BarChartVisual,
        KPIVisual = M.KPIVisual,
        PieChartVisual = M.PieChartVisual,
        GaugeChartVisual = M.GaugeChartVisual,
        LineChartVisual = M.LineChartVisual,
        HeatMapVisual = M.HeatMapVisual,
        TreeMapVisual = M.TreeMapVisual,
        GeospatialMapVisual = M.GeospatialMapVisual,
        FilledMapVisual = M.FilledMapVisual,
        LayerMapVisual = M.LayerMapVisual,
        FunnelChartVisual = M.FunnelChartVisual,
        ScatterPlotVisual = M.ScatterPlotVisual,
        ComboChartVisual = M.ComboChartVisual,
        BoxPlotVisual = M.BoxPlotVisual,
        WaterfallVisual = M.WaterfallVisual,
        HistogramVisual = M.HistogramVisual,
        WordCloudVisual = M.WordCloudVisual,
        InsightVisual = M.InsightVisual,
        SankeyDiagramVisual = M.SankeyDiagramVisual,
        CustomContentVisual = M.CustomContentVisual,
        EmptyVisual = M.EmptyVisual,
        RadarChartVisual = M.RadarChartVisual,
        PluginVisual = M.PluginVisual,
    },
}

M.SheetDefinition = {
    type = "structure",
    members = {
        SheetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ParameterControls = {
            type = "list",
            member = M.ParameterControl,
        },
        FilterControls = {
            type = "list",
            member = M.FilterControl,
        },
        Visuals = {
            type = "list",
            member = M.Visual,
        },
        TextBoxes = {
            type = "list",
            member = M.SheetTextBox,
        },
        Images = {
            type = "list",
            member = M.SheetImage,
        },
        Layouts = {
            type = "list",
            member = M.Layout,
        },
        SheetControlLayouts = {
            type = "list",
            member = M.SheetControlLayout,
        },
        ContentType = {
            type = "string",
        },
        CustomActionDefaults = M.VisualCustomActionDefaults,
    },
}

M.StaticFileS3SourceOptions = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StaticFileUrlSourceOptions = {
    type = "structure",
    members = {
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StaticFileSource = {
    type = "structure",
    members = {
        UrlOptions = M.StaticFileUrlSourceOptions,
        S3Options = M.StaticFileS3SourceOptions,
    },
}

M.ImageStaticFile = {
    type = "structure",
    members = {
        StaticFileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = M.StaticFileSource,
    },
}

M.SpatialStaticFile = {
    type = "structure",
    members = {
        StaticFileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = M.StaticFileSource,
    },
}

M.StaticFile = {
    type = "structure",
    members = {
        ImageStaticFile = M.ImageStaticFile,
        SpatialStaticFile = M.SpatialStaticFile,
    },
}

M.TooltipSheetDefinition = {
    type = "structure",
    members = {
        SheetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Visuals = {
            type = "list",
            member = M.Visual,
        },
        TextBoxes = {
            type = "list",
            member = M.SheetTextBox,
        },
        Images = {
            type = "list",
            member = M.SheetImage,
        },
        Layouts = {
            type = "list",
            member = M.Layout,
        },
    },
}

M.AnalysisDefinition = {
    type = "structure",
    members = {
        DataSetIdentifierDeclarations = {
            type = "list",
            member = M.DataSetIdentifierDeclaration,
            traits = {
                required = true,
            },
        },
        Sheets = {
            type = "list",
            member = M.SheetDefinition,
        },
        TooltipSheets = {
            type = "list",
            member = M.TooltipSheetDefinition,
        },
        CalculatedFields = {
            type = "list",
            member = M.CalculatedField,
        },
        ParameterDeclarations = {
            type = "list",
            member = M.ParameterDeclaration,
        },
        FilterGroups = {
            type = "list",
            member = M.FilterGroup,
        },
        ColumnConfigurations = {
            type = "list",
            member = M.ColumnConfiguration,
        },
        AnalysisDefaults = M.AnalysisDefaults,
        Options = M.AssetOptions,
        QueryExecutionOptions = M.QueryExecutionOptions,
        StaticFiles = {
            type = "list",
            member = M.StaticFile,
        },
    },
}

M.AnalysisFilterAttribute = {
    QUICKSIGHT_USER = "QUICKSIGHT_USER",
    QUICKSIGHT_VIEWER_OR_OWNER = "QUICKSIGHT_VIEWER_OR_OWNER",
    DIRECT_QUICKSIGHT_VIEWER_OR_OWNER = "DIRECT_QUICKSIGHT_VIEWER_OR_OWNER",
    QUICKSIGHT_OWNER = "QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_OWNER = "DIRECT_QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_SOLE_OWNER = "DIRECT_QUICKSIGHT_SOLE_OWNER",
    ANALYSIS_NAME = "ANALYSIS_NAME",
}

M.AnalysisSearchFilter = {
    type = "structure",
    members = {
        Operator = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DataSetReference = {
    type = "structure",
    members = {
        DataSetPlaceholder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalysisSourceTemplate = {
    type = "structure",
    members = {
        DataSetReferences = {
            type = "list",
            member = M.DataSetReference,
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalysisSourceEntity = {
    type = "structure",
    members = {
        SourceTemplate = M.AnalysisSourceTemplate,
    },
}

M.AnalysisSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AnalysisId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.AnchorType = {
    TODAY = "TODAY",
}

M.Anchor = {
    type = "structure",
    members = {
        AnchorType = {
            type = "string",
        },
        TimeGranularity = {
            type = "string",
        },
        Offset = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.AnonymousUserDashboardEmbeddingConfigurationDisabledFeature = {
    SHARED_VIEW = "SHARED_VIEW",
}

M.AnonymousUserDashboardEmbeddingConfigurationEnabledFeature = {
    SHARED_VIEW = "SHARED_VIEW",
}

M.SharedViewConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.AnonymousUserDashboardFeatureConfigurations = {
    type = "structure",
    members = {
        SharedView = M.SharedViewConfigurations,
    },
}

M.AnonymousUserDashboardEmbeddingConfiguration = {
    type = "structure",
    members = {
        InitialDashboardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnabledFeatures = {
            type = "list",
            member = { type = "string" },
        },
        DisabledFeatures = {
            type = "list",
            member = { type = "string" },
        },
        FeatureConfigurations = M.AnonymousUserDashboardFeatureConfigurations,
    },
}

M.DashboardVisualId = {
    type = "structure",
    members = {
        DashboardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SheetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VisualId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnonymousUserDashboardVisualEmbeddingConfiguration = {
    type = "structure",
    members = {
        InitialDashboardVisualId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DashboardVisualId }),
    },
}

M.AnonymousUserGenerativeQnAEmbeddingConfiguration = {
    type = "structure",
    members = {
        InitialTopicId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnonymousUserQSearchBarEmbeddingConfiguration = {
    type = "structure",
    members = {
        InitialTopicId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnonymousUserEmbeddingExperienceConfiguration = {
    type = "structure",
    members = {
        Dashboard = M.AnonymousUserDashboardEmbeddingConfiguration,
        DashboardVisual = M.AnonymousUserDashboardVisualEmbeddingConfiguration,
        QSearchBar = M.AnonymousUserQSearchBarEmbeddingConfiguration,
        GenerativeQnA = M.AnonymousUserGenerativeQnAEmbeddingConfiguration,
    },
}

M.SnapshotFileFormatType = {
    CSV = "CSV",
    PDF = "PDF",
    EXCEL = "EXCEL",
}

M.SnapshotFileSheetSelectionScope = {
    ALL_VISUALS = "ALL_VISUALS",
    SELECTED_VISUALS = "SELECTED_VISUALS",
}

M.SnapshotFileSheetSelection = {
    type = "structure",
    members = {
        SheetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectionScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VisualIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SnapshotFile = {
    type = "structure",
    members = {
        SheetSelections = {
            type = "list",
            member = M.SnapshotFileSheetSelection,
            traits = {
                required = true,
            },
        },
        FormatType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SnapshotJobResultErrorInfo = {
    type = "structure",
    members = {
        ErrorMessage = {
            type = "string",
        },
        ErrorType = {
            type = "string",
        },
    },
}

M.S3BucketConfiguration = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SnapshotS3DestinationConfiguration = {
    type = "structure",
    members = {
        BucketConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3BucketConfiguration }),
    },
}

M.SnapshotJobS3Result = {
    type = "structure",
    members = {
        S3DestinationConfiguration = M.SnapshotS3DestinationConfiguration,
        S3Uri = {
            type = "string",
        },
        ErrorInfo = {
            type = "list",
            member = M.SnapshotJobResultErrorInfo,
        },
    },
}

M.SnapshotJobResultFileGroup = {
    type = "structure",
    members = {
        Files = {
            type = "list",
            member = M.SnapshotFile,
        },
        S3Results = {
            type = "list",
            member = M.SnapshotJobS3Result,
        },
    },
}

M.AnonymousUserSnapshotJobResult = {
    type = "structure",
    members = {
        FileGroups = {
            type = "list",
            member = M.SnapshotJobResultFileGroup,
        },
    },
}

M.APIKeyConnectionMetadata = {
    type = "structure",
    members = {
        BaseEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApiKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Email = {
            type = "string",
        },
    },
}

M.AppendedColumn = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewColumnId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AppendOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirstSource = M.TransformOperationSource,
        SecondSource = M.TransformOperationSource,
        AppendedColumns = {
            type = "list",
            member = M.AppendedColumn,
            traits = {
                required = true,
            },
        },
    },
}

M.Palette = {
    type = "structure",
    members = {
        Foreground = {
            type = "string",
        },
        Background = {
            type = "string",
        },
    },
}

M.BrandColorPalette = {
    type = "structure",
    members = {
        Primary = M.Palette,
        Secondary = M.Palette,
        Accent = M.Palette,
        Measure = M.Palette,
        Dimension = M.Palette,
        Success = M.Palette,
        Info = M.Palette,
        Warning = M.Palette,
        Danger = M.Palette,
    },
}

M.NavbarStyle = {
    type = "structure",
    members = {
        GlobalNavbar = M.Palette,
        ContextualNavbar = M.Palette,
    },
}

M.BrandElementStyle = {
    type = "structure",
    members = {
        NavbarStyle = M.NavbarStyle,
    },
}

M.ContextualAccentPalette = {
    type = "structure",
    members = {
        Connection = M.Palette,
        Visualization = M.Palette,
        Insight = M.Palette,
        Automation = M.Palette,
    },
}

M.ApplicationTheme = {
    type = "structure",
    members = {
        BrandColorPalette = M.BrandColorPalette,
        ContextualAccentPalette = M.ContextualAccentPalette,
        BrandElementStyle = M.BrandElementStyle,
    },
}

M.AssetBundleExportJobAnalysisPropertyToOverride = {
    NAME = "Name",
}

M.AssetBundleExportJobAnalysisOverrideProperties = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleExportJobDashboardPropertyToOverride = {
    NAME = "Name",
}

M.AssetBundleExportJobDashboardOverrideProperties = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleExportJobDataSetPropertyToOverride = {
    NAME = "Name",
    REFRESH_FAILURE_EMAIL_ALERT_STATUS = "RefreshFailureEmailAlertStatus",
}

M.AssetBundleExportJobDataSetOverrideProperties = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleExportJobDataSourcePropertyToOverride = {
    NAME = "Name",
    DISABLE_SSL = "DisableSsl",
    SECRET_ARN = "SecretArn",
    USERNAME = "Username",
    PASSWORD = "Password",
    DOMAIN = "Domain",
    WORK_GROUP = "WorkGroup",
    HOST = "Host",
    PORT = "Port",
    DATABASE = "Database",
    DATA_SET_NAME = "DataSetName",
    CATALOG = "Catalog",
    INSTANCE_ID = "InstanceId",
    CLUSTER_ID = "ClusterId",
    MANIFEST_FILE_LOCATION = "ManifestFileLocation",
    WAREHOUSE = "Warehouse",
    ROLE_ARN = "RoleArn",
    PRODUCT_TYPE = "ProductType",
}

M.AssetBundleExportJobDataSourceOverrideProperties = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleExportJobFolderPropertyToOverride = {
    NAME = "Name",
    PARENT_FOLDER_ARN = "ParentFolderArn",
}

M.AssetBundleExportJobFolderOverrideProperties = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleExportJobRefreshSchedulePropertyToOverride = {
    START_AFTER_DATE_TIME = "StartAfterDateTime",
}

M.AssetBundleExportJobRefreshScheduleOverrideProperties = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleExportJobResourceIdOverrideConfiguration = {
    type = "structure",
    members = {
        PrefixForAllResources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AssetBundleExportJobThemePropertyToOverride = {
    NAME = "Name",
}

M.AssetBundleExportJobThemeOverrideProperties = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleExportJobVPCConnectionPropertyToOverride = {
    NAME = "Name",
    DNS_RESOLVERS = "DnsResolvers",
    ROLE_ARN = "RoleArn",
}

M.AssetBundleExportJobVPCConnectionOverrideProperties = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleCloudFormationOverridePropertyConfiguration = {
    type = "structure",
    members = {
        ResourceIdOverrideConfiguration = M.AssetBundleExportJobResourceIdOverrideConfiguration,
        VPCConnections = {
            type = "list",
            member = M.AssetBundleExportJobVPCConnectionOverrideProperties,
        },
        RefreshSchedules = {
            type = "list",
            member = M.AssetBundleExportJobRefreshScheduleOverrideProperties,
        },
        DataSources = {
            type = "list",
            member = M.AssetBundleExportJobDataSourceOverrideProperties,
        },
        DataSets = {
            type = "list",
            member = M.AssetBundleExportJobDataSetOverrideProperties,
        },
        Themes = {
            type = "list",
            member = M.AssetBundleExportJobThemeOverrideProperties,
        },
        Analyses = {
            type = "list",
            member = M.AssetBundleExportJobAnalysisOverrideProperties,
        },
        Dashboards = {
            type = "list",
            member = M.AssetBundleExportJobDashboardOverrideProperties,
        },
        Folders = {
            type = "list",
            member = M.AssetBundleExportJobFolderOverrideProperties,
        },
    },
}

M.AssetBundleExportFormat = {
    CLOUDFORMATION_JSON = "CLOUDFORMATION_JSON",
    QUICKSIGHT_JSON = "QUICKSIGHT_JSON",
}

M.AssetBundleExportJobError = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AssetBundleExportJobStatus = {
    QUEUED_FOR_IMMEDIATE_EXECUTION = "QUEUED_FOR_IMMEDIATE_EXECUTION",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESSFUL = "SUCCESSFUL",
    FAILED = "FAILED",
}

M.AssetBundleExportJobSummary = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        AssetBundleExportJobId = {
            type = "string",
        },
        IncludeAllDependencies = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExportFormat = {
            type = "string",
        },
        IncludePermissions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeTags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AssetBundleExportJobValidationStrategy = {
    type = "structure",
    members = {
        StrictModeForAllResources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AssetBundleExportJobWarning = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AssetBundleImportFailureAction = {
    DO_NOTHING = "DO_NOTHING",
    ROLLBACK = "ROLLBACK",
}

M.AssetBundleImportJobAnalysisOverrideParameters = {
    type = "structure",
    members = {
        AnalysisId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.AssetBundleResourcePermissions = {
    type = "structure",
    members = {
        Principals = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleImportJobAnalysisOverridePermissions = {
    type = "structure",
    members = {
        AnalysisIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Permissions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetBundleResourcePermissions }),
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

M.AssetBundleImportJobAnalysisOverrideTags = {
    type = "structure",
    members = {
        AnalysisIds = {
            type = "list",
            member = { type = "string" },
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

M.AssetBundleImportJobDashboardOverrideParameters = {
    type = "structure",
    members = {
        DashboardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.AssetBundleResourceLinkSharingConfiguration = {
    type = "structure",
    members = {
        Permissions = M.AssetBundleResourcePermissions,
    },
}

M.AssetBundleImportJobDashboardOverridePermissions = {
    type = "structure",
    members = {
        DashboardIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Permissions = M.AssetBundleResourcePermissions,
        LinkSharingConfiguration = M.AssetBundleResourceLinkSharingConfiguration,
    },
}

M.AssetBundleImportJobDashboardOverrideTags = {
    type = "structure",
    members = {
        DashboardIds = {
            type = "list",
            member = { type = "string" },
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

M.RefreshFailureAlertStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RefreshFailureEmailAlert = {
    type = "structure",
    members = {
        AlertStatus = {
            type = "string",
        },
    },
}

M.RefreshFailureConfiguration = {
    type = "structure",
    members = {
        EmailAlert = M.RefreshFailureEmailAlert,
    },
}

M.LookbackWindowSizeUnit = {
    HOUR = "HOUR",
    DAY = "DAY",
    WEEK = "WEEK",
}

M.LookbackWindow = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Size = {
            type = "long",
            traits = {
                required = true,
            },
        },
        SizeUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IncrementalRefresh = {
    type = "structure",
    members = {
        LookbackWindow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LookbackWindow }),
    },
}

M.RefreshConfiguration = {
    type = "structure",
    members = {
        IncrementalRefresh = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IncrementalRefresh }),
    },
}

M.DataSetRefreshProperties = {
    type = "structure",
    members = {
        RefreshConfiguration = M.RefreshConfiguration,
        FailureConfiguration = M.RefreshFailureConfiguration,
    },
}

M.AssetBundleImportJobDataSetOverrideParameters = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        DataSetRefreshProperties = M.DataSetRefreshProperties,
    },
}

M.AssetBundleImportJobDataSetOverridePermissions = {
    type = "structure",
    members = {
        DataSetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Permissions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetBundleResourcePermissions }),
    },
}

M.AssetBundleImportJobDataSetOverrideTags = {
    type = "structure",
    members = {
        DataSetIds = {
            type = "list",
            member = { type = "string" },
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

M.AssetBundleImportJobDataSourceCredentialPair = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleImportJobDataSourceCredentials = {
    type = "structure",
    members = {
        CredentialPair = M.AssetBundleImportJobDataSourceCredentialPair,
        SecretArn = {
            type = "string",
        },
    },
}

M.IdentityCenterConfiguration = {
    type = "structure",
    members = {
        EnableIdentityPropagation = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.AthenaParameters = {
    type = "structure",
    members = {
        WorkGroup = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ConsumerAccountRoleArn = {
            type = "string",
        },
        IdentityCenterConfiguration = M.IdentityCenterConfiguration,
    },
}

M.AuroraParameters = {
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
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuroraPostgreSqlParameters = {
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
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AwsIotAnalyticsParameters = {
    type = "structure",
    members = {
        DataSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BigQueryParameters = {
    type = "structure",
    members = {
        ProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetRegion = {
            type = "string",
        },
    },
}

M.ConfluenceParameters = {
    type = "structure",
    members = {
        ConfluenceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomConnectionParameters = {
    type = "structure",
    members = {
        ConnectionType = {
            type = "string",
        },
    },
}

M.DatabricksParameters = {
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
        SqlEndpointPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExasolParameters = {
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
    },
}

M.ImpalaParameters = {
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
        Database = {
            type = "string",
        },
        SqlEndpointPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JiraParameters = {
    type = "structure",
    members = {
        SiteBaseUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MariaDbParameters = {
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
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MySqlParameters = {
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
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OracleParameters = {
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
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseServiceName = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PostgreSqlParameters = {
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
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PrestoParameters = {
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
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QBusinessParameters = {
    type = "structure",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RdsParameters = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftIAMParameters = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseUser = {
            type = "string",
        },
        DatabaseGroups = {
            type = "list",
            member = { type = "string" },
        },
        AutoCreateDatabaseUser = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RedshiftParameters = {
    type = "structure",
    members = {
        Host = {
            type = "string",
        },
        Port = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterId = {
            type = "string",
        },
        IAMParameters = M.RedshiftIAMParameters,
        IdentityCenterConfiguration = M.IdentityCenterConfiguration,
    },
}

M.S3KnowledgeBaseParameters = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
        },
        BucketUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetadataFilesLocation = {
            type = "string",
        },
    },
}

M.ManifestFileLocation = {
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

M.S3Parameters = {
    type = "structure",
    members = {
        ManifestFileLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManifestFileLocation }),
        RoleArn = {
            type = "string",
        },
    },
}

M.S3TablesParameters = {
    type = "structure",
    members = {
        TableBucketArn = {
            type = "string",
        },
    },
}

M.ServiceNowParameters = {
    type = "structure",
    members = {
        SiteBaseUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthenticationType = {
    PASSWORD = "PASSWORD",
    KEYPAIR = "KEYPAIR",
    TOKEN = "TOKEN",
    X509 = "X509",
}

M.VpcConnectionProperties = {
    type = "structure",
    members = {
        VpcConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OAuthParameters = {
    type = "structure",
    members = {
        TokenProviderUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OAuthScope = {
            type = "string",
        },
        IdentityProviderVpcConnectionProperties = M.VpcConnectionProperties,
        IdentityProviderResourceUri = {
            type = "string",
        },
        IdentityProviderCACertificatesBundleS3Uri = {
            type = "string",
        },
    },
}

M.SnowflakeParameters = {
    type = "structure",
    members = {
        Host = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Warehouse = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationType = {
            type = "string",
        },
        DatabaseAccessControlRole = {
            type = "string",
        },
        OAuthParameters = M.OAuthParameters,
    },
}

M.SparkParameters = {
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
    },
}

M.SqlServerParameters = {
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
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StarburstProductType = {
    GALAXY = "GALAXY",
    ENTERPRISE = "ENTERPRISE",
}

M.StarburstParameters = {
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
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductType = {
            type = "string",
        },
        DatabaseAccessControlRole = {
            type = "string",
        },
        AuthenticationType = {
            type = "string",
        },
        OAuthParameters = M.OAuthParameters,
    },
}

M.TeradataParameters = {
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
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrinoParameters = {
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
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TwitterParameters = {
    type = "structure",
    members = {
        Query = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxRows = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.WebCrawlerAuthType = {
    NO_AUTH = "NO_AUTH",
    BASIC_AUTH = "BASIC_AUTH",
    FORM = "FORM",
    SAML = "SAML",
}

M.WebCrawlerParameters = {
    type = "structure",
    members = {
        WebCrawlerAuthType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UsernameFieldXpath = {
            type = "string",
        },
        PasswordFieldXpath = {
            type = "string",
        },
        UsernameButtonXpath = {
            type = "string",
        },
        PasswordButtonXpath = {
            type = "string",
        },
        LoginPageUrl = {
            type = "string",
        },
        WebProxyHostName = {
            type = "string",
        },
        WebProxyPortNumber = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DataSourceParameters = {
    type = "union",
    members = {
        AmazonElasticsearchParameters = M.AmazonElasticsearchParameters,
        AthenaParameters = M.AthenaParameters,
        AuroraParameters = M.AuroraParameters,
        AuroraPostgreSqlParameters = M.AuroraPostgreSqlParameters,
        AwsIotAnalyticsParameters = M.AwsIotAnalyticsParameters,
        JiraParameters = M.JiraParameters,
        MariaDbParameters = M.MariaDbParameters,
        MySqlParameters = M.MySqlParameters,
        OracleParameters = M.OracleParameters,
        PostgreSqlParameters = M.PostgreSqlParameters,
        PrestoParameters = M.PrestoParameters,
        RdsParameters = M.RdsParameters,
        RedshiftParameters = M.RedshiftParameters,
        S3Parameters = M.S3Parameters,
        S3TablesParameters = M.S3TablesParameters,
        S3KnowledgeBaseParameters = M.S3KnowledgeBaseParameters,
        ServiceNowParameters = M.ServiceNowParameters,
        SnowflakeParameters = M.SnowflakeParameters,
        SparkParameters = M.SparkParameters,
        SqlServerParameters = M.SqlServerParameters,
        TeradataParameters = M.TeradataParameters,
        TwitterParameters = M.TwitterParameters,
        AmazonOpenSearchParameters = M.AmazonOpenSearchParameters,
        ExasolParameters = M.ExasolParameters,
        DatabricksParameters = M.DatabricksParameters,
        StarburstParameters = M.StarburstParameters,
        TrinoParameters = M.TrinoParameters,
        BigQueryParameters = M.BigQueryParameters,
        ImpalaParameters = M.ImpalaParameters,
        CustomConnectionParameters = M.CustomConnectionParameters,
        WebCrawlerParameters = M.WebCrawlerParameters,
        ConfluenceParameters = M.ConfluenceParameters,
        QBusinessParameters = M.QBusinessParameters,
    },
}

M.SslProperties = {
    type = "structure",
    members = {
        DisableSsl = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AssetBundleImportJobDataSourceOverrideParameters = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        DataSourceParameters = M.DataSourceParameters,
        VpcConnectionProperties = M.VpcConnectionProperties,
        SslProperties = M.SslProperties,
        Credentials = M.AssetBundleImportJobDataSourceCredentials,
    },
}

M.AssetBundleImportJobDataSourceOverridePermissions = {
    type = "structure",
    members = {
        DataSourceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Permissions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetBundleResourcePermissions }),
    },
}

M.AssetBundleImportJobDataSourceOverrideTags = {
    type = "structure",
    members = {
        DataSourceIds = {
            type = "list",
            member = { type = "string" },
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

M.AssetBundleImportJobError = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AssetBundleImportJobFolderOverrideParameters = {
    type = "structure",
    members = {
        FolderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        ParentFolderArn = {
            type = "string",
        },
    },
}

M.AssetBundleImportJobFolderOverridePermissions = {
    type = "structure",
    members = {
        FolderIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Permissions = M.AssetBundleResourcePermissions,
    },
}

M.AssetBundleImportJobFolderOverrideTags = {
    type = "structure",
    members = {
        FolderIds = {
            type = "list",
            member = { type = "string" },
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

M.AssetBundleImportJobRefreshScheduleOverrideParameters = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartAfterDateTime = {
            type = "timestamp",
        },
    },
}

M.AssetBundleImportJobResourceIdOverrideConfiguration = {
    type = "structure",
    members = {
        PrefixForAllResources = {
            type = "string",
        },
    },
}

M.AssetBundleImportJobThemeOverrideParameters = {
    type = "structure",
    members = {
        ThemeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.AssetBundleImportJobVPCConnectionOverrideParameters = {
    type = "structure",
    members = {
        VPCConnectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        DnsResolvers = {
            type = "list",
            member = { type = "string" },
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.AssetBundleImportJobOverrideParameters = {
    type = "structure",
    members = {
        ResourceIdOverrideConfiguration = M.AssetBundleImportJobResourceIdOverrideConfiguration,
        VPCConnections = {
            type = "list",
            member = M.AssetBundleImportJobVPCConnectionOverrideParameters,
        },
        RefreshSchedules = {
            type = "list",
            member = M.AssetBundleImportJobRefreshScheduleOverrideParameters,
        },
        DataSources = {
            type = "list",
            member = M.AssetBundleImportJobDataSourceOverrideParameters,
        },
        DataSets = {
            type = "list",
            member = M.AssetBundleImportJobDataSetOverrideParameters,
        },
        Themes = {
            type = "list",
            member = M.AssetBundleImportJobThemeOverrideParameters,
        },
        Analyses = {
            type = "list",
            member = M.AssetBundleImportJobAnalysisOverrideParameters,
        },
        Dashboards = {
            type = "list",
            member = M.AssetBundleImportJobDashboardOverrideParameters,
        },
        Folders = {
            type = "list",
            member = M.AssetBundleImportJobFolderOverrideParameters,
        },
    },
}

M.AssetBundleImportJobThemeOverridePermissions = {
    type = "structure",
    members = {
        ThemeIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Permissions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetBundleResourcePermissions }),
    },
}

M.AssetBundleImportJobOverridePermissions = {
    type = "structure",
    members = {
        DataSources = {
            type = "list",
            member = M.AssetBundleImportJobDataSourceOverridePermissions,
        },
        DataSets = {
            type = "list",
            member = M.AssetBundleImportJobDataSetOverridePermissions,
        },
        Themes = {
            type = "list",
            member = M.AssetBundleImportJobThemeOverridePermissions,
        },
        Analyses = {
            type = "list",
            member = M.AssetBundleImportJobAnalysisOverridePermissions,
        },
        Dashboards = {
            type = "list",
            member = M.AssetBundleImportJobDashboardOverridePermissions,
        },
        Folders = {
            type = "list",
            member = M.AssetBundleImportJobFolderOverridePermissions,
        },
    },
}

M.AssetBundleImportJobThemeOverrideTags = {
    type = "structure",
    members = {
        ThemeIds = {
            type = "list",
            member = { type = "string" },
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

M.AssetBundleImportJobVPCConnectionOverrideTags = {
    type = "structure",
    members = {
        VPCConnectionIds = {
            type = "list",
            member = { type = "string" },
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

M.AssetBundleImportJobOverrideTags = {
    type = "structure",
    members = {
        VPCConnections = {
            type = "list",
            member = M.AssetBundleImportJobVPCConnectionOverrideTags,
        },
        DataSources = {
            type = "list",
            member = M.AssetBundleImportJobDataSourceOverrideTags,
        },
        DataSets = {
            type = "list",
            member = M.AssetBundleImportJobDataSetOverrideTags,
        },
        Themes = {
            type = "list",
            member = M.AssetBundleImportJobThemeOverrideTags,
        },
        Analyses = {
            type = "list",
            member = M.AssetBundleImportJobAnalysisOverrideTags,
        },
        Dashboards = {
            type = "list",
            member = M.AssetBundleImportJobDashboardOverrideTags,
        },
        Folders = {
            type = "list",
            member = M.AssetBundleImportJobFolderOverrideTags,
        },
    },
}

M.AssetBundleImportJobOverrideValidationStrategy = {
    type = "structure",
    members = {
        StrictModeForAllResources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AssetBundleImportJobStatus = {
    QUEUED_FOR_IMMEDIATE_EXECUTION = "QUEUED_FOR_IMMEDIATE_EXECUTION",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESSFUL = "SUCCESSFUL",
    FAILED = "FAILED",
    FAILED_ROLLBACK_IN_PROGRESS = "FAILED_ROLLBACK_IN_PROGRESS",
    FAILED_ROLLBACK_COMPLETED = "FAILED_ROLLBACK_COMPLETED",
    FAILED_ROLLBACK_ERROR = "FAILED_ROLLBACK_ERROR",
}

M.AssetBundleImportJobSummary = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        AssetBundleImportJobId = {
            type = "string",
        },
        FailureAction = {
            type = "string",
        },
    },
}

M.AssetBundleImportJobWarning = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AssetBundleImportSource = {
    type = "structure",
    members = {
        Body = {
            type = "blob",
        },
        S3Uri = {
            type = "string",
        },
    },
}

M.AssetBundleImportSourceDescription = {
    type = "structure",
    members = {
        Body = {
            type = "string",
        },
        S3Uri = {
            type = "string",
        },
    },
}

M.AssignmentStatus = {
    ENABLED = "ENABLED",
    DRAFT = "DRAFT",
    DISABLED = "DISABLED",
}

M.AuthorizationCodeGrantDetails = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TokenEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizationEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthorizationCodeGrantCredentialsDetails = {
    type = "union",
    members = {
        AuthorizationCodeGrantDetails = M.AuthorizationCodeGrantDetails,
    },
}

M.AuthorizationCodeGrantMetadata = {
    type = "structure",
    members = {
        BaseEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RedirectUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizationCodeGrantCredentialsSource = {
            type = "string",
        },
        AuthorizationCodeGrantCredentialsDetails = M.AuthorizationCodeGrantCredentialsDetails,
    },
}

M.BasicAuthConnectionMetadata = {
    type = "structure",
    members = {
        BaseEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClientCredentialsGrantDetails = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TokenEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClientCredentialsDetails = {
    type = "union",
    members = {
        ClientCredentialsGrantDetails = M.ClientCredentialsGrantDetails,
    },
}

M.ClientCredentialsGrantMetadata = {
    type = "structure",
    members = {
        BaseEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientCredentialsSource = {
            type = "string",
        },
        ClientCredentialsDetails = M.ClientCredentialsDetails,
    },
}

M.IAMConnectionMetadata = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NoneConnectionMetadata = {
    type = "structure",
    members = {
        BaseEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthenticationMetadata = {
    type = "union",
    members = {
        AuthorizationCodeGrantMetadata = M.AuthorizationCodeGrantMetadata,
        ClientCredentialsGrantMetadata = M.ClientCredentialsGrantMetadata,
        BasicAuthConnectionMetadata = M.BasicAuthConnectionMetadata,
        ApiKeyConnectionMetadata = M.APIKeyConnectionMetadata,
        NoneConnectionMetadata = M.NoneConnectionMetadata,
        IamConnectionMetadata = M.IAMConnectionMetadata,
    },
}

M.AuthConfig = {
    type = "structure",
    members = {
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthenticationMetadata }),
    },
}

M.AuthenticationMethodOption = {
    IAM_AND_QUICKSIGHT = "IAM_AND_QUICKSIGHT",
    IAM_ONLY = "IAM_ONLY",
    ACTIVE_DIRECTORY = "ACTIVE_DIRECTORY",
    IAM_IDENTITY_CENTER = "IAM_IDENTITY_CENTER",
}

M.ServiceType = {
    REDSHIFT = "REDSHIFT",
    QBUSINESS = "QBUSINESS",
    ATHENA = "ATHENA",
}

M.AuthorizedTargetsByService = {
    type = "structure",
    members = {
        Service = {
            type = "string",
        },
        AuthorizedTargets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AuthorSpecifiedAggregation = {
    COUNT = "COUNT",
    DISTINCT_COUNT = "DISTINCT_COUNT",
    MIN = "MIN",
    MAX = "MAX",
    MEDIAN = "MEDIAN",
    SUM = "SUM",
    AVERAGE = "AVERAGE",
    STDEV = "STDEV",
    STDEVP = "STDEVP",
    VAR = "VAR",
    VARP = "VARP",
    PERCENTILE = "PERCENTILE",
}

M.AutomationJobStatus = {
    FAILED = "FAILED",
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    QUEUED = "QUEUED",
    STOPPED = "STOPPED",
}

M.ContributionAnalysisDirection = {
    INCREASE = "INCREASE",
    DECREASE = "DECREASE",
    NEUTRAL = "NEUTRAL",
}

M.ContributionAnalysisFactor = {
    type = "structure",
    members = {
        FieldName = {
            type = "string",
        },
    },
}

M.ContributionAnalysisSortType = {
    ABSOLUTE_DIFFERENCE = "ABSOLUTE_DIFFERENCE",
    CONTRIBUTION_PERCENTAGE = "CONTRIBUTION_PERCENTAGE",
    DEVIATION_FROM_EXPECTED = "DEVIATION_FROM_EXPECTED",
    PERCENTAGE_DIFFERENCE = "PERCENTAGE_DIFFERENCE",
}

M.Identifier = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TopicSortDirection = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.FilterAggMetrics = {
    type = "structure",
    members = {
        MetricOperand = M.Identifier,
        Function = {
            type = "string",
        },
        SortDirection = {
            type = "string",
        },
    },
}

M.ConstantType = {
    SINGULAR = "SINGULAR",
    RANGE = "RANGE",
    COLLECTIVE = "COLLECTIVE",
}

M.CollectiveConstantEntry = {
    type = "structure",
    members = {
        ConstantType = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.TopicConstantValue = {
    type = "structure",
    members = {
        ConstantType = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Minimum = {
            type = "string",
        },
        Maximum = {
            type = "string",
        },
        ValueList = {
            type = "list",
            member = M.CollectiveConstantEntry,
        },
    },
}

M.FilterClass = {
    ENFORCED_VALUE_FILTER = "ENFORCED_VALUE_FILTER",
    CONDITIONAL_VALUE_FILTER = "CONDITIONAL_VALUE_FILTER",
    NAMED_VALUE_FILTER = "NAMED_VALUE_FILTER",
}

M.TopicIRFilterType = {
    CATEGORY_FILTER = "CATEGORY_FILTER",
    NUMERIC_EQUALITY_FILTER = "NUMERIC_EQUALITY_FILTER",
    NUMERIC_RANGE_FILTER = "NUMERIC_RANGE_FILTER",
    DATE_RANGE_FILTER = "DATE_RANGE_FILTER",
    RELATIVE_DATE_FILTER = "RELATIVE_DATE_FILTER",
    TOP_BOTTOM_FILTER = "TOP_BOTTOM_FILTER",
    EQUALS = "EQUALS",
    RANK_LIMIT_FILTER = "RANK_LIMIT_FILTER",
    ACCEPT_ALL_FILTER = "ACCEPT_ALL_FILTER",
}

M.TopicIRFilterFunction = {
    CONTAINS = "CONTAINS",
    EXACT = "EXACT",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
    CONTAINS_STRING = "CONTAINS_STRING",
    PREVIOUS = "PREVIOUS",
    THIS = "THIS",
    LAST = "LAST",
    NEXT = "NEXT",
    NOW = "NOW",
}

M.NullFilterOption = {
    ALL_VALUES = "ALL_VALUES",
    NON_NULLS_ONLY = "NON_NULLS_ONLY",
    NULLS_ONLY = "NULLS_ONLY",
}

M.TopicIRFilterOption = {
    type = "structure",
    members = {
        FilterType = {
            type = "string",
        },
        FilterClass = {
            type = "string",
        },
        OperandField = M.Identifier,
        Function = {
            type = "string",
        },
        Constant = M.TopicConstantValue,
        Inverse = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        NullFilter = {
            type = "string",
        },
        Aggregation = {
            type = "string",
        },
        AggregationFunctionParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AggregationPartitionBy = {
            type = "list",
            member = M.AggregationPartitionBy,
        },
        Range = M.TopicConstantValue,
        Inclusive = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        TimeGranularity = {
            type = "string",
        },
        LastNextOffset = M.TopicConstantValue,
        AggMetrics = {
            type = "list",
            member = M.FilterAggMetrics,
        },
        TopBottomLimit = M.TopicConstantValue,
        SortDirection = {
            type = "string",
        },
        Anchor = M.Anchor,
    },
}

M.ContributionAnalysisTimeRanges = {
    type = "structure",
    members = {
        StartRange = M.TopicIRFilterOption,
        EndRange = M.TopicIRFilterOption,
    },
}

M.TopicIRContributionAnalysis = {
    type = "structure",
    members = {
        Factors = {
            type = "list",
            member = M.ContributionAnalysisFactor,
        },
        TimeRanges = M.ContributionAnalysisTimeRanges,
        Direction = {
            type = "string",
        },
        SortType = {
            type = "string",
        },
    },
}

M.DisplayFormat = {
    AUTO = "AUTO",
    PERCENT = "PERCENT",
    CURRENCY = "CURRENCY",
    NUMBER = "NUMBER",
    DATE = "DATE",
    STRING = "STRING",
}

M.TopicNumericSeparatorSymbol = {
    COMMA = "COMMA",
    DOT = "DOT",
}

M.NegativeFormat = {
    type = "structure",
    members = {
        Prefix = {
            type = "string",
        },
        Suffix = {
            type = "string",
        },
    },
}

M.DisplayFormatOptions = {
    type = "structure",
    members = {
        UseBlankCellFormat = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        BlankCellFormat = {
            type = "string",
        },
        DateFormat = {
            type = "string",
        },
        DecimalSeparator = {
            type = "string",
        },
        GroupingSeparator = {
            type = "string",
        },
        UseGrouping = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        FractionDigits = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Prefix = {
            type = "string",
        },
        Suffix = {
            type = "string",
        },
        UnitScaler = {
            type = "string",
        },
        NegativeFormat = M.NegativeFormat,
        CurrencySymbol = {
            type = "string",
        },
    },
}

M.NamedEntityRef = {
    type = "structure",
    members = {
        NamedEntityName = {
            type = "string",
        },
    },
}

M.TopicSortClause = {
    type = "structure",
    members = {
        Operand = M.Identifier,
        SortDirection = {
            type = "string",
        },
    },
}

M.TopicIRGroupBy = {
    type = "structure",
    members = {
        FieldName = M.Identifier,
        TimeGranularity = {
            type = "string",
        },
        Sort = M.TopicSortClause,
        DisplayFormat = {
            type = "string",
        },
        DisplayFormatOptions = M.DisplayFormatOptions,
        NamedEntity = M.NamedEntityRef,
    },
}

M.ComparisonMethodType = {
    DIFF = "DIFF",
    PERC_DIFF = "PERC_DIFF",
    DIFF_AS_PERC = "DIFF_AS_PERC",
    POP_CURRENT_DIFF_AS_PERC = "POP_CURRENT_DIFF_AS_PERC",
    POP_CURRENT_DIFF = "POP_CURRENT_DIFF",
    POP_OVERTIME_DIFF_AS_PERC = "POP_OVERTIME_DIFF_AS_PERC",
    POP_OVERTIME_DIFF = "POP_OVERTIME_DIFF",
    PERCENT_OF_TOTAL = "PERCENT_OF_TOTAL",
    RUNNING_SUM = "RUNNING_SUM",
    MOVING_AVERAGE = "MOVING_AVERAGE",
}

M.TopicIRComparisonMethod = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Period = {
            type = "string",
        },
        WindowSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.TopicIRMetric = {
    type = "structure",
    members = {
        MetricId = M.Identifier,
        Function = M.AggFunction,
        Operands = {
            type = "list",
            member = M.Identifier,
        },
        ComparisonMethod = M.TopicIRComparisonMethod,
        Expression = {
            type = "string",
        },
        CalculatedFieldReferences = {
            type = "list",
            member = M.Identifier,
        },
        DisplayFormat = {
            type = "string",
        },
        DisplayFormatOptions = M.DisplayFormatOptions,
        NamedEntity = M.NamedEntityRef,
    },
}

M.VisualOptions = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
    },
}

M.TopicIR = {
    type = "structure",
    members = {
        Metrics = {
            type = "list",
            member = M.TopicIRMetric,
        },
        GroupByList = {
            type = "list",
            member = M.TopicIRGroupBy,
        },
        Filters = {
            type = "list",
            member = { type = "list" },
        },
        Sort = M.TopicSortClause,
        ContributionAnalysis = M.TopicIRContributionAnalysis,
        Visual = M.VisualOptions,
    },
}

M.VisualRole = {
    PRIMARY = "PRIMARY",
    COMPLIMENTARY = "COMPLIMENTARY",
    MULTI_INTENT = "MULTI_INTENT",
    FALLBACK = "FALLBACK",
    FRAGMENT = "FRAGMENT",
}

M.Slot = {
    type = "structure",
    members = {
        SlotId = {
            type = "string",
        },
        VisualId = {
            type = "string",
        },
    },
}

M.TopicTemplate = {
    type = "structure",
    members = {
        TemplateType = {
            type = "string",
        },
        Slots = {
            type = "list",
            member = M.Slot,
        },
    },
}

M.ReviewedAnswerErrorCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    MISSING_ANSWER = "MISSING_ANSWER",
    DATASET_DOES_NOT_EXIST = "DATASET_DOES_NOT_EXIST",
    INVALID_DATASET_ARN = "INVALID_DATASET_ARN",
    DUPLICATED_ANSWER = "DUPLICATED_ANSWER",
    INVALID_DATA = "INVALID_DATA",
    MISSING_REQUIRED_FIELDS = "MISSING_REQUIRED_FIELDS",
}

M.InvalidTopicReviewedAnswer = {
    type = "structure",
    members = {
        AnswerId = {
            type = "string",
        },
        Error = {
            type = "string",
        },
    },
}

M.SucceededTopicReviewedAnswer = {
    type = "structure",
    members = {
        AnswerId = {
            type = "string",
        },
    },
}

M.BatchCreateTopicReviewedAnswerOutput = {
    type = "structure",
    members = {
        TopicId = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        SucceededAnswers = {
            type = "list",
            member = M.SucceededTopicReviewedAnswer,
        },
        InvalidAnswers = {
            type = "list",
            member = M.InvalidTopicReviewedAnswer,
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ExceptionResourceType = {
    USER = "USER",
    GROUP = "GROUP",
    NAMESPACE = "NAMESPACE",
    ACCOUNT_SETTINGS = "ACCOUNT_SETTINGS",
    IAMPOLICY_ASSIGNMENT = "IAMPOLICY_ASSIGNMENT",
    DATA_SOURCE = "DATA_SOURCE",
    DATA_SET = "DATA_SET",
    VPC_CONNECTION = "VPC_CONNECTION",
    INGESTION = "INGESTION",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        RequestId = {
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
        RequestId = {
            type = "string",
        },
    },
}

M.BatchDeleteTopicReviewedAnswerInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AnswerIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchDeleteTopicReviewedAnswerOutput = {
    type = "structure",
    members = {
        TopicId = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        SucceededAnswers = {
            type = "list",
            member = M.SucceededTopicReviewedAnswer,
        },
        InvalidAnswers = {
            type = "list",
            member = M.InvalidTopicReviewedAnswer,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
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
        RequestId = {
            type = "string",
        },
    },
}

M.BookmarksConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.BorderStyle = {
    type = "structure",
    members = {
        Color = {
            type = "string",
        },
        Show = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        Width = {
            type = "string",
        },
    },
}

M.ImageSource = {
    type = "union",
    members = {
        PublicUrl = {
            type = "string",
        },
        S3Uri = {
            type = "string",
        },
    },
}

M.ImageConfiguration = {
    type = "structure",
    members = {
        Source = M.ImageSource,
    },
}

M.ImageSetConfiguration = {
    type = "structure",
    members = {
        Original = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageConfiguration }),
    },
}

M.LogoSetConfiguration = {
    type = "structure",
    members = {
        Primary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageSetConfiguration }),
        Favicon = M.ImageSetConfiguration,
    },
}

M.LogoConfiguration = {
    type = "structure",
    members = {
        AltText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogoSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogoSetConfiguration }),
    },
}

M.BrandDefinition = {
    type = "structure",
    members = {
        BrandName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ApplicationTheme = M.ApplicationTheme,
        LogoConfiguration = M.LogoConfiguration,
    },
}

M.BrandStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_SUCCEEDED = "CREATE_SUCCEEDED",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.Image = {
    type = "structure",
    members = {
        Source = M.ImageSource,
        GeneratedImageUrl = {
            type = "string",
        },
    },
}

M.ImageSet = {
    type = "structure",
    members = {
        Original = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        Height64 = M.Image,
        Height32 = M.Image,
    },
}

M.LogoSet = {
    type = "structure",
    members = {
        Primary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageSet }),
        Favicon = M.ImageSet,
    },
}

M.Logo = {
    type = "structure",
    members = {
        AltText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogoSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogoSet }),
    },
}

M.BrandVersionStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_SUCCEEDED = "CREATE_SUCCEEDED",
    CREATE_FAILED = "CREATE_FAILED",
}

M.BrandDetail = {
    type = "structure",
    members = {
        BrandId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
        },
        BrandStatus = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        VersionId = {
            type = "string",
        },
        VersionStatus = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = { type = "string" },
        },
        Logo = M.Logo,
    },
}

M.BrandSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        BrandId = {
            type = "string",
        },
        BrandName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        BrandStatus = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.CalculatedColumn = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelIngestionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IngestionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelIngestionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        IngestionId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ResourceExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CapabilityState = {
    DENY = "DENY",
}

M.Capabilities = {
    type = "structure",
    members = {
        ExportToCsv = {
            type = "string",
        },
        ExportToExcel = {
            type = "string",
        },
        ExportToPdf = {
            type = "string",
        },
        PrintReports = {
            type = "string",
        },
        CreateAndUpdateThemes = {
            type = "string",
        },
        AddOrRunAnomalyDetectionForAnalyses = {
            type = "string",
        },
        ShareAnalyses = {
            type = "string",
        },
        CreateAndUpdateDatasets = {
            type = "string",
        },
        ShareDatasets = {
            type = "string",
        },
        SubscribeDashboardEmailReports = {
            type = "string",
        },
        CreateAndUpdateDashboardEmailReports = {
            type = "string",
        },
        ShareDashboards = {
            type = "string",
        },
        CreateAndUpdateThresholdAlerts = {
            type = "string",
        },
        RenameSharedFolders = {
            type = "string",
        },
        CreateSharedFolders = {
            type = "string",
        },
        CreateAndUpdateDataSources = {
            type = "string",
        },
        ShareDataSources = {
            type = "string",
        },
        ViewAccountSPICECapacity = {
            type = "string",
        },
        CreateSPICEDataset = {
            type = "string",
        },
        ExportToPdfInScheduledReports = {
            type = "string",
        },
        ExportToCsvInScheduledReports = {
            type = "string",
        },
        ExportToExcelInScheduledReports = {
            type = "string",
        },
        IncludeContentInScheduledReportsEmail = {
            type = "string",
        },
        Dashboard = {
            type = "string",
        },
        Analysis = {
            type = "string",
        },
        Automate = {
            type = "string",
        },
        Flow = {
            type = "string",
        },
        PublishWithoutApproval = {
            type = "string",
        },
        UseBedrockModels = {
            type = "string",
        },
        PerformFlowUiTask = {
            type = "string",
        },
        ApproveFlowShareRequests = {
            type = "string",
        },
        UseAgentWebSearch = {
            type = "string",
        },
        KnowledgeBase = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        GenericHTTPAction = {
            type = "string",
        },
        CreateAndUpdateGenericHTTPAction = {
            type = "string",
        },
        ShareGenericHTTPAction = {
            type = "string",
        },
        UseGenericHTTPAction = {
            type = "string",
        },
        AsanaAction = {
            type = "string",
        },
        CreateAndUpdateAsanaAction = {
            type = "string",
        },
        ShareAsanaAction = {
            type = "string",
        },
        UseAsanaAction = {
            type = "string",
        },
        SlackAction = {
            type = "string",
        },
        CreateAndUpdateSlackAction = {
            type = "string",
        },
        ShareSlackAction = {
            type = "string",
        },
        UseSlackAction = {
            type = "string",
        },
        ServiceNowAction = {
            type = "string",
        },
        CreateAndUpdateServiceNowAction = {
            type = "string",
        },
        ShareServiceNowAction = {
            type = "string",
        },
        UseServiceNowAction = {
            type = "string",
        },
        SalesforceAction = {
            type = "string",
        },
        CreateAndUpdateSalesforceAction = {
            type = "string",
        },
        ShareSalesforceAction = {
            type = "string",
        },
        UseSalesforceAction = {
            type = "string",
        },
        MSExchangeAction = {
            type = "string",
        },
        CreateAndUpdateMSExchangeAction = {
            type = "string",
        },
        ShareMSExchangeAction = {
            type = "string",
        },
        UseMSExchangeAction = {
            type = "string",
        },
        PagerDutyAction = {
            type = "string",
        },
        CreateAndUpdatePagerDutyAction = {
            type = "string",
        },
        SharePagerDutyAction = {
            type = "string",
        },
        UsePagerDutyAction = {
            type = "string",
        },
        JiraAction = {
            type = "string",
        },
        CreateAndUpdateJiraAction = {
            type = "string",
        },
        ShareJiraAction = {
            type = "string",
        },
        UseJiraAction = {
            type = "string",
        },
        ConfluenceAction = {
            type = "string",
        },
        CreateAndUpdateConfluenceAction = {
            type = "string",
        },
        ShareConfluenceAction = {
            type = "string",
        },
        UseConfluenceAction = {
            type = "string",
        },
        OneDriveAction = {
            type = "string",
        },
        CreateAndUpdateOneDriveAction = {
            type = "string",
        },
        ShareOneDriveAction = {
            type = "string",
        },
        UseOneDriveAction = {
            type = "string",
        },
        SharePointAction = {
            type = "string",
        },
        CreateAndUpdateSharePointAction = {
            type = "string",
        },
        ShareSharePointAction = {
            type = "string",
        },
        UseSharePointAction = {
            type = "string",
        },
        MSTeamsAction = {
            type = "string",
        },
        CreateAndUpdateMSTeamsAction = {
            type = "string",
        },
        ShareMSTeamsAction = {
            type = "string",
        },
        UseMSTeamsAction = {
            type = "string",
        },
        GoogleCalendarAction = {
            type = "string",
        },
        CreateAndUpdateGoogleCalendarAction = {
            type = "string",
        },
        ShareGoogleCalendarAction = {
            type = "string",
        },
        UseGoogleCalendarAction = {
            type = "string",
        },
        ZendeskAction = {
            type = "string",
        },
        CreateAndUpdateZendeskAction = {
            type = "string",
        },
        ShareZendeskAction = {
            type = "string",
        },
        UseZendeskAction = {
            type = "string",
        },
        SmartsheetAction = {
            type = "string",
        },
        CreateAndUpdateSmartsheetAction = {
            type = "string",
        },
        ShareSmartsheetAction = {
            type = "string",
        },
        UseSmartsheetAction = {
            type = "string",
        },
        SAPBusinessPartnerAction = {
            type = "string",
        },
        CreateAndUpdateSAPBusinessPartnerAction = {
            type = "string",
        },
        ShareSAPBusinessPartnerAction = {
            type = "string",
        },
        UseSAPBusinessPartnerAction = {
            type = "string",
        },
        SAPProductMasterDataAction = {
            type = "string",
        },
        CreateAndUpdateSAPProductMasterDataAction = {
            type = "string",
        },
        ShareSAPProductMasterDataAction = {
            type = "string",
        },
        UseSAPProductMasterDataAction = {
            type = "string",
        },
        SAPPhysicalInventoryAction = {
            type = "string",
        },
        CreateAndUpdateSAPPhysicalInventoryAction = {
            type = "string",
        },
        ShareSAPPhysicalInventoryAction = {
            type = "string",
        },
        UseSAPPhysicalInventoryAction = {
            type = "string",
        },
        SAPBillOfMaterialAction = {
            type = "string",
        },
        CreateAndUpdateSAPBillOfMaterialAction = {
            type = "string",
        },
        ShareSAPBillOfMaterialAction = {
            type = "string",
        },
        UseSAPBillOfMaterialAction = {
            type = "string",
        },
        SAPMaterialStockAction = {
            type = "string",
        },
        CreateAndUpdateSAPMaterialStockAction = {
            type = "string",
        },
        ShareSAPMaterialStockAction = {
            type = "string",
        },
        UseSAPMaterialStockAction = {
            type = "string",
        },
        FactSetAction = {
            type = "string",
        },
        CreateAndUpdateFactSetAction = {
            type = "string",
        },
        ShareFactSetAction = {
            type = "string",
        },
        UseFactSetAction = {
            type = "string",
        },
        AmazonSThreeAction = {
            type = "string",
        },
        CreateAndUpdateAmazonSThreeAction = {
            type = "string",
        },
        ShareAmazonSThreeAction = {
            type = "string",
        },
        UseAmazonSThreeAction = {
            type = "string",
        },
        TextractAction = {
            type = "string",
        },
        CreateAndUpdateTextractAction = {
            type = "string",
        },
        ShareTextractAction = {
            type = "string",
        },
        UseTextractAction = {
            type = "string",
        },
        ComprehendAction = {
            type = "string",
        },
        CreateAndUpdateComprehendAction = {
            type = "string",
        },
        ShareComprehendAction = {
            type = "string",
        },
        UseComprehendAction = {
            type = "string",
        },
        ComprehendMedicalAction = {
            type = "string",
        },
        CreateAndUpdateComprehendMedicalAction = {
            type = "string",
        },
        ShareComprehendMedicalAction = {
            type = "string",
        },
        UseComprehendMedicalAction = {
            type = "string",
        },
        AmazonBedrockARSAction = {
            type = "string",
        },
        CreateAndUpdateAmazonBedrockARSAction = {
            type = "string",
        },
        ShareAmazonBedrockARSAction = {
            type = "string",
        },
        UseAmazonBedrockARSAction = {
            type = "string",
        },
        AmazonBedrockFSAction = {
            type = "string",
        },
        CreateAndUpdateAmazonBedrockFSAction = {
            type = "string",
        },
        ShareAmazonBedrockFSAction = {
            type = "string",
        },
        UseAmazonBedrockFSAction = {
            type = "string",
        },
        AmazonBedrockKRSAction = {
            type = "string",
        },
        CreateAndUpdateAmazonBedrockKRSAction = {
            type = "string",
        },
        ShareAmazonBedrockKRSAction = {
            type = "string",
        },
        UseAmazonBedrockKRSAction = {
            type = "string",
        },
        MCPAction = {
            type = "string",
        },
        CreateAndUpdateMCPAction = {
            type = "string",
        },
        ShareMCPAction = {
            type = "string",
        },
        UseMCPAction = {
            type = "string",
        },
        OpenAPIAction = {
            type = "string",
        },
        CreateAndUpdateOpenAPIAction = {
            type = "string",
        },
        ShareOpenAPIAction = {
            type = "string",
        },
        UseOpenAPIAction = {
            type = "string",
        },
        SandPGMIAction = {
            type = "string",
        },
        CreateAndUpdateSandPGMIAction = {
            type = "string",
        },
        ShareSandPGMIAction = {
            type = "string",
        },
        UseSandPGMIAction = {
            type = "string",
        },
        SandPGlobalEnergyAction = {
            type = "string",
        },
        CreateAndUpdateSandPGlobalEnergyAction = {
            type = "string",
        },
        ShareSandPGlobalEnergyAction = {
            type = "string",
        },
        UseSandPGlobalEnergyAction = {
            type = "string",
        },
        BambooHRAction = {
            type = "string",
        },
        CreateAndUpdateBambooHRAction = {
            type = "string",
        },
        ShareBambooHRAction = {
            type = "string",
        },
        UseBambooHRAction = {
            type = "string",
        },
        BoxAgentAction = {
            type = "string",
        },
        CreateAndUpdateBoxAgentAction = {
            type = "string",
        },
        ShareBoxAgentAction = {
            type = "string",
        },
        UseBoxAgentAction = {
            type = "string",
        },
        CanvaAgentAction = {
            type = "string",
        },
        CreateAndUpdateCanvaAgentAction = {
            type = "string",
        },
        ShareCanvaAgentAction = {
            type = "string",
        },
        UseCanvaAgentAction = {
            type = "string",
        },
        GithubAction = {
            type = "string",
        },
        CreateAndUpdateGithubAction = {
            type = "string",
        },
        ShareGithubAction = {
            type = "string",
        },
        UseGithubAction = {
            type = "string",
        },
        NotionAction = {
            type = "string",
        },
        CreateAndUpdateNotionAction = {
            type = "string",
        },
        ShareNotionAction = {
            type = "string",
        },
        UseNotionAction = {
            type = "string",
        },
        LinearAction = {
            type = "string",
        },
        CreateAndUpdateLinearAction = {
            type = "string",
        },
        ShareLinearAction = {
            type = "string",
        },
        UseLinearAction = {
            type = "string",
        },
        HuggingFaceAction = {
            type = "string",
        },
        CreateAndUpdateHuggingFaceAction = {
            type = "string",
        },
        ShareHuggingFaceAction = {
            type = "string",
        },
        UseHuggingFaceAction = {
            type = "string",
        },
        MondayAction = {
            type = "string",
        },
        CreateAndUpdateMondayAction = {
            type = "string",
        },
        ShareMondayAction = {
            type = "string",
        },
        UseMondayAction = {
            type = "string",
        },
        HubspotAction = {
            type = "string",
        },
        CreateAndUpdateHubspotAction = {
            type = "string",
        },
        ShareHubspotAction = {
            type = "string",
        },
        UseHubspotAction = {
            type = "string",
        },
        IntercomAction = {
            type = "string",
        },
        CreateAndUpdateIntercomAction = {
            type = "string",
        },
        ShareIntercomAction = {
            type = "string",
        },
        UseIntercomAction = {
            type = "string",
        },
        NewRelicAction = {
            type = "string",
        },
        CreateAndUpdateNewRelicAction = {
            type = "string",
        },
        ShareNewRelicAction = {
            type = "string",
        },
        UseNewRelicAction = {
            type = "string",
        },
        Topic = {
            type = "string",
        },
        EditVisualWithQ = {
            type = "string",
        },
        BuildCalculatedFieldWithQ = {
            type = "string",
        },
        CreateDashboardExecutiveSummaryWithQ = {
            type = "string",
        },
        Space = {
            type = "string",
        },
        CreateSpaces = {
            type = "string",
        },
        ShareSpaces = {
            type = "string",
        },
        ChatAgent = {
            type = "string",
        },
        CreateChatAgents = {
            type = "string",
        },
        ShareChatAgents = {
            type = "string",
        },
        Research = {
            type = "string",
        },
        SelfUpgradeUserRole = {
            type = "string",
        },
        Extension = {
            type = "string",
        },
        ManageSharedFolders = {
            type = "string",
        },
        GenerateAnalyses = {
            type = "string",
        },
        Story = {
            type = "string",
        },
        Scenario = {
            type = "string",
        },
    },
}

M.ColumnDataType = {
    STRING = "STRING",
    INTEGER = "INTEGER",
    DECIMAL = "DECIMAL",
    DATETIME = "DATETIME",
}

M.ColumnDataSubType = {
    FLOAT = "FLOAT",
    FIXED = "FIXED",
}

M.CastColumnTypeOperation = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewColumnType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubType = {
            type = "string",
        },
        Format = {
            type = "string",
        },
    },
}

M.CastColumnTypesOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformOperationSource }),
        CastColumnTypeOperations = {
            type = "list",
            member = M.CastColumnTypeOperation,
            traits = {
                required = true,
            },
        },
    },
}

M.CategoryFilterFunction = {
    EXACT = "EXACT",
    CONTAINS = "CONTAINS",
}

M.CategoryFilterType = {
    CUSTOM_FILTER = "CUSTOM_FILTER",
    CUSTOM_FILTER_LIST = "CUSTOM_FILTER_LIST",
    FILTER_LIST = "FILTER_LIST",
}

M.CellValueSynonym = {
    type = "structure",
    members = {
        CellValue = {
            type = "string",
        },
        Synonyms = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CollectiveConstant = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ColumnDataRole = {
    DIMENSION = "DIMENSION",
    MEASURE = "MEASURE",
}

M.ColumnDescription = {
    type = "structure",
    members = {
        Text = {
            type = "string",
        },
    },
}

M.GeoSpatialCountryCode = {
    US = "US",
}

M.GeoSpatialColumnGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CountryCode = {
            type = "string",
        },
        Columns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ColumnGroup = {
    type = "structure",
    members = {
        GeoSpatialColumnGroup = M.GeoSpatialColumnGroup,
    },
}

M.ColumnGroupColumnSchema = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.ColumnGroupSchema = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ColumnGroupColumnSchemaList = {
            type = "list",
            member = M.ColumnGroupColumnSchema,
        },
    },
}

M.ColumnLevelPermissionRule = {
    type = "structure",
    members = {
        Principals = {
            type = "list",
            member = { type = "string" },
        },
        ColumnNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ColumnOrderingType = {
    GREATER_IS_BETTER = "GREATER_IS_BETTER",
    LESSER_IS_BETTER = "LESSER_IS_BETTER",
    SPECIFIED = "SPECIFIED",
}

M.ColumnSchema = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        DataType = {
            type = "string",
        },
        GeographicRole = {
            type = "string",
        },
    },
}

M.GeoSpatialDataRole = {
    COUNTRY = "COUNTRY",
    STATE = "STATE",
    COUNTY = "COUNTY",
    CITY = "CITY",
    POSTCODE = "POSTCODE",
    LONGITUDE = "LONGITUDE",
    LATITUDE = "LATITUDE",
}

M.ColumnTag = {
    type = "structure",
    members = {
        ColumnGeographicRole = {
            type = "string",
        },
        ColumnDescription = M.ColumnDescription,
    },
}

M.ColumnTagName = {
    COLUMN_GEOGRAPHIC_ROLE = "COLUMN_GEOGRAPHIC_ROLE",
    COLUMN_DESCRIPTION = "COLUMN_DESCRIPTION",
}

M.ColumnToUnpivot = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
        },
        NewValue = {
            type = "string",
        },
    },
}

M.UndefinedSpecifiedValueType = {
    LEAST = "LEAST",
    MOST = "MOST",
}

M.ComparativeOrder = {
    type = "structure",
    members = {
        UseOrdering = {
            type = "string",
        },
        SpecifedOrder = {
            type = "list",
            member = { type = "string" },
        },
        TreatUndefinedSpecifiedValues = {
            type = "string",
        },
    },
}

M.ConcurrentUpdatingException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ControlTitleFontConfiguration = {
    type = "structure",
    members = {
        FontConfiguration = M.FontConfiguration,
        TextAlignment = {
            type = "string",
        },
    },
}

M.CreateAccountCustomizationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        AccountCustomization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountCustomization }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAccountCustomizationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AwsAccountId = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        AccountCustomization = M.AccountCustomization,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ResourceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CreateAccountSubscriptionInput = {
    type = "structure",
    members = {
        Edition = {
            type = "string",
        },
        AuthenticationMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActiveDirectoryName = {
            type = "string",
        },
        Realm = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        AdminGroup = {
            type = "list",
            member = { type = "string" },
        },
        AuthorGroup = {
            type = "list",
            member = { type = "string" },
        },
        ReaderGroup = {
            type = "list",
            member = { type = "string" },
        },
        AdminProGroup = {
            type = "list",
            member = { type = "string" },
        },
        AuthorProGroup = {
            type = "list",
            member = { type = "string" },
        },
        ReaderProGroup = {
            type = "list",
            member = { type = "string" },
        },
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        ContactNumber = {
            type = "string",
        },
        IAMIdentityCenterInstanceArn = {
            type = "string",
        },
    },
}

M.SignupResponse = {
    type = "structure",
    members = {
        IAMUser = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        userLoginName = {
            type = "string",
        },
        accountName = {
            type = "string",
        },
        directoryType = {
            type = "string",
        },
    },
}

M.CreateAccountSubscriptionOutput = {
    type = "structure",
    members = {
        SignupResponse = M.SignupResponse,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.PreconditionNotMetException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ResourcePermission = {
    type = "structure",
    members = {
        Principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateActionConnectorInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ActionConnectorId = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthConfig }),
        Description = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        VpcConnectionArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateActionConnectorOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        ActionConnectorId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DateTimeParameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "timestamp" },
            traits = {
                required = true,
            },
        },
    },
}

M.DecimalParameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
    },
}

M.IntegerParameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "long" },
            traits = {
                required = true,
            },
        },
    },
}

M.StringParameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Parameters = {
    type = "structure",
    members = {
        StringParameters = {
            type = "list",
            member = M.StringParameter,
        },
        IntegerParameters = {
            type = "list",
            member = M.IntegerParameter,
        },
        DecimalParameters = {
            type = "list",
            member = M.DecimalParameter,
        },
        DateTimeParameters = {
            type = "list",
            member = M.DateTimeParameter,
        },
    },
}

M.ValidationStrategyMode = {
    STRICT = "STRICT",
    LENIENT = "LENIENT",
}

M.ValidationStrategy = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAnalysisInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AnalysisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = M.Parameters,
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        SourceEntity = M.AnalysisSourceEntity,
        ThemeArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Definition = M.AnalysisDefinition,
        ValidationStrategy = M.ValidationStrategy,
        FolderArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateAnalysisOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AnalysisId = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UnsupportedUserEditionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CreateBrandInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BrandId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BrandDefinition = M.BrandDefinition,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateBrandOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        BrandDetail = M.BrandDetail,
        BrandDefinition = M.BrandDefinition,
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
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
        RequestId = {
            type = "string",
        },
    },
}

M.CreateColumnsOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
        },
        Source = M.TransformOperationSource,
        Columns = {
            type = "list",
            member = M.CalculatedColumn,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CustomPermissionsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Capabilities = M.Capabilities,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCustomPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Arn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DataPointDrillUpDownOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.DataPointMenuLabelOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.DataPointTooltipOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.DataQAEnabledOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.DataStoriesSharingOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.ExecutiveSummaryOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.ExportToCSVOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.ExportWithHiddenFieldsOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.QuickSuiteActionsOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.DashboardUIState = {
    EXPANDED = "EXPANDED",
    COLLAPSED = "COLLAPSED",
}

M.SheetControlsOption = {
    type = "structure",
    members = {
        VisibilityState = {
            type = "string",
        },
    },
}

M.SheetLayoutElementMaximizationOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.VisualAxisSortOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.ExportHiddenFieldsOption = {
    type = "structure",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.DashboardVisualPublishOptions = {
    type = "structure",
    members = {
        ExportHiddenFieldsOption = M.ExportHiddenFieldsOption,
    },
}

M.DashboardPublishOptions = {
    type = "structure",
    members = {
        AdHocFilteringOption = M.AdHocFilteringOption,
        ExportToCSVOption = M.ExportToCSVOption,
        SheetControlsOption = M.SheetControlsOption,
        VisualPublishOptions = M.DashboardVisualPublishOptions,
        SheetLayoutElementMaximizationOption = M.SheetLayoutElementMaximizationOption,
        VisualMenuOption = M.VisualMenuOption,
        VisualAxisSortOption = M.VisualAxisSortOption,
        ExportWithHiddenFieldsOption = M.ExportWithHiddenFieldsOption,
        DataPointDrillUpDownOption = M.DataPointDrillUpDownOption,
        DataPointMenuLabelOption = M.DataPointMenuLabelOption,
        DataPointTooltipOption = M.DataPointTooltipOption,
        DataQAEnabledOption = M.DataQAEnabledOption,
        QuickSuiteActionsOption = M.QuickSuiteActionsOption,
        ExecutiveSummaryOption = M.ExecutiveSummaryOption,
        DataStoriesSharingOption = M.DataStoriesSharingOption,
    },
}

M.DashboardVersionDefinition = {
    type = "structure",
    members = {
        DataSetIdentifierDeclarations = {
            type = "list",
            member = M.DataSetIdentifierDeclaration,
            traits = {
                required = true,
            },
        },
        Sheets = {
            type = "list",
            member = M.SheetDefinition,
        },
        TooltipSheets = {
            type = "list",
            member = M.TooltipSheetDefinition,
        },
        CalculatedFields = {
            type = "list",
            member = M.CalculatedField,
        },
        ParameterDeclarations = {
            type = "list",
            member = M.ParameterDeclaration,
        },
        FilterGroups = {
            type = "list",
            member = M.FilterGroup,
        },
        ColumnConfigurations = {
            type = "list",
            member = M.ColumnConfiguration,
        },
        AnalysisDefaults = M.AnalysisDefaults,
        Options = M.AssetOptions,
        StaticFiles = {
            type = "list",
            member = M.StaticFile,
        },
    },
}

M.LinkSharingConfiguration = {
    type = "structure",
    members = {
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.DashboardSourceTemplate = {
    type = "structure",
    members = {
        DataSetReferences = {
            type = "list",
            member = M.DataSetReference,
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DashboardSourceEntity = {
    type = "structure",
    members = {
        SourceTemplate = M.DashboardSourceTemplate,
    },
}

M.CreateDashboardInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = M.Parameters,
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        SourceEntity = M.DashboardSourceEntity,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        VersionDescription = {
            type = "string",
        },
        DashboardPublishOptions = M.DashboardPublishOptions,
        ThemeArn = {
            type = "string",
        },
        Definition = M.DashboardVersionDefinition,
        ValidationStrategy = M.ValidationStrategy,
        FolderArns = {
            type = "list",
            member = { type = "string" },
        },
        LinkSharingConfiguration = M.LinkSharingConfiguration,
        LinkEntities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateDashboardOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        VersionArn = {
            type = "string",
        },
        DashboardId = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DestinationTableSource = {
    type = "structure",
    members = {
        TransformOperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DestinationTable = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationTableSource }),
    },
}

M.InputColumnDataType = {
    STRING = "STRING",
    INTEGER = "INTEGER",
    DECIMAL = "DECIMAL",
    DATETIME = "DATETIME",
    BIT = "BIT",
    BOOLEAN = "BOOLEAN",
    JSON = "JSON",
    SEMISTRUCT = "SEMISTRUCT",
}

M.InputColumn = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubType = {
            type = "string",
        },
    },
}

M.ParentDataSet = {
    type = "structure",
    members = {
        DataSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputColumns = {
            type = "list",
            member = M.InputColumn,
            traits = {
                required = true,
            },
        },
    },
}

M.SourceTable = {
    type = "structure",
    members = {
        PhysicalTableId = {
            type = "string",
        },
        DataSet = M.ParentDataSet,
    },
}

M.DataSetDateComparisonFilterOperator = {
    BEFORE = "BEFORE",
    BEFORE_OR_EQUALS_TO = "BEFORE_OR_EQUALS_TO",
    AFTER = "AFTER",
    AFTER_OR_EQUALS_TO = "AFTER_OR_EQUALS_TO",
}

M.DataSetDateFilterValue = {
    type = "structure",
    members = {
        StaticValue = {
            type = "timestamp",
        },
    },
}

M.DataSetDateComparisonFilterCondition = {
    type = "structure",
    members = {
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = M.DataSetDateFilterValue,
    },
}

M.DataSetDateRangeFilterCondition = {
    type = "structure",
    members = {
        RangeMinimum = M.DataSetDateFilterValue,
        RangeMaximum = M.DataSetDateFilterValue,
        IncludeMinimum = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        IncludeMaximum = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.DataSetDateFilterCondition = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
        },
        ComparisonFilterCondition = M.DataSetDateComparisonFilterCondition,
        RangeFilterCondition = M.DataSetDateRangeFilterCondition,
    },
}

M.DataSetNumericComparisonFilterOperator = {
    EQUALS = "EQUALS",
    DOES_NOT_EQUAL = "DOES_NOT_EQUAL",
    GREATER_THAN = "GREATER_THAN",
    GREATER_THAN_OR_EQUALS_TO = "GREATER_THAN_OR_EQUALS_TO",
    LESS_THAN = "LESS_THAN",
    LESS_THAN_OR_EQUALS_TO = "LESS_THAN_OR_EQUALS_TO",
}

M.DataSetNumericFilterValue = {
    type = "structure",
    members = {
        StaticValue = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.DataSetNumericComparisonFilterCondition = {
    type = "structure",
    members = {
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = M.DataSetNumericFilterValue,
    },
}

M.DataSetNumericRangeFilterCondition = {
    type = "structure",
    members = {
        RangeMinimum = M.DataSetNumericFilterValue,
        RangeMaximum = M.DataSetNumericFilterValue,
        IncludeMinimum = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        IncludeMaximum = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.DataSetNumericFilterCondition = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
        },
        ComparisonFilterCondition = M.DataSetNumericComparisonFilterCondition,
        RangeFilterCondition = M.DataSetNumericRangeFilterCondition,
    },
}

M.DataSetStringComparisonFilterOperator = {
    EQUALS = "EQUALS",
    DOES_NOT_EQUAL = "DOES_NOT_EQUAL",
    CONTAINS = "CONTAINS",
    DOES_NOT_CONTAIN = "DOES_NOT_CONTAIN",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
}

M.DataSetStringFilterValue = {
    type = "structure",
    members = {
        StaticValue = {
            type = "string",
        },
    },
}

M.DataSetStringComparisonFilterCondition = {
    type = "structure",
    members = {
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = M.DataSetStringFilterValue,
    },
}

M.DataSetStringListFilterOperator = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.DataSetStringListFilterValue = {
    type = "structure",
    members = {
        StaticValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DataSetStringListFilterCondition = {
    type = "structure",
    members = {
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = M.DataSetStringListFilterValue,
    },
}

M.DataSetStringFilterCondition = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
        },
        ComparisonFilterCondition = M.DataSetStringComparisonFilterCondition,
        ListFilterCondition = M.DataSetStringListFilterCondition,
    },
}

M.FilterOperation = {
    type = "structure",
    members = {
        ConditionExpression = {
            type = "string",
        },
        StringFilterCondition = M.DataSetStringFilterCondition,
        NumericFilterCondition = M.DataSetNumericFilterCondition,
        DateFilterCondition = M.DataSetDateFilterCondition,
    },
}

M.FiltersOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformOperationSource }),
        FilterOperations = {
            type = "list",
            member = M.FilterOperation,
            traits = {
                required = true,
            },
        },
    },
}

M.ImportTableOperationSource = {
    type = "structure",
    members = {
        SourceTableId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnIdMappings = {
            type = "list",
            member = M.DataSetColumnIdMapping,
        },
    },
}

M.ImportTableOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportTableOperationSource }),
    },
}

M.OutputColumnNameOverride = {
    type = "structure",
    members = {
        SourceColumnName = {
            type = "string",
        },
        OutputColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JoinOperandProperties = {
    type = "structure",
    members = {
        OutputColumnNameOverrides = {
            type = "list",
            member = M.OutputColumnNameOverride,
            traits = {
                required = true,
            },
        },
    },
}

M.JoinOperationType = {
    INNER = "INNER",
    OUTER = "OUTER",
    LEFT = "LEFT",
    RIGHT = "RIGHT",
}

M.JoinOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LeftOperand = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformOperationSource }),
        RightOperand = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformOperationSource }),
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OnClause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LeftOperandProperties = M.JoinOperandProperties,
        RightOperandProperties = M.JoinOperandProperties,
    },
}

M.PivotedLabel = {
    type = "structure",
    members = {
        LabelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewColumnId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PivotConfiguration = {
    type = "structure",
    members = {
        LabelColumnName = {
            type = "string",
        },
        PivotedLabels = {
            type = "list",
            member = M.PivotedLabel,
            traits = {
                required = true,
            },
        },
    },
}

M.ValueColumnConfiguration = {
    type = "structure",
    members = {
        AggregationFunction = M.DataPrepAggregationFunction,
    },
}

M.PivotOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformOperationSource }),
        GroupByColumnNames = {
            type = "list",
            member = { type = "string" },
        },
        ValueColumnConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ValueColumnConfiguration }),
        PivotConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PivotConfiguration }),
    },
}

M.ProjectOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
        },
        Source = M.TransformOperationSource,
        ProjectedColumns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RenameColumnOperation = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RenameColumnsOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformOperationSource }),
        RenameColumnOperations = {
            type = "list",
            member = M.RenameColumnOperation,
            traits = {
                required = true,
            },
        },
    },
}

M.UnpivotOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformOperationSource }),
        ColumnsToUnpivot = {
            type = "list",
            member = M.ColumnToUnpivot,
            traits = {
                required = true,
            },
        },
        UnpivotedLabelColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UnpivotedLabelColumnId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UnpivotedValueColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UnpivotedValueColumnId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransformStep = {
    type = "structure",
    members = {
        ImportTableStep = M.ImportTableOperation,
        ProjectStep = M.ProjectOperation,
        FiltersStep = M.FiltersOperation,
        CreateColumnsStep = M.CreateColumnsOperation,
        RenameColumnsStep = M.RenameColumnsOperation,
        CastColumnTypesStep = M.CastColumnTypesOperation,
        JoinStep = M.JoinOperation,
        AggregateStep = M.AggregateOperation,
        PivotStep = M.PivotOperation,
        UnpivotStep = M.UnpivotOperation,
        AppendStep = M.AppendOperation,
    },
}

M.DataPrepConfiguration = {
    type = "structure",
    members = {
        SourceTableMap = {
            type = "map",
            key = { type = "string" },
            value = M.SourceTable,
            traits = {
                required = true,
            },
        },
        TransformStepMap = {
            type = "map",
            key = { type = "string" },
            value = M.TransformStep,
            traits = {
                required = true,
            },
        },
        DestinationTableMap = {
            type = "map",
            key = { type = "string" },
            value = M.DestinationTable,
            traits = {
                required = true,
            },
        },
    },
}

M.DateTimeDatasetParameterDefaultValues = {
    type = "structure",
    members = {
        StaticValues = {
            type = "list",
            member = { type = "timestamp" },
        },
    },
}

M.DatasetParameterValueType = {
    MULTI_VALUED = "MULTI_VALUED",
    SINGLE_VALUED = "SINGLE_VALUED",
}

M.DateTimeDatasetParameter = {
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
        TimeGranularity = {
            type = "string",
        },
        DefaultValues = M.DateTimeDatasetParameterDefaultValues,
    },
}

M.DecimalDatasetParameterDefaultValues = {
    type = "structure",
    members = {
        StaticValues = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.DecimalDatasetParameter = {
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
        DefaultValues = M.DecimalDatasetParameterDefaultValues,
    },
}

M.IntegerDatasetParameterDefaultValues = {
    type = "structure",
    members = {
        StaticValues = {
            type = "list",
            member = { type = "long" },
        },
    },
}

M.IntegerDatasetParameter = {
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
        DefaultValues = M.IntegerDatasetParameterDefaultValues,
    },
}

M.StringDatasetParameterDefaultValues = {
    type = "structure",
    members = {
        StaticValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StringDatasetParameter = {
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
        DefaultValues = M.StringDatasetParameterDefaultValues,
    },
}

M.DatasetParameter = {
    type = "structure",
    members = {
        StringDatasetParameter = M.StringDatasetParameter,
        DecimalDatasetParameter = M.DecimalDatasetParameter,
        IntegerDatasetParameter = M.IntegerDatasetParameter,
        DateTimeDatasetParameter = M.DateTimeDatasetParameter,
    },
}

M.DataSetUsageConfiguration = {
    type = "structure",
    members = {
        DisableUseAsDirectQuerySource = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DisableUseAsImportedSource = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.FieldFolder = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        columns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DataSetImportMode = {
    SPICE = "SPICE",
    DIRECT_QUERY = "DIRECT_QUERY",
}

M.NewDefaultValues = {
    type = "structure",
    members = {
        StringStaticValues = {
            type = "list",
            member = { type = "string" },
        },
        DecimalStaticValues = {
            type = "list",
            member = { type = "double" },
        },
        DateTimeStaticValues = {
            type = "list",
            member = { type = "timestamp" },
        },
        IntegerStaticValues = {
            type = "list",
            member = { type = "long" },
        },
    },
}

M.OverrideDatasetParameterOperation = {
    type = "structure",
    members = {
        ParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewParameterName = {
            type = "string",
        },
        NewDefaultValues = M.NewDefaultValues,
    },
}

M.TagColumnOperation = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.ColumnTag,
            traits = {
                required = true,
            },
        },
    },
}

M.UntagColumnOperation = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TransformOperation = {
    type = "union",
    members = {
        ProjectOperation = M.ProjectOperation,
        FilterOperation = M.FilterOperation,
        CreateColumnsOperation = M.CreateColumnsOperation,
        RenameColumnOperation = M.RenameColumnOperation,
        CastColumnTypeOperation = M.CastColumnTypeOperation,
        TagColumnOperation = M.TagColumnOperation,
        UntagColumnOperation = M.UntagColumnOperation,
        OverrideDatasetParameterOperation = M.OverrideDatasetParameterOperation,
    },
}

M.JoinKeyProperties = {
    type = "structure",
    members = {
        UniqueKey = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.JoinType = {
    INNER = "INNER",
    OUTER = "OUTER",
    LEFT = "LEFT",
    RIGHT = "RIGHT",
}

M.JoinInstruction = {
    type = "structure",
    members = {
        LeftOperand = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RightOperand = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LeftJoinKeyProperties = M.JoinKeyProperties,
        RightJoinKeyProperties = M.JoinKeyProperties,
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OnClause = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LogicalTableSource = {
    type = "structure",
    members = {
        JoinInstruction = M.JoinInstruction,
        PhysicalTableId = {
            type = "string",
        },
        DataSetArn = {
            type = "string",
        },
    },
}

M.LogicalTable = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataTransforms = {
            type = "list",
            member = M.TransformOperation,
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogicalTableSource }),
    },
}

M.UniqueKey = {
    type = "structure",
    members = {
        ColumnNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PerformanceConfiguration = {
    type = "structure",
    members = {
        UniqueKeys = {
            type = "list",
            member = M.UniqueKey,
        },
    },
}

M.CustomSql = {
    type = "structure",
    members = {
        DataSourceArn = {
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
        SqlQuery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Columns = {
            type = "list",
            member = M.InputColumn,
        },
    },
}

M.RelationalTable = {
    type = "structure",
    members = {
        DataSourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Catalog = {
            type = "string",
        },
        Schema = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputColumns = {
            type = "list",
            member = M.InputColumn,
            traits = {
                required = true,
            },
        },
    },
}

M.FileFormat = {
    CSV = "CSV",
    TSV = "TSV",
    CLF = "CLF",
    ELF = "ELF",
    XLSX = "XLSX",
    JSON = "JSON",
}

M.TextQualifier = {
    DOUBLE_QUOTE = "DOUBLE_QUOTE",
    SINGLE_QUOTE = "SINGLE_QUOTE",
}

M.UploadSettings = {
    type = "structure",
    members = {
        Format = {
            type = "string",
        },
        StartFromRow = {
            type = "integer",
        },
        ContainsHeader = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        TextQualifier = {
            type = "string",
        },
        Delimiter = {
            type = "string",
        },
        CustomCellAddressRange = {
            type = "string",
        },
    },
}

M.S3Source = {
    type = "structure",
    members = {
        DataSourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UploadSettings = M.UploadSettings,
        InputColumns = {
            type = "list",
            member = M.InputColumn,
            traits = {
                required = true,
            },
        },
    },
}

M.TablePathElement = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.SaaSTable = {
    type = "structure",
    members = {
        DataSourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TablePath = {
            type = "list",
            member = M.TablePathElement,
            traits = {
                required = true,
            },
        },
        InputColumns = {
            type = "list",
            member = M.InputColumn,
            traits = {
                required = true,
            },
        },
    },
}

M.PhysicalTable = {
    type = "union",
    members = {
        RelationalTable = M.RelationalTable,
        CustomSql = M.CustomSql,
        S3Source = M.S3Source,
        SaaSTable = M.SaaSTable,
    },
}

M.RowLevelPermissionFormatVersion = {
    VERSION_1 = "VERSION_1",
    VERSION_2 = "VERSION_2",
}

M.RowLevelPermissionPolicy = {
    GRANT_ACCESS = "GRANT_ACCESS",
    DENY_ACCESS = "DENY_ACCESS",
}

M.Status = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RowLevelPermissionDataSet = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FormatVersion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.RowLevelPermissionTagRule = {
    type = "structure",
    members = {
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagMultiValueDelimiter = {
            type = "string",
        },
        MatchAllValue = {
            type = "string",
        },
    },
}

M.RowLevelPermissionTagConfiguration = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        TagRules = {
            type = "list",
            member = M.RowLevelPermissionTagRule,
            traits = {
                required = true,
            },
        },
        TagRuleConfigurations = {
            type = "list",
            member = { type = "list" },
        },
    },
}

M.RowLevelPermissionConfiguration = {
    type = "structure",
    members = {
        TagConfiguration = M.RowLevelPermissionTagConfiguration,
        RowLevelPermissionDataSet = M.RowLevelPermissionDataSet,
    },
}

M.SemanticTable = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationTableId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RowLevelPermissionConfiguration = M.RowLevelPermissionConfiguration,
    },
}

M.SemanticModelConfiguration = {
    type = "structure",
    members = {
        TableMap = {
            type = "map",
            key = { type = "string" },
            value = M.SemanticTable,
        },
    },
}

M.DataSetUseAs = {
    RLS_RULES = "RLS_RULES",
}

M.CreateDataSetInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
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
        PhysicalTableMap = {
            type = "map",
            key = { type = "string" },
            value = M.PhysicalTable,
            traits = {
                required = true,
            },
        },
        LogicalTableMap = {
            type = "map",
            key = { type = "string" },
            value = M.LogicalTable,
        },
        ImportMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnGroups = {
            type = "list",
            member = M.ColumnGroup,
        },
        FieldFolders = {
            type = "map",
            key = { type = "string" },
            value = M.FieldFolder,
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RowLevelPermissionDataSet = M.RowLevelPermissionDataSet,
        RowLevelPermissionTagConfiguration = M.RowLevelPermissionTagConfiguration,
        ColumnLevelPermissionRules = {
            type = "list",
            member = M.ColumnLevelPermissionRule,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DataSetUsageConfiguration = M.DataSetUsageConfiguration,
        DatasetParameters = {
            type = "list",
            member = M.DatasetParameter,
        },
        FolderArns = {
            type = "list",
            member = { type = "string" },
        },
        PerformanceConfiguration = M.PerformanceConfiguration,
        UseAs = {
            type = "string",
        },
        DataPrepConfiguration = M.DataPrepConfiguration,
        SemanticModelConfiguration = M.SemanticModelConfiguration,
    },
}

M.CreateDataSetOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DataSetId = {
            type = "string",
        },
        IngestionArn = {
            type = "string",
        },
        IngestionId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.InvalidDataSetParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CredentialPair = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlternateDataSourceParameters = {
            type = "list",
            member = M.DataSourceParameters,
        },
    },
}

M.KeyPairCredentials = {
    type = "structure",
    members = {
        KeyPairUsername = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrivateKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrivateKeyPassphrase = {
            type = "string",
        },
    },
}

M.OAuthClientCredentials = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
        },
        ClientSecret = {
            type = "string",
        },
        Username = {
            type = "string",
        },
    },
}

M.WebProxyCredentials = {
    type = "structure",
    members = {
        WebProxyUsername = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebProxyPassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceCredentials = {
    type = "structure",
    members = {
        CredentialPair = M.CredentialPair,
        CopySourceArn = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        KeyPairCredentials = M.KeyPairCredentials,
        WebProxyCredentials = M.WebProxyCredentials,
        OAuthClientCredentials = M.OAuthClientCredentials,
    },
}

M.DataSourceType = {
    ADOBE_ANALYTICS = "ADOBE_ANALYTICS",
    AMAZON_ELASTICSEARCH = "AMAZON_ELASTICSEARCH",
    ATHENA = "ATHENA",
    AURORA = "AURORA",
    AURORA_POSTGRESQL = "AURORA_POSTGRESQL",
    AWS_IOT_ANALYTICS = "AWS_IOT_ANALYTICS",
    GITHUB = "GITHUB",
    JIRA = "JIRA",
    MARIADB = "MARIADB",
    MYSQL = "MYSQL",
    ORACLE = "ORACLE",
    POSTGRESQL = "POSTGRESQL",
    PRESTO = "PRESTO",
    REDSHIFT = "REDSHIFT",
    S3 = "S3",
    S3_TABLES = "S3_TABLES",
    SALESFORCE = "SALESFORCE",
    SERVICENOW = "SERVICENOW",
    SNOWFLAKE = "SNOWFLAKE",
    SPARK = "SPARK",
    SQLSERVER = "SQLSERVER",
    TERADATA = "TERADATA",
    TWITTER = "TWITTER",
    TIMESTREAM = "TIMESTREAM",
    AMAZON_OPENSEARCH = "AMAZON_OPENSEARCH",
    EXASOL = "EXASOL",
    DATABRICKS = "DATABRICKS",
    STARBURST = "STARBURST",
    TRINO = "TRINO",
    BIGQUERY = "BIGQUERY",
    GOOGLESHEETS = "GOOGLESHEETS",
    GOOGLE_DRIVE = "GOOGLE_DRIVE",
    CONFLUENCE = "CONFLUENCE",
    SHAREPOINT = "SHAREPOINT",
    ONE_DRIVE = "ONE_DRIVE",
    WEB_CRAWLER = "WEB_CRAWLER",
    S3_KNOWLEDGE_BASE = "S3_KNOWLEDGE_BASE",
    QBUSINESS = "QBUSINESS",
}

M.CreateDataSourceInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSourceId = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceParameters = M.DataSourceParameters,
        Credentials = M.DataSourceCredentials,
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        VpcConnectionProperties = M.VpcConnectionProperties,
        SslProperties = M.SslProperties,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FolderArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateDataSourceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.CustomerManagedKeyUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.FolderType = {
    SHARED = "SHARED",
    RESTRICTED = "RESTRICTED",
}

M.SharingModel = {
    ACCOUNT = "ACCOUNT",
    NAMESPACE = "NAMESPACE",
}

M.CreateFolderInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        FolderType = {
            type = "string",
        },
        ParentFolderArn = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SharingModel = {
            type = "string",
        },
    },
}

M.CreateFolderOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        Arn = {
            type = "string",
        },
        FolderId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.MemberType = {
    DASHBOARD = "DASHBOARD",
    ANALYSIS = "ANALYSIS",
    DATASET = "DATASET",
    DATASOURCE = "DATASOURCE",
    TOPIC = "TOPIC",
}

M.CreateFolderMembershipInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.FolderMember = {
    type = "structure",
    members = {
        MemberId = {
            type = "string",
        },
        MemberType = {
            type = "string",
        },
    },
}

M.CreateFolderMembershipOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        FolderMember = M.FolderMember,
        RequestId = {
            type = "string",
        },
    },
}

M.CreateGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Group = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        PrincipalId = {
            type = "string",
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    members = {
        Group = M.Group,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.CreateGroupMembershipInput = {
    type = "structure",
    members = {
        MemberName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GroupMember = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        MemberName = {
            type = "string",
        },
    },
}

M.CreateGroupMembershipOutput = {
    type = "structure",
    members = {
        GroupMember = M.GroupMember,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.CreateIAMPolicyAssignmentInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssignmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssignmentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArn = {
            type = "string",
        },
        Identities = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateIAMPolicyAssignmentOutput = {
    type = "structure",
    members = {
        AssignmentName = {
            type = "string",
        },
        AssignmentId = {
            type = "string",
        },
        AssignmentStatus = {
            type = "string",
        },
        PolicyArn = {
            type = "string",
        },
        Identities = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.IngestionType = {
    INCREMENTAL_REFRESH = "INCREMENTAL_REFRESH",
    FULL_REFRESH = "FULL_REFRESH",
}

M.CreateIngestionInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IngestionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IngestionType = {
            type = "string",
        },
    },
}

M.IngestionStatus = {
    INITIALIZED = "INITIALIZED",
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
}

M.CreateIngestionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        IngestionId = {
            type = "string",
        },
        IngestionStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.IdentityStore = {
    QUICKSIGHT = "QUICKSIGHT",
}

M.CreateNamespaceInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityStore = {
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

M.NamespaceStatus = {
    CREATED = "CREATED",
    CREATING = "CREATING",
    DELETING = "DELETING",
    RETRYABLE_FAILURE = "RETRYABLE_FAILURE",
    NON_RETRYABLE_FAILURE = "NON_RETRYABLE_FAILURE",
}

M.CreateNamespaceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CapacityRegion = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        IdentityStore = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.RefreshInterval = {
    MINUTE15 = "MINUTE15",
    MINUTE30 = "MINUTE30",
    HOURLY = "HOURLY",
    DAILY = "DAILY",
    WEEKLY = "WEEKLY",
    MONTHLY = "MONTHLY",
}

M.DayOfWeek = {
    SUNDAY = "SUNDAY",
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
}

M.ScheduleRefreshOnEntity = {
    type = "structure",
    members = {
        DayOfWeek = {
            type = "string",
        },
        DayOfMonth = {
            type = "string",
        },
    },
}

M.RefreshFrequency = {
    type = "structure",
    members = {
        Interval = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RefreshOnDay = M.ScheduleRefreshOnEntity,
        Timezone = {
            type = "string",
        },
        TimeOfTheDay = {
            type = "string",
        },
    },
}

M.RefreshSchedule = {
    type = "structure",
    members = {
        ScheduleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleFrequency = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RefreshFrequency }),
        StartAfterDateTime = {
            type = "timestamp",
        },
        RefreshType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
        },
    },
}

M.CreateRefreshScheduleInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RefreshSchedule }),
    },
}

M.CreateRefreshScheduleOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
        ScheduleId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.Role = {
    ADMIN = "ADMIN",
    AUTHOR = "AUTHOR",
    READER = "READER",
    ADMIN_PRO = "ADMIN_PRO",
    AUTHOR_PRO = "AUTHOR_PRO",
    READER_PRO = "READER_PRO",
}

M.CreateRoleMembershipInput = {
    type = "structure",
    members = {
        MemberName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateRoleMembershipOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DataSetSchema = {
    type = "structure",
    members = {
        ColumnSchemaList = {
            type = "list",
            member = M.ColumnSchema,
        },
    },
}

M.DataSetConfiguration = {
    type = "structure",
    members = {
        Placeholder = {
            type = "string",
        },
        DataSetSchema = M.DataSetSchema,
        ColumnGroupSchemaList = {
            type = "list",
            member = M.ColumnGroupSchema,
        },
    },
}

M.TemplateVersionDefinition = {
    type = "structure",
    members = {
        DataSetConfigurations = {
            type = "list",
            member = M.DataSetConfiguration,
            traits = {
                required = true,
            },
        },
        Sheets = {
            type = "list",
            member = M.SheetDefinition,
        },
        TooltipSheets = {
            type = "list",
            member = M.TooltipSheetDefinition,
        },
        CalculatedFields = {
            type = "list",
            member = M.CalculatedField,
        },
        ParameterDeclarations = {
            type = "list",
            member = M.ParameterDeclaration,
        },
        FilterGroups = {
            type = "list",
            member = M.FilterGroup,
        },
        ColumnConfigurations = {
            type = "list",
            member = M.ColumnConfiguration,
        },
        AnalysisDefaults = M.AnalysisDefaults,
        Options = M.AssetOptions,
        QueryExecutionOptions = M.QueryExecutionOptions,
        StaticFiles = {
            type = "list",
            member = M.StaticFile,
        },
    },
}

M.TemplateSourceAnalysis = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetReferences = {
            type = "list",
            member = M.DataSetReference,
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateSourceTemplate = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateSourceEntity = {
    type = "structure",
    members = {
        SourceAnalysis = M.TemplateSourceAnalysis,
        SourceTemplate = M.TemplateSourceTemplate,
    },
}

M.CreateTemplateInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        SourceEntity = M.TemplateSourceEntity,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        VersionDescription = {
            type = "string",
        },
        Definition = M.TemplateVersionDefinition,
        ValidationStrategy = M.ValidationStrategy,
    },
}

M.CreateTemplateOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        VersionArn = {
            type = "string",
        },
        TemplateId = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CreateTemplateAliasInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateVersionNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateAlias = {
    type = "structure",
    members = {
        AliasName = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        TemplateVersionNumber = {
            type = "long",
        },
    },
}

M.CreateTemplateAliasOutput = {
    type = "structure",
    members = {
        TemplateAlias = M.TemplateAlias,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DataColorPalette = {
    type = "structure",
    members = {
        Colors = {
            type = "list",
            member = { type = "string" },
        },
        MinMaxGradient = {
            type = "list",
            member = { type = "string" },
        },
        EmptyFillColor = {
            type = "string",
        },
    },
}

M.SheetBackgroundStyle = {
    type = "structure",
    members = {
        Color = {
            type = "string",
        },
        Gradient = {
            type = "string",
        },
    },
}

M.TileStyle = {
    type = "structure",
    members = {
        BackgroundColor = {
            type = "string",
        },
        Border = M.BorderStyle,
        BorderRadius = {
            type = "string",
        },
        Padding = {
            type = "string",
        },
    },
}

M.GutterStyle = {
    type = "structure",
    members = {
        Show = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.MarginStyle = {
    type = "structure",
    members = {
        Show = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.TileLayoutStyle = {
    type = "structure",
    members = {
        Gutter = M.GutterStyle,
        Margin = M.MarginStyle,
    },
}

M.SheetStyle = {
    type = "structure",
    members = {
        Tile = M.TileStyle,
        TileLayout = M.TileLayoutStyle,
        Background = M.SheetBackgroundStyle,
    },
}

M.Font = {
    type = "structure",
    members = {
        FontFamily = {
            type = "string",
        },
    },
}

M.TextTransform = {
    CAPITALIZE = "CAPITALIZE",
}

M.VisualSubtitleFontConfiguration = {
    type = "structure",
    members = {
        FontConfiguration = M.FontConfiguration,
        TextAlignment = {
            type = "string",
        },
        TextTransform = {
            type = "string",
        },
    },
}

M.VisualTitleFontConfiguration = {
    type = "structure",
    members = {
        FontConfiguration = M.FontConfiguration,
        TextAlignment = {
            type = "string",
        },
        TextTransform = {
            type = "string",
        },
    },
}

M.Typography = {
    type = "structure",
    members = {
        FontFamilies = {
            type = "list",
            member = M.Font,
        },
        AxisTitleFontConfiguration = M.FontConfiguration,
        AxisLabelFontConfiguration = M.FontConfiguration,
        LegendTitleFontConfiguration = M.FontConfiguration,
        LegendValueFontConfiguration = M.FontConfiguration,
        DataLabelFontConfiguration = M.FontConfiguration,
        VisualTitleFontConfiguration = M.VisualTitleFontConfiguration,
        VisualSubtitleFontConfiguration = M.VisualSubtitleFontConfiguration,
        ControlTitleFontConfiguration = M.ControlTitleFontConfiguration,
    },
}

M.UIColorPalette = {
    type = "structure",
    members = {
        PrimaryForeground = {
            type = "string",
        },
        PrimaryBackground = {
            type = "string",
        },
        SecondaryForeground = {
            type = "string",
        },
        SecondaryBackground = {
            type = "string",
        },
        Accent = {
            type = "string",
        },
        AccentForeground = {
            type = "string",
        },
        Danger = {
            type = "string",
        },
        DangerForeground = {
            type = "string",
        },
        Warning = {
            type = "string",
        },
        WarningForeground = {
            type = "string",
        },
        Success = {
            type = "string",
        },
        SuccessForeground = {
            type = "string",
        },
        Dimension = {
            type = "string",
        },
        DimensionForeground = {
            type = "string",
        },
        Measure = {
            type = "string",
        },
        MeasureForeground = {
            type = "string",
        },
    },
}

M.ThemeConfiguration = {
    type = "structure",
    members = {
        DataColorPalette = M.DataColorPalette,
        UIColorPalette = M.UIColorPalette,
        Sheet = M.SheetStyle,
        Typography = M.Typography,
    },
}

M.CreateThemeInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BaseThemeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionDescription = {
            type = "string",
        },
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ThemeConfiguration }),
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateThemeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        VersionArn = {
            type = "string",
        },
        ThemeId = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CreateThemeAliasInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeVersionNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ThemeAlias = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AliasName = {
            type = "string",
        },
        ThemeVersionNumber = {
            type = "long",
        },
    },
}

M.CreateThemeAliasOutput = {
    type = "structure",
    members = {
        ThemeAlias = M.ThemeAlias,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CustomInstructions = {
    type = "structure",
    members = {
        CustomInstructionsString = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TopicConfigOptions = {
    type = "structure",
    members = {
        QBusinessInsightsEnabled = {
            type = "boolean",
        },
    },
}

M.DefaultAggregation = {
    SUM = "SUM",
    MAX = "MAX",
    MIN = "MIN",
    COUNT = "COUNT",
    DISTINCT_COUNT = "DISTINCT_COUNT",
    AVERAGE = "AVERAGE",
    MEDIAN = "MEDIAN",
    STDEV = "STDEV",
    STDEVP = "STDEVP",
    VAR = "VAR",
    VARP = "VARP",
}

M.DefaultFormatting = {
    type = "structure",
    members = {
        DisplayFormat = {
            type = "string",
        },
        DisplayFormatOptions = M.DisplayFormatOptions,
    },
}

M.SemanticType = {
    type = "structure",
    members = {
        TypeName = {
            type = "string",
        },
        SubTypeName = {
            type = "string",
        },
        TypeParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TruthyCellValue = {
            type = "string",
        },
        TruthyCellValueSynonyms = {
            type = "list",
            member = { type = "string" },
        },
        FalseyCellValue = {
            type = "string",
        },
        FalseyCellValueSynonyms = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TopicCalculatedField = {
    type = "structure",
    members = {
        CalculatedFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CalculatedFieldDescription = {
            type = "string",
        },
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CalculatedFieldSynonyms = {
            type = "list",
            member = { type = "string" },
        },
        IsIncludedInTopic = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DisableIndexing = {
            type = "boolean",
        },
        ColumnDataRole = {
            type = "string",
        },
        TimeGranularity = {
            type = "string",
        },
        DefaultFormatting = M.DefaultFormatting,
        Aggregation = {
            type = "string",
        },
        ComparativeOrder = M.ComparativeOrder,
        SemanticType = M.SemanticType,
        AllowedAggregations = {
            type = "list",
            member = { type = "string" },
        },
        NotAllowedAggregations = {
            type = "list",
            member = { type = "string" },
        },
        NeverAggregateInFilter = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CellValueSynonyms = {
            type = "list",
            member = M.CellValueSynonym,
        },
        NonAdditive = {
            type = "boolean",
        },
    },
}

M.TopicColumn = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnFriendlyName = {
            type = "string",
        },
        ColumnDescription = {
            type = "string",
        },
        ColumnSynonyms = {
            type = "list",
            member = { type = "string" },
        },
        ColumnDataRole = {
            type = "string",
        },
        Aggregation = {
            type = "string",
        },
        IsIncludedInTopic = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DisableIndexing = {
            type = "boolean",
        },
        ComparativeOrder = M.ComparativeOrder,
        SemanticType = M.SemanticType,
        TimeGranularity = {
            type = "string",
        },
        AllowedAggregations = {
            type = "list",
            member = { type = "string" },
        },
        NotAllowedAggregations = {
            type = "list",
            member = { type = "string" },
        },
        DefaultFormatting = M.DefaultFormatting,
        NeverAggregateInFilter = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CellValueSynonyms = {
            type = "list",
            member = M.CellValueSynonym,
        },
        NonAdditive = {
            type = "boolean",
        },
    },
}

M.DataAggregation = {
    type = "structure",
    members = {
        DatasetRowDateGranularity = {
            type = "string",
        },
        DefaultDateColumnName = {
            type = "string",
        },
    },
}

M.TopicCategoryFilterConstant = {
    type = "structure",
    members = {
        ConstantType = {
            type = "string",
        },
        SingularConstant = {
            type = "string",
        },
        CollectiveConstant = M.CollectiveConstant,
    },
}

M.TopicCategoryFilter = {
    type = "structure",
    members = {
        CategoryFilterFunction = {
            type = "string",
        },
        CategoryFilterType = {
            type = "string",
        },
        Constant = M.TopicCategoryFilterConstant,
        Inverse = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RangeConstant = {
    type = "structure",
    members = {
        Minimum = {
            type = "string",
        },
        Maximum = {
            type = "string",
        },
    },
}

M.TopicRangeFilterConstant = {
    type = "structure",
    members = {
        ConstantType = {
            type = "string",
        },
        RangeConstant = M.RangeConstant,
    },
}

M.TopicDateRangeFilter = {
    type = "structure",
    members = {
        Inclusive = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Constant = M.TopicRangeFilterConstant,
    },
}

M.NamedFilterType = {
    CATEGORY_FILTER = "CATEGORY_FILTER",
    NUMERIC_EQUALITY_FILTER = "NUMERIC_EQUALITY_FILTER",
    NUMERIC_RANGE_FILTER = "NUMERIC_RANGE_FILTER",
    DATE_RANGE_FILTER = "DATE_RANGE_FILTER",
    RELATIVE_DATE_FILTER = "RELATIVE_DATE_FILTER",
    NULL_FILTER = "NULL_FILTER",
}

M.TopicSingularFilterConstant = {
    type = "structure",
    members = {
        ConstantType = {
            type = "string",
        },
        SingularConstant = {
            type = "string",
        },
    },
}

M.NullFilterType = {
    ALL_VALUES = "ALL_VALUES",
    NON_NULLS_ONLY = "NON_NULLS_ONLY",
    NULLS_ONLY = "NULLS_ONLY",
}

M.TopicNullFilter = {
    type = "structure",
    members = {
        NullFilterType = {
            type = "string",
        },
        Constant = M.TopicSingularFilterConstant,
        Inverse = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.NamedFilterAggType = {
    NO_AGGREGATION = "NO_AGGREGATION",
    SUM = "SUM",
    AVERAGE = "AVERAGE",
    COUNT = "COUNT",
    DISTINCT_COUNT = "DISTINCT_COUNT",
    MAX = "MAX",
    MEDIAN = "MEDIAN",
    MIN = "MIN",
    STDEV = "STDEV",
    STDEVP = "STDEVP",
    VAR = "VAR",
    VARP = "VARP",
}

M.TopicNumericEqualityFilter = {
    type = "structure",
    members = {
        Constant = M.TopicSingularFilterConstant,
        Aggregation = {
            type = "string",
        },
    },
}

M.TopicNumericRangeFilter = {
    type = "structure",
    members = {
        Inclusive = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Constant = M.TopicRangeFilterConstant,
        Aggregation = {
            type = "string",
        },
    },
}

M.TopicRelativeDateFilterFunction = {
    PREVIOUS = "PREVIOUS",
    THIS = "THIS",
    LAST = "LAST",
    NEXT = "NEXT",
    NOW = "NOW",
}

M.TopicRelativeDateFilter = {
    type = "structure",
    members = {
        TimeGranularity = {
            type = "string",
        },
        RelativeDateFilterFunction = {
            type = "string",
        },
        Constant = M.TopicSingularFilterConstant,
    },
}

M.TopicFilter = {
    type = "structure",
    members = {
        FilterDescription = {
            type = "string",
        },
        FilterClass = {
            type = "string",
        },
        FilterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilterSynonyms = {
            type = "list",
            member = { type = "string" },
        },
        OperandFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilterType = {
            type = "string",
        },
        CategoryFilter = M.TopicCategoryFilter,
        NumericEqualityFilter = M.TopicNumericEqualityFilter,
        NumericRangeFilter = M.TopicNumericRangeFilter,
        DateRangeFilter = M.TopicDateRangeFilter,
        RelativeDateFilter = M.TopicRelativeDateFilter,
        NullFilter = M.TopicNullFilter,
    },
}

M.NamedEntityAggType = {
    SUM = "SUM",
    MIN = "MIN",
    MAX = "MAX",
    COUNT = "COUNT",
    AVERAGE = "AVERAGE",
    DISTINCT_COUNT = "DISTINCT_COUNT",
    STDEV = "STDEV",
    STDEVP = "STDEVP",
    VAR = "VAR",
    VARP = "VARP",
    PERCENTILE = "PERCENTILE",
    MEDIAN = "MEDIAN",
    CUSTOM = "CUSTOM",
}

M.NamedEntityDefinitionMetric = {
    type = "structure",
    members = {
        Aggregation = {
            type = "string",
        },
        AggregationFunctionParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PropertyRole = {
    PRIMARY = "PRIMARY",
    ID = "ID",
}

M.PropertyUsage = {
    INHERIT = "INHERIT",
    DIMENSION = "DIMENSION",
    MEASURE = "MEASURE",
}

M.NamedEntityDefinition = {
    type = "structure",
    members = {
        FieldName = {
            type = "string",
        },
        PropertyName = {
            type = "string",
        },
        PropertyRole = {
            type = "string",
        },
        PropertyUsage = {
            type = "string",
        },
        Metric = M.NamedEntityDefinitionMetric,
    },
}

M.SemanticEntityType = {
    type = "structure",
    members = {
        TypeName = {
            type = "string",
        },
        SubTypeName = {
            type = "string",
        },
        TypeParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TopicNamedEntity = {
    type = "structure",
    members = {
        EntityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityDescription = {
            type = "string",
        },
        EntitySynonyms = {
            type = "list",
            member = { type = "string" },
        },
        SemanticEntityType = M.SemanticEntityType,
        Definition = {
            type = "list",
            member = M.NamedEntityDefinition,
        },
    },
}

M.DatasetMetadata = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetName = {
            type = "string",
        },
        DatasetDescription = {
            type = "string",
        },
        DataAggregation = M.DataAggregation,
        Filters = {
            type = "list",
            member = M.TopicFilter,
        },
        Columns = {
            type = "list",
            member = M.TopicColumn,
        },
        CalculatedFields = {
            type = "list",
            member = M.TopicCalculatedField,
        },
        NamedEntities = {
            type = "list",
            member = M.TopicNamedEntity,
        },
    },
}

M.TopicUserExperienceVersion = {
    LEGACY = "LEGACY",
    NEW_READER_EXPERIENCE = "NEW_READER_EXPERIENCE",
}

M.TopicDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        UserExperienceVersion = {
            type = "string",
        },
        DataSets = {
            type = "list",
            member = M.DatasetMetadata,
        },
        ConfigOptions = M.TopicConfigOptions,
    },
}

M.CreateTopicInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Topic = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TopicDetails }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FolderArns = {
            type = "list",
            member = { type = "string" },
        },
        CustomInstructions = M.CustomInstructions,
    },
}

M.CreateTopicOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        TopicId = {
            type = "string",
        },
        RefreshArn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.TopicScheduleType = {
    HOURLY = "HOURLY",
    DAILY = "DAILY",
    WEEKLY = "WEEKLY",
    MONTHLY = "MONTHLY",
}

M.TopicRefreshSchedule = {
    type = "structure",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        BasedOnSpiceSchedule = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        StartingAt = {
            type = "timestamp",
        },
        Timezone = {
            type = "string",
        },
        RepeatAt = {
            type = "string",
        },
        TopicScheduleType = {
            type = "string",
        },
    },
}

M.CreateTopicRefreshScheduleInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetName = {
            type = "string",
        },
        RefreshSchedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TopicRefreshSchedule }),
    },
}

M.CreateTopicRefreshScheduleOutput = {
    type = "structure",
    members = {
        TopicId = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CreateVPCConnectionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPCConnectionId = {
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
        DnsResolvers = {
            type = "list",
            member = { type = "string" },
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

M.VPCConnectionAvailabilityStatus = {
    AVAILABLE = "AVAILABLE",
    UNAVAILABLE = "UNAVAILABLE",
    PARTIALLY_AVAILABLE = "PARTIALLY_AVAILABLE",
}

M.VPCConnectionResourceStatus = {
    CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS",
    CREATION_SUCCESSFUL = "CREATION_SUCCESSFUL",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_SUCCESSFUL = "UPDATE_SUCCESSFUL",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETION_IN_PROGRESS = "DELETION_IN_PROGRESS",
    DELETION_FAILED = "DELETION_FAILED",
    DELETED = "DELETED",
}

M.CreateVPCConnectionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        VPCConnectionId = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        AvailabilityStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.CustomPermissions = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CustomPermissionsName = {
            type = "string",
        },
        Capabilities = M.Capabilities,
    },
}

M.DashboardErrorType = {
    ACCESS_DENIED = "ACCESS_DENIED",
    SOURCE_NOT_FOUND = "SOURCE_NOT_FOUND",
    DATA_SET_NOT_FOUND = "DATA_SET_NOT_FOUND",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
    PARAMETER_VALUE_INCOMPATIBLE = "PARAMETER_VALUE_INCOMPATIBLE",
    PARAMETER_TYPE_INVALID = "PARAMETER_TYPE_INVALID",
    PARAMETER_NOT_FOUND = "PARAMETER_NOT_FOUND",
    COLUMN_TYPE_MISMATCH = "COLUMN_TYPE_MISMATCH",
    COLUMN_GEOGRAPHIC_ROLE_MISMATCH = "COLUMN_GEOGRAPHIC_ROLE_MISMATCH",
    COLUMN_REPLACEMENT_MISSING = "COLUMN_REPLACEMENT_MISSING",
}

M.DashboardError = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ViolatedEntities = {
            type = "list",
            member = M.Entity,
        },
    },
}

M.DashboardVersion = {
    type = "structure",
    members = {
        CreatedTime = {
            type = "timestamp",
        },
        Errors = {
            type = "list",
            member = M.DashboardError,
        },
        VersionNumber = {
            type = "long",
        },
        Status = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        SourceEntityArn = {
            type = "string",
        },
        DataSetArns = {
            type = "list",
            member = { type = "string" },
        },
        Description = {
            type = "string",
        },
        ThemeArn = {
            type = "string",
        },
        Sheets = {
            type = "list",
            member = M.Sheet,
        },
    },
}

M.Dashboard = {
    type = "structure",
    members = {
        DashboardId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Version = M.DashboardVersion,
        CreatedTime = {
            type = "timestamp",
        },
        LastPublishedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        LinkEntities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DashboardCustomizationSummaryConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.DashboardFilterAttribute = {
    QUICKSIGHT_USER = "QUICKSIGHT_USER",
    QUICKSIGHT_VIEWER_OR_OWNER = "QUICKSIGHT_VIEWER_OR_OWNER",
    DIRECT_QUICKSIGHT_VIEWER_OR_OWNER = "DIRECT_QUICKSIGHT_VIEWER_OR_OWNER",
    QUICKSIGHT_OWNER = "QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_OWNER = "DIRECT_QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_SOLE_OWNER = "DIRECT_QUICKSIGHT_SOLE_OWNER",
    DASHBOARD_NAME = "DASHBOARD_NAME",
}

M.DashboardSearchFilter = {
    type = "structure",
    members = {
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DashboardsQAStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DashboardSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DashboardId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        PublishedVersionNumber = {
            type = "long",
        },
        LastPublishedTime = {
            type = "timestamp",
        },
    },
}

M.DashboardVersionSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        VersionNumber = {
            type = "long",
        },
        Status = {
            type = "string",
        },
        SourceEntityArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.DashboardVisualResult = {
    type = "structure",
    members = {
        DashboardId = {
            type = "string",
        },
        DashboardName = {
            type = "string",
        },
        SheetId = {
            type = "string",
        },
        SheetName = {
            type = "string",
        },
        VisualId = {
            type = "string",
        },
        VisualTitle = {
            type = "string",
        },
        VisualSubtitle = {
            type = "string",
        },
        DashboardUrl = {
            type = "string",
        },
    },
}

M.OutputColumn = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        SubType = {
            type = "string",
        },
    },
}

M.DataSet = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DataSetId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        PhysicalTableMap = {
            type = "map",
            key = { type = "string" },
            value = M.PhysicalTable,
        },
        LogicalTableMap = {
            type = "map",
            key = { type = "string" },
            value = M.LogicalTable,
        },
        OutputColumns = {
            type = "list",
            member = M.OutputColumn,
        },
        ImportMode = {
            type = "string",
        },
        ConsumedSpiceCapacityInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ColumnGroups = {
            type = "list",
            member = M.ColumnGroup,
        },
        FieldFolders = {
            type = "map",
            key = { type = "string" },
            value = M.FieldFolder,
        },
        RowLevelPermissionDataSet = M.RowLevelPermissionDataSet,
        RowLevelPermissionTagConfiguration = M.RowLevelPermissionTagConfiguration,
        ColumnLevelPermissionRules = {
            type = "list",
            member = M.ColumnLevelPermissionRule,
        },
        DataSetUsageConfiguration = M.DataSetUsageConfiguration,
        DatasetParameters = {
            type = "list",
            member = M.DatasetParameter,
        },
        PerformanceConfiguration = M.PerformanceConfiguration,
        UseAs = {
            type = "string",
        },
        DataPrepConfiguration = M.DataPrepConfiguration,
        SemanticModelConfiguration = M.SemanticModelConfiguration,
    },
}

M.DataSetFilterAttribute = {
    QUICKSIGHT_VIEWER_OR_OWNER = "QUICKSIGHT_VIEWER_OR_OWNER",
    QUICKSIGHT_OWNER = "QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_VIEWER_OR_OWNER = "DIRECT_QUICKSIGHT_VIEWER_OR_OWNER",
    DIRECT_QUICKSIGHT_OWNER = "DIRECT_QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_SOLE_OWNER = "DIRECT_QUICKSIGHT_SOLE_OWNER",
    DATASET_NAME = "DATASET_NAME",
}

M.DataSetSearchFilter = {
    type = "structure",
    members = {
        Operator = {
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
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSetSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DataSetId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        ImportMode = {
            type = "string",
        },
        RowLevelPermissionDataSet = M.RowLevelPermissionDataSet,
        RowLevelPermissionDataSetMap = {
            type = "map",
            key = { type = "string" },
            value = M.RowLevelPermissionDataSet,
        },
        RowLevelPermissionTagConfigurationApplied = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ColumnLevelPermissionRulesApplied = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        UseAs = {
            type = "string",
        },
    },
}

M.DataSourceErrorInfoType = {
    ACCESS_DENIED = "ACCESS_DENIED",
    COPY_SOURCE_NOT_FOUND = "COPY_SOURCE_NOT_FOUND",
    TIMEOUT = "TIMEOUT",
    ENGINE_VERSION_NOT_SUPPORTED = "ENGINE_VERSION_NOT_SUPPORTED",
    UNKNOWN_HOST = "UNKNOWN_HOST",
    GENERIC_SQL_FAILURE = "GENERIC_SQL_FAILURE",
    CONFLICT = "CONFLICT",
    UNKNOWN = "UNKNOWN",
}

M.DataSourceErrorInfo = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DataSource = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        DataSourceParameters = M.DataSourceParameters,
        AlternateDataSourceParameters = {
            type = "list",
            member = M.DataSourceParameters,
        },
        VpcConnectionProperties = M.VpcConnectionProperties,
        SslProperties = M.SslProperties,
        ErrorInfo = M.DataSourceErrorInfo,
        SecretArn = {
            type = "string",
        },
    },
}

M.DataSourceFilterAttribute = {
    DIRECT_QUICKSIGHT_VIEWER_OR_OWNER = "DIRECT_QUICKSIGHT_VIEWER_OR_OWNER",
    DIRECT_QUICKSIGHT_OWNER = "DIRECT_QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_SOLE_OWNER = "DIRECT_QUICKSIGHT_SOLE_OWNER",
    DATASOURCE_NAME = "DATASOURCE_NAME",
}

M.DataSourceSearchFilter = {
    type = "structure",
    members = {
        Operator = {
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
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.DeleteAccountCustomizationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
    },
}

M.DeleteAccountCustomizationOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteAccountCustomPermissionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccountCustomPermissionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DeleteAccountSubscriptionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccountSubscriptionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteActionConnectorInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ActionConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteActionConnectorOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ActionConnectorId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteAnalysisInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AnalysisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecoveryWindowInDays = {
            type = "long",
            traits = {
                http_query = "recovery-window-in-days",
            },
        },
        ForceDeleteWithoutRecovery = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "force-delete-without-recovery",
            },
        },
    },
}

M.DeleteAnalysisOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        Arn = {
            type = "string",
        },
        AnalysisId = {
            type = "string",
        },
        DeletionTime = {
            type = "timestamp",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteBrandInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BrandId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBrandOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteBrandAssignmentInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBrandAssignmentOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteCustomPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CustomPermissionsName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCustomPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Arn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteDashboardInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                http_query = "version-number",
            },
        },
    },
}

M.DeleteDashboardOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        Arn = {
            type = "string",
        },
        DashboardId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteDataSetInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataSetOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DataSetId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteDataSetRefreshPropertiesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataSetRefreshPropertiesOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteDataSourceInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataSourceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteDefaultQBusinessApplicationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
    },
}

M.DeleteDefaultQBusinessApplicationOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteFolderInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFolderOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        Arn = {
            type = "string",
        },
        FolderId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteFolderMembershipInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFolderMembershipOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGroupOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteGroupMembershipInput = {
    type = "structure",
    members = {
        MemberName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGroupMembershipOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteIAMPolicyAssignmentInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssignmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIAMPolicyAssignmentOutput = {
    type = "structure",
    members = {
        AssignmentName = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteIdentityPropagationConfigInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Service = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIdentityPropagationConfigOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteNamespaceInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNamespaceOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteRefreshScheduleInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ScheduleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRefreshScheduleOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
        ScheduleId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.DeleteRoleCustomPermissionInput = {
    type = "structure",
    members = {
        Role = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRoleCustomPermissionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DeleteRoleMembershipInput = {
    type = "structure",
    members = {
        MemberName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRoleMembershipOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteTemplateInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                http_query = "version-number",
            },
        },
    },
}

M.DeleteTemplateOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        TemplateId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteTemplateAliasInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTemplateAliasOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        TemplateId = {
            type = "string",
        },
        AliasName = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteThemeInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                http_query = "version-number",
            },
        },
    },
}

M.DeleteThemeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        ThemeId = {
            type = "string",
        },
    },
}

M.DeleteThemeAliasInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteThemeAliasOutput = {
    type = "structure",
    members = {
        AliasName = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        ThemeId = {
            type = "string",
        },
    },
}

M.DeleteTopicInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTopicOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        TopicId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteTopicRefreshScheduleInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DatasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTopicRefreshScheduleOutput = {
    type = "structure",
    members = {
        TopicId = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteUserInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteUserByPrincipalIdInput = {
    type = "structure",
    members = {
        PrincipalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUserByPrincipalIdOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteUserCustomPermissionInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUserCustomPermissionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteVPCConnectionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPCConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVPCConnectionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        VPCConnectionId = {
            type = "string",
        },
        DeletionStatus = {
            type = "string",
        },
        AvailabilityStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeAccountCustomizationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        Resolved = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "resolved",
            },
        },
    },
}

M.DescribeAccountCustomizationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AwsAccountId = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        AccountCustomization = M.AccountCustomization,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeAccountCustomPermissionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAccountCustomPermissionOutput = {
    type = "structure",
    members = {
        CustomPermissionsName = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeAccountSettingsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAccountSettingsOutput = {
    type = "structure",
    members = {
        AccountSettings = M.AccountSettings,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeAccountSubscriptionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAccountSubscriptionOutput = {
    type = "structure",
    members = {
        AccountInfo = M.AccountInfo,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeActionConnectorInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ActionConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeActionConnectorOutput = {
    type = "structure",
    members = {
        ActionConnector = M.ActionConnector,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeActionConnectorPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ActionConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeActionConnectorPermissionsOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ActionConnectorId = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeAnalysisInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AnalysisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAnalysisOutput = {
    type = "structure",
    members = {
        Analysis = M.Analysis,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeAnalysisDefinitionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AnalysisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAnalysisDefinitionOutput = {
    type = "structure",
    members = {
        AnalysisId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.AnalysisError,
        },
        ResourceStatus = {
            type = "string",
        },
        ThemeArn = {
            type = "string",
        },
        Definition = M.AnalysisDefinition,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeAnalysisPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AnalysisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAnalysisPermissionsOutput = {
    type = "structure",
    members = {
        AnalysisId = {
            type = "string",
        },
        AnalysisArn = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeAssetBundleExportJobInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssetBundleExportJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IncludeFolderMembers = {
    RECURSE = "RECURSE",
    ONE_LEVEL = "ONE_LEVEL",
    NONE = "NONE",
}

M.DescribeAssetBundleExportJobOutput = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        DownloadUrl = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.AssetBundleExportJobError,
        },
        Arn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        AssetBundleExportJobId = {
            type = "string",
        },
        AwsAccountId = {
            type = "string",
        },
        ResourceArns = {
            type = "list",
            member = { type = "string" },
        },
        IncludeAllDependencies = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExportFormat = {
            type = "string",
        },
        CloudFormationOverridePropertyConfiguration = M.AssetBundleCloudFormationOverridePropertyConfiguration,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        IncludePermissions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeTags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ValidationStrategy = M.AssetBundleExportJobValidationStrategy,
        Warnings = {
            type = "list",
            member = M.AssetBundleExportJobWarning,
        },
        IncludeFolderMemberships = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeFolderMembers = {
            type = "string",
        },
    },
}

M.DescribeAssetBundleImportJobInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssetBundleImportJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAssetBundleImportJobOutput = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.AssetBundleImportJobError,
        },
        RollbackErrors = {
            type = "list",
            member = M.AssetBundleImportJobError,
        },
        Arn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        AssetBundleImportJobId = {
            type = "string",
        },
        AwsAccountId = {
            type = "string",
        },
        AssetBundleImportSource = M.AssetBundleImportSourceDescription,
        OverrideParameters = M.AssetBundleImportJobOverrideParameters,
        FailureAction = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        OverridePermissions = M.AssetBundleImportJobOverridePermissions,
        OverrideTags = M.AssetBundleImportJobOverrideTags,
        OverrideValidationStrategy = M.AssetBundleImportJobOverrideValidationStrategy,
        Warnings = {
            type = "list",
            member = M.AssetBundleImportJobWarning,
        },
    },
}

M.DescribeAutomationJobInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AutomationGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AutomationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IncludeInputPayload = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "includeInputPayload",
            },
        },
        IncludeOutputPayload = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "includeOutputPayload",
            },
        },
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAutomationJobOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
        },
        StartedAt = {
            type = "timestamp",
        },
        EndedAt = {
            type = "timestamp",
        },
        JobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputPayload = {
            type = "string",
        },
        OutputPayload = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeBrandInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BrandId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
    },
}

M.DescribeBrandOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        BrandDetail = M.BrandDetail,
        BrandDefinition = M.BrandDefinition,
    },
}

M.DescribeBrandAssignmentInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeBrandAssignmentOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        BrandArn = {
            type = "string",
        },
    },
}

M.DescribeBrandPublishedVersionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BrandId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeBrandPublishedVersionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        BrandDetail = M.BrandDetail,
        BrandDefinition = M.BrandDefinition,
    },
}

M.DescribeCustomPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CustomPermissionsName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeCustomPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        CustomPermissions = M.CustomPermissions,
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeDashboardInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                http_query = "version-number",
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_query = "alias-name",
            },
        },
    },
}

M.DescribeDashboardOutput = {
    type = "structure",
    members = {
        Dashboard = M.Dashboard,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeDashboardDefinitionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                http_query = "version-number",
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_query = "alias-name",
            },
        },
    },
}

M.DescribeDashboardDefinitionOutput = {
    type = "structure",
    members = {
        DashboardId = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.DashboardError,
        },
        Name = {
            type = "string",
        },
        ResourceStatus = {
            type = "string",
        },
        ThemeArn = {
            type = "string",
        },
        Definition = M.DashboardVersionDefinition,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
        DashboardPublishOptions = M.DashboardPublishOptions,
    },
}

M.DescribeDashboardPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDashboardPermissionsOutput = {
    type = "structure",
    members = {
        DashboardId = {
            type = "string",
        },
        DashboardArn = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
        LinkSharingConfiguration = M.LinkSharingConfiguration,
    },
}

M.DescribeDashboardSnapshotJobInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SnapshotJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SnapshotJobStatus = {
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.SnapshotDestinationConfiguration = {
    type = "structure",
    members = {
        S3Destinations = {
            type = "list",
            member = M.SnapshotS3DestinationConfiguration,
        },
    },
}

M.SnapshotFileGroup = {
    type = "structure",
    members = {
        Files = {
            type = "list",
            member = M.SnapshotFile,
        },
    },
}

M.SnapshotConfiguration = {
    type = "structure",
    members = {
        FileGroups = {
            type = "list",
            member = M.SnapshotFileGroup,
            traits = {
                required = true,
            },
        },
        DestinationConfiguration = M.SnapshotDestinationConfiguration,
        Parameters = M.Parameters,
    },
}

M.SnapshotAnonymousUserRedacted = {
    type = "structure",
    members = {
        RowLevelPermissionTagKeys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SnapshotUserConfigurationRedacted = {
    type = "structure",
    members = {
        AnonymousUsers = {
            type = "list",
            member = M.SnapshotAnonymousUserRedacted,
        },
    },
}

M.DescribeDashboardSnapshotJobOutput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
        },
        DashboardId = {
            type = "string",
        },
        SnapshotJobId = {
            type = "string",
        },
        UserConfiguration = M.SnapshotUserConfigurationRedacted,
        SnapshotConfiguration = M.SnapshotConfiguration,
        Arn = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeDashboardSnapshotJobResultInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SnapshotJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SnapshotJobErrorInfo = {
    type = "structure",
    members = {
        ErrorMessage = {
            type = "string",
        },
        ErrorType = {
            type = "string",
        },
    },
}

M.RegisteredUserSnapshotJobResult = {
    type = "structure",
    members = {
        FileGroups = {
            type = "list",
            member = M.SnapshotJobResultFileGroup,
        },
    },
}

M.SnapshotJobResult = {
    type = "structure",
    members = {
        AnonymousUsers = {
            type = "list",
            member = M.AnonymousUserSnapshotJobResult,
        },
        RegisteredUsers = {
            type = "list",
            member = M.RegisteredUserSnapshotJobResult,
        },
    },
}

M.DescribeDashboardSnapshotJobResultOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        Result = M.SnapshotJobResult,
        ErrorInfo = M.SnapshotJobErrorInfo,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeDashboardsQAConfigurationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDashboardsQAConfigurationOutput = {
    type = "structure",
    members = {
        DashboardsQAStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeDataSetInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDataSetOutput = {
    type = "structure",
    members = {
        DataSet = M.DataSet,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeDataSetPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDataSetPermissionsOutput = {
    type = "structure",
    members = {
        DataSetArn = {
            type = "string",
        },
        DataSetId = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeDataSetRefreshPropertiesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDataSetRefreshPropertiesOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        DataSetRefreshProperties = M.DataSetRefreshProperties,
    },
}

M.DescribeDataSourceInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDataSourceOutput = {
    type = "structure",
    members = {
        DataSource = M.DataSource,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeDataSourcePermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDataSourcePermissionsOutput = {
    type = "structure",
    members = {
        DataSourceArn = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeDefaultQBusinessApplicationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
    },
}

M.DescribeDefaultQBusinessApplicationOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        ApplicationId = {
            type = "string",
        },
    },
}

M.DescribeFolderInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Folder = {
    type = "structure",
    members = {
        FolderId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        FolderType = {
            type = "string",
        },
        FolderPath = {
            type = "list",
            member = { type = "string" },
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        SharingModel = {
            type = "string",
        },
    },
}

M.DescribeFolderOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        Folder = M.Folder,
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeFolderPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.DescribeFolderPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        FolderId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeFolderResolvedPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.DescribeFolderResolvedPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        FolderId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeGroupOutput = {
    type = "structure",
    members = {
        Group = M.Group,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeGroupMembershipInput = {
    type = "structure",
    members = {
        MemberName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeGroupMembershipOutput = {
    type = "structure",
    members = {
        GroupMember = M.GroupMember,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeIAMPolicyAssignmentInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssignmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IAMPolicyAssignment = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
        },
        AssignmentId = {
            type = "string",
        },
        AssignmentName = {
            type = "string",
        },
        PolicyArn = {
            type = "string",
        },
        Identities = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        AssignmentStatus = {
            type = "string",
        },
    },
}

M.DescribeIAMPolicyAssignmentOutput = {
    type = "structure",
    members = {
        IAMPolicyAssignment = M.IAMPolicyAssignment,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeIngestionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IngestionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IngestionErrorType = {
    FAILURE_TO_ASSUME_ROLE = "FAILURE_TO_ASSUME_ROLE",
    INGESTION_SUPERSEDED = "INGESTION_SUPERSEDED",
    INGESTION_CANCELED = "INGESTION_CANCELED",
    DATA_SET_DELETED = "DATA_SET_DELETED",
    DATA_SET_NOT_SPICE = "DATA_SET_NOT_SPICE",
    S3_UPLOADED_FILE_DELETED = "S3_UPLOADED_FILE_DELETED",
    S3_MANIFEST_ERROR = "S3_MANIFEST_ERROR",
    DATA_TOLERANCE_EXCEPTION = "DATA_TOLERANCE_EXCEPTION",
    SPICE_TABLE_NOT_FOUND = "SPICE_TABLE_NOT_FOUND",
    DATA_SET_SIZE_LIMIT_EXCEEDED = "DATA_SET_SIZE_LIMIT_EXCEEDED",
    ROW_SIZE_LIMIT_EXCEEDED = "ROW_SIZE_LIMIT_EXCEEDED",
    ACCOUNT_CAPACITY_LIMIT_EXCEEDED = "ACCOUNT_CAPACITY_LIMIT_EXCEEDED",
    CUSTOMER_ERROR = "CUSTOMER_ERROR",
    DATA_SOURCE_NOT_FOUND = "DATA_SOURCE_NOT_FOUND",
    IAM_ROLE_NOT_AVAILABLE = "IAM_ROLE_NOT_AVAILABLE",
    CONNECTION_FAILURE = "CONNECTION_FAILURE",
    SQL_TABLE_NOT_FOUND = "SQL_TABLE_NOT_FOUND",
    PERMISSION_DENIED = "PERMISSION_DENIED",
    SSL_CERTIFICATE_VALIDATION_FAILURE = "SSL_CERTIFICATE_VALIDATION_FAILURE",
    OAUTH_TOKEN_FAILURE = "OAUTH_TOKEN_FAILURE",
    SOURCE_API_LIMIT_EXCEEDED_FAILURE = "SOURCE_API_LIMIT_EXCEEDED_FAILURE",
    PASSWORD_AUTHENTICATION_FAILURE = "PASSWORD_AUTHENTICATION_FAILURE",
    SQL_SCHEMA_MISMATCH_ERROR = "SQL_SCHEMA_MISMATCH_ERROR",
    INVALID_DATE_FORMAT = "INVALID_DATE_FORMAT",
    INVALID_DATAPREP_SYNTAX = "INVALID_DATAPREP_SYNTAX",
    SOURCE_RESOURCE_LIMIT_EXCEEDED = "SOURCE_RESOURCE_LIMIT_EXCEEDED",
    SQL_INVALID_PARAMETER_VALUE = "SQL_INVALID_PARAMETER_VALUE",
    QUERY_TIMEOUT = "QUERY_TIMEOUT",
    SQL_NUMERIC_OVERFLOW = "SQL_NUMERIC_OVERFLOW",
    UNRESOLVABLE_HOST = "UNRESOLVABLE_HOST",
    UNROUTABLE_HOST = "UNROUTABLE_HOST",
    SQL_EXCEPTION = "SQL_EXCEPTION",
    S3_FILE_INACCESSIBLE = "S3_FILE_INACCESSIBLE",
    IOT_FILE_NOT_FOUND = "IOT_FILE_NOT_FOUND",
    IOT_DATA_SET_FILE_EMPTY = "IOT_DATA_SET_FILE_EMPTY",
    INVALID_DATA_SOURCE_CONFIG = "INVALID_DATA_SOURCE_CONFIG",
    DATA_SOURCE_AUTH_FAILED = "DATA_SOURCE_AUTH_FAILED",
    DATA_SOURCE_CONNECTION_FAILED = "DATA_SOURCE_CONNECTION_FAILED",
    FAILURE_TO_PROCESS_JSON_FILE = "FAILURE_TO_PROCESS_JSON_FILE",
    INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR",
    REFRESH_SUPPRESSED_BY_EDIT = "REFRESH_SUPPRESSED_BY_EDIT",
    PERMISSION_NOT_FOUND = "PERMISSION_NOT_FOUND",
    ELASTICSEARCH_CURSOR_NOT_ENABLED = "ELASTICSEARCH_CURSOR_NOT_ENABLED",
    CURSOR_NOT_ENABLED = "CURSOR_NOT_ENABLED",
    DUPLICATE_COLUMN_NAMES_FOUND = "DUPLICATE_COLUMN_NAMES_FOUND",
}

M.ErrorInfo = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.QueueInfo = {
    type = "structure",
    members = {
        WaitingOnIngestion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueuedIngestion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IngestionRequestSource = {
    MANUAL = "MANUAL",
    SCHEDULED = "SCHEDULED",
}

M.IngestionRequestType = {
    INITIAL_INGESTION = "INITIAL_INGESTION",
    EDIT = "EDIT",
    INCREMENTAL_REFRESH = "INCREMENTAL_REFRESH",
    FULL_REFRESH = "FULL_REFRESH",
}

M.RowInfo = {
    type = "structure",
    members = {
        RowsIngested = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        RowsDropped = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        TotalRowsInDataset = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.Ingestion = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IngestionId = {
            type = "string",
        },
        IngestionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorInfo = M.ErrorInfo,
        RowInfo = M.RowInfo,
        QueueInfo = M.QueueInfo,
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        IngestionTimeInSeconds = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        IngestionSizeInBytes = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        RequestSource = {
            type = "string",
        },
        RequestType = {
            type = "string",
        },
    },
}

M.DescribeIngestionOutput = {
    type = "structure",
    members = {
        Ingestion = M.Ingestion,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeIpRestrictionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeIpRestrictionOutput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
        },
        IpRestrictionRuleMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        VpcIdRestrictionRuleMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        VpcEndpointIdRestrictionRuleMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Enabled = {
            type = "boolean",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeKeyRegistrationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DefaultKeyOnly = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "default-key-only",
            },
        },
    },
}

M.RegisteredCustomerManagedKey = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
        },
        DefaultKey = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.QDataKeyType = {
    AWS_OWNED = "AWS_OWNED",
    CMK = "CMK",
}

M.QDataKey = {
    type = "structure",
    members = {
        QDataKeyArn = {
            type = "string",
        },
        QDataKeyType = {
            type = "string",
        },
    },
}

M.DescribeKeyRegistrationOutput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
        },
        KeyRegistration = {
            type = "list",
            member = M.RegisteredCustomerManagedKey,
        },
        QDataKey = M.QDataKey,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeNamespaceInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NamespaceErrorType = {
    PERMISSION_DENIED = "PERMISSION_DENIED",
    INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR",
}

M.NamespaceError = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.NamespaceInfoV2 = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CapacityRegion = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        IdentityStore = {
            type = "string",
        },
        NamespaceError = M.NamespaceError,
        IamIdentityCenterApplicationArn = {
            type = "string",
        },
        IamIdentityCenterInstanceArn = {
            type = "string",
        },
    },
}

M.DescribeNamespaceOutput = {
    type = "structure",
    members = {
        Namespace = M.NamespaceInfoV2,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeQPersonalizationConfigurationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PersonalizationMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DescribeQPersonalizationConfigurationOutput = {
    type = "structure",
    members = {
        PersonalizationMode = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeQuickSightQSearchConfigurationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QSearchStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DescribeQuickSightQSearchConfigurationOutput = {
    type = "structure",
    members = {
        QSearchStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeRefreshScheduleInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ScheduleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeRefreshScheduleOutput = {
    type = "structure",
    members = {
        RefreshSchedule = M.RefreshSchedule,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.DescribeRoleCustomPermissionInput = {
    type = "structure",
    members = {
        Role = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeRoleCustomPermissionOutput = {
    type = "structure",
    members = {
        CustomPermissionsName = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeSelfUpgradeConfigurationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SelfUpgradeStatus = {
    AUTO_APPROVAL = "AUTO_APPROVAL",
    ADMIN_APPROVAL = "ADMIN_APPROVAL",
}

M.SelfUpgradeConfiguration = {
    type = "structure",
    members = {
        SelfUpgradeStatus = {
            type = "string",
        },
    },
}

M.DescribeSelfUpgradeConfigurationOutput = {
    type = "structure",
    members = {
        SelfUpgradeConfiguration = M.SelfUpgradeConfiguration,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeTemplateInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                http_query = "version-number",
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_query = "alias-name",
            },
        },
    },
}

M.TemplateErrorType = {
    SOURCE_NOT_FOUND = "SOURCE_NOT_FOUND",
    DATA_SET_NOT_FOUND = "DATA_SET_NOT_FOUND",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
    ACCESS_DENIED = "ACCESS_DENIED",
}

M.TemplateError = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ViolatedEntities = {
            type = "list",
            member = M.Entity,
        },
    },
}

M.TemplateVersion = {
    type = "structure",
    members = {
        CreatedTime = {
            type = "timestamp",
        },
        Errors = {
            type = "list",
            member = M.TemplateError,
        },
        VersionNumber = {
            type = "long",
        },
        Status = {
            type = "string",
        },
        DataSetConfigurations = {
            type = "list",
            member = M.DataSetConfiguration,
        },
        Description = {
            type = "string",
        },
        SourceEntityArn = {
            type = "string",
        },
        ThemeArn = {
            type = "string",
        },
        Sheets = {
            type = "list",
            member = M.Sheet,
        },
    },
}

M.Template = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Version = M.TemplateVersion,
        TemplateId = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeTemplateOutput = {
    type = "structure",
    members = {
        Template = M.Template,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeTemplateAliasInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeTemplateAliasOutput = {
    type = "structure",
    members = {
        TemplateAlias = M.TemplateAlias,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeTemplateDefinitionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                http_query = "version-number",
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_query = "alias-name",
            },
        },
    },
}

M.DescribeTemplateDefinitionOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        TemplateId = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.TemplateError,
        },
        ResourceStatus = {
            type = "string",
        },
        ThemeArn = {
            type = "string",
        },
        Definition = M.TemplateVersionDefinition,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeTemplatePermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeTemplatePermissionsOutput = {
    type = "structure",
    members = {
        TemplateId = {
            type = "string",
        },
        TemplateArn = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeThemeInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                http_query = "version-number",
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_query = "alias-name",
            },
        },
    },
}

M.ThemeType = {
    QUICKSIGHT = "QUICKSIGHT",
    CUSTOM = "CUSTOM",
    ALL = "ALL",
}

M.ThemeErrorType = {
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.ThemeError = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ThemeVersion = {
    type = "structure",
    members = {
        VersionNumber = {
            type = "long",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        BaseThemeId = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        Configuration = M.ThemeConfiguration,
        Errors = {
            type = "list",
            member = M.ThemeError,
        },
        Status = {
            type = "string",
        },
    },
}

M.Theme = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ThemeId = {
            type = "string",
        },
        Version = M.ThemeVersion,
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        Type = {
            type = "string",
        },
    },
}

M.DescribeThemeOutput = {
    type = "structure",
    members = {
        Theme = M.Theme,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeThemeAliasInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeThemeAliasOutput = {
    type = "structure",
    members = {
        ThemeAlias = M.ThemeAlias,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeThemePermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeThemePermissionsOutput = {
    type = "structure",
    members = {
        ThemeId = {
            type = "string",
        },
        ThemeArn = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeTopicInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeTopicOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        TopicId = {
            type = "string",
        },
        Topic = M.TopicDetails,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        CustomInstructions = M.CustomInstructions,
    },
}

M.DescribeTopicPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeTopicPermissionsOutput = {
    type = "structure",
    members = {
        TopicId = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeTopicRefreshInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RefreshId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TopicRefreshStatus = {
    INITIALIZED = "INITIALIZED",
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
}

M.TopicRefreshDetails = {
    type = "structure",
    members = {
        RefreshArn = {
            type = "string",
        },
        RefreshId = {
            type = "string",
        },
        RefreshStatus = {
            type = "string",
        },
    },
}

M.DescribeTopicRefreshOutput = {
    type = "structure",
    members = {
        RefreshDetails = M.TopicRefreshDetails,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeTopicRefreshScheduleInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DatasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeTopicRefreshScheduleOutput = {
    type = "structure",
    members = {
        TopicId = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        RefreshSchedule = M.TopicRefreshSchedule,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeUserInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IdentityType = {
    IAM = "IAM",
    QUICKSIGHT = "QUICKSIGHT",
    IAM_IDENTITY_CENTER = "IAM_IDENTITY_CENTER",
}

M.UserRole = {
    ADMIN = "ADMIN",
    AUTHOR = "AUTHOR",
    READER = "READER",
    RESTRICTED_AUTHOR = "RESTRICTED_AUTHOR",
    RESTRICTED_READER = "RESTRICTED_READER",
    ADMIN_PRO = "ADMIN_PRO",
    AUTHOR_PRO = "AUTHOR_PRO",
    READER_PRO = "READER_PRO",
}

M.User = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        IdentityType = {
            type = "string",
        },
        Active = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PrincipalId = {
            type = "string",
        },
        CustomPermissionsName = {
            type = "string",
        },
        ExternalLoginFederationProviderType = {
            type = "string",
        },
        ExternalLoginFederationProviderUrl = {
            type = "string",
        },
        ExternalLoginId = {
            type = "string",
        },
    },
}

M.DescribeUserOutput = {
    type = "structure",
    members = {
        User = M.User,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DescribeVPCConnectionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPCConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NetworkInterfaceStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    DELETION_FAILED = "DELETION_FAILED",
    DELETION_SCHEDULED = "DELETION_SCHEDULED",
    ATTACHMENT_FAILED_ROLLBACK_FAILED = "ATTACHMENT_FAILED_ROLLBACK_FAILED",
}

M.NetworkInterface = {
    type = "structure",
    members = {
        SubnetId = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        NetworkInterfaceId = {
            type = "string",
        },
    },
}

M.VPCConnection = {
    type = "structure",
    members = {
        VPCConnectionId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VPCId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        DnsResolvers = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        AvailabilityStatus = {
            type = "string",
        },
        NetworkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
        RoleArn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeVPCConnectionOutput = {
    type = "structure",
    members = {
        VPCConnection = M.VPCConnection,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DomainNotWhitelistedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.EmbeddingIdentityType = {
    IAM = "IAM",
    QUICKSIGHT = "QUICKSIGHT",
    ANONYMOUS = "ANONYMOUS",
}

M.FailedKeyRegistrationEntry = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusCode = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        SenderFault = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.FieldName = {
    FLOW_NAME = "assetName",
    FLOW_DESCRIPTION = "assetDescription",
    DIRECT_QUICKSIGHT_OWNER = "DIRECT_QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_VIEWER_OR_OWNER = "DIRECT_QUICKSIGHT_VIEWER_OR_OWNER",
    DIRECT_QUICKSIGHT_SOLE_OWNER = "DIRECT_QUICKSIGHT_SOLE_OWNER",
}

M.FlowPublishState = {
    PUBLISHED = "PUBLISHED",
    DRAFT = "DRAFT",
    PENDING_APPROVAL = "PENDING_APPROVAL",
}

M.FlowSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowId = {
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
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedBy = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        LastUpdatedBy = {
            type = "string",
        },
        PublishState = {
            type = "string",
        },
        RunCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        UserCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        LastPublishedBy = {
            type = "string",
        },
        LastPublishedAt = {
            type = "timestamp",
        },
    },
}

M.FolderFilterAttribute = {
    PARENT_FOLDER_ARN = "PARENT_FOLDER_ARN",
    DIRECT_QUICKSIGHT_OWNER = "DIRECT_QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_SOLE_OWNER = "DIRECT_QUICKSIGHT_SOLE_OWNER",
    DIRECT_QUICKSIGHT_VIEWER_OR_OWNER = "DIRECT_QUICKSIGHT_VIEWER_OR_OWNER",
    QUICKSIGHT_OWNER = "QUICKSIGHT_OWNER",
    QUICKSIGHT_VIEWER_OR_OWNER = "QUICKSIGHT_VIEWER_OR_OWNER",
    FOLDER_NAME = "FOLDER_NAME",
}

M.MemberIdArnPair = {
    type = "structure",
    members = {
        MemberId = {
            type = "string",
        },
        MemberArn = {
            type = "string",
        },
    },
}

M.FolderSearchFilter = {
    type = "structure",
    members = {
        Operator = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.FolderSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        FolderId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        FolderType = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        SharingModel = {
            type = "string",
        },
    },
}

M.GeneratedAnswerStatus = {
    ANSWER_GENERATED = "ANSWER_GENERATED",
    ANSWER_RETRIEVED = "ANSWER_RETRIEVED",
    ANSWER_DOWNGRADE = "ANSWER_DOWNGRADE",
}

M.GeneratedAnswerResult = {
    type = "structure",
    members = {
        QuestionText = {
            type = "string",
        },
        AnswerStatus = {
            type = "string",
        },
        TopicId = {
            type = "string",
        },
        TopicName = {
            type = "string",
        },
        Restatement = {
            type = "string",
        },
        QuestionId = {
            type = "string",
        },
        AnswerId = {
            type = "string",
        },
        QuestionUrl = {
            type = "string",
        },
    },
}

M.SessionTag = {
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

M.GenerateEmbedUrlForAnonymousUserInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SessionLifetimeInMinutes = {
            type = "long",
        },
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionTags = {
            type = "list",
            member = M.SessionTag,
        },
        AuthorizedResourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ExperienceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnonymousUserEmbeddingExperienceConfiguration }),
        AllowedDomains = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GenerateEmbedUrlForAnonymousUserOutput = {
    type = "structure",
    members = {
        EmbedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
                required = true,
            },
        },
        RequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnonymousUserArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionLifetimeInMinutesInvalidException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UnsupportedPricingPlanException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.RecentSnapshotsConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.SchedulesConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.StatePersistenceConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.ThresholdAlertsConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.RegisteredUserDashboardFeatureConfigurations = {
    type = "structure",
    members = {
        StatePersistence = M.StatePersistenceConfigurations,
        Bookmarks = M.BookmarksConfigurations,
        SharedView = M.SharedViewConfigurations,
        AmazonQInQuickSight = M.AmazonQInQuickSightDashboardConfigurations,
        Schedules = M.SchedulesConfigurations,
        RecentSnapshots = M.RecentSnapshotsConfigurations,
        ThresholdAlerts = M.ThresholdAlertsConfigurations,
        DashboardCustomizationSummary = M.DashboardCustomizationSummaryConfigurations,
    },
}

M.RegisteredUserDashboardEmbeddingConfiguration = {
    type = "structure",
    members = {
        InitialDashboardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureConfigurations = M.RegisteredUserDashboardFeatureConfigurations,
    },
}

M.RegisteredUserDashboardVisualEmbeddingConfiguration = {
    type = "structure",
    members = {
        InitialDashboardVisualId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DashboardVisualId }),
    },
}

M.RegisteredUserGenerativeQnAEmbeddingConfiguration = {
    type = "structure",
    members = {
        InitialTopicId = {
            type = "string",
        },
    },
}

M.RegisteredUserQSearchBarEmbeddingConfiguration = {
    type = "structure",
    members = {
        InitialTopicId = {
            type = "string",
        },
    },
}

M.RegisteredUserQuickChatEmbeddingConfiguration = {
    type = "structure",
}

M.RegisteredUserConsoleFeatureConfigurations = {
    type = "structure",
    members = {
        StatePersistence = M.StatePersistenceConfigurations,
        SharedView = M.SharedViewConfigurations,
        AmazonQInQuickSight = M.AmazonQInQuickSightConsoleConfigurations,
        Schedules = M.SchedulesConfigurations,
        RecentSnapshots = M.RecentSnapshotsConfigurations,
        ThresholdAlerts = M.ThresholdAlertsConfigurations,
        DashboardCustomizationSummary = M.DashboardCustomizationSummaryConfigurations,
    },
}

M.RegisteredUserQuickSightConsoleEmbeddingConfiguration = {
    type = "structure",
    members = {
        InitialPath = {
            type = "string",
        },
        FeatureConfigurations = M.RegisteredUserConsoleFeatureConfigurations,
    },
}

M.RegisteredUserEmbeddingExperienceConfiguration = {
    type = "structure",
    members = {
        Dashboard = M.RegisteredUserDashboardEmbeddingConfiguration,
        QuickSightConsole = M.RegisteredUserQuickSightConsoleEmbeddingConfiguration,
        QSearchBar = M.RegisteredUserQSearchBarEmbeddingConfiguration,
        DashboardVisual = M.RegisteredUserDashboardVisualEmbeddingConfiguration,
        GenerativeQnA = M.RegisteredUserGenerativeQnAEmbeddingConfiguration,
        QuickChat = M.RegisteredUserQuickChatEmbeddingConfiguration,
    },
}

M.GenerateEmbedUrlForRegisteredUserInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SessionLifetimeInMinutes = {
            type = "long",
        },
        UserArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExperienceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegisteredUserEmbeddingExperienceConfiguration }),
        AllowedDomains = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GenerateEmbedUrlForRegisteredUserOutput = {
    type = "structure",
    members = {
        EmbedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
                required = true,
            },
        },
        RequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QuickSightUserNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.GenerateEmbedUrlForRegisteredUserWithIdentityInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SessionLifetimeInMinutes = {
            type = "long",
        },
        ExperienceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegisteredUserEmbeddingExperienceConfiguration }),
        AllowedDomains = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GenerateEmbedUrlForRegisteredUserWithIdentityOutput = {
    type = "structure",
    members = {
        EmbedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
                required = true,
            },
        },
        RequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDashboardEmbedUrlInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentityType = {
            type = "string",
            traits = {
                http_query = "creds-type",
                required = true,
            },
        },
        SessionLifetimeInMinutes = {
            type = "long",
            traits = {
                http_query = "session-lifetime",
            },
        },
        UndoRedoDisabled = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "undo-redo-disabled",
            },
        },
        ResetDisabled = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "reset-disabled",
            },
        },
        StatePersistenceEnabled = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "state-persistence-enabled",
            },
        },
        UserArn = {
            type = "string",
            traits = {
                http_query = "user-arn",
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        AdditionalDashboardIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "additional-dashboard-ids",
            },
        },
    },
}

M.GetDashboardEmbedUrlOutput = {
    type = "structure",
    members = {
        EmbedUrl = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.IdentityTypeNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.GetFlowMetadataInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FlowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFlowMetadataOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowId = {
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
        PublishState = {
            type = "string",
        },
        UserCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        RunCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.GetFlowPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FlowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Permission = {
    type = "structure",
    members = {
        Actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFlowPermissionsOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "list",
            member = M.Permission,
            traits = {
                required = true,
            },
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UserIdentifier = {
    type = "union",
    members = {
        UserName = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        UserArn = {
            type = "string",
        },
    },
}

M.GetIdentityContextInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserIdentifier }),
        Namespace = {
            type = "string",
        },
        SessionExpiresAt = {
            type = "timestamp",
        },
        ContextRegion = {
            type = "string",
        },
    },
}

M.GetIdentityContextOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                http_response_code = true,
                required = true,
            },
        },
        RequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Context = {
            type = "string",
        },
    },
}

M.GetSessionEmbedUrlInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EntryPoint = {
            type = "string",
            traits = {
                http_query = "entry-point",
            },
        },
        SessionLifetimeInMinutes = {
            type = "long",
            traits = {
                http_query = "session-lifetime",
            },
        },
        UserArn = {
            type = "string",
            traits = {
                http_query = "user-arn",
            },
        },
    },
}

M.GetSessionEmbedUrlOutput = {
    type = "structure",
    members = {
        EmbedUrl = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.GroupFilterAttribute = {
    GROUP_NAME = "GROUP_NAME",
}

M.GroupFilterOperator = {
    StartsWith = "StartsWith",
}

M.GroupSearchFilter = {
    type = "structure",
    members = {
        Operator = {
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
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IAMPolicyAssignmentSummary = {
    type = "structure",
    members = {
        AssignmentName = {
            type = "string",
        },
        AssignmentStatus = {
            type = "string",
        },
    },
}

M.IncludeGeneratedAnswer = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.IncludeQuickSightQIndex = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.ListActionConnectorsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListActionConnectorsOutput = {
    type = "structure",
    members = {
        ActionConnectorSummaries = {
            type = "list",
            member = M.ActionConnectorSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListAnalysesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListAnalysesOutput = {
    type = "structure",
    members = {
        AnalysisSummaryList = {
            type = "list",
            member = M.AnalysisSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListAssetBundleExportJobsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListAssetBundleExportJobsOutput = {
    type = "structure",
    members = {
        AssetBundleExportJobSummaryList = {
            type = "list",
            member = M.AssetBundleExportJobSummary,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListAssetBundleImportJobsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListAssetBundleImportJobsOutput = {
    type = "structure",
    members = {
        AssetBundleImportJobSummaryList = {
            type = "list",
            member = M.AssetBundleImportJobSummary,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListBrandsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListBrandsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Brands = {
            type = "list",
            member = M.BrandSummary,
        },
    },
}

M.ListCustomPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListCustomPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        CustomPermissionsList = {
            type = "list",
            member = M.CustomPermissions,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListDashboardsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListDashboardsOutput = {
    type = "structure",
    members = {
        DashboardSummaryList = {
            type = "list",
            member = M.DashboardSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListDashboardVersionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListDashboardVersionsOutput = {
    type = "structure",
    members = {
        DashboardVersionSummaryList = {
            type = "list",
            member = M.DashboardVersionSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListDataSetsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListDataSetsOutput = {
    type = "structure",
    members = {
        DataSetSummaries = {
            type = "list",
            member = M.DataSetSummary,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListDataSourcesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListDataSourcesOutput = {
    type = "structure",
    members = {
        DataSources = {
            type = "list",
            member = M.DataSource,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListFlowsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListFlowsOutput = {
    type = "structure",
    members = {
        FlowSummaryList = {
            type = "list",
            member = M.FlowSummary,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListFolderMembersInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListFolderMembersOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        FolderMemberList = {
            type = "list",
            member = M.MemberIdArnPair,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListFoldersInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListFoldersOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        FolderSummaryList = {
            type = "list",
            member = M.FolderSummary,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListFoldersForResourceInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListFoldersForResourceOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        Folders = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListGroupMembershipsInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListGroupMembershipsOutput = {
    type = "structure",
    members = {
        GroupMemberList = {
            type = "list",
            member = M.GroupMember,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListGroupsOutput = {
    type = "structure",
    members = {
        GroupList = {
            type = "list",
            member = M.Group,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListIAMPolicyAssignmentsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssignmentStatus = {
            type = "string",
            traits = {
                http_query = "assignment-status",
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListIAMPolicyAssignmentsOutput = {
    type = "structure",
    members = {
        IAMPolicyAssignments = {
            type = "list",
            member = M.IAMPolicyAssignmentSummary,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListIAMPolicyAssignmentsForUserInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListIAMPolicyAssignmentsForUserOutput = {
    type = "structure",
    members = {
        ActiveAssignments = {
            type = "list",
            member = M.ActiveIAMPolicyAssignment,
        },
        RequestId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListIdentityPropagationConfigsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListIdentityPropagationConfigsOutput = {
    type = "structure",
    members = {
        Services = {
            type = "list",
            member = M.AuthorizedTargetsByService,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListIngestionsInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListIngestionsOutput = {
    type = "structure",
    members = {
        Ingestions = {
            type = "list",
            member = M.Ingestion,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListNamespacesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListNamespacesOutput = {
    type = "structure",
    members = {
        Namespaces = {
            type = "list",
            member = M.NamespaceInfoV2,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListRefreshSchedulesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListRefreshSchedulesOutput = {
    type = "structure",
    members = {
        RefreshSchedules = {
            type = "list",
            member = M.RefreshSchedule,
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListRoleMembershipsInput = {
    type = "structure",
    members = {
        Role = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListRoleMembershipsOutput = {
    type = "structure",
    members = {
        MembersList = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListSelfUpgradesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.SelfUpgradeRequestStatus = {
    PENDING = "PENDING",
    APPROVED = "APPROVED",
    DENIED = "DENIED",
    UPDATE_FAILED = "UPDATE_FAILED",
    VERIFY_FAILED = "VERIFY_FAILED",
}

M.SelfUpgradeRequestDetail = {
    type = "structure",
    members = {
        UpgradeRequestId = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        OriginalRole = {
            type = "string",
        },
        RequestedRole = {
            type = "string",
        },
        RequestNote = {
            type = "string",
        },
        CreationTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        RequestStatus = {
            type = "string",
        },
        lastUpdateAttemptTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastUpdateFailureReason = {
            type = "string",
        },
    },
}

M.ListSelfUpgradesOutput = {
    type = "structure",
    members = {
        SelfUpgradeRequestDetails = {
            type = "list",
            member = M.SelfUpgradeRequestDetail,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
        Tags = {
            type = "list",
            member = M.Tag,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListTemplateAliasesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-result",
            },
        },
    },
}

M.ListTemplateAliasesOutput = {
    type = "structure",
    members = {
        TemplateAliasList = {
            type = "list",
            member = M.TemplateAlias,
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTemplatesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-result",
            },
        },
    },
}

M.TemplateSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        TemplateId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LatestVersionNumber = {
            type = "long",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.ListTemplatesOutput = {
    type = "structure",
    members = {
        TemplateSummaryList = {
            type = "list",
            member = M.TemplateSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListTemplateVersionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.TemplateVersionSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        VersionNumber = {
            type = "long",
        },
        CreatedTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.ListTemplateVersionsOutput = {
    type = "structure",
    members = {
        TemplateVersionSummaryList = {
            type = "list",
            member = M.TemplateVersionSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListThemeAliasesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-result",
            },
        },
    },
}

M.ListThemeAliasesOutput = {
    type = "structure",
    members = {
        ThemeAliasList = {
            type = "list",
            member = M.ThemeAlias,
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListThemesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        Type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
    },
}

M.ThemeSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ThemeId = {
            type = "string",
        },
        LatestVersionNumber = {
            type = "long",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.ListThemesOutput = {
    type = "structure",
    members = {
        ThemeSummaryList = {
            type = "list",
            member = M.ThemeSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListThemeVersionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ThemeVersionSummary = {
    type = "structure",
    members = {
        VersionNumber = {
            type = "long",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListThemeVersionsOutput = {
    type = "structure",
    members = {
        ThemeVersionSummaryList = {
            type = "list",
            member = M.ThemeVersionSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListTopicRefreshSchedulesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TopicRefreshScheduleSummary = {
    type = "structure",
    members = {
        DatasetId = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        RefreshSchedule = M.TopicRefreshSchedule,
    },
}

M.ListTopicRefreshSchedulesOutput = {
    type = "structure",
    members = {
        TopicId = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        RefreshSchedules = {
            type = "list",
            member = M.TopicRefreshScheduleSummary,
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ListTopicReviewedAnswersInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTopicsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.TopicSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        TopicId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        UserExperienceVersion = {
            type = "string",
        },
    },
}

M.ListTopicsOutput = {
    type = "structure",
    members = {
        TopicsSummaries = {
            type = "list",
            member = M.TopicSummary,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListUserGroupsInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListUserGroupsOutput = {
    type = "structure",
    members = {
        GroupList = {
            type = "list",
            member = M.Group,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    members = {
        UserList = {
            type = "list",
            member = M.User,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListVPCConnectionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.VPCConnectionSummary = {
    type = "structure",
    members = {
        VPCConnectionId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VPCId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        DnsResolvers = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        AvailabilityStatus = {
            type = "string",
        },
        NetworkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
        RoleArn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.ListVPCConnectionsOutput = {
    type = "structure",
    members = {
        VPCConnectionSummaries = {
            type = "list",
            member = M.VPCConnectionSummary,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.PredictQAResultsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueryText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeQuickSightQIndex = {
            type = "string",
        },
        IncludeGeneratedAnswer = {
            type = "string",
        },
        MaxTopicsToConsider = {
            type = "integer",
        },
    },
}

M.QAResultType = {
    DASHBOARD_VISUAL = "DASHBOARD_VISUAL",
    GENERATED_ANSWER = "GENERATED_ANSWER",
    NO_ANSWER = "NO_ANSWER",
}

M.QAResult = {
    type = "structure",
    members = {
        ResultType = {
            type = "string",
        },
        DashboardVisual = M.DashboardVisualResult,
        GeneratedAnswer = M.GeneratedAnswerResult,
    },
}

M.PredictQAResultsOutput = {
    type = "structure",
    members = {
        PrimaryResult = M.QAResult,
        AdditionalResults = {
            type = "list",
            member = M.QAResult,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.PurchaseMode = {
    MANUAL = "MANUAL",
    AUTO_PURCHASE = "AUTO_PURCHASE",
}

M.PutDataSetRefreshPropertiesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetRefreshProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSetRefreshProperties }),
    },
}

M.PutDataSetRefreshPropertiesOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.RegisterUserInput = {
    type = "structure",
    members = {
        IdentityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamArn = {
            type = "string",
        },
        SessionName = {
            type = "string",
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserName = {
            type = "string",
        },
        CustomPermissionsName = {
            type = "string",
        },
        ExternalLoginFederationProviderType = {
            type = "string",
        },
        CustomFederationProviderUrl = {
            type = "string",
        },
        ExternalLoginId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.RegisterUserOutput = {
    type = "structure",
    members = {
        User = M.User,
        UserInvitationUrl = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.RestoreAnalysisInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AnalysisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RestoreToFolders = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "restore-to-folders",
            },
        },
    },
}

M.RestoreAnalysisOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        Arn = {
            type = "string",
        },
        AnalysisId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        RestorationFailedFolderArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchActionConnectorsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        Filters = {
            type = "list",
            member = M.ActionConnectorSearchFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.SearchActionConnectorsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        ActionConnectorSummaries = {
            type = "list",
            member = M.ActionConnectorSummary,
        },
    },
}

M.SearchAnalysesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.AnalysisSearchFilter,
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

M.SearchAnalysesOutput = {
    type = "structure",
    members = {
        AnalysisSummaryList = {
            type = "list",
            member = M.AnalysisSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.SearchDashboardsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.DashboardSearchFilter,
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

M.SearchDashboardsOutput = {
    type = "structure",
    members = {
        DashboardSummaryList = {
            type = "list",
            member = M.DashboardSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.SearchDataSetsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.DataSetSearchFilter,
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

M.SearchDataSetsOutput = {
    type = "structure",
    members = {
        DataSetSummaries = {
            type = "list",
            member = M.DataSetSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.SearchDataSourcesInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.DataSourceSearchFilter,
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

M.SearchDataSourcesOutput = {
    type = "structure",
    members = {
        DataSourceSummaries = {
            type = "list",
            member = M.DataSourceSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.SearchFilterOperator = {
    STRING_EQUALS = "StringEquals",
    STRING_LIKE = "StringLike",
}

M.SearchFlowsFilter = {
    type = "structure",
    members = {
        Name = {
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
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchFlowsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.SearchFlowsFilter,
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

M.SearchFlowsOutput = {
    type = "structure",
    members = {
        FlowSummaryList = {
            type = "list",
            member = M.FlowSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.SearchFoldersInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.FolderSearchFilter,
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

M.SearchFoldersOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        FolderSummaryList = {
            type = "list",
            member = M.FolderSummary,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.SearchGroupsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.GroupSearchFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.SearchGroupsOutput = {
    type = "structure",
    members = {
        GroupList = {
            type = "list",
            member = M.Group,
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.TopicFilterAttribute = {
    QUICKSIGHT_USER = "QUICKSIGHT_USER",
    QUICKSIGHT_VIEWER_OR_OWNER = "QUICKSIGHT_VIEWER_OR_OWNER",
    DIRECT_QUICKSIGHT_VIEWER_OR_OWNER = "DIRECT_QUICKSIGHT_VIEWER_OR_OWNER",
    QUICKSIGHT_OWNER = "QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_OWNER = "DIRECT_QUICKSIGHT_OWNER",
    DIRECT_QUICKSIGHT_SOLE_OWNER = "DIRECT_QUICKSIGHT_SOLE_OWNER",
    TOPIC_NAME = "TOPIC_NAME",
}

M.TopicFilterOperator = {
    StringEquals = "StringEquals",
    StringLike = "StringLike",
}

M.TopicSearchFilter = {
    type = "structure",
    members = {
        Operator = {
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
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchTopicsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.TopicSearchFilter,
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

M.SearchTopicsOutput = {
    type = "structure",
    members = {
        TopicSummaryList = {
            type = "list",
            member = M.TopicSummary,
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.StartAssetBundleExportJobInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssetBundleExportJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        IncludeAllDependencies = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExportFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudFormationOverridePropertyConfiguration = M.AssetBundleCloudFormationOverridePropertyConfiguration,
        IncludePermissions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeTags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ValidationStrategy = M.AssetBundleExportJobValidationStrategy,
        IncludeFolderMemberships = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeFolderMembers = {
            type = "string",
        },
    },
}

M.StartAssetBundleExportJobOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AssetBundleExportJobId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.StartAssetBundleImportJobInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssetBundleImportJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssetBundleImportSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetBundleImportSource }),
        OverrideParameters = M.AssetBundleImportJobOverrideParameters,
        FailureAction = {
            type = "string",
        },
        OverridePermissions = M.AssetBundleImportJobOverridePermissions,
        OverrideTags = M.AssetBundleImportJobOverrideTags,
        OverrideValidationStrategy = M.AssetBundleImportJobOverrideValidationStrategy,
    },
}

M.StartAssetBundleImportJobOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AssetBundleImportJobId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.StartAutomationJobInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AutomationGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AutomationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InputPayload = {
            type = "string",
        },
    },
}

M.StartAutomationJobOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.SnapshotAnonymousUser = {
    type = "structure",
    members = {
        RowLevelPermissionTags = {
            type = "list",
            member = M.SessionTag,
        },
    },
}

M.SnapshotUserConfiguration = {
    type = "structure",
    members = {
        AnonymousUsers = {
            type = "list",
            member = M.SnapshotAnonymousUser,
        },
    },
}

M.StartDashboardSnapshotJobInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SnapshotJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserConfiguration = M.SnapshotUserConfiguration,
        SnapshotConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnapshotConfiguration }),
    },
}

M.StartDashboardSnapshotJobOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        SnapshotJobId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.StartDashboardSnapshotJobScheduleInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ScheduleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartDashboardSnapshotJobScheduleOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
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
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "keys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateAccountCustomizationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        AccountCustomization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountCustomization }),
    },
}

M.UpdateAccountCustomizationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AwsAccountId = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        AccountCustomization = M.AccountCustomization,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateAccountCustomPermissionInput = {
    type = "structure",
    members = {
        CustomPermissionsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateAccountCustomPermissionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateAccountSettingsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DefaultNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationEmail = {
            type = "string",
        },
        TerminationProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateActionConnectorInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ActionConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthConfig }),
        Description = {
            type = "string",
        },
        VpcConnectionArn = {
            type = "string",
        },
    },
}

M.UpdateActionConnectorOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ActionConnectorId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        UpdateStatus = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateActionConnectorPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ActionConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GrantPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RevokePermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.UpdateActionConnectorPermissionsOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ActionConnectorId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.UpdateAnalysisInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AnalysisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = M.Parameters,
        SourceEntity = M.AnalysisSourceEntity,
        ThemeArn = {
            type = "string",
        },
        Definition = M.AnalysisDefinition,
        ValidationStrategy = M.ValidationStrategy,
    },
}

M.UpdateAnalysisOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AnalysisId = {
            type = "string",
        },
        UpdateStatus = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateAnalysisPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AnalysisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GrantPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RevokePermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.UpdateAnalysisPermissionsOutput = {
    type = "structure",
    members = {
        AnalysisArn = {
            type = "string",
        },
        AnalysisId = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateApplicationWithTokenExchangeGrantInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
                required = true,
            },
        },
    },
}

M.UpdateApplicationWithTokenExchangeGrantOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateBrandInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BrandId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BrandDefinition = M.BrandDefinition,
    },
}

M.UpdateBrandOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        BrandDetail = M.BrandDetail,
        BrandDefinition = M.BrandDefinition,
    },
}

M.UpdateBrandAssignmentInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BrandArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateBrandAssignmentOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        BrandArn = {
            type = "string",
        },
    },
}

M.UpdateBrandPublishedVersionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BrandId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateBrandPublishedVersionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
    },
}

M.UpdateCustomPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CustomPermissionsName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Capabilities = M.Capabilities,
    },
}

M.UpdateCustomPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Arn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateDashboardInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceEntity = M.DashboardSourceEntity,
        Parameters = M.Parameters,
        VersionDescription = {
            type = "string",
        },
        DashboardPublishOptions = M.DashboardPublishOptions,
        ThemeArn = {
            type = "string",
        },
        Definition = M.DashboardVersionDefinition,
        ValidationStrategy = M.ValidationStrategy,
    },
}

M.UpdateDashboardOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        VersionArn = {
            type = "string",
        },
        DashboardId = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateDashboardLinksInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LinkEntities = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDashboardLinksOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        DashboardArn = {
            type = "string",
        },
        LinkEntities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateDashboardPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GrantPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RevokePermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        GrantLinkPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RevokeLinkPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.UpdateDashboardPermissionsOutput = {
    type = "structure",
    members = {
        DashboardArn = {
            type = "string",
        },
        DashboardId = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        LinkSharingConfiguration = M.LinkSharingConfiguration,
    },
}

M.UpdateDashboardPublishedVersionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateDashboardPublishedVersionOutput = {
    type = "structure",
    members = {
        DashboardId = {
            type = "string",
        },
        DashboardArn = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateDashboardsQAConfigurationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DashboardsQAStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDashboardsQAConfigurationOutput = {
    type = "structure",
    members = {
        DashboardsQAStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateDataSetInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhysicalTableMap = {
            type = "map",
            key = { type = "string" },
            value = M.PhysicalTable,
            traits = {
                required = true,
            },
        },
        LogicalTableMap = {
            type = "map",
            key = { type = "string" },
            value = M.LogicalTable,
        },
        ImportMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnGroups = {
            type = "list",
            member = M.ColumnGroup,
        },
        FieldFolders = {
            type = "map",
            key = { type = "string" },
            value = M.FieldFolder,
        },
        RowLevelPermissionDataSet = M.RowLevelPermissionDataSet,
        RowLevelPermissionTagConfiguration = M.RowLevelPermissionTagConfiguration,
        ColumnLevelPermissionRules = {
            type = "list",
            member = M.ColumnLevelPermissionRule,
        },
        DataSetUsageConfiguration = M.DataSetUsageConfiguration,
        DatasetParameters = {
            type = "list",
            member = M.DatasetParameter,
        },
        PerformanceConfiguration = M.PerformanceConfiguration,
        DataPrepConfiguration = M.DataPrepConfiguration,
        SemanticModelConfiguration = M.SemanticModelConfiguration,
    },
}

M.UpdateDataSetOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DataSetId = {
            type = "string",
        },
        IngestionArn = {
            type = "string",
        },
        IngestionId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateDataSetPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GrantPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RevokePermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.UpdateDataSetPermissionsOutput = {
    type = "structure",
    members = {
        DataSetArn = {
            type = "string",
        },
        DataSetId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateDataSourceInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceParameters = M.DataSourceParameters,
        Credentials = M.DataSourceCredentials,
        VpcConnectionProperties = M.VpcConnectionProperties,
        SslProperties = M.SslProperties,
    },
}

M.UpdateDataSourceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        UpdateStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateDataSourcePermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GrantPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RevokePermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.UpdateDataSourcePermissionsOutput = {
    type = "structure",
    members = {
        DataSourceArn = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateDefaultQBusinessApplicationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDefaultQBusinessApplicationOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateFlowPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FlowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GrantPermissions = {
            type = "list",
            member = M.Permission,
        },
        RevokePermissions = {
            type = "list",
            member = M.Permission,
        },
    },
}

M.UpdateFlowPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "list",
            member = M.Permission,
            traits = {
                required = true,
            },
        },
        RequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFolderInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFolderOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        Arn = {
            type = "string",
        },
        FolderId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateFolderPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GrantPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RevokePermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.UpdateFolderPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Arn = {
            type = "string",
        },
        FolderId = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
    members = {
        Group = M.Group,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateIAMPolicyAssignmentInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssignmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssignmentStatus = {
            type = "string",
        },
        PolicyArn = {
            type = "string",
        },
        Identities = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.UpdateIAMPolicyAssignmentOutput = {
    type = "structure",
    members = {
        AssignmentName = {
            type = "string",
        },
        AssignmentId = {
            type = "string",
        },
        PolicyArn = {
            type = "string",
        },
        Identities = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        AssignmentStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateIdentityPropagationConfigInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Service = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AuthorizedTargets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateIdentityPropagationConfigOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateIpRestrictionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IpRestrictionRuleMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        VpcIdRestrictionRuleMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        VpcEndpointIdRestrictionRuleMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.UpdateIpRestrictionOutput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateKeyRegistrationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        KeyRegistration = {
            type = "list",
            member = M.RegisteredCustomerManagedKey,
            traits = {
                required = true,
            },
        },
    },
}

M.SuccessfulKeyRegistrationEntry = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusCode = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.UpdateKeyRegistrationOutput = {
    type = "structure",
    members = {
        FailedKeyRegistration = {
            type = "list",
            member = M.FailedKeyRegistrationEntry,
        },
        SuccessfulKeyRegistration = {
            type = "list",
            member = M.SuccessfulKeyRegistrationEntry,
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdatePublicSharingSettingsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PublicSharingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdatePublicSharingSettingsOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateQPersonalizationConfigurationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PersonalizationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateQPersonalizationConfigurationOutput = {
    type = "structure",
    members = {
        PersonalizationMode = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateQuickSightQSearchConfigurationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QSearchStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateQuickSightQSearchConfigurationOutput = {
    type = "structure",
    members = {
        QSearchStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateRefreshScheduleInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RefreshSchedule }),
    },
}

M.UpdateRefreshScheduleOutput = {
    type = "structure",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
        ScheduleId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.UpdateRoleCustomPermissionInput = {
    type = "structure",
    members = {
        CustomPermissionsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateRoleCustomPermissionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.SelfUpgradeAdminAction = {
    APPROVE = "APPROVE",
    DENY = "DENY",
    VERIFY = "VERIFY",
}

M.UpdateSelfUpgradeInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UpgradeRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSelfUpgradeOutput = {
    type = "structure",
    members = {
        SelfUpgradeRequestDetail = M.SelfUpgradeRequestDetail,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateSelfUpgradeConfigurationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SelfUpgradeStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSelfUpgradeConfigurationOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateSPICECapacityConfigurationInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PurchaseMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSPICECapacityConfigurationOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateTemplateInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SourceEntity = M.TemplateSourceEntity,
        VersionDescription = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Definition = M.TemplateVersionDefinition,
        ValidationStrategy = M.ValidationStrategy,
    },
}

M.UpdateTemplateOutput = {
    type = "structure",
    members = {
        TemplateId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        VersionArn = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateTemplateAliasInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateVersionNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTemplateAliasOutput = {
    type = "structure",
    members = {
        TemplateAlias = M.TemplateAlias,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateTemplatePermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GrantPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RevokePermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.UpdateTemplatePermissionsOutput = {
    type = "structure",
    members = {
        TemplateId = {
            type = "string",
        },
        TemplateArn = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateThemeInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        BaseThemeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionDescription = {
            type = "string",
        },
        Configuration = M.ThemeConfiguration,
    },
}

M.UpdateThemeOutput = {
    type = "structure",
    members = {
        ThemeId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        VersionArn = {
            type = "string",
        },
        CreationStatus = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateThemeAliasInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeVersionNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateThemeAliasOutput = {
    type = "structure",
    members = {
        ThemeAlias = M.ThemeAlias,
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateThemePermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThemeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GrantPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RevokePermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.UpdateThemePermissionsOutput = {
    type = "structure",
    members = {
        ThemeId = {
            type = "string",
        },
        ThemeArn = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateTopicInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Topic = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TopicDetails }),
        CustomInstructions = M.CustomInstructions,
    },
}

M.UpdateTopicOutput = {
    type = "structure",
    members = {
        TopicId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        RefreshArn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateTopicPermissionsInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GrantPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        RevokePermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.UpdateTopicPermissionsOutput = {
    type = "structure",
    members = {
        TopicId = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateTopicRefreshScheduleInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DatasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RefreshSchedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TopicRefreshSchedule }),
    },
}

M.UpdateTopicRefreshScheduleOutput = {
    type = "structure",
    members = {
        TopicId = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateUserInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomPermissionsName = {
            type = "string",
        },
        UnapplyCustomPermissions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExternalLoginFederationProviderType = {
            type = "string",
        },
        CustomFederationProviderUrl = {
            type = "string",
        },
        ExternalLoginId = {
            type = "string",
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
    members = {
        User = M.User,
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateUserCustomPermissionInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CustomPermissionsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateUserCustomPermissionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.UpdateVPCConnectionInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPCConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        DnsResolvers = {
            type = "list",
            member = { type = "string" },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateVPCConnectionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        VPCConnectionId = {
            type = "string",
        },
        UpdateStatus = {
            type = "string",
        },
        AvailabilityStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.TopicVisual = {
    type = "structure",
    members = {
        VisualId = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Ir = M.TopicIR,
        SupportingVisuals = {
            type = "list",
            member = M.TopicVisual,
        },
    },
}

M.CreateTopicReviewedAnswer = {
    type = "structure",
    members = {
        AnswerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Question = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mir = M.TopicIR,
        PrimaryVisual = M.TopicVisual,
        Template = M.TopicTemplate,
    },
}

M.TopicReviewedAnswer = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AnswerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Question = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mir = M.TopicIR,
        PrimaryVisual = M.TopicVisual,
        Template = M.TopicTemplate,
    },
}

M.BatchCreateTopicReviewedAnswerInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Answers = {
            type = "list",
            member = M.CreateTopicReviewedAnswer,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTopicReviewedAnswersOutput = {
    type = "structure",
    members = {
        TopicId = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        Answers = {
            type = "list",
            member = M.TopicReviewedAnswer,
        },
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

return M
