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
        },
        TerminationProtectionEnabled = {
            type = "boolean",
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
        ReadAuthorizationCodeGrantDetails = {
            type = "structure",
        },
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
        ReadAuthorizationCodeGrantCredentialsDetails = {
            type = "union",
        },
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
        ReadClientCredentialsGrantDetails = {
            type = "structure",
        },
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
        ReadClientCredentialsDetails = {
            type = "union",
        },
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
        AuthorizationCodeGrantMetadata = {
            type = "structure",
        },
        ClientCredentialsGrantMetadata = {
            type = "structure",
        },
        BasicAuthConnectionMetadata = {
            type = "structure",
        },
        ApiKeyConnectionMetadata = {
            type = "structure",
        },
        NoneConnectionMetadata = {
            type = "structure",
        },
        IamConnectionMetadata = {
            type = "structure",
        },
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
        AuthenticationMetadata = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        Error = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        AuthenticationConfig = {
            type = "structure",
        },
        EnabledActions = {
            type = "list",
            member_type = "string",
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
        Error = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        SimpleAggregation = {
            type = "structure",
        },
        ListAggregation = {
            type = "structure",
        },
    },
}

M.Aggregation = {
    type = "structure",
    members = {
        AggregationFunction = {
            type = "structure",
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
            member_type = "structure",
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        GroupByColumnNames = {
            type = "list",
            member_type = "string",
        },
        Aggregations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        PercentileAggregation = {
            type = "structure",
        },
    },
}

M.AggregationFunction = {
    type = "structure",
    members = {
        NumericalAggregationFunction = {
            type = "structure",
        },
        CategoricalAggregationFunction = {
            type = "string",
        },
        DateAggregationFunction = {
            type = "string",
        },
        AttributeAggregationFunction = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SortDirection = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AggregationFunction = {
            type = "structure",
        },
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
                required = true,
            },
        },
    },
}

M.AmazonQInQuickSightConsoleConfigurations = {
    type = "structure",
    members = {
        DataQnA = {
            type = "structure",
        },
        GenerativeAuthoring = {
            type = "structure",
        },
        ExecutiveSummary = {
            type = "structure",
        },
        DataStories = {
            type = "structure",
        },
    },
}

M.AmazonQInQuickSightDashboardConfigurations = {
    type = "structure",
    members = {
        ExecutiveSummary = {
            type = "structure",
        },
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
            member_type = "structure",
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
        LocalNavigationConfiguration = {
            type = "structure",
        },
    },
}

M.CustomParameterValues = {
    type = "structure",
    members = {
        StringValues = {
            type = "list",
            member_type = "string",
        },
        IntegerValues = {
            type = "list",
            member_type = "number",
        },
        DecimalValues = {
            type = "list",
            member_type = "number",
        },
        DateTimeValues = {
            type = "list",
            member_type = "timestamp",
        },
    },
}

M.CustomValuesConfiguration = {
    type = "structure",
    members = {
        IncludeNullValue = {
            type = "boolean",
        },
        CustomValues = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SelectAllValueOptions = {
    ALL_VALUES = "ALL_VALUES",
}

M.DestinationParameterValueConfiguration = {
    type = "structure",
    members = {
        CustomValuesConfiguration = {
            type = "structure",
        },
        SelectAllValueOptions = {
            type = "string",
        },
        SourceParameterName = {
            type = "string",
        },
        SourceField = {
            type = "string",
        },
        SourceColumn = {
            type = "structure",
        },
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
        Value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomActionSetParametersOperation = {
    type = "structure",
    members = {
        ParameterValueConfigurations = {
            type = "list",
            member_type = "structure",
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
        NavigationOperation = {
            type = "structure",
        },
        URLOperation = {
            type = "structure",
        },
        SetParametersOperation = {
            type = "structure",
        },
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
            member_type = "structure",
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
        ImageMenuOption = {
            type = "structure",
        },
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
        SheetImageStaticFileSource = {
            type = "structure",
        },
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
        TooltipText = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Scaling = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        ImageContentAltText = {
            type = "string",
        },
        Interactions = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        DataSetArns = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        ScreenCanvasSizeOptions = {
            type = "structure",
        },
    },
}

M.DefaultFreeFormLayoutConfiguration = {
    type = "structure",
    members = {
        CanvasSizeOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ScreenCanvasSizeOptions = {
            type = "structure",
        },
    },
}

M.DefaultGridLayoutConfiguration = {
    type = "structure",
    members = {
        CanvasSizeOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DefaultInteractiveLayoutConfiguration = {
    type = "structure",
    members = {
        Grid = {
            type = "structure",
        },
        FreeForm = {
            type = "structure",
        },
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
        PaperMargin = {
            type = "structure",
        },
    },
}

M.SectionBasedLayoutCanvasSizeOptions = {
    type = "structure",
    members = {
        PaperCanvasSizeOptions = {
            type = "structure",
        },
    },
}

M.DefaultSectionBasedLayoutConfiguration = {
    type = "structure",
    members = {
        CanvasSizeOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DefaultPaginatedLayoutConfiguration = {
    type = "structure",
    members = {
        SectionBased = {
            type = "structure",
        },
    },
}

M.SheetContentType = {
    PAGINATED = "PAGINATED",
    INTERACTIVE = "INTERACTIVE",
}

M.DefaultNewSheetConfiguration = {
    type = "structure",
    members = {
        InteractiveLayoutConfiguration = {
            type = "structure",
        },
        PaginatedLayoutConfiguration = {
            type = "structure",
        },
        SheetContentType = {
            type = "string",
        },
    },
}

M.AnalysisDefaults = {
    type = "structure",
    members = {
        DefaultNewSheetConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
        ThousandsSeparator = {
            type = "structure",
        },
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
        SeparatorConfiguration = {
            type = "structure",
        },
        Symbol = {
            type = "string",
        },
        DecimalPlacesConfiguration = {
            type = "structure",
        },
        NumberScale = {
            type = "string",
        },
        NegativeValueConfiguration = {
            type = "structure",
        },
        NullValueFormatConfiguration = {
            type = "structure",
        },
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
        SeparatorConfiguration = {
            type = "structure",
        },
        DecimalPlacesConfiguration = {
            type = "structure",
        },
        NumberScale = {
            type = "string",
        },
        NegativeValueConfiguration = {
            type = "structure",
        },
        NullValueFormatConfiguration = {
            type = "structure",
        },
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
        SeparatorConfiguration = {
            type = "structure",
        },
        DecimalPlacesConfiguration = {
            type = "structure",
        },
        NegativeValueConfiguration = {
            type = "structure",
        },
        NullValueFormatConfiguration = {
            type = "structure",
        },
    },
}

M.NumericFormatConfiguration = {
    type = "structure",
    members = {
        NumberDisplayFormatConfiguration = {
            type = "structure",
        },
        CurrencyDisplayFormatConfiguration = {
            type = "structure",
        },
        PercentageDisplayFormatConfiguration = {
            type = "structure",
        },
    },
}

M.DateTimeFormatConfiguration = {
    type = "structure",
    members = {
        DateTimeFormat = {
            type = "string",
        },
        NullValueFormatConfiguration = {
            type = "structure",
        },
        NumericFormatConfiguration = {
            type = "structure",
        },
    },
}

M.NumberFormatConfiguration = {
    type = "structure",
    members = {
        FormatConfiguration = {
            type = "structure",
        },
    },
}

M.StringFormatConfiguration = {
    type = "structure",
    members = {
        NullValueFormatConfiguration = {
            type = "structure",
        },
        NumericFormatConfiguration = {
            type = "structure",
        },
    },
}

M.FormatConfiguration = {
    type = "structure",
    members = {
        StringFormatConfiguration = {
            type = "structure",
        },
        NumberFormatConfiguration = {
            type = "structure",
        },
        DateTimeFormatConfiguration = {
            type = "structure",
        },
    },
}

M.ColumnRole = {
    DIMENSION = "DIMENSION",
    MEASURE = "MEASURE",
}

M.ColumnConfiguration = {
    type = "structure",
    members = {
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FormatConfiguration = {
            type = "structure",
        },
        Role = {
            type = "string",
        },
        ColorsConfiguration = {
            type = "structure",
        },
        DecalSettingsConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
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
        FilterListConfiguration = {
            type = "structure",
        },
        CustomFilterListConfiguration = {
            type = "structure",
        },
        CustomFilterConfiguration = {
            type = "structure",
        },
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
        FontSize = {
            type = "structure",
        },
        FontDecoration = {
            type = "string",
        },
        FontColor = {
            type = "string",
        },
        FontWeight = {
            type = "structure",
        },
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
        FontConfiguration = {
            type = "structure",
        },
        CustomLabel = {
            type = "string",
        },
    },
}

M.DateTimePickerControlDisplayOptions = {
    type = "structure",
    members = {
        TitleOptions = {
            type = "structure",
        },
        DateTimeFormat = {
            type = "string",
        },
        InfoIconLabelOptions = {
            type = "structure",
        },
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
        DisplayOptions = {
            type = "structure",
        },
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
        SelectableValuesSort = {
            type = "structure",
        },
        ControlColumnSort = {
            type = "structure",
        },
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
        SelectAllOptions = {
            type = "structure",
        },
        TitleOptions = {
            type = "structure",
        },
        InfoIconLabelOptions = {
            type = "structure",
        },
    },
}

M.FilterSelectableValues = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "string",
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
        DisplayOptions = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        SelectableValues = {
            type = "structure",
        },
        CommitMode = {
            type = "string",
        },
        ControlSortConfigurations = {
            type = "list",
            member_type = "structure",
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
        SearchOptions = {
            type = "structure",
        },
        SelectAllOptions = {
            type = "structure",
        },
        TitleOptions = {
            type = "structure",
        },
        InfoIconLabelOptions = {
            type = "structure",
        },
    },
}

M.DefaultFilterListControlOptions = {
    type = "structure",
    members = {
        DisplayOptions = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        SelectableValues = {
            type = "structure",
        },
        ControlSortConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RelativeDateTimeControlDisplayOptions = {
    type = "structure",
    members = {
        TitleOptions = {
            type = "structure",
        },
        DateTimeFormat = {
            type = "string",
        },
        InfoIconLabelOptions = {
            type = "structure",
        },
    },
}

M.DefaultRelativeDateTimeControlOptions = {
    type = "structure",
    members = {
        DisplayOptions = {
            type = "structure",
        },
        CommitMode = {
            type = "string",
        },
    },
}

M.SliderControlDisplayOptions = {
    type = "structure",
    members = {
        TitleOptions = {
            type = "structure",
        },
        InfoIconLabelOptions = {
            type = "structure",
        },
    },
}

M.SheetControlSliderType = {
    SINGLE_POINT = "SINGLE_POINT",
    RANGE = "RANGE",
}

M.DefaultSliderControlOptions = {
    type = "structure",
    members = {
        DisplayOptions = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        MaximumValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MinimumValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        StepSize = {
            type = "number",
            traits = {
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
        TitleOptions = {
            type = "structure",
        },
        PlaceholderOptions = {
            type = "structure",
        },
        InfoIconLabelOptions = {
            type = "structure",
        },
    },
}

M.DefaultTextAreaControlOptions = {
    type = "structure",
    members = {
        Delimiter = {
            type = "string",
        },
        DisplayOptions = {
            type = "structure",
        },
    },
}

M.TextFieldControlDisplayOptions = {
    type = "structure",
    members = {
        TitleOptions = {
            type = "structure",
        },
        PlaceholderOptions = {
            type = "structure",
        },
        InfoIconLabelOptions = {
            type = "structure",
        },
    },
}

M.DefaultTextFieldControlOptions = {
    type = "structure",
    members = {
        DisplayOptions = {
            type = "structure",
        },
    },
}

M.DefaultFilterControlOptions = {
    type = "structure",
    members = {
        DefaultDateTimePickerOptions = {
            type = "structure",
        },
        DefaultListOptions = {
            type = "structure",
        },
        DefaultDropdownOptions = {
            type = "structure",
        },
        DefaultTextFieldOptions = {
            type = "structure",
        },
        DefaultTextAreaOptions = {
            type = "structure",
        },
        DefaultSliderOptions = {
            type = "structure",
        },
        DefaultRelativeDateTimeOptions = {
            type = "structure",
        },
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
        },
        ControlOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ControlTitleFormatText = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DefaultFilterControlConfiguration = {
            type = "structure",
        },
    },
}

M.CategoryInnerFilter = {
    type = "structure",
    members = {
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DefaultFilterControlConfiguration = {
            type = "structure",
        },
    },
}

M.InnerFilter = {
    type = "structure",
    members = {
        CategoryInnerFilter = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        IncludeInnerSet = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        InnerFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "number",
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
        AggregationFunction = {
            type = "structure",
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
        DefaultFilterControlConfiguration = {
            type = "structure",
        },
    },
}

M.NumericRangeFilterValue = {
    type = "structure",
    members = {
        StaticValue = {
            type = "number",
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        IncludeMinimum = {
            type = "boolean",
        },
        IncludeMaximum = {
            type = "boolean",
        },
        RangeMinimum = {
            type = "structure",
        },
        RangeMaximum = {
            type = "structure",
        },
        SelectAllOptions = {
            type = "string",
        },
        AggregationFunction = {
            type = "structure",
        },
        NullOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultFilterControlConfiguration = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AnchorDateConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
        ExcludePeriodConfiguration = {
            type = "structure",
        },
        DefaultFilterControlConfiguration = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "timestamp",
        },
        ParameterName = {
            type = "string",
        },
        TimeGranularity = {
            type = "string",
        },
        RollingDate = {
            type = "structure",
        },
        DefaultFilterControlConfiguration = {
            type = "structure",
        },
    },
}

M.TimeRangeFilterValue = {
    type = "structure",
    members = {
        StaticValue = {
            type = "timestamp",
        },
        RollingDate = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        IncludeMinimum = {
            type = "boolean",
        },
        IncludeMaximum = {
            type = "boolean",
        },
        RangeMinimumValue = {
            type = "structure",
        },
        RangeMaximumValue = {
            type = "structure",
        },
        NullOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExcludePeriodConfiguration = {
            type = "structure",
        },
        TimeGranularity = {
            type = "string",
        },
        DefaultFilterControlConfiguration = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        AggregationSortConfigurations = {
            type = "list",
            member_type = "structure",
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
        DefaultFilterControlConfiguration = {
            type = "structure",
        },
    },
}

M.Filter = {
    type = "structure",
    members = {
        CategoryFilter = {
            type = "structure",
        },
        NumericRangeFilter = {
            type = "structure",
        },
        NumericEqualityFilter = {
            type = "structure",
        },
        TimeEqualityFilter = {
            type = "structure",
        },
        TimeRangeFilter = {
            type = "structure",
        },
        RelativeDatesFilter = {
            type = "structure",
        },
        TopBottomFilter = {
            type = "structure",
        },
        NestedFilter = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.SelectedSheetsFilterScopeConfiguration = {
    type = "structure",
    members = {
        SheetVisualScopingConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FilterScopeConfiguration = {
    type = "structure",
    members = {
        SelectedSheets = {
            type = "structure",
        },
        AllSheets = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ScopeConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        highlightOperation = {
            type = "structure",
        },
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
            member_type = "string",
        },
        CustomActionDefaults = {
            type = "structure",
        },
    },
}

M.DynamicDefaultValue = {
    type = "structure",
    members = {
        UserNameColumn = {
            type = "structure",
        },
        GroupNameColumn = {
            type = "structure",
        },
        DefaultValueColumn = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DateTimeDefaultValues = {
    type = "structure",
    members = {
        DynamicValue = {
            type = "structure",
        },
        StaticValues = {
            type = "list",
            member_type = "timestamp",
        },
        RollingDate = {
            type = "structure",
        },
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
        DefaultValues = {
            type = "structure",
        },
        TimeGranularity = {
            type = "string",
        },
        ValueWhenUnset = {
            type = "structure",
        },
        MappedDataSetParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DecimalDefaultValues = {
    type = "structure",
    members = {
        DynamicValue = {
            type = "structure",
        },
        StaticValues = {
            type = "list",
            member_type = "number",
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
            type = "number",
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
        DefaultValues = {
            type = "structure",
        },
        ValueWhenUnset = {
            type = "structure",
        },
        MappedDataSetParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.IntegerDefaultValues = {
    type = "structure",
    members = {
        DynamicValue = {
            type = "structure",
        },
        StaticValues = {
            type = "list",
            member_type = "number",
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
            type = "number",
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
        DefaultValues = {
            type = "structure",
        },
        ValueWhenUnset = {
            type = "structure",
        },
        MappedDataSetParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StringDefaultValues = {
    type = "structure",
    members = {
        DynamicValue = {
            type = "structure",
        },
        StaticValues = {
            type = "list",
            member_type = "string",
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
        DefaultValues = {
            type = "structure",
        },
        ValueWhenUnset = {
            type = "structure",
        },
        MappedDataSetParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ParameterDeclaration = {
    type = "structure",
    members = {
        StringParameterDeclaration = {
            type = "structure",
        },
        DecimalParameterDeclaration = {
            type = "structure",
        },
        IntegerParameterDeclaration = {
            type = "structure",
        },
        DateTimeParameterDeclaration = {
            type = "structure",
        },
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
        ColumnToMatch = {
            type = "structure",
        },
    },
}

M.CascadingControlConfiguration = {
    type = "structure",
    members = {
        SourceControls = {
            type = "list",
            member_type = "structure",
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
        CascadingControlConfiguration = {
            type = "structure",
        },
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
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        CommitMode = {
            type = "string",
        },
        ControlTitleFormatText = {
            type = "structure",
        },
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
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        SelectableValues = {
            type = "structure",
        },
        CascadingControlConfiguration = {
            type = "structure",
        },
        CommitMode = {
            type = "string",
        },
        ControlSortConfigurations = {
            type = "list",
            member_type = "structure",
        },
        ControlTitleFormatText = {
            type = "structure",
        },
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
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        SelectableValues = {
            type = "structure",
        },
        CascadingControlConfiguration = {
            type = "structure",
        },
        ControlSortConfigurations = {
            type = "list",
            member_type = "structure",
        },
        ControlTitleFormatText = {
            type = "structure",
        },
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
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = {
            type = "structure",
        },
        CommitMode = {
            type = "string",
        },
        ControlTitleFormatText = {
            type = "structure",
        },
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
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        MaximumValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MinimumValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        StepSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ControlTitleFormatText = {
            type = "structure",
        },
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
        DisplayOptions = {
            type = "structure",
        },
        ControlTitleFormatText = {
            type = "structure",
        },
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
        },
        SourceFilterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = {
            type = "structure",
        },
        ControlTitleFormatText = {
            type = "structure",
        },
    },
}

M.FilterControl = {
    type = "structure",
    members = {
        DateTimePicker = {
            type = "structure",
        },
        List = {
            type = "structure",
        },
        Dropdown = {
            type = "structure",
        },
        TextField = {
            type = "structure",
        },
        TextArea = {
            type = "structure",
        },
        Slider = {
            type = "structure",
        },
        RelativeDateTime = {
            type = "structure",
        },
        CrossSheet = {
            type = "structure",
        },
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
        ConfigurationOverrides = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        BorderStyle = {
            type = "structure",
        },
        SelectedBorderStyle = {
            type = "structure",
        },
        BackgroundStyle = {
            type = "structure",
        },
        LoadingAnimation = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        CanvasSizeOptions = {
            type = "structure",
        },
        Groups = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        ColumnSpan = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RowIndex = {
            type = "number",
        },
        RowSpan = {
            type = "number",
            traits = {
                required = true,
            },
        },
        BorderStyle = {
            type = "structure",
        },
        SelectedBorderStyle = {
            type = "structure",
        },
        BackgroundStyle = {
            type = "structure",
        },
        LoadingAnimation = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        CanvasSizeOptions = {
            type = "structure",
        },
    },
}

M.FreeFormSectionLayoutConfiguration = {
    type = "structure",
    members = {
        Elements = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SectionLayoutConfiguration = {
    type = "structure",
    members = {
        FreeFormLayout = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BodySectionContent = {
    type = "structure",
    members = {
        Layout = {
            type = "structure",
        },
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
        After = {
            type = "structure",
        },
    },
}

M.ColumnSort = {
    type = "structure",
    members = {
        SortBy = {
            type = "structure",
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
        AggregationFunction = {
            type = "structure",
        },
    },
}

M.BodySectionDynamicCategoryDimensionConfiguration = {
    type = "structure",
    members = {
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        SortByMetrics = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BodySectionDynamicNumericDimensionConfiguration = {
    type = "structure",
    members = {
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        SortByMetrics = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BodySectionRepeatDimensionConfiguration = {
    type = "structure",
    members = {
        DynamicCategoryDimensionConfiguration = {
            type = "structure",
        },
        DynamicNumericDimensionConfiguration = {
            type = "structure",
        },
    },
}

M.BodySectionRepeatPageBreakConfiguration = {
    type = "structure",
    members = {
        After = {
            type = "structure",
        },
    },
}

M.BodySectionRepeatConfiguration = {
    type = "structure",
    members = {
        DimensionConfigurations = {
            type = "list",
            member_type = "structure",
        },
        PageBreakConfiguration = {
            type = "structure",
        },
        NonRepeatingVisuals = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SectionStyle = {
    type = "structure",
    members = {
        Height = {
            type = "string",
        },
        Padding = {
            type = "structure",
        },
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
        Content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Style = {
            type = "structure",
        },
        PageBreakConfiguration = {
            type = "structure",
        },
        RepeatConfiguration = {
            type = "structure",
        },
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
        Layout = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Style = {
            type = "structure",
        },
    },
}

M.SectionBasedLayoutConfiguration = {
    type = "structure",
    members = {
        HeaderSections = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        BodySections = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        FooterSections = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        CanvasSizeOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LayoutConfiguration = {
    type = "structure",
    members = {
        GridLayout = {
            type = "structure",
        },
        FreeFormLayout = {
            type = "structure",
        },
        SectionBasedLayout = {
            type = "structure",
        },
    },
}

M.Layout = {
    type = "structure",
    members = {
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        },
        SourceParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = {
            type = "structure",
        },
        ControlTitleFormatText = {
            type = "structure",
        },
    },
}

M.ParameterSelectableValues = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "string",
        },
        LinkToDataSetColumn = {
            type = "structure",
        },
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
        },
        SourceParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        SelectableValues = {
            type = "structure",
        },
        CascadingControlConfiguration = {
            type = "structure",
        },
        CommitMode = {
            type = "string",
        },
        ControlSortConfigurations = {
            type = "list",
            member_type = "structure",
        },
        ControlTitleFormatText = {
            type = "structure",
        },
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
        },
        SourceParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        SelectableValues = {
            type = "structure",
        },
        CascadingControlConfiguration = {
            type = "structure",
        },
        ControlSortConfigurations = {
            type = "list",
            member_type = "structure",
        },
        ControlTitleFormatText = {
            type = "structure",
        },
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
        },
        SourceParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = {
            type = "structure",
        },
        MaximumValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MinimumValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        StepSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ControlTitleFormatText = {
            type = "structure",
        },
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
        DisplayOptions = {
            type = "structure",
        },
        ControlTitleFormatText = {
            type = "structure",
        },
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
        },
        SourceParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOptions = {
            type = "structure",
        },
        ControlTitleFormatText = {
            type = "structure",
        },
    },
}

M.ParameterControl = {
    type = "structure",
    members = {
        DateTimePicker = {
            type = "structure",
        },
        List = {
            type = "structure",
        },
        Dropdown = {
            type = "structure",
        },
        TextField = {
            type = "structure",
        },
        TextArea = {
            type = "structure",
        },
        Slider = {
            type = "structure",
        },
    },
}

M.SheetControlLayoutConfiguration = {
    type = "structure",
    members = {
        GridLayout = {
            type = "structure",
        },
    },
}

M.SheetControlLayout = {
    type = "structure",
    members = {
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        TextBoxMenuOption = {
            type = "structure",
        },
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
        Interactions = {
            type = "structure",
        },
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
            member_type = "string",
        },
        SelectedFieldOptions = {
            type = "string",
        },
        SelectedColumns = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        TargetVisualOptions = {
            type = "string",
        },
    },
}

M.FilterOperationTargetVisualsConfiguration = {
    type = "structure",
    members = {
        SameSheetTargetVisualConfiguration = {
            type = "structure",
        },
    },
}

M.CustomActionFilterOperation = {
    type = "structure",
    members = {
        SelectedFieldsConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TargetVisualsConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.VisualCustomActionOperation = {
    type = "structure",
    members = {
        FilterOperation = {
            type = "structure",
        },
        NavigationOperation = {
            type = "structure",
        },
        URLOperation = {
            type = "structure",
        },
        SetParametersOperation = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        Maximum = {
            type = "number",
        },
    },
}

M.AxisDisplayRange = {
    type = "structure",
    members = {
        MinMax = {
            type = "structure",
        },
        DataDriven = {
            type = "structure",
        },
    },
}

M.AxisLinearScale = {
    type = "structure",
    members = {
        StepCount = {
            type = "number",
        },
        StepSize = {
            type = "number",
        },
    },
}

M.AxisLogarithmicScale = {
    type = "structure",
    members = {
        Base = {
            type = "number",
        },
    },
}

M.AxisScale = {
    type = "structure",
    members = {
        Linear = {
            type = "structure",
        },
        Logarithmic = {
            type = "structure",
        },
    },
}

M.NumericAxisOptions = {
    type = "structure",
    members = {
        Scale = {
            type = "structure",
        },
        Range = {
            type = "structure",
        },
    },
}

M.AxisDataOptions = {
    type = "structure",
    members = {
        NumericAxisOptions = {
            type = "structure",
        },
        DateAxisOptions = {
            type = "structure",
        },
    },
}

M.PercentVisibleRange = {
    type = "structure",
    members = {
        From = {
            type = "number",
        },
        To = {
            type = "number",
        },
    },
}

M.VisibleRangeOptions = {
    type = "structure",
    members = {
        PercentRange = {
            type = "structure",
        },
    },
}

M.ScrollBarOptions = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        VisibleRange = {
            type = "structure",
        },
    },
}

M.AxisTickLabelOptions = {
    type = "structure",
    members = {
        LabelOptions = {
            type = "structure",
        },
        RotationAngle = {
            type = "number",
        },
    },
}

M.AxisDisplayOptions = {
    type = "structure",
    members = {
        TickLabelOptions = {
            type = "structure",
        },
        AxisLineVisibility = {
            type = "string",
        },
        GridLineVisibility = {
            type = "string",
        },
        DataOptions = {
            type = "structure",
        },
        ScrollbarOptions = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AxisLabelOptions = {
    type = "structure",
    members = {
        FontConfiguration = {
            type = "structure",
        },
        CustomLabel = {
            type = "string",
        },
        ApplyTo = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
        FieldLabelType = {
            type = "structure",
        },
        DataPathLabelType = {
            type = "structure",
        },
        RangeEndsLabelType = {
            type = "structure",
        },
        MinimumLabelType = {
            type = "structure",
        },
        MaximumLabelType = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Position = {
            type = "string",
        },
        LabelContent = {
            type = "string",
        },
        LabelFontConfiguration = {
            type = "structure",
        },
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
        DecalSettings = {
            type = "structure",
        },
        BorderSettings = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        HierarchyId = {
            type = "string",
        },
        FormatConfiguration = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DateGranularity = {
            type = "string",
        },
        HierarchyId = {
            type = "string",
        },
        FormatConfiguration = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        HierarchyId = {
            type = "string",
        },
        FormatConfiguration = {
            type = "structure",
        },
    },
}

M.DimensionField = {
    type = "structure",
    members = {
        NumericalDimensionField = {
            type = "structure",
        },
        CategoricalDimensionField = {
            type = "structure",
        },
        DateDimensionField = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AggregationFunction = {
            type = "string",
        },
        FormatConfiguration = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AggregationFunction = {
            type = "string",
        },
        FormatConfiguration = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AggregationFunction = {
            type = "structure",
        },
        FormatConfiguration = {
            type = "structure",
        },
    },
}

M.MeasureField = {
    type = "structure",
    members = {
        NumericalMeasureField = {
            type = "structure",
        },
        CategoricalMeasureField = {
            type = "structure",
        },
        DateMeasureField = {
            type = "structure",
        },
        CalculatedMeasureField = {
            type = "structure",
        },
    },
}

M.BarChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Category = {
            type = "list",
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
        Colors = {
            type = "list",
            member_type = "structure",
        },
        SmallMultiples = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BarChartFieldWells = {
    type = "structure",
    members = {
        BarChartAggregatedFieldWells = {
            type = "structure",
        },
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
        VisualMenuOption = {
            type = "structure",
        },
        ContextMenuOption = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Position = {
            type = "string",
        },
        Width = {
            type = "string",
        },
        Height = {
            type = "string",
        },
        ValueFontConfiguration = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MeasureAggregationFunction = {
            type = "structure",
        },
        Calculation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ReferenceLineDataConfiguration = {
    type = "structure",
    members = {
        StaticConfiguration = {
            type = "structure",
        },
        DynamicConfiguration = {
            type = "structure",
        },
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
        FormatConfiguration = {
            type = "structure",
        },
    },
}

M.ReferenceLineLabelVerticalPosition = {
    ABOVE = "ABOVE",
    BELOW = "BELOW",
}

M.ReferenceLineLabelConfiguration = {
    type = "structure",
    members = {
        ValueLabelConfiguration = {
            type = "structure",
        },
        CustomLabelConfiguration = {
            type = "structure",
        },
        FontConfiguration = {
            type = "structure",
        },
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
        DataConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StyleConfiguration = {
            type = "structure",
        },
        LabelConfiguration = {
            type = "structure",
        },
    },
}

M.BarChartSeriesSettings = {
    type = "structure",
    members = {
        DecalSettings = {
            type = "structure",
        },
        BorderSettings = {
            type = "structure",
        },
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
        Settings = {
            type = "structure",
        },
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
        Settings = {
            type = "structure",
        },
    },
}

M.BarSeriesItem = {
    type = "structure",
    members = {
        FieldBarSeriesItem = {
            type = "structure",
        },
        DataFieldBarSeriesItem = {
            type = "structure",
        },
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
        FontConfiguration = {
            type = "structure",
        },
        HorizontalTextAlignment = {
            type = "string",
        },
    },
}

M.PanelConfiguration = {
    type = "structure",
    members = {
        Title = {
            type = "structure",
        },
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
            type = "number",
        },
        MaxVisibleColumns = {
            type = "number",
        },
        PanelConfiguration = {
            type = "structure",
        },
        XAxis = {
            type = "structure",
        },
        YAxis = {
            type = "structure",
        },
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
            type = "number",
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
        FieldSort = {
            type = "structure",
        },
        ColumnSort = {
            type = "structure",
        },
    },
}

M.BarChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member_type = "structure",
        },
        CategoryItemsLimit = {
            type = "structure",
        },
        ColorSort = {
            type = "list",
            member_type = "structure",
        },
        ColorItemsLimit = {
            type = "structure",
        },
        SmallMultiplesSort = {
            type = "list",
            member_type = "structure",
        },
        SmallMultiplesLimitConfiguration = {
            type = "structure",
        },
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
        Column = {
            type = "structure",
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
        Aggregation = {
            type = "structure",
        },
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
        FieldTooltipItem = {
            type = "structure",
        },
        ColumnTooltipItem = {
            type = "structure",
        },
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
            member_type = "structure",
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
        FieldBasedTooltip = {
            type = "structure",
        },
        SheetTooltip = {
            type = "structure",
        },
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
        DataPathType = {
            type = "structure",
        },
    },
}

M.DataPathColor = {
    type = "structure",
    members = {
        Element = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
    },
}

M.BarChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        Orientation = {
            type = "string",
        },
        BarsArrangement = {
            type = "string",
        },
        VisualPalette = {
            type = "structure",
        },
        SmallMultiplesOptions = {
            type = "structure",
        },
        CategoryAxis = {
            type = "structure",
        },
        CategoryLabelOptions = {
            type = "structure",
        },
        ValueAxis = {
            type = "structure",
        },
        ValueLabelOptions = {
            type = "structure",
        },
        ColorLabelOptions = {
            type = "structure",
        },
        DefaultSeriesSettings = {
            type = "structure",
        },
        Series = {
            type = "list",
            member_type = "structure",
        },
        Legend = {
            type = "structure",
        },
        DataLabels = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        ReferenceLines = {
            type = "list",
            member_type = "structure",
        },
        ContributionAnalysisDefaults = {
            type = "list",
            member_type = "structure",
        },
        Interactions = {
            type = "structure",
        },
    },
}

M.CategoryDrillDownFilter = {
    type = "structure",
    members = {
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CategoryValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NumericEqualityDrillDownFilter = {
    type = "structure",
    members = {
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TimeRangeDrillDownFilter = {
    type = "structure",
    members = {
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        NumericEqualityFilter = {
            type = "structure",
        },
        CategoryFilter = {
            type = "structure",
        },
        TimeRangeFilter = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DrillDownFilters = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DrillDownFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ColumnHierarchy = {
    type = "structure",
    members = {
        ExplicitHierarchy = {
            type = "structure",
        },
        DateTimeHierarchy = {
            type = "structure",
        },
        PredefinedHierarchy = {
            type = "structure",
        },
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
        FormatText = {
            type = "structure",
        },
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
        FormatText = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
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
        StyleOptions = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BoxPlotFieldWells = {
    type = "structure",
    members = {
        BoxPlotAggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.PaginationConfiguration = {
    type = "structure",
    members = {
        PageSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        PageNumber = {
            type = "number",
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
            member_type = "structure",
        },
        PaginationConfiguration = {
            type = "structure",
        },
    },
}

M.BoxPlotChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        BoxPlotOptions = {
            type = "structure",
        },
        CategoryAxis = {
            type = "structure",
        },
        CategoryLabelOptions = {
            type = "structure",
        },
        PrimaryYAxisDisplayOptions = {
            type = "structure",
        },
        PrimaryYAxisLabelOptions = {
            type = "structure",
        },
        Legend = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        ReferenceLines = {
            type = "list",
            member_type = "structure",
        },
        VisualPalette = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
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
        LineStyleSettings = {
            type = "structure",
        },
        MarkerStyleSettings = {
            type = "structure",
        },
        DecalSettings = {
            type = "structure",
        },
        BorderSettings = {
            type = "structure",
        },
    },
}

M.ComboChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Category = {
            type = "list",
            member_type = "structure",
        },
        BarValues = {
            type = "list",
            member_type = "structure",
        },
        Colors = {
            type = "list",
            member_type = "structure",
        },
        LineValues = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ComboChartFieldWells = {
    type = "structure",
    members = {
        ComboChartAggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.ComboChartSeriesSettings = {
    type = "structure",
    members = {
        LineStyleSettings = {
            type = "structure",
        },
        MarkerStyleSettings = {
            type = "structure",
        },
        DecalSettings = {
            type = "structure",
        },
        BorderSettings = {
            type = "structure",
        },
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
        Settings = {
            type = "structure",
        },
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
        Settings = {
            type = "structure",
        },
    },
}

M.ComboSeriesItem = {
    type = "structure",
    members = {
        FieldComboSeriesItem = {
            type = "structure",
        },
        DataFieldComboSeriesItem = {
            type = "structure",
        },
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
        YAxisOptions = {
            type = "structure",
        },
    },
}

M.ComboChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member_type = "structure",
        },
        CategoryItemsLimit = {
            type = "structure",
        },
        ColorSort = {
            type = "list",
            member_type = "structure",
        },
        ColorItemsLimit = {
            type = "structure",
        },
    },
}

M.ComboChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        BarsArrangement = {
            type = "string",
        },
        CategoryAxis = {
            type = "structure",
        },
        CategoryLabelOptions = {
            type = "structure",
        },
        PrimaryYAxisDisplayOptions = {
            type = "structure",
        },
        PrimaryYAxisLabelOptions = {
            type = "structure",
        },
        SecondaryYAxisDisplayOptions = {
            type = "structure",
        },
        SecondaryYAxisLabelOptions = {
            type = "structure",
        },
        SingleAxisOptions = {
            type = "structure",
        },
        ColorLabelOptions = {
            type = "structure",
        },
        DefaultSeriesSettings = {
            type = "structure",
        },
        Series = {
            type = "list",
            member_type = "structure",
        },
        Legend = {
            type = "structure",
        },
        BarDataLabels = {
            type = "structure",
        },
        LineDataLabels = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        ReferenceLines = {
            type = "list",
            member_type = "structure",
        },
        VisualPalette = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
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
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.FilledMapAggregatedFieldWells = {
    type = "structure",
    members = {
        Geospatial = {
            type = "list",
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FilledMapFieldWells = {
    type = "structure",
    members = {
        FilledMapAggregatedFieldWells = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.GeospatialCoordinateBounds = {
    type = "structure",
    members = {
        North = {
            type = "number",
            traits = {
                required = true,
            },
        },
        South = {
            type = "number",
            traits = {
                required = true,
            },
        },
        West = {
            type = "number",
            traits = {
                required = true,
            },
        },
        East = {
            type = "number",
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
        Bounds = {
            type = "structure",
        },
        MapZoomMode = {
            type = "string",
        },
    },
}

M.FilledMapConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        Legend = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        WindowOptions = {
            type = "structure",
        },
        MapStyleOptions = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
    },
}

M.GradientStop = {
    type = "structure",
    members = {
        GradientOffset = {
            type = "number",
            traits = {
                required = true,
            },
        },
        DataValue = {
            type = "number",
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
            member_type = "structure",
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
        Color = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Solid = {
            type = "structure",
        },
        Gradient = {
            type = "structure",
        },
    },
}

M.ShapeConditionalFormat = {
    type = "structure",
    members = {
        BackgroundColor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Format = {
            type = "structure",
        },
    },
}

M.FilledMapConditionalFormattingOption = {
    type = "structure",
    members = {
        Shape = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FilledMapConditionalFormatting = {
    type = "structure",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Longitude = {
            type = "number",
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
        GeocoderHierarchy = {
            type = "structure",
        },
        Coordinate = {
            type = "structure",
        },
    },
}

M.GeocodePreference = {
    type = "structure",
    members = {
        RequestKey = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Preference = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        ConditionalFormatting = {
            type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        VisualContentAltText = {
            type = "string",
        },
        GeocodingPreferences = {
            type = "list",
            member_type = "structure",
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
        LabelFontConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FunnelChartFieldWells = {
    type = "structure",
    members = {
        FunnelChartAggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.FunnelChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member_type = "structure",
        },
        CategoryItemsLimit = {
            type = "structure",
        },
    },
}

M.FunnelChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        CategoryLabelOptions = {
            type = "structure",
        },
        ValueLabelOptions = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        DataLabelOptions = {
            type = "structure",
        },
        VisualPalette = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        TargetValues = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        Max = {
            type = "number",
        },
    },
}

M.ArcAxisConfiguration = {
    type = "structure",
    members = {
        Range = {
            type = "structure",
        },
        ReserveRange = {
            type = "number",
        },
    },
}

M.ComparisonFormatConfiguration = {
    type = "structure",
    members = {
        NumberDisplayFormatConfiguration = {
            type = "structure",
        },
        PercentageDisplayFormatConfiguration = {
            type = "structure",
        },
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
        ComparisonFormat = {
            type = "structure",
        },
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
        Comparison = {
            type = "structure",
        },
        ArcAxis = {
            type = "structure",
        },
        Arc = {
            type = "structure",
        },
        PrimaryValueFontConfiguration = {
            type = "structure",
        },
    },
}

M.GaugeChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        GaugeChartOptions = {
            type = "structure",
        },
        DataLabels = {
            type = "structure",
        },
        TooltipOptions = {
            type = "structure",
        },
        VisualPalette = {
            type = "structure",
        },
        ColorConfiguration = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
    },
}

M.GaugeChartArcConditionalFormatting = {
    type = "structure",
    members = {
        ForegroundColor = {
            type = "structure",
        },
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
        IconOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Color = {
            type = "string",
        },
        DisplayConfiguration = {
            type = "structure",
        },
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
        IconSet = {
            type = "structure",
        },
        CustomCondition = {
            type = "structure",
        },
    },
}

M.GaugeChartPrimaryValueConditionalFormatting = {
    type = "structure",
    members = {
        TextColor = {
            type = "structure",
        },
        Icon = {
            type = "structure",
        },
    },
}

M.GaugeChartConditionalFormattingOption = {
    type = "structure",
    members = {
        PrimaryValue = {
            type = "structure",
        },
        Arc = {
            type = "structure",
        },
    },
}

M.GaugeChartConditionalFormatting = {
    type = "structure",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member_type = "structure",
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        ConditionalFormatting = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
        Colors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GeospatialMapFieldWells = {
    type = "structure",
    members = {
        GeospatialMapAggregatedFieldWells = {
            type = "structure",
        },
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
        SimpleClusterMarker = {
            type = "structure",
        },
    },
}

M.ClusterMarkerConfiguration = {
    type = "structure",
    members = {
        ClusterMarker = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.GeospatialHeatmapConfiguration = {
    type = "structure",
    members = {
        HeatmapColor = {
            type = "structure",
        },
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
        ClusterMarkerConfiguration = {
            type = "structure",
        },
        HeatmapConfiguration = {
            type = "structure",
        },
    },
}

M.GeospatialMapConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        Legend = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        WindowOptions = {
            type = "structure",
        },
        MapStyleOptions = {
            type = "structure",
        },
        PointStyleOptions = {
            type = "structure",
        },
        VisualPalette = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        VisualContentAltText = {
            type = "string",
        },
        GeocodingPreferences = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ColorScale = {
    type = "structure",
    members = {
        Colors = {
            type = "list",
            member_type = "structure",
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
        NullValueColor = {
            type = "structure",
        },
    },
}

M.HeatMapAggregatedFieldWells = {
    type = "structure",
    members = {
        Rows = {
            type = "list",
            member_type = "structure",
        },
        Columns = {
            type = "list",
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.HeatMapFieldWells = {
    type = "structure",
    members = {
        HeatMapAggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.HeatMapSortConfiguration = {
    type = "structure",
    members = {
        HeatMapRowSort = {
            type = "list",
            member_type = "structure",
        },
        HeatMapColumnSort = {
            type = "list",
            member_type = "structure",
        },
        HeatMapRowItemsLimitConfiguration = {
            type = "structure",
        },
        HeatMapColumnItemsLimitConfiguration = {
            type = "structure",
        },
    },
}

M.HeatMapConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        RowAxisDisplayOptions = {
            type = "structure",
        },
        RowLabelOptions = {
            type = "structure",
        },
        ColumnAxisDisplayOptions = {
            type = "structure",
        },
        ColumnLabelOptions = {
            type = "structure",
        },
        ColorScale = {
            type = "structure",
        },
        Legend = {
            type = "structure",
        },
        DataLabels = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.BinWidthOptions = {
    type = "structure",
    members = {
        Value = {
            type = "number",
        },
        BinCountLimit = {
            type = "number",
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
        BinCount = {
            type = "structure",
        },
        BinWidth = {
            type = "structure",
        },
        StartValue = {
            type = "number",
        },
    },
}

M.HistogramAggregatedFieldWells = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.HistogramFieldWells = {
    type = "structure",
    members = {
        HistogramAggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.HistogramConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        XAxisDisplayOptions = {
            type = "structure",
        },
        XAxisLabelOptions = {
            type = "structure",
        },
        YAxisDisplayOptions = {
            type = "structure",
        },
        BinOptions = {
            type = "structure",
        },
        DataLabels = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        VisualPalette = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
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
        Time = {
            type = "structure",
        },
        Value = {
            type = "structure",
        },
        PeriodsForward = {
            type = "number",
        },
        PeriodsBackward = {
            type = "number",
        },
        UpperBoundary = {
            type = "number",
        },
        LowerBoundary = {
            type = "number",
        },
        PredictionInterval = {
            type = "number",
        },
        Seasonality = {
            type = "string",
        },
        CustomSeasonalityValue = {
            type = "number",
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
        Time = {
            type = "structure",
        },
        Value = {
            type = "structure",
        },
        PeriodSize = {
            type = "number",
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
        Time = {
            type = "structure",
        },
        Value = {
            type = "structure",
        },
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
        Time = {
            type = "structure",
        },
        FromValue = {
            type = "structure",
        },
        TargetValue = {
            type = "structure",
        },
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
        Time = {
            type = "structure",
        },
        Value = {
            type = "structure",
        },
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
        Time = {
            type = "structure",
        },
        Value = {
            type = "structure",
        },
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
        Time = {
            type = "structure",
        },
        Category = {
            type = "structure",
        },
        Value = {
            type = "structure",
        },
        MoverSize = {
            type = "number",
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
        Category = {
            type = "structure",
        },
        Value = {
            type = "structure",
        },
        ResultSize = {
            type = "number",
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
        Value = {
            type = "structure",
        },
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
        Category = {
            type = "structure",
        },
    },
}

M.Computation = {
    type = "structure",
    members = {
        TopBottomRanked = {
            type = "structure",
        },
        TopBottomMovers = {
            type = "structure",
        },
        TotalAggregation = {
            type = "structure",
        },
        MaximumMinimum = {
            type = "structure",
        },
        MetricComparison = {
            type = "structure",
        },
        PeriodOverPeriod = {
            type = "structure",
        },
        PeriodToDate = {
            type = "structure",
        },
        GrowthRate = {
            type = "structure",
        },
        UniqueValues = {
            type = "structure",
        },
        Forecast = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        CustomNarrative = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        InsightConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        TargetValues = {
            type = "list",
            member_type = "structure",
        },
        TrendGroups = {
            type = "list",
            member_type = "structure",
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
        StandardLayout = {
            type = "structure",
        },
    },
}

M.KPIOptions = {
    type = "structure",
    members = {
        ProgressBar = {
            type = "structure",
        },
        TrendArrows = {
            type = "structure",
        },
        SecondaryValue = {
            type = "structure",
        },
        Comparison = {
            type = "structure",
        },
        PrimaryValueDisplayType = {
            type = "string",
        },
        PrimaryValueFontConfiguration = {
            type = "structure",
        },
        SecondaryValueFontConfiguration = {
            type = "structure",
        },
        Sparkline = {
            type = "structure",
        },
        VisualLayoutOptions = {
            type = "structure",
        },
    },
}

M.KPISortConfiguration = {
    type = "structure",
    members = {
        TrendGroupSort = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.KPIConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        KPIOptions = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
    },
}

M.KPIActualValueConditionalFormatting = {
    type = "structure",
    members = {
        TextColor = {
            type = "structure",
        },
        Icon = {
            type = "structure",
        },
    },
}

M.KPIComparisonValueConditionalFormatting = {
    type = "structure",
    members = {
        TextColor = {
            type = "structure",
        },
        Icon = {
            type = "structure",
        },
    },
}

M.KPIPrimaryValueConditionalFormatting = {
    type = "structure",
    members = {
        TextColor = {
            type = "structure",
        },
        Icon = {
            type = "structure",
        },
    },
}

M.KPIProgressBarConditionalFormatting = {
    type = "structure",
    members = {
        ForegroundColor = {
            type = "structure",
        },
    },
}

M.KPIConditionalFormattingOption = {
    type = "structure",
    members = {
        PrimaryValue = {
            type = "structure",
        },
        ProgressBar = {
            type = "structure",
        },
        ActualValue = {
            type = "structure",
        },
        ComparisonValue = {
            type = "structure",
        },
    },
}

M.KPIConditionalFormatting = {
    type = "structure",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member_type = "structure",
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        ConditionalFormatting = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.LayerCustomActionOperation = {
    type = "structure",
    members = {
        FilterOperation = {
            type = "structure",
        },
        NavigationOperation = {
            type = "structure",
        },
        URLOperation = {
            type = "structure",
        },
        SetParametersOperation = {
            type = "structure",
        },
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
            member_type = "structure",
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
        StaticFileDataSource = {
            type = "structure",
        },
    },
}

M.GeospatialLayerColorField = {
    type = "structure",
    members = {
        ColorDimensionsFields = {
            type = "list",
            member_type = "structure",
        },
        ColorValuesFields = {
            type = "list",
            member_type = "structure",
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
        Column = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FormatConfiguration = {
            type = "structure",
        },
    },
}

M.GeospatialLayerJoinDefinition = {
    type = "structure",
    members = {
        ShapeKeyField = {
            type = "string",
        },
        DatasetKeyField = {
            type = "structure",
        },
        ColorField = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.GeospatialNullDataSettings = {
    type = "structure",
    members = {
        SymbolStyle = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GeospatialCategoricalColor = {
    type = "structure",
    members = {
        CategoryDataColors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NullDataVisibility = {
            type = "string",
        },
        NullDataSettings = {
            type = "structure",
        },
        DefaultOpacity = {
            type = "number",
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
            type = "number",
            traits = {
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NullDataVisibility = {
            type = "string",
        },
        NullDataSettings = {
            type = "structure",
        },
        DefaultOpacity = {
            type = "number",
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
        Solid = {
            type = "structure",
        },
        Gradient = {
            type = "structure",
        },
        Categorical = {
            type = "structure",
        },
    },
}

M.GeospatialLineWidth = {
    type = "structure",
    members = {
        LineWidth = {
            type = "number",
        },
    },
}

M.GeospatialLineSymbolStyle = {
    type = "structure",
    members = {
        FillColor = {
            type = "structure",
        },
        LineWidth = {
            type = "structure",
        },
    },
}

M.GeospatialLineStyle = {
    type = "structure",
    members = {
        LineSymbolStyle = {
            type = "structure",
        },
    },
}

M.GeospatialLineLayer = {
    type = "structure",
    members = {
        Style = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GeospatialCircleRadius = {
    type = "structure",
    members = {
        Radius = {
            type = "number",
        },
    },
}

M.GeospatialCircleSymbolStyle = {
    type = "structure",
    members = {
        FillColor = {
            type = "structure",
        },
        StrokeColor = {
            type = "structure",
        },
        StrokeWidth = {
            type = "structure",
        },
        CircleRadius = {
            type = "structure",
        },
    },
}

M.GeospatialPointStyle = {
    type = "structure",
    members = {
        CircleSymbolStyle = {
            type = "structure",
        },
    },
}

M.GeospatialPointLayer = {
    type = "structure",
    members = {
        Style = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GeospatialPolygonSymbolStyle = {
    type = "structure",
    members = {
        FillColor = {
            type = "structure",
        },
        StrokeColor = {
            type = "structure",
        },
        StrokeWidth = {
            type = "structure",
        },
    },
}

M.GeospatialPolygonStyle = {
    type = "structure",
    members = {
        PolygonSymbolStyle = {
            type = "structure",
        },
    },
}

M.GeospatialPolygonLayer = {
    type = "structure",
    members = {
        Style = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GeospatialLayerDefinition = {
    type = "structure",
    members = {
        PointLayer = {
            type = "structure",
        },
        LineLayer = {
            type = "structure",
        },
        PolygonLayer = {
            type = "structure",
        },
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
        DataSource = {
            type = "structure",
        },
        Label = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        LayerDefinition = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        JoinDefinition = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
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
        Bounds = {
            type = "structure",
        },
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
        Legend = {
            type = "structure",
        },
        MapLayers = {
            type = "list",
            member_type = "structure",
        },
        MapState = {
            type = "structure",
        },
        MapStyle = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
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

M.LineChartDefaultSeriesSettings = {
    type = "structure",
    members = {
        AxisBinding = {
            type = "string",
        },
        LineStyleSettings = {
            type = "structure",
        },
        MarkerStyleSettings = {
            type = "structure",
        },
        DecalSettings = {
            type = "structure",
        },
    },
}

M.LineChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Category = {
            type = "list",
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
        Colors = {
            type = "list",
            member_type = "structure",
        },
        SmallMultiples = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LineChartFieldWells = {
    type = "structure",
    members = {
        LineChartAggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.TimeBasedForecastProperties = {
    type = "structure",
    members = {
        PeriodsForward = {
            type = "number",
        },
        PeriodsBackward = {
            type = "number",
        },
        UpperBoundary = {
            type = "number",
        },
        LowerBoundary = {
            type = "number",
        },
        PredictionInterval = {
            type = "number",
        },
        Seasonality = {
            type = "number",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ForecastScenario = {
    type = "structure",
    members = {
        WhatIfPointScenario = {
            type = "structure",
        },
        WhatIfRangeScenario = {
            type = "structure",
        },
    },
}

M.ForecastConfiguration = {
    type = "structure",
    members = {
        ForecastProperties = {
            type = "structure",
        },
        Scenario = {
            type = "structure",
        },
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
        AxisOptions = {
            type = "structure",
        },
        MissingDataConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LineChartSeriesSettings = {
    type = "structure",
    members = {
        LineStyleSettings = {
            type = "structure",
        },
        MarkerStyleSettings = {
            type = "structure",
        },
        DecalSettings = {
            type = "structure",
        },
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
        Settings = {
            type = "structure",
        },
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
        Settings = {
            type = "structure",
        },
    },
}

M.SeriesItem = {
    type = "structure",
    members = {
        FieldSeriesItem = {
            type = "structure",
        },
        DataFieldSeriesItem = {
            type = "structure",
        },
    },
}

M.LineChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member_type = "structure",
        },
        CategoryItemsLimitConfiguration = {
            type = "structure",
        },
        ColorItemsLimitConfiguration = {
            type = "structure",
        },
        SmallMultiplesSort = {
            type = "list",
            member_type = "structure",
        },
        SmallMultiplesLimitConfiguration = {
            type = "structure",
        },
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
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        ForecastConfigurations = {
            type = "list",
            member_type = "structure",
        },
        Type = {
            type = "string",
        },
        SmallMultiplesOptions = {
            type = "structure",
        },
        XAxisDisplayOptions = {
            type = "structure",
        },
        XAxisLabelOptions = {
            type = "structure",
        },
        PrimaryYAxisDisplayOptions = {
            type = "structure",
        },
        PrimaryYAxisLabelOptions = {
            type = "structure",
        },
        SecondaryYAxisDisplayOptions = {
            type = "structure",
        },
        SecondaryYAxisLabelOptions = {
            type = "structure",
        },
        SingleAxisOptions = {
            type = "structure",
        },
        DefaultSeriesSettings = {
            type = "structure",
        },
        Series = {
            type = "list",
            member_type = "structure",
        },
        Legend = {
            type = "structure",
        },
        DataLabels = {
            type = "structure",
        },
        ReferenceLines = {
            type = "list",
            member_type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        ContributionAnalysisDefaults = {
            type = "list",
            member_type = "structure",
        },
        VisualPalette = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
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
        ArcOptions = {
            type = "structure",
        },
        DonutCenterOptions = {
            type = "structure",
        },
    },
}

M.PieChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Category = {
            type = "list",
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
        SmallMultiples = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PieChartFieldWells = {
    type = "structure",
    members = {
        PieChartAggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.PieChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member_type = "structure",
        },
        CategoryItemsLimit = {
            type = "structure",
        },
        SmallMultiplesSort = {
            type = "list",
            member_type = "structure",
        },
        SmallMultiplesLimitConfiguration = {
            type = "structure",
        },
    },
}

M.PieChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        DonutOptions = {
            type = "structure",
        },
        SmallMultiplesOptions = {
            type = "structure",
        },
        CategoryLabelOptions = {
            type = "structure",
        },
        ValueLabelOptions = {
            type = "structure",
        },
        Legend = {
            type = "structure",
        },
        DataLabels = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        VisualPalette = {
            type = "structure",
        },
        ContributionAnalysisDefaults = {
            type = "list",
            member_type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.DashboardCustomizationVisualOptions = {
    type = "structure",
    members = {
        FieldsConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.PivotTableFieldCollapseStateOption = {
    type = "structure",
    members = {
        Target = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        DataPathOptions = {
            type = "list",
            member_type = "structure",
        },
        CollapseStateOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PivotTableAggregatedFieldWells = {
    type = "structure",
    members = {
        Rows = {
            type = "list",
            member_type = "structure",
        },
        Columns = {
            type = "list",
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PivotTableFieldWells = {
    type = "structure",
    members = {
        PivotTableAggregatedFieldWells = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PivotTableSortBy = {
    type = "structure",
    members = {
        Field = {
            type = "structure",
        },
        Column = {
            type = "structure",
        },
        DataPath = {
            type = "structure",
        },
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
        SortBy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PivotTableSortConfiguration = {
    type = "structure",
    members = {
        FieldSortOptions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        Style = {
            type = "string",
        },
    },
}

M.TableSideBorderOptions = {
    type = "structure",
    members = {
        InnerVertical = {
            type = "structure",
        },
        InnerHorizontal = {
            type = "structure",
        },
        Left = {
            type = "structure",
        },
        Right = {
            type = "structure",
        },
        Top = {
            type = "structure",
        },
        Bottom = {
            type = "structure",
        },
    },
}

M.GlobalTableBorderOptions = {
    type = "structure",
    members = {
        UniformBorder = {
            type = "structure",
        },
        SideSpecificBorder = {
            type = "structure",
        },
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
        FontConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        Border = {
            type = "structure",
        },
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
            member_type = "string",
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
        ColumnHeaderStyle = {
            type = "structure",
        },
        RowHeaderStyle = {
            type = "structure",
        },
        CellStyle = {
            type = "structure",
        },
        RowFieldNamesStyle = {
            type = "structure",
        },
        RowAlternateColorOptions = {
            type = "structure",
        },
        CollapsedRowDimensionsVisibility = {
            type = "string",
        },
        RowsLayout = {
            type = "string",
        },
        RowsLabelOptions = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        TotalCellStyle = {
            type = "structure",
        },
        ValueCellStyle = {
            type = "structure",
        },
        MetricHeaderCellStyle = {
            type = "structure",
        },
        StyleTargets = {
            type = "list",
            member_type = "structure",
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
        TotalAggregationFunction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        TotalCellStyle = {
            type = "structure",
        },
        ValueCellStyle = {
            type = "structure",
        },
        MetricHeaderCellStyle = {
            type = "structure",
        },
        TotalAggregationOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PivotTableTotalOptions = {
    type = "structure",
    members = {
        RowSubtotalOptions = {
            type = "structure",
        },
        ColumnSubtotalOptions = {
            type = "structure",
        },
        RowTotalOptions = {
            type = "structure",
        },
        ColumnTotalOptions = {
            type = "structure",
        },
    },
}

M.PivotTableConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        TableOptions = {
            type = "structure",
        },
        TotalOptions = {
            type = "structure",
        },
        FieldOptions = {
            type = "structure",
        },
        PaginatedReportOptions = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        DashboardCustomizationVisualOptions = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        BackgroundColor = {
            type = "structure",
        },
        TextColor = {
            type = "structure",
        },
        Icon = {
            type = "structure",
        },
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
        TextFormat = {
            type = "structure",
        },
        Scope = {
            type = "structure",
        },
        Scopes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PivotTableConditionalFormattingOption = {
    type = "structure",
    members = {
        Cell = {
            type = "structure",
        },
    },
}

M.PivotTableConditionalFormatting = {
    type = "structure",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member_type = "structure",
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        ConditionalFormatting = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Measures = {
            type = "list",
            member_type = "structure",
        },
        Unaggregated = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PluginVisualItemsLimitConfiguration = {
    type = "structure",
    members = {
        ItemsLimit = {
            type = "number",
        },
    },
}

M.PluginVisualTableQuerySort = {
    type = "structure",
    members = {
        RowSort = {
            type = "list",
            member_type = "structure",
        },
        ItemsLimitConfiguration = {
            type = "structure",
        },
    },
}

M.PluginVisualSortConfiguration = {
    type = "structure",
    members = {
        PluginVisualTableQuerySort = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.PluginVisualConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "list",
            member_type = "structure",
        },
        VisualOptions = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
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
        AreaStyleSettings = {
            type = "structure",
        },
    },
}

M.RadarChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Category = {
            type = "list",
            member_type = "structure",
        },
        Color = {
            type = "list",
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RadarChartFieldWells = {
    type = "structure",
    members = {
        RadarChartAggregatedFieldWells = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        CategoryItemsLimit = {
            type = "structure",
        },
        ColorSort = {
            type = "list",
            member_type = "structure",
        },
        ColorItemsLimit = {
            type = "structure",
        },
    },
}

M.RadarChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        Shape = {
            type = "string",
        },
        BaseSeriesSettings = {
            type = "structure",
        },
        StartAngle = {
            type = "number",
        },
        VisualPalette = {
            type = "structure",
        },
        AlternateBandColorsVisibility = {
            type = "string",
        },
        AlternateBandEvenColor = {
            type = "string",
        },
        AlternateBandOddColor = {
            type = "string",
        },
        CategoryAxis = {
            type = "structure",
        },
        CategoryLabelOptions = {
            type = "structure",
        },
        ColorAxis = {
            type = "structure",
        },
        ColorLabelOptions = {
            type = "structure",
        },
        Legend = {
            type = "structure",
        },
        AxesRangeScale = {
            type = "string",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Destination = {
            type = "list",
            member_type = "structure",
        },
        Weight = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SankeyDiagramFieldWells = {
    type = "structure",
    members = {
        SankeyDiagramAggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.SankeyDiagramSortConfiguration = {
    type = "structure",
    members = {
        WeightSort = {
            type = "list",
            member_type = "structure",
        },
        SourceItemsLimit = {
            type = "structure",
        },
        DestinationItemsLimit = {
            type = "structure",
        },
    },
}

M.SankeyDiagramChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        DataLabels = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        YAxis = {
            type = "list",
            member_type = "structure",
        },
        Category = {
            type = "list",
            member_type = "structure",
        },
        Size = {
            type = "list",
            member_type = "structure",
        },
        Label = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ScatterPlotUnaggregatedFieldWells = {
    type = "structure",
    members = {
        XAxis = {
            type = "list",
            member_type = "structure",
        },
        YAxis = {
            type = "list",
            member_type = "structure",
        },
        Size = {
            type = "list",
            member_type = "structure",
        },
        Category = {
            type = "list",
            member_type = "structure",
        },
        Label = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ScatterPlotFieldWells = {
    type = "structure",
    members = {
        ScatterPlotCategoricallyAggregatedFieldWells = {
            type = "structure",
        },
        ScatterPlotUnaggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.ScatterPlotSortConfiguration = {
    type = "structure",
    members = {
        ScatterPlotLimitConfiguration = {
            type = "structure",
        },
    },
}

M.ScatterPlotConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        XAxisLabelOptions = {
            type = "structure",
        },
        XAxisDisplayOptions = {
            type = "structure",
        },
        YAxisLabelOptions = {
            type = "structure",
        },
        YAxisDisplayOptions = {
            type = "structure",
        },
        Legend = {
            type = "structure",
        },
        DataLabels = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        VisualPalette = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        SizingOptions = {
            type = "structure",
        },
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
        FontConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TableFieldLinkContentConfiguration = {
    type = "structure",
    members = {
        CustomTextContent = {
            type = "structure",
        },
        CustomIconContent = {
            type = "structure",
        },
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
        Content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TableFieldURLConfiguration = {
    type = "structure",
    members = {
        LinkConfiguration = {
            type = "structure",
        },
        ImageConfiguration = {
            type = "structure",
        },
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
        URLStyling = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
        },
        Order = {
            type = "list",
            member_type = "string",
        },
        PinnedFieldOptions = {
            type = "structure",
        },
        TransposedTableOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TableAggregatedFieldWells = {
    type = "structure",
    members = {
        GroupBy = {
            type = "list",
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TableUnaggregatedFieldWells = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TableFieldWells = {
    type = "structure",
    members = {
        TableAggregatedFieldWells = {
            type = "structure",
        },
        TableUnaggregatedFieldWells = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        PaginationConfiguration = {
            type = "structure",
        },
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
        XAxisField = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        AllPointsMarker = {
            type = "structure",
        },
        MaxValueMarker = {
            type = "structure",
        },
        MinValueMarker = {
            type = "structure",
        },
    },
}

M.TableInlineVisualization = {
    type = "structure",
    members = {
        DataBars = {
            type = "structure",
        },
        Sparklines = {
            type = "structure",
        },
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
        HeaderStyle = {
            type = "structure",
        },
        CellStyle = {
            type = "structure",
        },
        RowAlternateColorOptions = {
            type = "structure",
        },
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
        TotalCellStyle = {
            type = "structure",
        },
        TotalAggregationOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TableConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        TableOptions = {
            type = "structure",
        },
        TotalOptions = {
            type = "structure",
        },
        FieldOptions = {
            type = "structure",
        },
        PaginatedReportOptions = {
            type = "structure",
        },
        TableInlineVisualizations = {
            type = "list",
            member_type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        DashboardCustomizationVisualOptions = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        TextFormat = {
            type = "structure",
        },
    },
}

M.TableRowConditionalFormatting = {
    type = "structure",
    members = {
        BackgroundColor = {
            type = "structure",
        },
        TextColor = {
            type = "structure",
        },
    },
}

M.TableConditionalFormattingOption = {
    type = "structure",
    members = {
        Cell = {
            type = "structure",
        },
        Row = {
            type = "structure",
        },
    },
}

M.TableConditionalFormatting = {
    type = "structure",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member_type = "structure",
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        ConditionalFormatting = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Sizes = {
            type = "list",
            member_type = "structure",
        },
        Colors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TreeMapFieldWells = {
    type = "structure",
    members = {
        TreeMapAggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.TreeMapSortConfiguration = {
    type = "structure",
    members = {
        TreeMapSort = {
            type = "list",
            member_type = "structure",
        },
        TreeMapGroupItemsLimitConfiguration = {
            type = "structure",
        },
    },
}

M.TreeMapConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        GroupLabelOptions = {
            type = "structure",
        },
        SizeLabelOptions = {
            type = "structure",
        },
        ColorLabelOptions = {
            type = "structure",
        },
        ColorScale = {
            type = "structure",
        },
        Legend = {
            type = "structure",
        },
        DataLabels = {
            type = "structure",
        },
        Tooltip = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
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
        GroupColorConfiguration = {
            type = "structure",
        },
    },
}

M.WaterfallChartAggregatedFieldWells = {
    type = "structure",
    members = {
        Categories = {
            type = "list",
            member_type = "structure",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
        Breakdowns = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.WaterfallChartFieldWells = {
    type = "structure",
    members = {
        WaterfallChartAggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.WaterfallChartSortConfiguration = {
    type = "structure",
    members = {
        CategorySort = {
            type = "list",
            member_type = "structure",
        },
        BreakdownItemsLimit = {
            type = "structure",
        },
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
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        WaterfallChartOptions = {
            type = "structure",
        },
        CategoryAxisLabelOptions = {
            type = "structure",
        },
        CategoryAxisDisplayOptions = {
            type = "structure",
        },
        PrimaryYAxisLabelOptions = {
            type = "structure",
        },
        PrimaryYAxisDisplayOptions = {
            type = "structure",
        },
        Legend = {
            type = "structure",
        },
        DataLabels = {
            type = "structure",
        },
        VisualPalette = {
            type = "structure",
        },
        ColorConfiguration = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Size = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.WordCloudFieldWells = {
    type = "structure",
    members = {
        WordCloudAggregatedFieldWells = {
            type = "structure",
        },
    },
}

M.WordCloudSortConfiguration = {
    type = "structure",
    members = {
        CategoryItemsLimit = {
            type = "structure",
        },
        CategorySort = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.WordCloudChartConfiguration = {
    type = "structure",
    members = {
        FieldWells = {
            type = "structure",
        },
        SortConfiguration = {
            type = "structure",
        },
        CategoryLabelOptions = {
            type = "structure",
        },
        WordCloudOptions = {
            type = "structure",
        },
        Interactions = {
            type = "structure",
        },
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
        Title = {
            type = "structure",
        },
        Subtitle = {
            type = "structure",
        },
        ChartConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ColumnHierarchies = {
            type = "list",
            member_type = "structure",
        },
        VisualContentAltText = {
            type = "string",
        },
    },
}

M.Visual = {
    type = "structure",
    members = {
        TableVisual = {
            type = "structure",
        },
        PivotTableVisual = {
            type = "structure",
        },
        BarChartVisual = {
            type = "structure",
        },
        KPIVisual = {
            type = "structure",
        },
        PieChartVisual = {
            type = "structure",
        },
        GaugeChartVisual = {
            type = "structure",
        },
        LineChartVisual = {
            type = "structure",
        },
        HeatMapVisual = {
            type = "structure",
        },
        TreeMapVisual = {
            type = "structure",
        },
        GeospatialMapVisual = {
            type = "structure",
        },
        FilledMapVisual = {
            type = "structure",
        },
        LayerMapVisual = {
            type = "structure",
        },
        FunnelChartVisual = {
            type = "structure",
        },
        ScatterPlotVisual = {
            type = "structure",
        },
        ComboChartVisual = {
            type = "structure",
        },
        BoxPlotVisual = {
            type = "structure",
        },
        WaterfallVisual = {
            type = "structure",
        },
        HistogramVisual = {
            type = "structure",
        },
        WordCloudVisual = {
            type = "structure",
        },
        InsightVisual = {
            type = "structure",
        },
        SankeyDiagramVisual = {
            type = "structure",
        },
        CustomContentVisual = {
            type = "structure",
        },
        EmptyVisual = {
            type = "structure",
        },
        RadarChartVisual = {
            type = "structure",
        },
        PluginVisual = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        FilterControls = {
            type = "list",
            member_type = "structure",
        },
        Visuals = {
            type = "list",
            member_type = "structure",
        },
        TextBoxes = {
            type = "list",
            member_type = "structure",
        },
        Images = {
            type = "list",
            member_type = "structure",
        },
        Layouts = {
            type = "list",
            member_type = "structure",
        },
        SheetControlLayouts = {
            type = "list",
            member_type = "structure",
        },
        ContentType = {
            type = "string",
        },
        CustomActionDefaults = {
            type = "structure",
        },
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
        UrlOptions = {
            type = "structure",
        },
        S3Options = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
    },
}

M.StaticFile = {
    type = "structure",
    members = {
        ImageStaticFile = {
            type = "structure",
        },
        SpatialStaticFile = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        TextBoxes = {
            type = "list",
            member_type = "structure",
        },
        Images = {
            type = "list",
            member_type = "structure",
        },
        Layouts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnalysisDefinition = {
    type = "structure",
    members = {
        DataSetIdentifierDeclarations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Sheets = {
            type = "list",
            member_type = "structure",
        },
        TooltipSheets = {
            type = "list",
            member_type = "structure",
        },
        CalculatedFields = {
            type = "list",
            member_type = "structure",
        },
        ParameterDeclarations = {
            type = "list",
            member_type = "structure",
        },
        FilterGroups = {
            type = "list",
            member_type = "structure",
        },
        ColumnConfigurations = {
            type = "list",
            member_type = "structure",
        },
        AnalysisDefaults = {
            type = "structure",
        },
        Options = {
            type = "structure",
        },
        QueryExecutionOptions = {
            type = "structure",
        },
        StaticFiles = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        SourceTemplate = {
            type = "structure",
        },
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
            type = "number",
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
                required = true,
            },
        },
    },
}

M.AnonymousUserDashboardFeatureConfigurations = {
    type = "structure",
    members = {
        SharedView = {
            type = "structure",
        },
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
            member_type = "string",
        },
        DisabledFeatures = {
            type = "list",
            member_type = "string",
        },
        FeatureConfigurations = {
            type = "structure",
        },
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
        InitialDashboardVisualId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Dashboard = {
            type = "structure",
        },
        DashboardVisual = {
            type = "structure",
        },
        QSearchBar = {
            type = "structure",
        },
        GenerativeQnA = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.SnapshotFile = {
    type = "structure",
    members = {
        SheetSelections = {
            type = "list",
            member_type = "structure",
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
        BucketConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SnapshotJobS3Result = {
    type = "structure",
    members = {
        S3DestinationConfiguration = {
            type = "structure",
        },
        S3Uri = {
            type = "string",
        },
        ErrorInfo = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SnapshotJobResultFileGroup = {
    type = "structure",
    members = {
        Files = {
            type = "list",
            member_type = "structure",
        },
        S3Results = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnonymousUserSnapshotJobResult = {
    type = "structure",
    members = {
        FileGroups = {
            type = "list",
            member_type = "structure",
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
        FirstSource = {
            type = "structure",
        },
        SecondSource = {
            type = "structure",
        },
        AppendedColumns = {
            type = "list",
            member_type = "structure",
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
        Primary = {
            type = "structure",
        },
        Secondary = {
            type = "structure",
        },
        Accent = {
            type = "structure",
        },
        Measure = {
            type = "structure",
        },
        Dimension = {
            type = "structure",
        },
        Success = {
            type = "structure",
        },
        Info = {
            type = "structure",
        },
        Warning = {
            type = "structure",
        },
        Danger = {
            type = "structure",
        },
    },
}

M.NavbarStyle = {
    type = "structure",
    members = {
        GlobalNavbar = {
            type = "structure",
        },
        ContextualNavbar = {
            type = "structure",
        },
    },
}

M.BrandElementStyle = {
    type = "structure",
    members = {
        NavbarStyle = {
            type = "structure",
        },
    },
}

M.ContextualAccentPalette = {
    type = "structure",
    members = {
        Connection = {
            type = "structure",
        },
        Visualization = {
            type = "structure",
        },
        Insight = {
            type = "structure",
        },
        Automation = {
            type = "structure",
        },
    },
}

M.ApplicationTheme = {
    type = "structure",
    members = {
        BrandColorPalette = {
            type = "structure",
        },
        ContextualAccentPalette = {
            type = "structure",
        },
        BrandElementStyle = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleCloudFormationOverridePropertyConfiguration = {
    type = "structure",
    members = {
        ResourceIdOverrideConfiguration = {
            type = "structure",
        },
        VPCConnections = {
            type = "list",
            member_type = "structure",
        },
        RefreshSchedules = {
            type = "list",
            member_type = "structure",
        },
        DataSources = {
            type = "list",
            member_type = "structure",
        },
        DataSets = {
            type = "list",
            member_type = "structure",
        },
        Themes = {
            type = "list",
            member_type = "structure",
        },
        Analyses = {
            type = "list",
            member_type = "structure",
        },
        Dashboards = {
            type = "list",
            member_type = "structure",
        },
        Folders = {
            type = "list",
            member_type = "structure",
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
        },
        ExportFormat = {
            type = "string",
        },
        IncludePermissions = {
            type = "boolean",
        },
        IncludeTags = {
            type = "boolean",
        },
    },
}

M.AssetBundleExportJobValidationStrategy = {
    type = "structure",
    members = {
        StrictModeForAllResources = {
            type = "boolean",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "structure",
            traits = {
                required = true,
            },
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

M.AssetBundleImportJobAnalysisOverrideTags = {
    type = "structure",
    members = {
        AnalysisIds = {
            type = "list",
            member_type = "string",
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
        Permissions = {
            type = "structure",
        },
    },
}

M.AssetBundleImportJobDashboardOverridePermissions = {
    type = "structure",
    members = {
        DashboardIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "structure",
        },
        LinkSharingConfiguration = {
            type = "structure",
        },
    },
}

M.AssetBundleImportJobDashboardOverrideTags = {
    type = "structure",
    members = {
        DashboardIds = {
            type = "list",
            member_type = "string",
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
        EmailAlert = {
            type = "structure",
        },
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
            type = "number",
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
        LookbackWindow = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RefreshConfiguration = {
    type = "structure",
    members = {
        IncrementalRefresh = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSetRefreshProperties = {
    type = "structure",
    members = {
        RefreshConfiguration = {
            type = "structure",
        },
        FailureConfiguration = {
            type = "structure",
        },
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
        DataSetRefreshProperties = {
            type = "structure",
        },
    },
}

M.AssetBundleImportJobDataSetOverridePermissions = {
    type = "structure",
    members = {
        DataSetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleImportJobDataSetOverrideTags = {
    type = "structure",
    members = {
        DataSetIds = {
            type = "list",
            member_type = "string",
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
        CredentialPair = {
            type = "structure",
        },
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
        IdentityCenterConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            member_type = "string",
        },
        AutoCreateDatabaseUser = {
            type = "boolean",
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
            type = "number",
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
        IAMParameters = {
            type = "structure",
        },
        IdentityCenterConfiguration = {
            type = "structure",
        },
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
        ManifestFileLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        IdentityProviderVpcConnectionProperties = {
            type = "structure",
        },
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
        OAuthParameters = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
        OAuthParameters = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.DataSourceParameters = {
    type = "union",
    members = {
        AmazonElasticsearchParameters = {
            type = "structure",
        },
        AthenaParameters = {
            type = "structure",
        },
        AuroraParameters = {
            type = "structure",
        },
        AuroraPostgreSqlParameters = {
            type = "structure",
        },
        AwsIotAnalyticsParameters = {
            type = "structure",
        },
        JiraParameters = {
            type = "structure",
        },
        MariaDbParameters = {
            type = "structure",
        },
        MySqlParameters = {
            type = "structure",
        },
        OracleParameters = {
            type = "structure",
        },
        PostgreSqlParameters = {
            type = "structure",
        },
        PrestoParameters = {
            type = "structure",
        },
        RdsParameters = {
            type = "structure",
        },
        RedshiftParameters = {
            type = "structure",
        },
        S3Parameters = {
            type = "structure",
        },
        S3TablesParameters = {
            type = "structure",
        },
        S3KnowledgeBaseParameters = {
            type = "structure",
        },
        ServiceNowParameters = {
            type = "structure",
        },
        SnowflakeParameters = {
            type = "structure",
        },
        SparkParameters = {
            type = "structure",
        },
        SqlServerParameters = {
            type = "structure",
        },
        TeradataParameters = {
            type = "structure",
        },
        TwitterParameters = {
            type = "structure",
        },
        AmazonOpenSearchParameters = {
            type = "structure",
        },
        ExasolParameters = {
            type = "structure",
        },
        DatabricksParameters = {
            type = "structure",
        },
        StarburstParameters = {
            type = "structure",
        },
        TrinoParameters = {
            type = "structure",
        },
        BigQueryParameters = {
            type = "structure",
        },
        ImpalaParameters = {
            type = "structure",
        },
        CustomConnectionParameters = {
            type = "structure",
        },
        WebCrawlerParameters = {
            type = "structure",
        },
        ConfluenceParameters = {
            type = "structure",
        },
        QBusinessParameters = {
            type = "structure",
        },
    },
}

M.SslProperties = {
    type = "structure",
    members = {
        DisableSsl = {
            type = "boolean",
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
        DataSourceParameters = {
            type = "union",
        },
        VpcConnectionProperties = {
            type = "structure",
        },
        SslProperties = {
            type = "structure",
        },
        Credentials = {
            type = "structure",
        },
    },
}

M.AssetBundleImportJobDataSourceOverridePermissions = {
    type = "structure",
    members = {
        DataSourceIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleImportJobDataSourceOverrideTags = {
    type = "structure",
    members = {
        DataSourceIds = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "structure",
        },
    },
}

M.AssetBundleImportJobFolderOverrideTags = {
    type = "structure",
    members = {
        FolderIds = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        DnsResolvers = {
            type = "list",
            member_type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.AssetBundleImportJobOverrideParameters = {
    type = "structure",
    members = {
        ResourceIdOverrideConfiguration = {
            type = "structure",
        },
        VPCConnections = {
            type = "list",
            member_type = "structure",
        },
        RefreshSchedules = {
            type = "list",
            member_type = "structure",
        },
        DataSources = {
            type = "list",
            member_type = "structure",
        },
        DataSets = {
            type = "list",
            member_type = "structure",
        },
        Themes = {
            type = "list",
            member_type = "structure",
        },
        Analyses = {
            type = "list",
            member_type = "structure",
        },
        Dashboards = {
            type = "list",
            member_type = "structure",
        },
        Folders = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetBundleImportJobThemeOverridePermissions = {
    type = "structure",
    members = {
        ThemeIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetBundleImportJobOverridePermissions = {
    type = "structure",
    members = {
        DataSources = {
            type = "list",
            member_type = "structure",
        },
        DataSets = {
            type = "list",
            member_type = "structure",
        },
        Themes = {
            type = "list",
            member_type = "structure",
        },
        Analyses = {
            type = "list",
            member_type = "structure",
        },
        Dashboards = {
            type = "list",
            member_type = "structure",
        },
        Folders = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetBundleImportJobThemeOverrideTags = {
    type = "structure",
    members = {
        ThemeIds = {
            type = "list",
            member_type = "string",
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

M.AssetBundleImportJobVPCConnectionOverrideTags = {
    type = "structure",
    members = {
        VPCConnectionIds = {
            type = "list",
            member_type = "string",
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

M.AssetBundleImportJobOverrideTags = {
    type = "structure",
    members = {
        VPCConnections = {
            type = "list",
            member_type = "structure",
        },
        DataSources = {
            type = "list",
            member_type = "structure",
        },
        DataSets = {
            type = "list",
            member_type = "structure",
        },
        Themes = {
            type = "list",
            member_type = "structure",
        },
        Analyses = {
            type = "list",
            member_type = "structure",
        },
        Dashboards = {
            type = "list",
            member_type = "structure",
        },
        Folders = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetBundleImportJobOverrideValidationStrategy = {
    type = "structure",
    members = {
        StrictModeForAllResources = {
            type = "boolean",
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
        AuthorizationCodeGrantDetails = {
            type = "structure",
        },
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
        AuthorizationCodeGrantCredentialsDetails = {
            type = "union",
        },
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
        ClientCredentialsGrantDetails = {
            type = "structure",
        },
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
        ClientCredentialsDetails = {
            type = "union",
        },
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
        AuthorizationCodeGrantMetadata = {
            type = "structure",
        },
        ClientCredentialsGrantMetadata = {
            type = "structure",
        },
        BasicAuthConnectionMetadata = {
            type = "structure",
        },
        ApiKeyConnectionMetadata = {
            type = "structure",
        },
        NoneConnectionMetadata = {
            type = "structure",
        },
        IamConnectionMetadata = {
            type = "structure",
        },
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
        AuthenticationMetadata = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
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
        MetricOperand = {
            type = "structure",
        },
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
            member_type = "structure",
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
        OperandField = {
            type = "structure",
        },
        Function = {
            type = "string",
        },
        Constant = {
            type = "structure",
        },
        Inverse = {
            type = "boolean",
        },
        NullFilter = {
            type = "string",
        },
        Aggregation = {
            type = "string",
        },
        AggregationFunctionParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AggregationPartitionBy = {
            type = "list",
            member_type = "structure",
        },
        Range = {
            type = "structure",
        },
        Inclusive = {
            type = "boolean",
        },
        TimeGranularity = {
            type = "string",
        },
        LastNextOffset = {
            type = "structure",
        },
        AggMetrics = {
            type = "list",
            member_type = "structure",
        },
        TopBottomLimit = {
            type = "structure",
        },
        SortDirection = {
            type = "string",
        },
        Anchor = {
            type = "structure",
        },
    },
}

M.ContributionAnalysisTimeRanges = {
    type = "structure",
    members = {
        StartRange = {
            type = "structure",
        },
        EndRange = {
            type = "structure",
        },
    },
}

M.TopicIRContributionAnalysis = {
    type = "structure",
    members = {
        Factors = {
            type = "list",
            member_type = "structure",
        },
        TimeRanges = {
            type = "structure",
        },
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
        },
        FractionDigits = {
            type = "number",
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
        NegativeFormat = {
            type = "structure",
        },
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
        Operand = {
            type = "structure",
        },
        SortDirection = {
            type = "string",
        },
    },
}

M.TopicIRGroupBy = {
    type = "structure",
    members = {
        FieldName = {
            type = "structure",
        },
        TimeGranularity = {
            type = "string",
        },
        Sort = {
            type = "structure",
        },
        DisplayFormat = {
            type = "string",
        },
        DisplayFormatOptions = {
            type = "structure",
        },
        NamedEntity = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.TopicIRMetric = {
    type = "structure",
    members = {
        MetricId = {
            type = "structure",
        },
        Function = {
            type = "structure",
        },
        Operands = {
            type = "list",
            member_type = "structure",
        },
        ComparisonMethod = {
            type = "structure",
        },
        Expression = {
            type = "string",
        },
        CalculatedFieldReferences = {
            type = "list",
            member_type = "structure",
        },
        DisplayFormat = {
            type = "string",
        },
        DisplayFormatOptions = {
            type = "structure",
        },
        NamedEntity = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        GroupByList = {
            type = "list",
            member_type = "structure",
        },
        Filters = {
            type = "list",
            member_type = "list",
        },
        Sort = {
            type = "structure",
        },
        ContributionAnalysis = {
            type = "structure",
        },
        Visual = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        InvalidAnswers = {
            type = "list",
            member_type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "string",
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
            member_type = "structure",
        },
        InvalidAnswers = {
            type = "list",
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        Source = {
            type = "union",
        },
    },
}

M.ImageSetConfiguration = {
    type = "structure",
    members = {
        Original = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LogoSetConfiguration = {
    type = "structure",
    members = {
        Primary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Favicon = {
            type = "structure",
        },
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
        LogoSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ApplicationTheme = {
            type = "structure",
        },
        LogoConfiguration = {
            type = "structure",
        },
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
        Source = {
            type = "union",
        },
        GeneratedImageUrl = {
            type = "string",
        },
    },
}

M.ImageSet = {
    type = "structure",
    members = {
        Original = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Height64 = {
            type = "structure",
        },
        Height32 = {
            type = "structure",
        },
    },
}

M.LogoSet = {
    type = "structure",
    members = {
        Primary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Favicon = {
            type = "structure",
        },
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
        LogoSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
        },
        Logo = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CastColumnTypeOperations = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.CollectiveConstant = {
    type = "structure",
    members = {
        ValueList = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ColumnGroup = {
    type = "structure",
    members = {
        GeoSpatialColumnGroup = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.ColumnLevelPermissionRule = {
    type = "structure",
    members = {
        Principals = {
            type = "list",
            member_type = "string",
        },
        ColumnNames = {
            type = "list",
            member_type = "string",
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
        ColumnDescription = {
            type = "structure",
        },
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
            member_type = "string",
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
        FontConfiguration = {
            type = "structure",
        },
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
        AccountCustomization = {
            type = "structure",
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
        AccountCustomization = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "string",
        },
        AuthorGroup = {
            type = "list",
            member_type = "string",
        },
        ReaderGroup = {
            type = "list",
            member_type = "string",
        },
        AdminProGroup = {
            type = "list",
            member_type = "string",
        },
        AuthorProGroup = {
            type = "list",
            member_type = "string",
        },
        ReaderProGroup = {
            type = "list",
            member_type = "string",
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
        SignupResponse = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "string",
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
        AuthenticationConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member_type = "structure",
        },
        VpcConnectionArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "timestamp",
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
            member_type = "number",
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
            member_type = "number",
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
            member_type = "string",
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
            member_type = "structure",
        },
        IntegerParameters = {
            type = "list",
            member_type = "structure",
        },
        DecimalParameters = {
            type = "list",
            member_type = "structure",
        },
        DateTimeParameters = {
            type = "list",
            member_type = "structure",
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
        Parameters = {
            type = "structure",
        },
        Permissions = {
            type = "list",
            member_type = "structure",
        },
        SourceEntity = {
            type = "structure",
        },
        ThemeArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Definition = {
            type = "structure",
        },
        ValidationStrategy = {
            type = "structure",
        },
        FolderArns = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
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
        BrandDefinition = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateBrandOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        BrandDetail = {
            type = "structure",
        },
        BrandDefinition = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
        Columns = {
            type = "list",
            member_type = "structure",
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
        Capabilities = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateCustomPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "number",
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
        ExportHiddenFieldsOption = {
            type = "structure",
        },
    },
}

M.DashboardPublishOptions = {
    type = "structure",
    members = {
        AdHocFilteringOption = {
            type = "structure",
        },
        ExportToCSVOption = {
            type = "structure",
        },
        SheetControlsOption = {
            type = "structure",
        },
        VisualPublishOptions = {
            type = "structure",
        },
        SheetLayoutElementMaximizationOption = {
            type = "structure",
        },
        VisualMenuOption = {
            type = "structure",
        },
        VisualAxisSortOption = {
            type = "structure",
        },
        ExportWithHiddenFieldsOption = {
            type = "structure",
        },
        DataPointDrillUpDownOption = {
            type = "structure",
        },
        DataPointMenuLabelOption = {
            type = "structure",
        },
        DataPointTooltipOption = {
            type = "structure",
        },
        DataQAEnabledOption = {
            type = "structure",
        },
        QuickSuiteActionsOption = {
            type = "structure",
        },
        ExecutiveSummaryOption = {
            type = "structure",
        },
        DataStoriesSharingOption = {
            type = "structure",
        },
    },
}

M.DashboardVersionDefinition = {
    type = "structure",
    members = {
        DataSetIdentifierDeclarations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Sheets = {
            type = "list",
            member_type = "structure",
        },
        TooltipSheets = {
            type = "list",
            member_type = "structure",
        },
        CalculatedFields = {
            type = "list",
            member_type = "structure",
        },
        ParameterDeclarations = {
            type = "list",
            member_type = "structure",
        },
        FilterGroups = {
            type = "list",
            member_type = "structure",
        },
        ColumnConfigurations = {
            type = "list",
            member_type = "structure",
        },
        AnalysisDefaults = {
            type = "structure",
        },
        Options = {
            type = "structure",
        },
        StaticFiles = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LinkSharingConfiguration = {
    type = "structure",
    members = {
        Permissions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DashboardSourceTemplate = {
    type = "structure",
    members = {
        DataSetReferences = {
            type = "list",
            member_type = "structure",
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
        SourceTemplate = {
            type = "structure",
        },
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
        Parameters = {
            type = "structure",
        },
        Permissions = {
            type = "list",
            member_type = "structure",
        },
        SourceEntity = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        VersionDescription = {
            type = "string",
        },
        DashboardPublishOptions = {
            type = "structure",
        },
        ThemeArn = {
            type = "string",
        },
        Definition = {
            type = "structure",
        },
        ValidationStrategy = {
            type = "structure",
        },
        FolderArns = {
            type = "list",
            member_type = "string",
        },
        LinkSharingConfiguration = {
            type = "structure",
        },
        LinkEntities = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
        DataSet = {
            type = "structure",
        },
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
        Value = {
            type = "structure",
        },
    },
}

M.DataSetDateRangeFilterCondition = {
    type = "structure",
    members = {
        RangeMinimum = {
            type = "structure",
        },
        RangeMaximum = {
            type = "structure",
        },
        IncludeMinimum = {
            type = "boolean",
        },
        IncludeMaximum = {
            type = "boolean",
        },
    },
}

M.DataSetDateFilterCondition = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
        },
        ComparisonFilterCondition = {
            type = "structure",
        },
        RangeFilterCondition = {
            type = "structure",
        },
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
            type = "number",
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
        Value = {
            type = "structure",
        },
    },
}

M.DataSetNumericRangeFilterCondition = {
    type = "structure",
    members = {
        RangeMinimum = {
            type = "structure",
        },
        RangeMaximum = {
            type = "structure",
        },
        IncludeMinimum = {
            type = "boolean",
        },
        IncludeMaximum = {
            type = "boolean",
        },
    },
}

M.DataSetNumericFilterCondition = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
        },
        ComparisonFilterCondition = {
            type = "structure",
        },
        RangeFilterCondition = {
            type = "structure",
        },
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
        Value = {
            type = "structure",
        },
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
            member_type = "string",
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
        Values = {
            type = "structure",
        },
    },
}

M.DataSetStringFilterCondition = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
        },
        ComparisonFilterCondition = {
            type = "structure",
        },
        ListFilterCondition = {
            type = "structure",
        },
    },
}

M.FilterOperation = {
    type = "structure",
    members = {
        ConditionExpression = {
            type = "string",
        },
        StringFilterCondition = {
            type = "structure",
        },
        NumericFilterCondition = {
            type = "structure",
        },
        DateFilterCondition = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FilterOperations = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
        LeftOperand = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RightOperand = {
            type = "structure",
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
        OnClause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LeftOperandProperties = {
            type = "structure",
        },
        RightOperandProperties = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ValueColumnConfiguration = {
    type = "structure",
    members = {
        AggregationFunction = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        GroupByColumnNames = {
            type = "list",
            member_type = "string",
        },
        ValueColumnConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PivotConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ProjectOperation = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
        },
        Source = {
            type = "structure",
        },
        ProjectedColumns = {
            type = "list",
            member_type = "string",
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RenameColumnOperations = {
            type = "list",
            member_type = "structure",
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ColumnsToUnpivot = {
            type = "list",
            member_type = "structure",
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
        ImportTableStep = {
            type = "structure",
        },
        ProjectStep = {
            type = "structure",
        },
        FiltersStep = {
            type = "structure",
        },
        CreateColumnsStep = {
            type = "structure",
        },
        RenameColumnsStep = {
            type = "structure",
        },
        CastColumnTypesStep = {
            type = "structure",
        },
        JoinStep = {
            type = "structure",
        },
        AggregateStep = {
            type = "structure",
        },
        PivotStep = {
            type = "structure",
        },
        UnpivotStep = {
            type = "structure",
        },
        AppendStep = {
            type = "structure",
        },
    },
}

M.DataPrepConfiguration = {
    type = "structure",
    members = {
        SourceTableMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        TransformStepMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        DestinationTableMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            member_type = "timestamp",
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
        DefaultValues = {
            type = "structure",
        },
    },
}

M.DecimalDatasetParameterDefaultValues = {
    type = "structure",
    members = {
        StaticValues = {
            type = "list",
            member_type = "number",
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
        DefaultValues = {
            type = "structure",
        },
    },
}

M.IntegerDatasetParameterDefaultValues = {
    type = "structure",
    members = {
        StaticValues = {
            type = "list",
            member_type = "number",
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
        DefaultValues = {
            type = "structure",
        },
    },
}

M.StringDatasetParameterDefaultValues = {
    type = "structure",
    members = {
        StaticValues = {
            type = "list",
            member_type = "string",
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
        DefaultValues = {
            type = "structure",
        },
    },
}

M.DatasetParameter = {
    type = "structure",
    members = {
        StringDatasetParameter = {
            type = "structure",
        },
        DecimalDatasetParameter = {
            type = "structure",
        },
        IntegerDatasetParameter = {
            type = "structure",
        },
        DateTimeDatasetParameter = {
            type = "structure",
        },
    },
}

M.DataSetUsageConfiguration = {
    type = "structure",
    members = {
        DisableUseAsDirectQuerySource = {
            type = "boolean",
        },
        DisableUseAsImportedSource = {
            type = "boolean",
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
            member_type = "string",
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
            member_type = "string",
        },
        DecimalStaticValues = {
            type = "list",
            member_type = "number",
        },
        DateTimeStaticValues = {
            type = "list",
            member_type = "timestamp",
        },
        IntegerStaticValues = {
            type = "list",
            member_type = "number",
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
        NewDefaultValues = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransformOperation = {
    type = "union",
    members = {
        ProjectOperation = {
            type = "structure",
        },
        FilterOperation = {
            type = "structure",
        },
        CreateColumnsOperation = {
            type = "structure",
        },
        RenameColumnOperation = {
            type = "structure",
        },
        CastColumnTypeOperation = {
            type = "structure",
        },
        TagColumnOperation = {
            type = "structure",
        },
        UntagColumnOperation = {
            type = "structure",
        },
        OverrideDatasetParameterOperation = {
            type = "structure",
        },
    },
}

M.JoinKeyProperties = {
    type = "structure",
    members = {
        UniqueKey = {
            type = "boolean",
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
        LeftJoinKeyProperties = {
            type = "structure",
        },
        RightJoinKeyProperties = {
            type = "structure",
        },
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
        JoinInstruction = {
            type = "structure",
        },
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
            member_type = "union",
        },
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UniqueKey = {
    type = "structure",
    members = {
        ColumnNames = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        ContainsHeader = {
            type = "boolean",
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
        UploadSettings = {
            type = "structure",
        },
        InputColumns = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        InputColumns = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PhysicalTable = {
    type = "union",
    members = {
        RelationalTable = {
            type = "structure",
        },
        CustomSql = {
            type = "structure",
        },
        S3Source = {
            type = "structure",
        },
        SaaSTable = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        TagRuleConfigurations = {
            type = "list",
            member_type = "list",
        },
    },
}

M.RowLevelPermissionConfiguration = {
    type = "structure",
    members = {
        TagConfiguration = {
            type = "structure",
        },
        RowLevelPermissionDataSet = {
            type = "structure",
        },
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
        RowLevelPermissionConfiguration = {
            type = "structure",
        },
    },
}

M.SemanticModelConfiguration = {
    type = "structure",
    members = {
        TableMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            key_type = "string",
            value_type = "union",
            traits = {
                required = true,
            },
        },
        LogicalTableMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        ImportMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnGroups = {
            type = "list",
            member_type = "structure",
        },
        FieldFolders = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        Permissions = {
            type = "list",
            member_type = "structure",
        },
        RowLevelPermissionDataSet = {
            type = "structure",
        },
        RowLevelPermissionTagConfiguration = {
            type = "structure",
        },
        ColumnLevelPermissionRules = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        DataSetUsageConfiguration = {
            type = "structure",
        },
        DatasetParameters = {
            type = "list",
            member_type = "structure",
        },
        FolderArns = {
            type = "list",
            member_type = "string",
        },
        PerformanceConfiguration = {
            type = "structure",
        },
        UseAs = {
            type = "string",
        },
        DataPrepConfiguration = {
            type = "structure",
        },
        SemanticModelConfiguration = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            member_type = "union",
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
        CredentialPair = {
            type = "structure",
        },
        CopySourceArn = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        KeyPairCredentials = {
            type = "structure",
        },
        WebProxyCredentials = {
            type = "structure",
        },
        OAuthClientCredentials = {
            type = "structure",
        },
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
        DataSourceParameters = {
            type = "union",
        },
        Credentials = {
            type = "structure",
        },
        Permissions = {
            type = "list",
            member_type = "structure",
        },
        VpcConnectionProperties = {
            type = "structure",
        },
        SslProperties = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        FolderArns = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
        },
        FolderMember = {
            type = "structure",
        },
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
        Group = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        GroupMember = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            key_type = "string",
            value_type = "list",
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
            key_type = "string",
            value_type = "list",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
        RefreshOnDay = {
            type = "structure",
        },
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
        ScheduleFrequency = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Schedule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRefreshScheduleOutput = {
    type = "structure",
    members = {
        Status = {
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
    },
}

M.DataSetConfiguration = {
    type = "structure",
    members = {
        Placeholder = {
            type = "string",
        },
        DataSetSchema = {
            type = "structure",
        },
        ColumnGroupSchemaList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TemplateVersionDefinition = {
    type = "structure",
    members = {
        DataSetConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Sheets = {
            type = "list",
            member_type = "structure",
        },
        TooltipSheets = {
            type = "list",
            member_type = "structure",
        },
        CalculatedFields = {
            type = "list",
            member_type = "structure",
        },
        ParameterDeclarations = {
            type = "list",
            member_type = "structure",
        },
        FilterGroups = {
            type = "list",
            member_type = "structure",
        },
        ColumnConfigurations = {
            type = "list",
            member_type = "structure",
        },
        AnalysisDefaults = {
            type = "structure",
        },
        Options = {
            type = "structure",
        },
        QueryExecutionOptions = {
            type = "structure",
        },
        StaticFiles = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        SourceAnalysis = {
            type = "structure",
        },
        SourceTemplate = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        SourceEntity = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        VersionDescription = {
            type = "string",
        },
        Definition = {
            type = "structure",
        },
        ValidationStrategy = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
        },
    },
}

M.CreateTemplateAliasOutput = {
    type = "structure",
    members = {
        TemplateAlias = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "string",
        },
        MinMaxGradient = {
            type = "list",
            member_type = "string",
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
        Border = {
            type = "structure",
        },
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
        },
    },
}

M.MarginStyle = {
    type = "structure",
    members = {
        Show = {
            type = "boolean",
        },
    },
}

M.TileLayoutStyle = {
    type = "structure",
    members = {
        Gutter = {
            type = "structure",
        },
        Margin = {
            type = "structure",
        },
    },
}

M.SheetStyle = {
    type = "structure",
    members = {
        Tile = {
            type = "structure",
        },
        TileLayout = {
            type = "structure",
        },
        Background = {
            type = "structure",
        },
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
        FontConfiguration = {
            type = "structure",
        },
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
        FontConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        AxisTitleFontConfiguration = {
            type = "structure",
        },
        AxisLabelFontConfiguration = {
            type = "structure",
        },
        LegendTitleFontConfiguration = {
            type = "structure",
        },
        LegendValueFontConfiguration = {
            type = "structure",
        },
        DataLabelFontConfiguration = {
            type = "structure",
        },
        VisualTitleFontConfiguration = {
            type = "structure",
        },
        VisualSubtitleFontConfiguration = {
            type = "structure",
        },
        ControlTitleFontConfiguration = {
            type = "structure",
        },
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
        DataColorPalette = {
            type = "structure",
        },
        UIColorPalette = {
            type = "structure",
        },
        Sheet = {
            type = "structure",
        },
        Typography = {
            type = "structure",
        },
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
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
        },
    },
}

M.CreateThemeAliasOutput = {
    type = "structure",
    members = {
        ThemeAlias = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
        DisplayFormatOptions = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        TruthyCellValue = {
            type = "string",
        },
        TruthyCellValueSynonyms = {
            type = "list",
            member_type = "string",
        },
        FalseyCellValue = {
            type = "string",
        },
        FalseyCellValueSynonyms = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        IsIncludedInTopic = {
            type = "boolean",
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
        DefaultFormatting = {
            type = "structure",
        },
        Aggregation = {
            type = "string",
        },
        ComparativeOrder = {
            type = "structure",
        },
        SemanticType = {
            type = "structure",
        },
        AllowedAggregations = {
            type = "list",
            member_type = "string",
        },
        NotAllowedAggregations = {
            type = "list",
            member_type = "string",
        },
        NeverAggregateInFilter = {
            type = "boolean",
        },
        CellValueSynonyms = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        ColumnDataRole = {
            type = "string",
        },
        Aggregation = {
            type = "string",
        },
        IsIncludedInTopic = {
            type = "boolean",
        },
        DisableIndexing = {
            type = "boolean",
        },
        ComparativeOrder = {
            type = "structure",
        },
        SemanticType = {
            type = "structure",
        },
        TimeGranularity = {
            type = "string",
        },
        AllowedAggregations = {
            type = "list",
            member_type = "string",
        },
        NotAllowedAggregations = {
            type = "list",
            member_type = "string",
        },
        DefaultFormatting = {
            type = "structure",
        },
        NeverAggregateInFilter = {
            type = "boolean",
        },
        CellValueSynonyms = {
            type = "list",
            member_type = "structure",
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
        CollectiveConstant = {
            type = "structure",
        },
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
        Constant = {
            type = "structure",
        },
        Inverse = {
            type = "boolean",
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
        RangeConstant = {
            type = "structure",
        },
    },
}

M.TopicDateRangeFilter = {
    type = "structure",
    members = {
        Inclusive = {
            type = "boolean",
        },
        Constant = {
            type = "structure",
        },
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
        Constant = {
            type = "structure",
        },
        Inverse = {
            type = "boolean",
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
        Constant = {
            type = "structure",
        },
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
        },
        Constant = {
            type = "structure",
        },
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
        Constant = {
            type = "structure",
        },
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
            member_type = "string",
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
        CategoryFilter = {
            type = "structure",
        },
        NumericEqualityFilter = {
            type = "structure",
        },
        NumericRangeFilter = {
            type = "structure",
        },
        DateRangeFilter = {
            type = "structure",
        },
        RelativeDateFilter = {
            type = "structure",
        },
        NullFilter = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        Metric = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        SemanticEntityType = {
            type = "structure",
        },
        Definition = {
            type = "list",
            member_type = "structure",
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
        DataAggregation = {
            type = "structure",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Columns = {
            type = "list",
            member_type = "structure",
        },
        CalculatedFields = {
            type = "list",
            member_type = "structure",
        },
        NamedEntities = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        ConfigOptions = {
            type = "structure",
        },
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
        Topic = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        FolderArns = {
            type = "list",
            member_type = "string",
        },
        CustomInstructions = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
        RefreshSchedule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
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
        DnsResolvers = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
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
        Capabilities = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        VersionNumber = {
            type = "number",
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
            member_type = "string",
        },
        Description = {
            type = "string",
        },
        ThemeArn = {
            type = "string",
        },
        Sheets = {
            type = "list",
            member_type = "structure",
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
        Version = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.DashboardCustomizationSummaryConfigurations = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
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
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "union",
        },
        LogicalTableMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        OutputColumns = {
            type = "list",
            member_type = "structure",
        },
        ImportMode = {
            type = "string",
        },
        ConsumedSpiceCapacityInBytes = {
            type = "number",
        },
        ColumnGroups = {
            type = "list",
            member_type = "structure",
        },
        FieldFolders = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        RowLevelPermissionDataSet = {
            type = "structure",
        },
        RowLevelPermissionTagConfiguration = {
            type = "structure",
        },
        ColumnLevelPermissionRules = {
            type = "list",
            member_type = "structure",
        },
        DataSetUsageConfiguration = {
            type = "structure",
        },
        DatasetParameters = {
            type = "list",
            member_type = "structure",
        },
        PerformanceConfiguration = {
            type = "structure",
        },
        UseAs = {
            type = "string",
        },
        DataPrepConfiguration = {
            type = "structure",
        },
        SemanticModelConfiguration = {
            type = "structure",
        },
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
        RowLevelPermissionDataSet = {
            type = "structure",
        },
        RowLevelPermissionDataSetMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        RowLevelPermissionTagConfigurationApplied = {
            type = "boolean",
        },
        ColumnLevelPermissionRulesApplied = {
            type = "boolean",
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
        DataSourceParameters = {
            type = "union",
        },
        AlternateDataSourceParameters = {
            type = "list",
            member_type = "union",
        },
        VpcConnectionProperties = {
            type = "structure",
        },
        SslProperties = {
            type = "structure",
        },
        ErrorInfo = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
                http_query = "recovery-window-in-days",
            },
        },
        ForceDeleteWithoutRecovery = {
            type = "boolean",
            traits = {
                http_query = "force-delete-without-recovery",
            },
        },
    },
}

M.DeleteAnalysisOutput = {
    type = "structure",
    members = {
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
        AccountCustomization = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
        AccountSettings = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        AccountInfo = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
        ActionConnector = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        Analysis = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        ResourceStatus = {
            type = "string",
        },
        ThemeArn = {
            type = "string",
        },
        Definition = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
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
            member_type = "string",
        },
        IncludeAllDependencies = {
            type = "boolean",
        },
        ExportFormat = {
            type = "string",
        },
        CloudFormationOverridePropertyConfiguration = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        IncludePermissions = {
            type = "boolean",
        },
        IncludeTags = {
            type = "boolean",
        },
        ValidationStrategy = {
            type = "structure",
        },
        Warnings = {
            type = "list",
            member_type = "structure",
        },
        IncludeFolderMemberships = {
            type = "boolean",
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
            member_type = "structure",
        },
        RollbackErrors = {
            type = "list",
            member_type = "structure",
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
        AssetBundleImportSource = {
            type = "structure",
        },
        OverrideParameters = {
            type = "structure",
        },
        FailureAction = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        OverridePermissions = {
            type = "structure",
        },
        OverrideTags = {
            type = "structure",
        },
        OverrideValidationStrategy = {
            type = "structure",
        },
        Warnings = {
            type = "list",
            member_type = "structure",
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
                http_query = "includeInputPayload",
            },
        },
        IncludeOutputPayload = {
            type = "boolean",
            traits = {
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
        BrandDetail = {
            type = "structure",
        },
        BrandDefinition = {
            type = "structure",
        },
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
        BrandDetail = {
            type = "structure",
        },
        BrandDefinition = {
            type = "structure",
        },
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
            type = "number",
        },
        CustomPermissions = {
            type = "structure",
        },
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
            type = "number",
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
        Dashboard = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
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
        Definition = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
        DashboardPublishOptions = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Status = {
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
        LinkSharingConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.SnapshotFileGroup = {
    type = "structure",
    members = {
        Files = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SnapshotConfiguration = {
    type = "structure",
    members = {
        FileGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DestinationConfiguration = {
            type = "structure",
        },
        Parameters = {
            type = "structure",
        },
    },
}

M.SnapshotAnonymousUserRedacted = {
    type = "structure",
    members = {
        RowLevelPermissionTagKeys = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SnapshotUserConfigurationRedacted = {
    type = "structure",
    members = {
        AnonymousUsers = {
            type = "list",
            member_type = "structure",
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
        UserConfiguration = {
            type = "structure",
        },
        SnapshotConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.SnapshotJobResult = {
    type = "structure",
    members = {
        AnonymousUsers = {
            type = "list",
            member_type = "structure",
        },
        RegisteredUsers = {
            type = "list",
            member_type = "structure",
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
        Result = {
            type = "structure",
        },
        ErrorInfo = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
        DataSet = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        DataSetRefreshProperties = {
            type = "structure",
        },
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
        DataSource = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            member_type = "string",
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
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        Folder = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
        Group = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        GroupMember = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            key_type = "string",
            value_type = "list",
        },
        AssignmentStatus = {
            type = "string",
        },
    },
}

M.DescribeIAMPolicyAssignmentOutput = {
    type = "structure",
    members = {
        IAMPolicyAssignment = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
        },
        RowsDropped = {
            type = "number",
        },
        TotalRowsInDataset = {
            type = "number",
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
        ErrorInfo = {
            type = "structure",
        },
        RowInfo = {
            type = "structure",
        },
        QueueInfo = {
            type = "structure",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        IngestionTimeInSeconds = {
            type = "number",
        },
        IngestionSizeInBytes = {
            type = "number",
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
        Ingestion = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            key_type = "string",
            value_type = "string",
        },
        VpcIdRestrictionRuleMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        VpcEndpointIdRestrictionRuleMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        QDataKey = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
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
        NamespaceError = {
            type = "structure",
        },
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
        Namespace = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
        RefreshSchedule = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
        SelfUpgradeConfiguration = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        VersionNumber = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        DataSetConfigurations = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        Version = {
            type = "structure",
        },
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
        Template = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
        TemplateAlias = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        ResourceStatus = {
            type = "string",
        },
        ThemeArn = {
            type = "string",
        },
        Definition = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
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
        Configuration = {
            type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
        Version = {
            type = "structure",
        },
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
        Theme = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
        ThemeAlias = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        Topic = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        CustomInstructions = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
        RefreshDetails = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        RefreshSchedule = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
        User = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "string",
        },
        DnsResolvers = {
            type = "list",
            member_type = "string",
        },
        Status = {
            type = "string",
        },
        AvailabilityStatus = {
            type = "string",
        },
        NetworkInterfaces = {
            type = "list",
            member_type = "structure",
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
        VPCConnection = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        SenderFault = {
            type = "boolean",
            traits = {
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
            type = "number",
        },
        UserCount = {
            type = "number",
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
            type = "number",
        },
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionTags = {
            type = "list",
            member_type = "structure",
        },
        AuthorizedResourceArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ExperienceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AllowedDomains = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
                required = true,
            },
        },
    },
}

M.RegisteredUserDashboardFeatureConfigurations = {
    type = "structure",
    members = {
        StatePersistence = {
            type = "structure",
        },
        Bookmarks = {
            type = "structure",
        },
        SharedView = {
            type = "structure",
        },
        AmazonQInQuickSight = {
            type = "structure",
        },
        Schedules = {
            type = "structure",
        },
        RecentSnapshots = {
            type = "structure",
        },
        ThresholdAlerts = {
            type = "structure",
        },
        DashboardCustomizationSummary = {
            type = "structure",
        },
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
        FeatureConfigurations = {
            type = "structure",
        },
    },
}

M.RegisteredUserDashboardVisualEmbeddingConfiguration = {
    type = "structure",
    members = {
        InitialDashboardVisualId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        StatePersistence = {
            type = "structure",
        },
        SharedView = {
            type = "structure",
        },
        AmazonQInQuickSight = {
            type = "structure",
        },
        Schedules = {
            type = "structure",
        },
        RecentSnapshots = {
            type = "structure",
        },
        ThresholdAlerts = {
            type = "structure",
        },
        DashboardCustomizationSummary = {
            type = "structure",
        },
    },
}

M.RegisteredUserQuickSightConsoleEmbeddingConfiguration = {
    type = "structure",
    members = {
        InitialPath = {
            type = "string",
        },
        FeatureConfigurations = {
            type = "structure",
        },
    },
}

M.RegisteredUserEmbeddingExperienceConfiguration = {
    type = "structure",
    members = {
        Dashboard = {
            type = "structure",
        },
        QuickSightConsole = {
            type = "structure",
        },
        QSearchBar = {
            type = "structure",
        },
        DashboardVisual = {
            type = "structure",
        },
        GenerativeQnA = {
            type = "structure",
        },
        QuickChat = {
            type = "structure",
        },
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
            type = "number",
        },
        UserArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExperienceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AllowedDomains = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            type = "number",
        },
        ExperienceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AllowedDomains = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            type = "number",
            traits = {
                http_query = "session-lifetime",
            },
        },
        UndoRedoDisabled = {
            type = "boolean",
            traits = {
                http_query = "undo-redo-disabled",
            },
        },
        ResetDisabled = {
            type = "boolean",
            traits = {
                http_query = "reset-disabled",
            },
        },
        StatePersistenceEnabled = {
            type = "boolean",
            traits = {
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
            member_type = "string",
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
            type = "number",
            traits = {
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
            type = "number",
        },
        RunCount = {
            type = "number",
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
            type = "number",
            traits = {
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
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        UserIdentifier = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        CustomPermissionsList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        FolderMemberList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        FolderSummaryList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        Folders = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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

M.ListIdentityPropagationConfigsOutput = {
    type = "structure",
    members = {
        Services = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
        },
        RequestStatus = {
            type = "string",
        },
        lastUpdateAttemptTime = {
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        RefreshSchedule = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "string",
        },
        DnsResolvers = {
            type = "list",
            member_type = "string",
        },
        Status = {
            type = "string",
        },
        AvailabilityStatus = {
            type = "string",
        },
        NetworkInterfaces = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
        DashboardVisual = {
            type = "structure",
        },
        GeneratedAnswer = {
            type = "structure",
        },
    },
}

M.PredictQAResultsOutput = {
    type = "structure",
    members = {
        PrimaryResult = {
            type = "structure",
        },
        AdditionalResults = {
            type = "list",
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        DataSetRefreshProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDataSetRefreshPropertiesOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
    },
}

M.RegisterUserOutput = {
    type = "structure",
    members = {
        User = {
            type = "structure",
        },
        UserInvitationUrl = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
                http_query = "restore-to-folders",
            },
        },
    },
}

M.RestoreAnalysisOutput = {
    type = "structure",
    members = {
        Status = {
            type = "number",
            traits = {
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
            member_type = "string",
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
            type = "number",
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
        Filters = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        ActionConnectorSummaries = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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

M.SearchAnalysesOutput = {
    type = "structure",
    members = {
        AnalysisSummaryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
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

M.SearchDashboardsOutput = {
    type = "structure",
    members = {
        DashboardSummaryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
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

M.SearchDataSetsOutput = {
    type = "structure",
    members = {
        DataSetSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
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

M.SearchDataSourcesOutput = {
    type = "structure",
    members = {
        DataSourceSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
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

M.SearchFlowsOutput = {
    type = "structure",
    members = {
        FlowSummaryList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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

M.SearchFoldersOutput = {
    type = "structure",
    members = {
        Status = {
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        FolderSummaryList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
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

M.SearchTopicsOutput = {
    type = "structure",
    members = {
        TopicSummaryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        IncludeAllDependencies = {
            type = "boolean",
        },
        ExportFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudFormationOverridePropertyConfiguration = {
            type = "structure",
        },
        IncludePermissions = {
            type = "boolean",
        },
        IncludeTags = {
            type = "boolean",
        },
        ValidationStrategy = {
            type = "structure",
        },
        IncludeFolderMemberships = {
            type = "boolean",
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
            type = "number",
            traits = {
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
        AssetBundleImportSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OverrideParameters = {
            type = "structure",
        },
        FailureAction = {
            type = "string",
        },
        OverridePermissions = {
            type = "structure",
        },
        OverrideTags = {
            type = "structure",
        },
        OverrideValidationStrategy = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
    },
}

M.SnapshotUserConfiguration = {
    type = "structure",
    members = {
        AnonymousUsers = {
            type = "list",
            member_type = "structure",
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
        UserConfiguration = {
            type = "structure",
        },
        SnapshotConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "string",
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
            type = "number",
            traits = {
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
        AccountCustomization = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        AccountCustomization = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
            traits = {
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
        AuthenticationConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RevokePermissions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        Permissions = {
            type = "list",
            member_type = "structure",
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
        Parameters = {
            type = "structure",
        },
        SourceEntity = {
            type = "structure",
        },
        ThemeArn = {
            type = "string",
        },
        Definition = {
            type = "structure",
        },
        ValidationStrategy = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RevokePermissions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
        BrandDefinition = {
            type = "structure",
        },
    },
}

M.UpdateBrandOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        BrandDetail = {
            type = "structure",
        },
        BrandDefinition = {
            type = "structure",
        },
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
        Capabilities = {
            type = "structure",
        },
    },
}

M.UpdateCustomPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "number",
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
        SourceEntity = {
            type = "structure",
        },
        Parameters = {
            type = "structure",
        },
        VersionDescription = {
            type = "string",
        },
        DashboardPublishOptions = {
            type = "structure",
        },
        ThemeArn = {
            type = "string",
        },
        Definition = {
            type = "structure",
        },
        ValidationStrategy = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        DashboardArn = {
            type = "string",
        },
        LinkEntities = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        RevokePermissions = {
            type = "list",
            member_type = "structure",
        },
        GrantLinkPermissions = {
            type = "list",
            member_type = "structure",
        },
        RevokeLinkPermissions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        LinkSharingConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            key_type = "string",
            value_type = "union",
            traits = {
                required = true,
            },
        },
        LogicalTableMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        ImportMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnGroups = {
            type = "list",
            member_type = "structure",
        },
        FieldFolders = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        RowLevelPermissionDataSet = {
            type = "structure",
        },
        RowLevelPermissionTagConfiguration = {
            type = "structure",
        },
        ColumnLevelPermissionRules = {
            type = "list",
            member_type = "structure",
        },
        DataSetUsageConfiguration = {
            type = "structure",
        },
        DatasetParameters = {
            type = "list",
            member_type = "structure",
        },
        PerformanceConfiguration = {
            type = "structure",
        },
        DataPrepConfiguration = {
            type = "structure",
        },
        SemanticModelConfiguration = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RevokePermissions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
        DataSourceParameters = {
            type = "union",
        },
        Credentials = {
            type = "structure",
        },
        VpcConnectionProperties = {
            type = "structure",
        },
        SslProperties = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RevokePermissions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RevokePermissions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateFlowPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RevokePermissions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateFolderPermissionsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "number",
        },
        Arn = {
            type = "string",
        },
        FolderId = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member_type = "structure",
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
        Group = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            key_type = "string",
            value_type = "list",
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
            key_type = "string",
            value_type = "list",
        },
        AssignmentStatus = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "string",
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
            type = "number",
            traits = {
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
            key_type = "string",
            value_type = "string",
        },
        VpcIdRestrictionRuleMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        VpcEndpointIdRestrictionRuleMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        SuccessfulKeyRegistration = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
        Schedule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRefreshScheduleOutput = {
    type = "structure",
    members = {
        Status = {
            type = "number",
            traits = {
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
            type = "number",
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
        SelfUpgradeRequestDetail = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
        SourceEntity = {
            type = "structure",
        },
        VersionDescription = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Definition = {
            type = "structure",
        },
        ValidationStrategy = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTemplateAliasOutput = {
    type = "structure",
    members = {
        TemplateAlias = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RevokePermissions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        Configuration = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateThemeAliasOutput = {
    type = "structure",
    members = {
        ThemeAlias = {
            type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RevokePermissions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
        Topic = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CustomInstructions = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        RevokePermissions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Status = {
            type = "number",
            traits = {
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
        RefreshSchedule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
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
        User = {
            type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Status = {
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
        DnsResolvers = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
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
        Ir = {
            type = "structure",
        },
        SupportingVisuals = {
            type = "list",
            member_type = "structure",
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
        Mir = {
            type = "structure",
        },
        PrimaryVisual = {
            type = "structure",
        },
        Template = {
            type = "structure",
        },
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
        Mir = {
            type = "structure",
        },
        PrimaryVisual = {
            type = "structure",
        },
        Template = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Status = {
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        RequestId = {
            type = "string",
        },
    },
}

return M
