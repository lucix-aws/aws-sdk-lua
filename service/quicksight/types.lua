local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "AccountCustomization",
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
    id = "AccountInfo",
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
    id = "AccountSettings",
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
    id = "ReadAPIKeyConnectionMetadata",
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
    id = "ReadAuthorizationCodeGrantDetails",
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
    id = "ReadAuthorizationCodeGrantCredentialsDetails",
    members = {
        ReadAuthorizationCodeGrantDetails = M.ReadAuthorizationCodeGrantDetails,
    },
}

M.ReadAuthorizationCodeGrantMetadata = {
    type = "structure",
    id = "ReadAuthorizationCodeGrantMetadata",
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
    id = "ReadBasicAuthConnectionMetadata",
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
    id = "ReadClientCredentialsGrantDetails",
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
    id = "ReadClientCredentialsDetails",
    members = {
        ReadClientCredentialsGrantDetails = M.ReadClientCredentialsGrantDetails,
    },
}

M.ReadClientCredentialsGrantMetadata = {
    type = "structure",
    id = "ReadClientCredentialsGrantMetadata",
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
    id = "ReadIamConnectionMetadata",
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
    id = "ReadNoneConnectionMetadata",
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
    id = "ReadAuthenticationMetadata",
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
    id = "ReadAuthConfig",
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
    id = "ActionConnectorError",
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
    id = "ActionConnector",
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
    id = "ActionConnectorSearchFilter",
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
    id = "ActionConnectorSummary",
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
    id = "ActiveIAMPolicyAssignment",
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
    id = "AdHocFilteringOption",
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
    id = "AggFunction",
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
    id = "DataPrepListAggregationFunction",
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
    id = "DataPrepSimpleAggregationFunction",
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
    id = "DataPrepAggregationFunction",
    members = {
        SimpleAggregation = M.DataPrepSimpleAggregationFunction,
        ListAggregation = M.DataPrepListAggregationFunction,
    },
}

M.Aggregation = {
    type = "structure",
    id = "Aggregation",
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
    id = "DataSetColumnIdMapping",
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
    id = "TransformOperationSource",
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
    id = "AggregateOperation",
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
    id = "AttributeAggregationFunction",
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
    id = "PercentileAggregation",
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
    id = "NumericalAggregationFunction",
    members = {
        SimpleNumericalAggregation = {
            type = "string",
        },
        PercentileAggregation = M.PercentileAggregation,
    },
}

M.AggregationFunction = {
    type = "structure",
    id = "AggregationFunction",
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
    id = "AggregationPartitionBy",
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
    id = "ColumnIdentifier",
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
    id = "AggregationSortConfiguration",
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
    id = "AllSheetsFilterScopeConfiguration",
}

M.AmazonElasticsearchParameters = {
    type = "structure",
    id = "AmazonElasticsearchParameters",
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
    id = "AmazonOpenSearchParameters",
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
    id = "DataQnAConfigurations",
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
    id = "DataStoriesConfigurations",
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
    id = "ExecutiveSummaryConfigurations",
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
    id = "GenerativeAuthoringConfigurations",
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
    id = "AmazonQInQuickSightConsoleConfigurations",
    members = {
        DataQnA = M.DataQnAConfigurations,
        GenerativeAuthoring = M.GenerativeAuthoringConfigurations,
        ExecutiveSummary = M.ExecutiveSummaryConfigurations,
        DataStories = M.DataStoriesConfigurations,
    },
}

M.AmazonQInQuickSightDashboardConfigurations = {
    type = "structure",
    id = "AmazonQInQuickSightDashboardConfigurations",
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
    id = "Entity",
    members = {
        Path = {
            type = "string",
        },
    },
}

M.AnalysisError = {
    type = "structure",
    id = "AnalysisError",
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
    id = "LocalNavigationConfiguration",
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
    id = "CustomActionNavigationOperation",
    members = {
        LocalNavigationConfiguration = M.LocalNavigationConfiguration,
    },
}

M.CustomParameterValues = {
    type = "structure",
    id = "CustomParameterValues",
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
    id = "CustomValuesConfiguration",
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
    id = "DestinationParameterValueConfiguration",
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
    id = "SetParameterValueConfiguration",
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
    id = "CustomActionSetParametersOperation",
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
    id = "CustomActionURLOperation",
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
    id = "ImageCustomActionOperation",
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
    id = "ImageCustomAction",
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
    id = "ImageMenuOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.ImageInteractionOptions = {
    type = "structure",
    id = "ImageInteractionOptions",
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
    id = "SheetImageScalingConfiguration",
    members = {
        ScalingType = {
            type = "string",
        },
    },
}

M.SheetImageStaticFileSource = {
    type = "structure",
    id = "SheetImageStaticFileSource",
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
    id = "SheetImageSource",
    members = {
        SheetImageStaticFileSource = M.SheetImageStaticFileSource,
    },
}

M.SheetImageTooltipText = {
    type = "structure",
    id = "SheetImageTooltipText",
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
    id = "SheetImageTooltipConfiguration",
    members = {
        TooltipText = M.SheetImageTooltipText,
        Visibility = {
            type = "string",
        },
    },
}

M.SheetImage = {
    type = "structure",
    id = "SheetImage",
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
    id = "Sheet",
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
    id = "Analysis",
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
    id = "FreeFormLayoutScreenCanvasSizeOptions",
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
    id = "FreeFormLayoutCanvasSizeOptions",
    members = {
        ScreenCanvasSizeOptions = M.FreeFormLayoutScreenCanvasSizeOptions,
    },
}

M.DefaultFreeFormLayoutConfiguration = {
    type = "structure",
    id = "DefaultFreeFormLayoutConfiguration",
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
    id = "GridLayoutScreenCanvasSizeOptions",
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
    id = "GridLayoutCanvasSizeOptions",
    members = {
        ScreenCanvasSizeOptions = M.GridLayoutScreenCanvasSizeOptions,
    },
}

M.DefaultGridLayoutConfiguration = {
    type = "structure",
    id = "DefaultGridLayoutConfiguration",
    members = {
        CanvasSizeOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GridLayoutCanvasSizeOptions }),
    },
}

M.DefaultInteractiveLayoutConfiguration = {
    type = "structure",
    id = "DefaultInteractiveLayoutConfiguration",
    members = {
        Grid = M.DefaultGridLayoutConfiguration,
        FreeForm = M.DefaultFreeFormLayoutConfiguration,
    },
}

M.Spacing = {
    type = "structure",
    id = "Spacing",
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
    id = "SectionBasedLayoutPaperCanvasSizeOptions",
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
    id = "SectionBasedLayoutCanvasSizeOptions",
    members = {
        PaperCanvasSizeOptions = M.SectionBasedLayoutPaperCanvasSizeOptions,
    },
}

M.DefaultSectionBasedLayoutConfiguration = {
    type = "structure",
    id = "DefaultSectionBasedLayoutConfiguration",
    members = {
        CanvasSizeOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SectionBasedLayoutCanvasSizeOptions }),
    },
}

M.DefaultPaginatedLayoutConfiguration = {
    type = "structure",
    id = "DefaultPaginatedLayoutConfiguration",
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
    id = "DefaultNewSheetConfiguration",
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
    id = "AnalysisDefaults",
    members = {
        DefaultNewSheetConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefaultNewSheetConfiguration }),
    },
}

M.CalculatedField = {
    type = "structure",
    id = "CalculatedField",
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
    id = "CustomColor",
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
    id = "ColorsConfiguration",
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
    id = "DecalSettings",
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
    id = "DecalSettingsConfiguration",
    members = {
        CustomDecalSettings = {
            type = "list",
            member = M.DecalSettings,
        },
    },
}

M.NullValueFormatConfiguration = {
    type = "structure",
    id = "NullValueFormatConfiguration",
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
    id = "DecimalPlacesConfiguration",
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
    id = "NegativeValueConfiguration",
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
    id = "ThousandSeparatorOptions",
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
    id = "NumericSeparatorConfiguration",
    members = {
        DecimalSeparator = {
            type = "string",
        },
        ThousandsSeparator = M.ThousandSeparatorOptions,
    },
}

M.CurrencyDisplayFormatConfiguration = {
    type = "structure",
    id = "CurrencyDisplayFormatConfiguration",
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
    id = "NumberDisplayFormatConfiguration",
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
    id = "PercentageDisplayFormatConfiguration",
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
    id = "NumericFormatConfiguration",
    members = {
        NumberDisplayFormatConfiguration = M.NumberDisplayFormatConfiguration,
        CurrencyDisplayFormatConfiguration = M.CurrencyDisplayFormatConfiguration,
        PercentageDisplayFormatConfiguration = M.PercentageDisplayFormatConfiguration,
    },
}

M.DateTimeFormatConfiguration = {
    type = "structure",
    id = "DateTimeFormatConfiguration",
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
    id = "NumberFormatConfiguration",
    members = {
        FormatConfiguration = M.NumericFormatConfiguration,
    },
}

M.StringFormatConfiguration = {
    type = "structure",
    id = "StringFormatConfiguration",
    members = {
        NullValueFormatConfiguration = M.NullValueFormatConfiguration,
        NumericFormatConfiguration = M.NumericFormatConfiguration,
    },
}

M.FormatConfiguration = {
    type = "structure",
    id = "FormatConfiguration",
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
    id = "ColumnConfiguration",
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
    id = "DataSetIdentifierDeclaration",
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
    id = "CustomFilterConfiguration",
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
    id = "CustomFilterListConfiguration",
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
    id = "FilterListConfiguration",
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
    id = "CategoryFilterConfiguration",
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
    id = "SheetControlInfoIconLabelOptions",
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
    id = "FontSize",
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
    id = "FontWeight",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.FontConfiguration = {
    type = "structure",
    id = "FontConfiguration",
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
    id = "LabelOptions",
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
    id = "DateTimePickerControlDisplayOptions",
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
    id = "DefaultDateTimePickerControlOptions",
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
    id = "SelectableValuesSort",
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
    id = "ControlSortConfiguration",
    members = {
        SelectableValuesSort = M.SelectableValuesSort,
        ControlColumnSort = M.AggregationSortConfiguration,
    },
}

M.ListControlSelectAllOptions = {
    type = "structure",
    id = "ListControlSelectAllOptions",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.DropDownControlDisplayOptions = {
    type = "structure",
    id = "DropDownControlDisplayOptions",
    members = {
        SelectAllOptions = M.ListControlSelectAllOptions,
        TitleOptions = M.LabelOptions,
        InfoIconLabelOptions = M.SheetControlInfoIconLabelOptions,
    },
}

M.FilterSelectableValues = {
    type = "structure",
    id = "FilterSelectableValues",
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
    id = "DefaultFilterDropDownControlOptions",
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
    id = "ListControlSearchOptions",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.ListControlDisplayOptions = {
    type = "structure",
    id = "ListControlDisplayOptions",
    members = {
        SearchOptions = M.ListControlSearchOptions,
        SelectAllOptions = M.ListControlSelectAllOptions,
        TitleOptions = M.LabelOptions,
        InfoIconLabelOptions = M.SheetControlInfoIconLabelOptions,
    },
}

M.DefaultFilterListControlOptions = {
    type = "structure",
    id = "DefaultFilterListControlOptions",
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
    id = "RelativeDateTimeControlDisplayOptions",
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
    id = "DefaultRelativeDateTimeControlOptions",
    members = {
        DisplayOptions = M.RelativeDateTimeControlDisplayOptions,
        CommitMode = {
            type = "string",
        },
    },
}

M.SliderControlDisplayOptions = {
    type = "structure",
    id = "SliderControlDisplayOptions",
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
    id = "DefaultSliderControlOptions",
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
    id = "TextControlPlaceholderOptions",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.TextAreaControlDisplayOptions = {
    type = "structure",
    id = "TextAreaControlDisplayOptions",
    members = {
        TitleOptions = M.LabelOptions,
        PlaceholderOptions = M.TextControlPlaceholderOptions,
        InfoIconLabelOptions = M.SheetControlInfoIconLabelOptions,
    },
}

M.DefaultTextAreaControlOptions = {
    type = "structure",
    id = "DefaultTextAreaControlOptions",
    members = {
        Delimiter = {
            type = "string",
        },
        DisplayOptions = M.TextAreaControlDisplayOptions,
    },
}

M.TextFieldControlDisplayOptions = {
    type = "structure",
    id = "TextFieldControlDisplayOptions",
    members = {
        TitleOptions = M.LabelOptions,
        PlaceholderOptions = M.TextControlPlaceholderOptions,
        InfoIconLabelOptions = M.SheetControlInfoIconLabelOptions,
    },
}

M.DefaultTextFieldControlOptions = {
    type = "structure",
    id = "DefaultTextFieldControlOptions",
    members = {
        DisplayOptions = M.TextFieldControlDisplayOptions,
    },
}

M.DefaultFilterControlOptions = {
    type = "structure",
    id = "DefaultFilterControlOptions",
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
    id = "ControlTitleFormatText",
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
    id = "DefaultFilterControlConfiguration",
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
    id = "CategoryFilter",
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
    id = "CategoryInnerFilter",
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
    id = "InnerFilter",
    members = {
        CategoryInnerFilter = M.CategoryInnerFilter,
    },
}

M.NestedFilter = {
    type = "structure",
    id = "NestedFilter",
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
    id = "NumericEqualityFilter",
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
    id = "NumericRangeFilterValue",
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
    id = "NumericRangeFilter",
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
    id = "AnchorDateConfiguration",
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
    id = "ExcludePeriodConfiguration",
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
    id = "RelativeDatesFilter",
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
    id = "RollingDateConfiguration",
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
    id = "TimeEqualityFilter",
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
    id = "TimeRangeFilterValue",
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
    id = "TimeRangeFilter",
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
    id = "TopBottomFilter",
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
    id = "Filter",
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
    id = "SheetVisualScopingConfiguration",
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
    id = "SelectedSheetsFilterScopeConfiguration",
    members = {
        SheetVisualScopingConfigurations = {
            type = "list",
            member = M.SheetVisualScopingConfiguration,
        },
    },
}

M.FilterScopeConfiguration = {
    type = "structure",
    id = "FilterScopeConfiguration",
    members = {
        SelectedSheets = M.SelectedSheetsFilterScopeConfiguration,
        AllSheets = M.AllSheetsFilterScopeConfiguration,
    },
}

M.FilterGroup = {
    type = "structure",
    id = "FilterGroup",
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
    id = "VisualHighlightOperation",
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
    id = "VisualCustomActionDefaults",
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
    id = "AssetOptions",
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
    id = "DynamicDefaultValue",
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
    id = "DateTimeDefaultValues",
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
    id = "MappedDataSetParameter",
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
    id = "DateTimeValueWhenUnsetConfiguration",
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
    id = "DateTimeParameterDeclaration",
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
    id = "DecimalDefaultValues",
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
    id = "DecimalValueWhenUnsetConfiguration",
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
    id = "DecimalParameterDeclaration",
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
    id = "IntegerDefaultValues",
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
    id = "IntegerValueWhenUnsetConfiguration",
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
    id = "IntegerParameterDeclaration",
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
    id = "StringDefaultValues",
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
    id = "StringValueWhenUnsetConfiguration",
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
    id = "StringParameterDeclaration",
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
    id = "ParameterDeclaration",
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
    id = "QueryExecutionOptions",
    members = {
        QueryExecutionMode = {
            type = "string",
        },
    },
}

M.CascadingControlSource = {
    type = "structure",
    id = "CascadingControlSource",
    members = {
        SourceSheetControlId = {
            type = "string",
        },
        ColumnToMatch = M.ColumnIdentifier,
    },
}

M.CascadingControlConfiguration = {
    type = "structure",
    id = "CascadingControlConfiguration",
    members = {
        SourceControls = {
            type = "list",
            member = M.CascadingControlSource,
        },
    },
}

M.FilterCrossSheetControl = {
    type = "structure",
    id = "FilterCrossSheetControl",
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
    id = "FilterDateTimePickerControl",
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
    id = "FilterDropDownControl",
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
    id = "FilterListControl",
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
    id = "FilterRelativeDateTimeControl",
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
    id = "FilterSliderControl",
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
    id = "FilterTextAreaControl",
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
    id = "FilterTextFieldControl",
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
    id = "FilterControl",
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
    id = "FreeFormLayoutElementBackgroundStyle",
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
    id = "FreeFormLayoutElementBorderStyle",
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
    id = "LoadingAnimation",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.SheetElementConfigurationOverrides = {
    type = "structure",
    id = "SheetElementConfigurationOverrides",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.SheetElementRenderingRule = {
    type = "structure",
    id = "SheetElementRenderingRule",
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
    id = "FreeFormLayoutElement",
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
    id = "SheetLayoutGroupMember",
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
    id = "SheetLayoutGroup",
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
    id = "FreeFormLayoutConfiguration",
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
    id = "GridLayoutElementBackgroundStyle",
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
    id = "GridLayoutElementBorderStyle",
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
    id = "GridLayoutElement",
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
    id = "GridLayoutConfiguration",
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
    id = "FreeFormSectionLayoutConfiguration",
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
    id = "SectionLayoutConfiguration",
    members = {
        FreeFormLayout = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FreeFormSectionLayoutConfiguration }),
    },
}

M.BodySectionContent = {
    type = "structure",
    id = "BodySectionContent",
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
    id = "SectionAfterPageBreak",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.SectionPageBreakConfiguration = {
    type = "structure",
    id = "SectionPageBreakConfiguration",
    members = {
        After = M.SectionAfterPageBreak,
    },
}

M.ColumnSort = {
    type = "structure",
    id = "ColumnSort",
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
    id = "BodySectionDynamicCategoryDimensionConfiguration",
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
    id = "BodySectionDynamicNumericDimensionConfiguration",
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
    id = "BodySectionRepeatDimensionConfiguration",
    members = {
        DynamicCategoryDimensionConfiguration = M.BodySectionDynamicCategoryDimensionConfiguration,
        DynamicNumericDimensionConfiguration = M.BodySectionDynamicNumericDimensionConfiguration,
    },
}

M.BodySectionRepeatPageBreakConfiguration = {
    type = "structure",
    id = "BodySectionRepeatPageBreakConfiguration",
    members = {
        After = M.SectionAfterPageBreak,
    },
}

M.BodySectionRepeatConfiguration = {
    type = "structure",
    id = "BodySectionRepeatConfiguration",
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
    id = "SectionStyle",
    members = {
        Height = {
            type = "string",
        },
        Padding = M.Spacing,
    },
}

M.BodySectionConfiguration = {
    type = "structure",
    id = "BodySectionConfiguration",
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
    id = "HeaderFooterSectionConfiguration",
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
    id = "SectionBasedLayoutConfiguration",
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
    id = "LayoutConfiguration",
    members = {
        GridLayout = M.GridLayoutConfiguration,
        FreeFormLayout = M.FreeFormLayoutConfiguration,
        SectionBasedLayout = M.SectionBasedLayoutConfiguration,
    },
}

M.Layout = {
    type = "structure",
    id = "Layout",
    members = {
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LayoutConfiguration }),
    },
}

M.ParameterDateTimePickerControl = {
    type = "structure",
    id = "ParameterDateTimePickerControl",
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
    id = "ParameterSelectableValues",
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
    id = "ParameterDropDownControl",
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
    id = "ParameterListControl",
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
    id = "ParameterSliderControl",
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
    id = "ParameterTextAreaControl",
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
    id = "ParameterTextFieldControl",
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
    id = "ParameterControl",
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
    id = "SheetControlLayoutConfiguration",
    members = {
        GridLayout = M.GridLayoutConfiguration,
    },
}

M.SheetControlLayout = {
    type = "structure",
    id = "SheetControlLayout",
    members = {
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SheetControlLayoutConfiguration }),
    },
}

M.TextBoxMenuOption = {
    type = "structure",
    id = "TextBoxMenuOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.TextBoxInteractionOptions = {
    type = "structure",
    id = "TextBoxInteractionOptions",
    members = {
        TextBoxMenuOption = M.TextBoxMenuOption,
    },
}

M.SheetTextBox = {
    type = "structure",
    id = "SheetTextBox",
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
    id = "FilterOperationSelectedFieldsConfiguration",
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
    id = "SameSheetTargetVisualConfiguration",
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
    id = "FilterOperationTargetVisualsConfiguration",
    members = {
        SameSheetTargetVisualConfiguration = M.SameSheetTargetVisualConfiguration,
    },
}

M.CustomActionFilterOperation = {
    type = "structure",
    id = "CustomActionFilterOperation",
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
    id = "VisualCustomActionOperation",
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
    id = "VisualCustomAction",
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
    id = "DateAxisOptions",
    members = {
        MissingDateVisibility = {
            type = "string",
        },
    },
}

M.AxisDisplayDataDrivenRange = {
    type = "structure",
    id = "AxisDisplayDataDrivenRange",
}

M.AxisDisplayMinMaxRange = {
    type = "structure",
    id = "AxisDisplayMinMaxRange",
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
    id = "AxisDisplayRange",
    members = {
        MinMax = M.AxisDisplayMinMaxRange,
        DataDriven = M.AxisDisplayDataDrivenRange,
    },
}

M.AxisLinearScale = {
    type = "structure",
    id = "AxisLinearScale",
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
    id = "AxisLogarithmicScale",
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
    id = "AxisScale",
    members = {
        Linear = M.AxisLinearScale,
        Logarithmic = M.AxisLogarithmicScale,
    },
}

M.NumericAxisOptions = {
    type = "structure",
    id = "NumericAxisOptions",
    members = {
        Scale = M.AxisScale,
        Range = M.AxisDisplayRange,
    },
}

M.AxisDataOptions = {
    type = "structure",
    id = "AxisDataOptions",
    members = {
        NumericAxisOptions = M.NumericAxisOptions,
        DateAxisOptions = M.DateAxisOptions,
    },
}

M.PercentVisibleRange = {
    type = "structure",
    id = "PercentVisibleRange",
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
    id = "VisibleRangeOptions",
    members = {
        PercentRange = M.PercentVisibleRange,
    },
}

M.ScrollBarOptions = {
    type = "structure",
    id = "ScrollBarOptions",
    members = {
        Visibility = {
            type = "string",
        },
        VisibleRange = M.VisibleRangeOptions,
    },
}

M.AxisTickLabelOptions = {
    type = "structure",
    id = "AxisTickLabelOptions",
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
    id = "AxisDisplayOptions",
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
    id = "AxisLabelReferenceOptions",
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
    id = "AxisLabelOptions",
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
    id = "ChartAxisLabelOptions",
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
    id = "ContributionAnalysisDefault",
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
    id = "DataPathLabelType",
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
    id = "FieldLabelType",
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
    id = "MaximumLabelType",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.MinimumLabelType = {
    type = "structure",
    id = "MinimumLabelType",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.RangeEndsLabelType = {
    type = "structure",
    id = "RangeEndsLabelType",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.DataLabelType = {
    type = "structure",
    id = "DataLabelType",
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
    id = "DataLabelOptions",
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
    id = "BorderSettings",
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
    id = "BarChartDefaultSeriesSettings",
    members = {
        DecalSettings = M.DecalSettings,
        BorderSettings = M.BorderSettings,
    },
}

M.CategoricalDimensionField = {
    type = "structure",
    id = "CategoricalDimensionField",
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
    id = "DateDimensionField",
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
    id = "NumericalDimensionField",
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
    id = "DimensionField",
    members = {
        NumericalDimensionField = M.NumericalDimensionField,
        CategoricalDimensionField = M.CategoricalDimensionField,
        DateDimensionField = M.DateDimensionField,
    },
}

M.CalculatedMeasureField = {
    type = "structure",
    id = "CalculatedMeasureField",
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
    id = "CategoricalMeasureField",
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
    id = "DateMeasureField",
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
    id = "NumericalMeasureField",
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
    id = "MeasureField",
    members = {
        NumericalMeasureField = M.NumericalMeasureField,
        CategoricalMeasureField = M.CategoricalMeasureField,
        DateMeasureField = M.DateMeasureField,
        CalculatedMeasureField = M.CalculatedMeasureField,
    },
}

M.BarChartAggregatedFieldWells = {
    type = "structure",
    id = "BarChartAggregatedFieldWells",
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
    id = "BarChartFieldWells",
    members = {
        BarChartAggregatedFieldWells = M.BarChartAggregatedFieldWells,
    },
}

M.ContextMenuOption = {
    type = "structure",
    id = "ContextMenuOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.VisualMenuOption = {
    type = "structure",
    id = "VisualMenuOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.VisualInteractionOptions = {
    type = "structure",
    id = "VisualInteractionOptions",
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
    id = "LegendOptions",
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
    id = "ReferenceLineDynamicDataConfiguration",
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
    id = "ReferenceLineStaticDataConfiguration",
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
    id = "ReferenceLineDataConfiguration",
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
    id = "ReferenceLineCustomLabelConfiguration",
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
    id = "ReferenceLineValueLabelConfiguration",
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
    id = "ReferenceLineLabelConfiguration",
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
    id = "ReferenceLineStyleConfiguration",
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
    id = "ReferenceLine",
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
    id = "BarChartSeriesSettings",
    members = {
        DecalSettings = M.DecalSettings,
        BorderSettings = M.BorderSettings,
    },
}

M.DataFieldBarSeriesItem = {
    type = "structure",
    id = "DataFieldBarSeriesItem",
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
    id = "FieldBarSeriesItem",
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
    id = "BarSeriesItem",
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
    id = "PanelTitleOptions",
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
    id = "PanelConfiguration",
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
    id = "SmallMultiplesAxisProperties",
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
    id = "SmallMultiplesOptions",
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
    id = "ItemsLimitConfiguration",
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
    id = "FieldSort",
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
    id = "FieldSortOptions",
    members = {
        FieldSort = M.FieldSort,
        ColumnSort = M.ColumnSort,
    },
}

M.BarChartSortConfiguration = {
    type = "structure",
    id = "BarChartSortConfiguration",
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
    id = "ColumnTooltipItem",
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
    id = "FieldTooltipItem",
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
    id = "TooltipItem",
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
    id = "FieldBasedTooltip",
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
    id = "SheetTooltip",
    members = {
        SheetId = {
            type = "string",
        },
    },
}

M.TooltipOptions = {
    type = "structure",
    id = "TooltipOptions",
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
    id = "DataPathType",
    members = {
        PivotTableDataPathType = {
            type = "string",
        },
    },
}

M.DataPathValue = {
    type = "structure",
    id = "DataPathValue",
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
    id = "DataPathColor",
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
    id = "VisualPalette",
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
    id = "BarChartConfiguration",
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
    id = "CategoryDrillDownFilter",
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
    id = "NumericEqualityDrillDownFilter",
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
    id = "TimeRangeDrillDownFilter",
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
    id = "DrillDownFilter",
    members = {
        NumericEqualityFilter = M.NumericEqualityDrillDownFilter,
        CategoryFilter = M.CategoryDrillDownFilter,
        TimeRangeFilter = M.TimeRangeDrillDownFilter,
    },
}

M.DateTimeHierarchy = {
    type = "structure",
    id = "DateTimeHierarchy",
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
    id = "ExplicitHierarchy",
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
    id = "PredefinedHierarchy",
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
    id = "ColumnHierarchy",
    members = {
        ExplicitHierarchy = M.ExplicitHierarchy,
        DateTimeHierarchy = M.DateTimeHierarchy,
        PredefinedHierarchy = M.PredefinedHierarchy,
    },
}

M.LongFormatText = {
    type = "structure",
    id = "LongFormatText",
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
    id = "VisualSubtitleLabelOptions",
    members = {
        Visibility = {
            type = "string",
        },
        FormatText = M.LongFormatText,
    },
}

M.ShortFormatText = {
    type = "structure",
    id = "ShortFormatText",
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
    id = "VisualTitleLabelOptions",
    members = {
        Visibility = {
            type = "string",
        },
        FormatText = M.ShortFormatText,
    },
}

M.BarChartVisual = {
    type = "structure",
    id = "BarChartVisual",
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
    id = "BoxPlotStyleOptions",
    members = {
        FillStyle = {
            type = "string",
        },
    },
}

M.BoxPlotOptions = {
    type = "structure",
    id = "BoxPlotOptions",
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
    id = "BoxPlotAggregatedFieldWells",
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
    id = "BoxPlotFieldWells",
    members = {
        BoxPlotAggregatedFieldWells = M.BoxPlotAggregatedFieldWells,
    },
}

M.PaginationConfiguration = {
    type = "structure",
    id = "PaginationConfiguration",
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
    id = "BoxPlotSortConfiguration",
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
    id = "BoxPlotChartConfiguration",
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
    id = "BoxPlotVisual",
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
    id = "LineChartLineStyleSettings",
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
    id = "LineChartMarkerStyleSettings",
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
    id = "ComboChartDefaultSeriesSettings",
    members = {
        LineStyleSettings = M.LineChartLineStyleSettings,
        MarkerStyleSettings = M.LineChartMarkerStyleSettings,
        DecalSettings = M.DecalSettings,
        BorderSettings = M.BorderSettings,
    },
}

M.ComboChartAggregatedFieldWells = {
    type = "structure",
    id = "ComboChartAggregatedFieldWells",
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
    id = "ComboChartFieldWells",
    members = {
        ComboChartAggregatedFieldWells = M.ComboChartAggregatedFieldWells,
    },
}

M.ComboChartSeriesSettings = {
    type = "structure",
    id = "ComboChartSeriesSettings",
    members = {
        LineStyleSettings = M.LineChartLineStyleSettings,
        MarkerStyleSettings = M.LineChartMarkerStyleSettings,
        DecalSettings = M.DecalSettings,
        BorderSettings = M.BorderSettings,
    },
}

M.DataFieldComboSeriesItem = {
    type = "structure",
    id = "DataFieldComboSeriesItem",
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
    id = "FieldComboSeriesItem",
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
    id = "ComboSeriesItem",
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
    id = "YAxisOptions",
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
    id = "SingleAxisOptions",
    members = {
        YAxisOptions = M.YAxisOptions,
    },
}

M.ComboChartSortConfiguration = {
    type = "structure",
    id = "ComboChartSortConfiguration",
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
    id = "ComboChartConfiguration",
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
    id = "ComboChartVisual",
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
    id = "CustomContentConfiguration",
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
    id = "CustomContentVisual",
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
    id = "EmptyVisual",
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
    id = "FilledMapAggregatedFieldWells",
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
    id = "FilledMapFieldWells",
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
    id = "GeospatialMapStyleOptions",
    members = {
        BaseMapStyle = {
            type = "string",
        },
    },
}

M.FilledMapSortConfiguration = {
    type = "structure",
    id = "FilledMapSortConfiguration",
    members = {
        CategorySort = {
            type = "list",
            member = M.FieldSortOptions,
        },
    },
}

M.GeospatialCoordinateBounds = {
    type = "structure",
    id = "GeospatialCoordinateBounds",
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
    id = "GeospatialWindowOptions",
    members = {
        Bounds = M.GeospatialCoordinateBounds,
        MapZoomMode = {
            type = "string",
        },
    },
}

M.FilledMapConfiguration = {
    type = "structure",
    id = "FilledMapConfiguration",
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
    id = "GradientStop",
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
    id = "GradientColor",
    members = {
        Stops = {
            type = "list",
            member = M.GradientStop,
        },
    },
}

M.ConditionalFormattingGradientColor = {
    type = "structure",
    id = "ConditionalFormattingGradientColor",
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
    id = "ConditionalFormattingSolidColor",
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
    id = "ConditionalFormattingColor",
    members = {
        Solid = M.ConditionalFormattingSolidColor,
        Gradient = M.ConditionalFormattingGradientColor,
    },
}

M.ShapeConditionalFormat = {
    type = "structure",
    id = "ShapeConditionalFormat",
    members = {
        BackgroundColor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConditionalFormattingColor }),
    },
}

M.FilledMapShapeConditionalFormatting = {
    type = "structure",
    id = "FilledMapShapeConditionalFormatting",
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
    id = "FilledMapConditionalFormattingOption",
    members = {
        Shape = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FilledMapShapeConditionalFormatting }),
    },
}

M.FilledMapConditionalFormatting = {
    type = "structure",
    id = "FilledMapConditionalFormatting",
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
    id = "Coordinate",
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
    id = "GeocoderHierarchy",
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
    id = "GeocodePreferenceValue",
    members = {
        GeocoderHierarchy = M.GeocoderHierarchy,
        Coordinate = M.Coordinate,
    },
}

M.GeocodePreference = {
    type = "structure",
    id = "GeocodePreference",
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
    id = "FilledMapVisual",
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
    id = "FunnelChartDataLabelOptions",
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
    id = "FunnelChartAggregatedFieldWells",
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
    id = "FunnelChartFieldWells",
    members = {
        FunnelChartAggregatedFieldWells = M.FunnelChartAggregatedFieldWells,
    },
}

M.FunnelChartSortConfiguration = {
    type = "structure",
    id = "FunnelChartSortConfiguration",
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
    id = "FunnelChartConfiguration",
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
    id = "FunnelChartVisual",
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
    id = "GaugeChartColorConfiguration",
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
    id = "GaugeChartFieldWells",
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
    id = "ArcConfiguration",
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
    id = "ArcAxisDisplayRange",
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
    id = "ArcAxisConfiguration",
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
    id = "ComparisonFormatConfiguration",
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
    id = "ComparisonConfiguration",
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
    id = "GaugeChartOptions",
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
    id = "GaugeChartConfiguration",
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
    id = "GaugeChartArcConditionalFormatting",
    members = {
        ForegroundColor = M.ConditionalFormattingColor,
    },
}

M.ConditionalFormattingIconDisplayOption = {
    ICON_ONLY = "ICON_ONLY",
}

M.ConditionalFormattingIconDisplayConfiguration = {
    type = "structure",
    id = "ConditionalFormattingIconDisplayConfiguration",
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
    id = "ConditionalFormattingCustomIconOptions",
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
    id = "ConditionalFormattingCustomIconCondition",
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
    id = "ConditionalFormattingIconSet",
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
    id = "ConditionalFormattingIcon",
    members = {
        IconSet = M.ConditionalFormattingIconSet,
        CustomCondition = M.ConditionalFormattingCustomIconCondition,
    },
}

M.GaugeChartPrimaryValueConditionalFormatting = {
    type = "structure",
    id = "GaugeChartPrimaryValueConditionalFormatting",
    members = {
        TextColor = M.ConditionalFormattingColor,
        Icon = M.ConditionalFormattingIcon,
    },
}

M.GaugeChartConditionalFormattingOption = {
    type = "structure",
    id = "GaugeChartConditionalFormattingOption",
    members = {
        PrimaryValue = M.GaugeChartPrimaryValueConditionalFormatting,
        Arc = M.GaugeChartArcConditionalFormatting,
    },
}

M.GaugeChartConditionalFormatting = {
    type = "structure",
    id = "GaugeChartConditionalFormatting",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member = M.GaugeChartConditionalFormattingOption,
        },
    },
}

M.GaugeChartVisual = {
    type = "structure",
    id = "GaugeChartVisual",
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
    id = "GeospatialMapAggregatedFieldWells",
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
    id = "GeospatialMapFieldWells",
    members = {
        GeospatialMapAggregatedFieldWells = M.GeospatialMapAggregatedFieldWells,
    },
}

M.SimpleClusterMarker = {
    type = "structure",
    id = "SimpleClusterMarker",
    members = {
        Color = {
            type = "string",
        },
    },
}

M.ClusterMarker = {
    type = "structure",
    id = "ClusterMarker",
    members = {
        SimpleClusterMarker = M.SimpleClusterMarker,
    },
}

M.ClusterMarkerConfiguration = {
    type = "structure",
    id = "ClusterMarkerConfiguration",
    members = {
        ClusterMarker = M.ClusterMarker,
    },
}

M.GeospatialHeatmapDataColor = {
    type = "structure",
    id = "GeospatialHeatmapDataColor",
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
    id = "GeospatialHeatmapColorScale",
    members = {
        Colors = {
            type = "list",
            member = M.GeospatialHeatmapDataColor,
        },
    },
}

M.GeospatialHeatmapConfiguration = {
    type = "structure",
    id = "GeospatialHeatmapConfiguration",
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
    id = "GeospatialPointStyleOptions",
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
    id = "GeospatialMapConfiguration",
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
    id = "GeospatialMapVisual",
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
    id = "DataColor",
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
    id = "ColorScale",
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
    id = "HeatMapAggregatedFieldWells",
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
    id = "HeatMapFieldWells",
    members = {
        HeatMapAggregatedFieldWells = M.HeatMapAggregatedFieldWells,
    },
}

M.HeatMapSortConfiguration = {
    type = "structure",
    id = "HeatMapSortConfiguration",
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
    id = "HeatMapConfiguration",
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
    id = "HeatMapVisual",
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
    id = "BinCountOptions",
    members = {
        Value = {
            type = "integer",
        },
    },
}

M.BinWidthOptions = {
    type = "structure",
    id = "BinWidthOptions",
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
    id = "HistogramBinOptions",
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
    id = "HistogramAggregatedFieldWells",
    members = {
        Values = {
            type = "list",
            member = M.MeasureField,
        },
    },
}

M.HistogramFieldWells = {
    type = "structure",
    id = "HistogramFieldWells",
    members = {
        HistogramAggregatedFieldWells = M.HistogramAggregatedFieldWells,
    },
}

M.HistogramConfiguration = {
    type = "structure",
    id = "HistogramConfiguration",
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
    id = "HistogramVisual",
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
    id = "ForecastComputation",
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
    id = "GrowthRateComputation",
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
    id = "MaximumMinimumComputation",
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
    id = "MetricComparisonComputation",
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
    id = "PeriodOverPeriodComputation",
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
    id = "PeriodToDateComputation",
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
    id = "TopBottomMoversComputation",
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
    id = "TopBottomRankedComputation",
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
    id = "TotalAggregationComputation",
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
    id = "UniqueValuesComputation",
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
    id = "Computation",
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
    id = "CustomNarrativeOptions",
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
    id = "InsightConfiguration",
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
    id = "InsightVisual",
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
    id = "KPIFieldWells",
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
    id = "ProgressBarOptions",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.SecondaryValueOptions = {
    type = "structure",
    id = "SecondaryValueOptions",
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
    id = "KPISparklineOptions",
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
    id = "TrendArrowOptions",
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
    id = "KPIVisualStandardLayout",
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
    id = "KPIVisualLayoutOptions",
    members = {
        StandardLayout = M.KPIVisualStandardLayout,
    },
}

M.KPIOptions = {
    type = "structure",
    id = "KPIOptions",
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
    id = "KPISortConfiguration",
    members = {
        TrendGroupSort = {
            type = "list",
            member = M.FieldSortOptions,
        },
    },
}

M.KPIConfiguration = {
    type = "structure",
    id = "KPIConfiguration",
    members = {
        FieldWells = M.KPIFieldWells,
        SortConfiguration = M.KPISortConfiguration,
        KPIOptions = M.KPIOptions,
        Interactions = M.VisualInteractionOptions,
    },
}

M.KPIActualValueConditionalFormatting = {
    type = "structure",
    id = "KPIActualValueConditionalFormatting",
    members = {
        TextColor = M.ConditionalFormattingColor,
        Icon = M.ConditionalFormattingIcon,
    },
}

M.KPIComparisonValueConditionalFormatting = {
    type = "structure",
    id = "KPIComparisonValueConditionalFormatting",
    members = {
        TextColor = M.ConditionalFormattingColor,
        Icon = M.ConditionalFormattingIcon,
    },
}

M.KPIPrimaryValueConditionalFormatting = {
    type = "structure",
    id = "KPIPrimaryValueConditionalFormatting",
    members = {
        TextColor = M.ConditionalFormattingColor,
        Icon = M.ConditionalFormattingIcon,
    },
}

M.KPIProgressBarConditionalFormatting = {
    type = "structure",
    id = "KPIProgressBarConditionalFormatting",
    members = {
        ForegroundColor = M.ConditionalFormattingColor,
    },
}

M.KPIConditionalFormattingOption = {
    type = "structure",
    id = "KPIConditionalFormattingOption",
    members = {
        PrimaryValue = M.KPIPrimaryValueConditionalFormatting,
        ProgressBar = M.KPIProgressBarConditionalFormatting,
        ActualValue = M.KPIActualValueConditionalFormatting,
        ComparisonValue = M.KPIComparisonValueConditionalFormatting,
    },
}

M.KPIConditionalFormatting = {
    type = "structure",
    id = "KPIConditionalFormatting",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member = M.KPIConditionalFormattingOption,
        },
    },
}

M.KPIVisual = {
    type = "structure",
    id = "KPIVisual",
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
    id = "LayerCustomActionOperation",
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
    id = "LayerCustomAction",
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
    id = "GeospatialStaticFileSource",
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
    id = "GeospatialDataSourceItem",
    members = {
        StaticFileDataSource = M.GeospatialStaticFileSource,
    },
}

M.GeospatialLayerColorField = {
    type = "structure",
    id = "GeospatialLayerColorField",
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
    id = "UnaggregatedField",
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
    id = "GeospatialLayerJoinDefinition",
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
    id = "GeospatialCategoricalDataColor",
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
    id = "GeospatialNullSymbolStyle",
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
    id = "GeospatialNullDataSettings",
    members = {
        SymbolStyle = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeospatialNullSymbolStyle }),
    },
}

M.GeospatialCategoricalColor = {
    type = "structure",
    id = "GeospatialCategoricalColor",
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
    id = "GeospatialGradientStepColor",
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
    id = "GeospatialGradientColor",
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
    id = "GeospatialSolidColor",
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
    id = "GeospatialColor",
    members = {
        Solid = M.GeospatialSolidColor,
        Gradient = M.GeospatialGradientColor,
        Categorical = M.GeospatialCategoricalColor,
    },
}

M.GeospatialLineWidth = {
    type = "structure",
    id = "GeospatialLineWidth",
    members = {
        LineWidth = {
            type = "double",
        },
    },
}

M.GeospatialLineSymbolStyle = {
    type = "structure",
    id = "GeospatialLineSymbolStyle",
    members = {
        FillColor = M.GeospatialColor,
        LineWidth = M.GeospatialLineWidth,
    },
}

M.GeospatialLineStyle = {
    type = "structure",
    id = "GeospatialLineStyle",
    members = {
        LineSymbolStyle = M.GeospatialLineSymbolStyle,
    },
}

M.GeospatialLineLayer = {
    type = "structure",
    id = "GeospatialLineLayer",
    members = {
        Style = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeospatialLineStyle }),
    },
}

M.GeospatialCircleRadius = {
    type = "structure",
    id = "GeospatialCircleRadius",
    members = {
        Radius = {
            type = "double",
        },
    },
}

M.GeospatialCircleSymbolStyle = {
    type = "structure",
    id = "GeospatialCircleSymbolStyle",
    members = {
        FillColor = M.GeospatialColor,
        StrokeColor = M.GeospatialColor,
        StrokeWidth = M.GeospatialLineWidth,
        CircleRadius = M.GeospatialCircleRadius,
    },
}

M.GeospatialPointStyle = {
    type = "structure",
    id = "GeospatialPointStyle",
    members = {
        CircleSymbolStyle = M.GeospatialCircleSymbolStyle,
    },
}

M.GeospatialPointLayer = {
    type = "structure",
    id = "GeospatialPointLayer",
    members = {
        Style = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeospatialPointStyle }),
    },
}

M.GeospatialPolygonSymbolStyle = {
    type = "structure",
    id = "GeospatialPolygonSymbolStyle",
    members = {
        FillColor = M.GeospatialColor,
        StrokeColor = M.GeospatialColor,
        StrokeWidth = M.GeospatialLineWidth,
    },
}

M.GeospatialPolygonStyle = {
    type = "structure",
    id = "GeospatialPolygonStyle",
    members = {
        PolygonSymbolStyle = M.GeospatialPolygonSymbolStyle,
    },
}

M.GeospatialPolygonLayer = {
    type = "structure",
    id = "GeospatialPolygonLayer",
    members = {
        Style = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeospatialPolygonStyle }),
    },
}

M.GeospatialLayerDefinition = {
    type = "structure",
    id = "GeospatialLayerDefinition",
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
    id = "GeospatialLayerItem",
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
    id = "GeospatialMapState",
    members = {
        Bounds = M.GeospatialCoordinateBounds,
        MapNavigation = {
            type = "string",
        },
    },
}

M.GeospatialMapStyle = {
    type = "structure",
    id = "GeospatialMapStyle",
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
    id = "GeospatialLayerMapConfiguration",
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
    id = "LayerMapVisual",
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
    id = "LineChartDefaultSeriesSettings",
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
    id = "LineChartAggregatedFieldWells",
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
    id = "LineChartFieldWells",
    members = {
        LineChartAggregatedFieldWells = M.LineChartAggregatedFieldWells,
    },
}

M.TimeBasedForecastProperties = {
    type = "structure",
    id = "TimeBasedForecastProperties",
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
    id = "WhatIfPointScenario",
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
    id = "WhatIfRangeScenario",
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
    id = "ForecastScenario",
    members = {
        WhatIfPointScenario = M.WhatIfPointScenario,
        WhatIfRangeScenario = M.WhatIfRangeScenario,
    },
}

M.ForecastConfiguration = {
    type = "structure",
    id = "ForecastConfiguration",
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
    id = "MissingDataConfiguration",
    members = {
        TreatmentOption = {
            type = "string",
        },
    },
}

M.LineSeriesAxisDisplayOptions = {
    type = "structure",
    id = "LineSeriesAxisDisplayOptions",
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
    id = "LineChartSeriesSettings",
    members = {
        LineStyleSettings = M.LineChartLineStyleSettings,
        MarkerStyleSettings = M.LineChartMarkerStyleSettings,
        DecalSettings = M.DecalSettings,
    },
}

M.DataFieldSeriesItem = {
    type = "structure",
    id = "DataFieldSeriesItem",
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
    id = "FieldSeriesItem",
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
    id = "SeriesItem",
    members = {
        FieldSeriesItem = M.FieldSeriesItem,
        DataFieldSeriesItem = M.DataFieldSeriesItem,
    },
}

M.LineChartSortConfiguration = {
    type = "structure",
    id = "LineChartSortConfiguration",
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
    id = "LineChartConfiguration",
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
    id = "LineChartVisual",
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
    id = "ArcOptions",
    members = {
        ArcThickness = {
            type = "string",
        },
    },
}

M.DonutCenterOptions = {
    type = "structure",
    id = "DonutCenterOptions",
    members = {
        LabelVisibility = {
            type = "string",
        },
    },
}

M.DonutOptions = {
    type = "structure",
    id = "DonutOptions",
    members = {
        ArcOptions = M.ArcOptions,
        DonutCenterOptions = M.DonutCenterOptions,
    },
}

M.PieChartAggregatedFieldWells = {
    type = "structure",
    id = "PieChartAggregatedFieldWells",
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
    id = "PieChartFieldWells",
    members = {
        PieChartAggregatedFieldWells = M.PieChartAggregatedFieldWells,
    },
}

M.PieChartSortConfiguration = {
    type = "structure",
    id = "PieChartSortConfiguration",
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
    id = "PieChartConfiguration",
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
    id = "PieChartVisual",
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
    id = "VisualCustomizationFieldsConfiguration",
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
    id = "DashboardCustomizationVisualOptions",
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
    id = "PivotTableFieldCollapseStateTarget",
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
    id = "PivotTableFieldCollapseStateOption",
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
    id = "PivotTableDataPathOption",
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
    id = "PivotTableFieldOption",
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
    id = "PivotTableFieldOptions",
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
    id = "PivotTableAggregatedFieldWells",
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
    id = "PivotTableFieldWells",
    members = {
        PivotTableAggregatedFieldWells = M.PivotTableAggregatedFieldWells,
    },
}

M.PivotTablePaginatedReportOptions = {
    type = "structure",
    id = "PivotTablePaginatedReportOptions",
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
    id = "DataPathSort",
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
    id = "PivotTableSortBy",
    members = {
        Field = M.FieldSort,
        Column = M.ColumnSort,
        DataPath = M.DataPathSort,
    },
}

M.PivotFieldSortOptions = {
    type = "structure",
    id = "PivotFieldSortOptions",
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
    id = "PivotTableSortConfiguration",
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
    id = "TableBorderOptions",
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
    id = "TableSideBorderOptions",
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
    id = "GlobalTableBorderOptions",
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
    id = "TableCellStyle",
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
    id = "RowAlternateColorOptions",
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
    id = "PivotTableRowsLabelOptions",
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
    id = "PivotTableOptions",
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
    id = "PivotTableFieldSubtotalOptions",
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
    id = "TableStyleTarget",
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
    id = "SubtotalOptions",
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
    id = "TotalAggregationFunction",
    members = {
        SimpleTotalAggregationFunction = {
            type = "string",
        },
    },
}

M.TotalAggregationOption = {
    type = "structure",
    id = "TotalAggregationOption",
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
    id = "PivotTotalOptions",
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
    id = "PivotTableTotalOptions",
    members = {
        RowSubtotalOptions = M.SubtotalOptions,
        ColumnSubtotalOptions = M.SubtotalOptions,
        RowTotalOptions = M.PivotTotalOptions,
        ColumnTotalOptions = M.PivotTotalOptions,
    },
}

M.PivotTableConfiguration = {
    type = "structure",
    id = "PivotTableConfiguration",
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
    id = "PivotTableConditionalFormattingScope",
    members = {
        Role = {
            type = "string",
        },
    },
}

M.TextConditionalFormat = {
    type = "structure",
    id = "TextConditionalFormat",
    members = {
        BackgroundColor = M.ConditionalFormattingColor,
        TextColor = M.ConditionalFormattingColor,
        Icon = M.ConditionalFormattingIcon,
    },
}

M.PivotTableCellConditionalFormatting = {
    type = "structure",
    id = "PivotTableCellConditionalFormatting",
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
    id = "PivotTableConditionalFormattingOption",
    members = {
        Cell = M.PivotTableCellConditionalFormatting,
    },
}

M.PivotTableConditionalFormatting = {
    type = "structure",
    id = "PivotTableConditionalFormatting",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member = M.PivotTableConditionalFormattingOption,
        },
    },
}

M.PivotTableVisual = {
    type = "structure",
    id = "PivotTableVisual",
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
    id = "PluginVisualFieldWell",
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
    id = "PluginVisualItemsLimitConfiguration",
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
    id = "PluginVisualTableQuerySort",
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
    id = "PluginVisualSortConfiguration",
    members = {
        PluginVisualTableQuerySort = M.PluginVisualTableQuerySort,
    },
}

M.PluginVisualProperty = {
    type = "structure",
    id = "PluginVisualProperty",
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
    id = "PluginVisualOptions",
    members = {
        VisualProperties = {
            type = "list",
            member = M.PluginVisualProperty,
        },
    },
}

M.PluginVisualConfiguration = {
    type = "structure",
    id = "PluginVisualConfiguration",
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
    id = "PluginVisual",
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
    id = "RadarChartAreaStyleSettings",
    members = {
        Visibility = {
            type = "string",
        },
    },
}

M.RadarChartSeriesSettings = {
    type = "structure",
    id = "RadarChartSeriesSettings",
    members = {
        AreaStyleSettings = M.RadarChartAreaStyleSettings,
    },
}

M.RadarChartAggregatedFieldWells = {
    type = "structure",
    id = "RadarChartAggregatedFieldWells",
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
    id = "RadarChartFieldWells",
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
    id = "RadarChartSortConfiguration",
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
    id = "RadarChartConfiguration",
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
    id = "RadarChartVisual",
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
    id = "SankeyDiagramAggregatedFieldWells",
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
    id = "SankeyDiagramFieldWells",
    members = {
        SankeyDiagramAggregatedFieldWells = M.SankeyDiagramAggregatedFieldWells,
    },
}

M.SankeyDiagramSortConfiguration = {
    type = "structure",
    id = "SankeyDiagramSortConfiguration",
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
    id = "SankeyDiagramChartConfiguration",
    members = {
        FieldWells = M.SankeyDiagramFieldWells,
        SortConfiguration = M.SankeyDiagramSortConfiguration,
        DataLabels = M.DataLabelOptions,
        Interactions = M.VisualInteractionOptions,
    },
}

M.SankeyDiagramVisual = {
    type = "structure",
    id = "SankeyDiagramVisual",
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
    id = "ScatterPlotCategoricallyAggregatedFieldWells",
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
    id = "ScatterPlotUnaggregatedFieldWells",
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
    id = "ScatterPlotFieldWells",
    members = {
        ScatterPlotCategoricallyAggregatedFieldWells = M.ScatterPlotCategoricallyAggregatedFieldWells,
        ScatterPlotUnaggregatedFieldWells = M.ScatterPlotUnaggregatedFieldWells,
    },
}

M.ScatterPlotSortConfiguration = {
    type = "structure",
    id = "ScatterPlotSortConfiguration",
    members = {
        ScatterPlotLimitConfiguration = M.ItemsLimitConfiguration,
    },
}

M.ScatterPlotConfiguration = {
    type = "structure",
    id = "ScatterPlotConfiguration",
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
    id = "ScatterPlotVisual",
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
    id = "TablePinnedFieldOptions",
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
    id = "TableCellImageSizingConfiguration",
    members = {
        TableCellImageScalingConfiguration = {
            type = "string",
        },
    },
}

M.TableFieldImageConfiguration = {
    type = "structure",
    id = "TableFieldImageConfiguration",
    members = {
        SizingOptions = M.TableCellImageSizingConfiguration,
    },
}

M.TableFieldIconSetType = {
    LINK = "LINK",
}

M.TableFieldCustomIconContent = {
    type = "structure",
    id = "TableFieldCustomIconContent",
    members = {
        Icon = {
            type = "string",
        },
    },
}

M.TableFieldCustomTextContent = {
    type = "structure",
    id = "TableFieldCustomTextContent",
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
    id = "TableFieldLinkContentConfiguration",
    members = {
        CustomTextContent = M.TableFieldCustomTextContent,
        CustomIconContent = M.TableFieldCustomIconContent,
    },
}

M.TableFieldLinkConfiguration = {
    type = "structure",
    id = "TableFieldLinkConfiguration",
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
    id = "TableFieldURLConfiguration",
    members = {
        LinkConfiguration = M.TableFieldLinkConfiguration,
        ImageConfiguration = M.TableFieldImageConfiguration,
    },
}

M.TableFieldOption = {
    type = "structure",
    id = "TableFieldOption",
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
    id = "TransposedTableOption",
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
    id = "TableFieldOptions",
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
    id = "TableAggregatedFieldWells",
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
    id = "TableUnaggregatedFieldWells",
    members = {
        Values = {
            type = "list",
            member = M.UnaggregatedField,
        },
    },
}

M.TableFieldWells = {
    type = "structure",
    id = "TableFieldWells",
    members = {
        TableAggregatedFieldWells = M.TableAggregatedFieldWells,
        TableUnaggregatedFieldWells = M.TableUnaggregatedFieldWells,
    },
}

M.TablePaginatedReportOptions = {
    type = "structure",
    id = "TablePaginatedReportOptions",
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
    id = "TableSortConfiguration",
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
    id = "DataBarsOptions",
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
    id = "SparklinesOptions",
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
    id = "TableInlineVisualization",
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
    id = "TableOptions",
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
    id = "TotalOptions",
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
    id = "TableConfiguration",
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
    id = "TableCellConditionalFormatting",
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
    id = "TableRowConditionalFormatting",
    members = {
        BackgroundColor = M.ConditionalFormattingColor,
        TextColor = M.ConditionalFormattingColor,
    },
}

M.TableConditionalFormattingOption = {
    type = "structure",
    id = "TableConditionalFormattingOption",
    members = {
        Cell = M.TableCellConditionalFormatting,
        Row = M.TableRowConditionalFormatting,
    },
}

M.TableConditionalFormatting = {
    type = "structure",
    id = "TableConditionalFormatting",
    members = {
        ConditionalFormattingOptions = {
            type = "list",
            member = M.TableConditionalFormattingOption,
        },
    },
}

M.TableVisual = {
    type = "structure",
    id = "TableVisual",
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
    id = "TreeMapAggregatedFieldWells",
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
    id = "TreeMapFieldWells",
    members = {
        TreeMapAggregatedFieldWells = M.TreeMapAggregatedFieldWells,
    },
}

M.TreeMapSortConfiguration = {
    type = "structure",
    id = "TreeMapSortConfiguration",
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
    id = "TreeMapConfiguration",
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
    id = "TreeMapVisual",
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
    id = "WaterfallChartGroupColorConfiguration",
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
    id = "WaterfallChartColorConfiguration",
    members = {
        GroupColorConfiguration = M.WaterfallChartGroupColorConfiguration,
    },
}

M.WaterfallChartAggregatedFieldWells = {
    type = "structure",
    id = "WaterfallChartAggregatedFieldWells",
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
    id = "WaterfallChartFieldWells",
    members = {
        WaterfallChartAggregatedFieldWells = M.WaterfallChartAggregatedFieldWells,
    },
}

M.WaterfallChartSortConfiguration = {
    type = "structure",
    id = "WaterfallChartSortConfiguration",
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
    id = "WaterfallChartOptions",
    members = {
        TotalBarLabel = {
            type = "string",
        },
    },
}

M.WaterfallChartConfiguration = {
    type = "structure",
    id = "WaterfallChartConfiguration",
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
    id = "WaterfallVisual",
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
    id = "WordCloudAggregatedFieldWells",
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
    id = "WordCloudFieldWells",
    members = {
        WordCloudAggregatedFieldWells = M.WordCloudAggregatedFieldWells,
    },
}

M.WordCloudSortConfiguration = {
    type = "structure",
    id = "WordCloudSortConfiguration",
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
    id = "WordCloudOptions",
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
    id = "WordCloudChartConfiguration",
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
    id = "WordCloudVisual",
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
    id = "Visual",
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
    id = "SheetDefinition",
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
    id = "StaticFileS3SourceOptions",
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
    id = "StaticFileUrlSourceOptions",
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
    id = "StaticFileSource",
    members = {
        UrlOptions = M.StaticFileUrlSourceOptions,
        S3Options = M.StaticFileS3SourceOptions,
    },
}

M.ImageStaticFile = {
    type = "structure",
    id = "ImageStaticFile",
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
    id = "SpatialStaticFile",
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
    id = "StaticFile",
    members = {
        ImageStaticFile = M.ImageStaticFile,
        SpatialStaticFile = M.SpatialStaticFile,
    },
}

M.TooltipSheetDefinition = {
    type = "structure",
    id = "TooltipSheetDefinition",
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
    id = "AnalysisDefinition",
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
    id = "AnalysisSearchFilter",
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
    id = "DataSetReference",
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
    id = "AnalysisSourceTemplate",
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
    id = "AnalysisSourceEntity",
    members = {
        SourceTemplate = M.AnalysisSourceTemplate,
    },
}

M.AnalysisSummary = {
    type = "structure",
    id = "AnalysisSummary",
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
    id = "Anchor",
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
    id = "SharedViewConfigurations",
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
    id = "AnonymousUserDashboardFeatureConfigurations",
    members = {
        SharedView = M.SharedViewConfigurations,
    },
}

M.AnonymousUserDashboardEmbeddingConfiguration = {
    type = "structure",
    id = "AnonymousUserDashboardEmbeddingConfiguration",
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
    id = "DashboardVisualId",
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
    id = "AnonymousUserDashboardVisualEmbeddingConfiguration",
    members = {
        InitialDashboardVisualId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DashboardVisualId }),
    },
}

M.AnonymousUserGenerativeQnAEmbeddingConfiguration = {
    type = "structure",
    id = "AnonymousUserGenerativeQnAEmbeddingConfiguration",
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
    id = "AnonymousUserQSearchBarEmbeddingConfiguration",
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
    id = "AnonymousUserEmbeddingExperienceConfiguration",
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
    id = "SnapshotFileSheetSelection",
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
    id = "SnapshotFile",
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
    id = "SnapshotJobResultErrorInfo",
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
    id = "S3BucketConfiguration",
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
    id = "SnapshotS3DestinationConfiguration",
    members = {
        BucketConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3BucketConfiguration }),
    },
}

M.SnapshotJobS3Result = {
    type = "structure",
    id = "SnapshotJobS3Result",
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
    id = "SnapshotJobResultFileGroup",
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
    id = "AnonymousUserSnapshotJobResult",
    members = {
        FileGroups = {
            type = "list",
            member = M.SnapshotJobResultFileGroup,
        },
    },
}

M.APIKeyConnectionMetadata = {
    type = "structure",
    id = "APIKeyConnectionMetadata",
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
    id = "AppendedColumn",
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
    id = "AppendOperation",
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
    id = "Palette",
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
    id = "BrandColorPalette",
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
    id = "NavbarStyle",
    members = {
        GlobalNavbar = M.Palette,
        ContextualNavbar = M.Palette,
    },
}

M.BrandElementStyle = {
    type = "structure",
    id = "BrandElementStyle",
    members = {
        NavbarStyle = M.NavbarStyle,
    },
}

M.ContextualAccentPalette = {
    type = "structure",
    id = "ContextualAccentPalette",
    members = {
        Connection = M.Palette,
        Visualization = M.Palette,
        Insight = M.Palette,
        Automation = M.Palette,
    },
}

M.ApplicationTheme = {
    type = "structure",
    id = "ApplicationTheme",
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
    id = "AssetBundleExportJobAnalysisOverrideProperties",
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
    id = "AssetBundleExportJobDashboardOverrideProperties",
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
    id = "AssetBundleExportJobDataSetOverrideProperties",
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
    id = "AssetBundleExportJobDataSourceOverrideProperties",
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
    id = "AssetBundleExportJobFolderOverrideProperties",
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
    id = "AssetBundleExportJobRefreshScheduleOverrideProperties",
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
    id = "AssetBundleExportJobResourceIdOverrideConfiguration",
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
    id = "AssetBundleExportJobThemeOverrideProperties",
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
    id = "AssetBundleExportJobVPCConnectionOverrideProperties",
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
    id = "AssetBundleCloudFormationOverridePropertyConfiguration",
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
    id = "AssetBundleExportJobError",
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
    id = "AssetBundleExportJobSummary",
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
    id = "AssetBundleExportJobValidationStrategy",
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
    id = "AssetBundleExportJobWarning",
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
    id = "AssetBundleImportJobAnalysisOverrideParameters",
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
    id = "AssetBundleResourcePermissions",
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
    id = "AssetBundleImportJobAnalysisOverridePermissions",
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
    id = "Tag",
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
    id = "AssetBundleImportJobAnalysisOverrideTags",
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
    id = "AssetBundleImportJobDashboardOverrideParameters",
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
    id = "AssetBundleResourceLinkSharingConfiguration",
    members = {
        Permissions = M.AssetBundleResourcePermissions,
    },
}

M.AssetBundleImportJobDashboardOverridePermissions = {
    type = "structure",
    id = "AssetBundleImportJobDashboardOverridePermissions",
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
    id = "AssetBundleImportJobDashboardOverrideTags",
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
    id = "RefreshFailureEmailAlert",
    members = {
        AlertStatus = {
            type = "string",
        },
    },
}

M.RefreshFailureConfiguration = {
    type = "structure",
    id = "RefreshFailureConfiguration",
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
    id = "LookbackWindow",
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
    id = "IncrementalRefresh",
    members = {
        LookbackWindow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LookbackWindow }),
    },
}

M.RefreshConfiguration = {
    type = "structure",
    id = "RefreshConfiguration",
    members = {
        IncrementalRefresh = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IncrementalRefresh }),
    },
}

M.DataSetRefreshProperties = {
    type = "structure",
    id = "DataSetRefreshProperties",
    members = {
        RefreshConfiguration = M.RefreshConfiguration,
        FailureConfiguration = M.RefreshFailureConfiguration,
    },
}

M.AssetBundleImportJobDataSetOverrideParameters = {
    type = "structure",
    id = "AssetBundleImportJobDataSetOverrideParameters",
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
    id = "AssetBundleImportJobDataSetOverridePermissions",
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
    id = "AssetBundleImportJobDataSetOverrideTags",
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
    id = "AssetBundleImportJobDataSourceCredentialPair",
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
    id = "AssetBundleImportJobDataSourceCredentials",
    members = {
        CredentialPair = M.AssetBundleImportJobDataSourceCredentialPair,
        SecretArn = {
            type = "string",
        },
    },
}

M.IdentityCenterConfiguration = {
    type = "structure",
    id = "IdentityCenterConfiguration",
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
    id = "AthenaParameters",
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
    id = "AuroraParameters",
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
    id = "AuroraPostgreSqlParameters",
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
    id = "AwsIotAnalyticsParameters",
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
    id = "BigQueryParameters",
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
    id = "ConfluenceParameters",
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
    id = "CustomConnectionParameters",
    members = {
        ConnectionType = {
            type = "string",
        },
    },
}

M.DatabricksParameters = {
    type = "structure",
    id = "DatabricksParameters",
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
    id = "ExasolParameters",
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
    id = "ImpalaParameters",
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
    id = "JiraParameters",
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
    id = "MariaDbParameters",
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
    id = "MySqlParameters",
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
    id = "OracleParameters",
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
    id = "PostgreSqlParameters",
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
    id = "PrestoParameters",
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
    id = "QBusinessParameters",
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
    id = "RdsParameters",
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
    id = "RedshiftIAMParameters",
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
    id = "RedshiftParameters",
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
    id = "S3KnowledgeBaseParameters",
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
    id = "ManifestFileLocation",
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
    id = "S3Parameters",
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
    id = "S3TablesParameters",
    members = {
        TableBucketArn = {
            type = "string",
        },
    },
}

M.ServiceNowParameters = {
    type = "structure",
    id = "ServiceNowParameters",
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
    id = "VpcConnectionProperties",
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
    id = "OAuthParameters",
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
    id = "SnowflakeParameters",
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
    id = "SparkParameters",
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
    id = "SqlServerParameters",
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
    id = "StarburstParameters",
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
    id = "TeradataParameters",
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
    id = "TrinoParameters",
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
    id = "TwitterParameters",
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
    id = "WebCrawlerParameters",
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
    id = "DataSourceParameters",
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
    id = "SslProperties",
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
    id = "AssetBundleImportJobDataSourceOverrideParameters",
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
    id = "AssetBundleImportJobDataSourceOverridePermissions",
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
    id = "AssetBundleImportJobDataSourceOverrideTags",
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
    id = "AssetBundleImportJobError",
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
    id = "AssetBundleImportJobFolderOverrideParameters",
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
    id = "AssetBundleImportJobFolderOverridePermissions",
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
    id = "AssetBundleImportJobFolderOverrideTags",
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
    id = "AssetBundleImportJobRefreshScheduleOverrideParameters",
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
    id = "AssetBundleImportJobResourceIdOverrideConfiguration",
    members = {
        PrefixForAllResources = {
            type = "string",
        },
    },
}

M.AssetBundleImportJobThemeOverrideParameters = {
    type = "structure",
    id = "AssetBundleImportJobThemeOverrideParameters",
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
    id = "AssetBundleImportJobVPCConnectionOverrideParameters",
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
    id = "AssetBundleImportJobOverrideParameters",
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
    id = "AssetBundleImportJobThemeOverridePermissions",
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
    id = "AssetBundleImportJobOverridePermissions",
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
    id = "AssetBundleImportJobThemeOverrideTags",
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
    id = "AssetBundleImportJobVPCConnectionOverrideTags",
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
    id = "AssetBundleImportJobOverrideTags",
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
    id = "AssetBundleImportJobOverrideValidationStrategy",
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
    id = "AssetBundleImportJobSummary",
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
    id = "AssetBundleImportJobWarning",
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
    id = "AssetBundleImportSource",
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
    id = "AssetBundleImportSourceDescription",
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
    id = "AuthorizationCodeGrantDetails",
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
    id = "AuthorizationCodeGrantCredentialsDetails",
    members = {
        AuthorizationCodeGrantDetails = M.AuthorizationCodeGrantDetails,
    },
}

M.AuthorizationCodeGrantMetadata = {
    type = "structure",
    id = "AuthorizationCodeGrantMetadata",
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
    id = "BasicAuthConnectionMetadata",
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
    id = "ClientCredentialsGrantDetails",
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
    id = "ClientCredentialsDetails",
    members = {
        ClientCredentialsGrantDetails = M.ClientCredentialsGrantDetails,
    },
}

M.ClientCredentialsGrantMetadata = {
    type = "structure",
    id = "ClientCredentialsGrantMetadata",
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
    id = "IAMConnectionMetadata",
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
    id = "NoneConnectionMetadata",
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
    id = "AuthenticationMetadata",
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
    id = "AuthConfig",
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
    id = "AuthorizedTargetsByService",
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
    id = "ContributionAnalysisFactor",
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
    id = "Identifier",
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
    id = "FilterAggMetrics",
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
    id = "CollectiveConstantEntry",
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
    id = "TopicConstantValue",
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
    id = "TopicIRFilterOption",
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
    id = "ContributionAnalysisTimeRanges",
    members = {
        StartRange = M.TopicIRFilterOption,
        EndRange = M.TopicIRFilterOption,
    },
}

M.TopicIRContributionAnalysis = {
    type = "structure",
    id = "TopicIRContributionAnalysis",
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
    id = "NegativeFormat",
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
    id = "DisplayFormatOptions",
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
    id = "NamedEntityRef",
    members = {
        NamedEntityName = {
            type = "string",
        },
    },
}

M.TopicSortClause = {
    type = "structure",
    id = "TopicSortClause",
    members = {
        Operand = M.Identifier,
        SortDirection = {
            type = "string",
        },
    },
}

M.TopicIRGroupBy = {
    type = "structure",
    id = "TopicIRGroupBy",
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
    id = "TopicIRComparisonMethod",
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
    id = "TopicIRMetric",
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
    id = "VisualOptions",
    members = {
        type = {
            type = "string",
        },
    },
}

M.TopicIR = {
    type = "structure",
    id = "TopicIR",
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
    id = "Slot",
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
    id = "TopicTemplate",
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
    id = "InvalidTopicReviewedAnswer",
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
    id = "SucceededTopicReviewedAnswer",
    members = {
        AnswerId = {
            type = "string",
        },
    },
}

M.BatchCreateTopicReviewedAnswerOutput = {
    type = "structure",
    id = "BatchCreateTopicReviewedAnswerOutput",
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
    id = "InternalFailureException",
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
    id = "InvalidParameterValueException",
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
    id = "ResourceNotFoundException",
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
    id = "ThrottlingException",
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
    id = "BatchDeleteTopicReviewedAnswerInput",
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
    id = "BatchDeleteTopicReviewedAnswerOutput",
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
    id = "ConflictException",
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
    id = "BookmarksConfigurations",
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
    id = "BorderStyle",
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
    id = "ImageSource",
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
    id = "ImageConfiguration",
    members = {
        Source = M.ImageSource,
    },
}

M.ImageSetConfiguration = {
    type = "structure",
    id = "ImageSetConfiguration",
    members = {
        Original = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageConfiguration }),
    },
}

M.LogoSetConfiguration = {
    type = "structure",
    id = "LogoSetConfiguration",
    members = {
        Primary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageSetConfiguration }),
        Favicon = M.ImageSetConfiguration,
    },
}

M.LogoConfiguration = {
    type = "structure",
    id = "LogoConfiguration",
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
    id = "BrandDefinition",
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
    id = "Image",
    members = {
        Source = M.ImageSource,
        GeneratedImageUrl = {
            type = "string",
        },
    },
}

M.ImageSet = {
    type = "structure",
    id = "ImageSet",
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
    id = "LogoSet",
    members = {
        Primary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageSet }),
        Favicon = M.ImageSet,
    },
}

M.Logo = {
    type = "structure",
    id = "Logo",
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
    id = "BrandDetail",
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
    id = "BrandSummary",
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
    id = "CalculatedColumn",
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
    id = "CancelIngestionInput",
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
    id = "CancelIngestionOutput",
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
    id = "ResourceExistsException",
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
    id = "Capabilities",
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
    id = "CastColumnTypeOperation",
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
    id = "CastColumnTypesOperation",
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
    id = "CellValueSynonym",
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
    id = "CollectiveConstant",
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
    id = "ColumnDescription",
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
    id = "GeoSpatialColumnGroup",
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
    id = "ColumnGroup",
    members = {
        GeoSpatialColumnGroup = M.GeoSpatialColumnGroup,
    },
}

M.ColumnGroupColumnSchema = {
    type = "structure",
    id = "ColumnGroupColumnSchema",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.ColumnGroupSchema = {
    type = "structure",
    id = "ColumnGroupSchema",
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
    id = "ColumnLevelPermissionRule",
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
    id = "ColumnSchema",
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
    id = "ColumnTag",
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
    id = "ColumnToUnpivot",
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
    id = "ComparativeOrder",
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
    id = "ConcurrentUpdatingException",
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
    id = "ControlTitleFontConfiguration",
    members = {
        FontConfiguration = M.FontConfiguration,
        TextAlignment = {
            type = "string",
        },
    },
}

M.CreateAccountCustomizationInput = {
    type = "structure",
    id = "CreateAccountCustomizationInput",
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
    id = "CreateAccountCustomizationOutput",
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
    id = "ResourceUnavailableException",
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
    id = "CreateAccountSubscriptionInput",
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
    id = "SignupResponse",
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
    id = "CreateAccountSubscriptionOutput",
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
    id = "PreconditionNotMetException",
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
    id = "ResourcePermission",
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
    id = "CreateActionConnectorInput",
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
    id = "CreateActionConnectorOutput",
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
    id = "DateTimeParameter",
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
    id = "DecimalParameter",
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
    id = "IntegerParameter",
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
    id = "StringParameter",
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
    id = "Parameters",
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
    id = "ValidationStrategy",
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
    id = "CreateAnalysisInput",
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
    id = "CreateAnalysisOutput",
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
    id = "LimitExceededException",
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
    id = "UnsupportedUserEditionException",
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
    id = "CreateBrandInput",
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
    id = "CreateBrandOutput",
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
    id = "InternalServerException",
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
    id = "InvalidRequestException",
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
    id = "CreateColumnsOperation",
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
    id = "CreateCustomPermissionsInput",
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
    id = "CreateCustomPermissionsOutput",
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
    id = "DataPointDrillUpDownOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.DataPointMenuLabelOption = {
    type = "structure",
    id = "DataPointMenuLabelOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.DataPointTooltipOption = {
    type = "structure",
    id = "DataPointTooltipOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.DataQAEnabledOption = {
    type = "structure",
    id = "DataQAEnabledOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.DataStoriesSharingOption = {
    type = "structure",
    id = "DataStoriesSharingOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.ExecutiveSummaryOption = {
    type = "structure",
    id = "ExecutiveSummaryOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.ExportToCSVOption = {
    type = "structure",
    id = "ExportToCSVOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.ExportWithHiddenFieldsOption = {
    type = "structure",
    id = "ExportWithHiddenFieldsOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.QuickSuiteActionsOption = {
    type = "structure",
    id = "QuickSuiteActionsOption",
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
    id = "SheetControlsOption",
    members = {
        VisibilityState = {
            type = "string",
        },
    },
}

M.SheetLayoutElementMaximizationOption = {
    type = "structure",
    id = "SheetLayoutElementMaximizationOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.VisualAxisSortOption = {
    type = "structure",
    id = "VisualAxisSortOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.ExportHiddenFieldsOption = {
    type = "structure",
    id = "ExportHiddenFieldsOption",
    members = {
        AvailabilityStatus = {
            type = "string",
        },
    },
}

M.DashboardVisualPublishOptions = {
    type = "structure",
    id = "DashboardVisualPublishOptions",
    members = {
        ExportHiddenFieldsOption = M.ExportHiddenFieldsOption,
    },
}

M.DashboardPublishOptions = {
    type = "structure",
    id = "DashboardPublishOptions",
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
    id = "DashboardVersionDefinition",
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
    id = "LinkSharingConfiguration",
    members = {
        Permissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.DashboardSourceTemplate = {
    type = "structure",
    id = "DashboardSourceTemplate",
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
    id = "DashboardSourceEntity",
    members = {
        SourceTemplate = M.DashboardSourceTemplate,
    },
}

M.CreateDashboardInput = {
    type = "structure",
    id = "CreateDashboardInput",
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
    id = "CreateDashboardOutput",
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
    id = "DestinationTableSource",
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
    id = "DestinationTable",
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
    id = "InputColumn",
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
    id = "ParentDataSet",
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
    id = "SourceTable",
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
    id = "DataSetDateFilterValue",
    members = {
        StaticValue = {
            type = "timestamp",
        },
    },
}

M.DataSetDateComparisonFilterCondition = {
    type = "structure",
    id = "DataSetDateComparisonFilterCondition",
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
    id = "DataSetDateRangeFilterCondition",
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
    id = "DataSetDateFilterCondition",
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
    id = "DataSetNumericFilterValue",
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
    id = "DataSetNumericComparisonFilterCondition",
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
    id = "DataSetNumericRangeFilterCondition",
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
    id = "DataSetNumericFilterCondition",
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
    id = "DataSetStringFilterValue",
    members = {
        StaticValue = {
            type = "string",
        },
    },
}

M.DataSetStringComparisonFilterCondition = {
    type = "structure",
    id = "DataSetStringComparisonFilterCondition",
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
    id = "DataSetStringListFilterValue",
    members = {
        StaticValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DataSetStringListFilterCondition = {
    type = "structure",
    id = "DataSetStringListFilterCondition",
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
    id = "DataSetStringFilterCondition",
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
    id = "FilterOperation",
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
    id = "FiltersOperation",
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
    id = "ImportTableOperationSource",
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
    id = "ImportTableOperation",
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
    id = "OutputColumnNameOverride",
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
    id = "JoinOperandProperties",
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
    id = "JoinOperation",
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
    id = "PivotedLabel",
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
    id = "PivotConfiguration",
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
    id = "ValueColumnConfiguration",
    members = {
        AggregationFunction = M.DataPrepAggregationFunction,
    },
}

M.PivotOperation = {
    type = "structure",
    id = "PivotOperation",
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
    id = "ProjectOperation",
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
    id = "RenameColumnOperation",
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
    id = "RenameColumnsOperation",
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
    id = "UnpivotOperation",
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
    id = "TransformStep",
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
    id = "DataPrepConfiguration",
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
    id = "DateTimeDatasetParameterDefaultValues",
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
    id = "DateTimeDatasetParameter",
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
    id = "DecimalDatasetParameterDefaultValues",
    members = {
        StaticValues = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.DecimalDatasetParameter = {
    type = "structure",
    id = "DecimalDatasetParameter",
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
    id = "IntegerDatasetParameterDefaultValues",
    members = {
        StaticValues = {
            type = "list",
            member = { type = "long" },
        },
    },
}

M.IntegerDatasetParameter = {
    type = "structure",
    id = "IntegerDatasetParameter",
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
    id = "StringDatasetParameterDefaultValues",
    members = {
        StaticValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StringDatasetParameter = {
    type = "structure",
    id = "StringDatasetParameter",
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
    id = "DatasetParameter",
    members = {
        StringDatasetParameter = M.StringDatasetParameter,
        DecimalDatasetParameter = M.DecimalDatasetParameter,
        IntegerDatasetParameter = M.IntegerDatasetParameter,
        DateTimeDatasetParameter = M.DateTimeDatasetParameter,
    },
}

M.DataSetUsageConfiguration = {
    type = "structure",
    id = "DataSetUsageConfiguration",
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
    id = "FieldFolder",
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
    id = "NewDefaultValues",
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
    id = "OverrideDatasetParameterOperation",
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
    id = "TagColumnOperation",
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
    id = "UntagColumnOperation",
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
    id = "TransformOperation",
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
    id = "JoinKeyProperties",
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
    id = "JoinInstruction",
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
    id = "LogicalTableSource",
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
    id = "LogicalTable",
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
    id = "UniqueKey",
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
    id = "PerformanceConfiguration",
    members = {
        UniqueKeys = {
            type = "list",
            member = M.UniqueKey,
        },
    },
}

M.CustomSql = {
    type = "structure",
    id = "CustomSql",
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
    id = "RelationalTable",
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
    id = "UploadSettings",
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
    id = "S3Source",
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
    id = "TablePathElement",
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
    id = "SaaSTable",
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
    id = "PhysicalTable",
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
    id = "RowLevelPermissionDataSet",
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
    id = "RowLevelPermissionTagRule",
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
    id = "RowLevelPermissionTagConfiguration",
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
    id = "RowLevelPermissionConfiguration",
    members = {
        TagConfiguration = M.RowLevelPermissionTagConfiguration,
        RowLevelPermissionDataSet = M.RowLevelPermissionDataSet,
    },
}

M.SemanticTable = {
    type = "structure",
    id = "SemanticTable",
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
    id = "SemanticModelConfiguration",
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
    id = "CreateDataSetInput",
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
    id = "CreateDataSetOutput",
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
    id = "InvalidDataSetParameterValueException",
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
    id = "CredentialPair",
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
    id = "KeyPairCredentials",
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
    id = "OAuthClientCredentials",
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
    id = "WebProxyCredentials",
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
    id = "DataSourceCredentials",
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
    id = "CreateDataSourceInput",
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
    id = "CreateDataSourceOutput",
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
    id = "CustomerManagedKeyUnavailableException",
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
    id = "CreateFolderInput",
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
    id = "CreateFolderOutput",
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
    id = "CreateFolderMembershipInput",
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
    id = "FolderMember",
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
    id = "CreateFolderMembershipOutput",
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
    id = "CreateGroupInput",
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
    id = "Group",
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
    id = "CreateGroupOutput",
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
    id = "CreateGroupMembershipInput",
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
    id = "GroupMember",
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
    id = "CreateGroupMembershipOutput",
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
    id = "CreateIAMPolicyAssignmentInput",
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
    id = "CreateIAMPolicyAssignmentOutput",
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
    id = "CreateIngestionInput",
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
    id = "CreateIngestionOutput",
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
    id = "CreateNamespaceInput",
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
    id = "CreateNamespaceOutput",
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
    id = "ScheduleRefreshOnEntity",
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
    id = "RefreshFrequency",
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
    id = "RefreshSchedule",
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
    id = "CreateRefreshScheduleInput",
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
    id = "CreateRefreshScheduleOutput",
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
    id = "CreateRoleMembershipInput",
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
    id = "CreateRoleMembershipOutput",
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
    id = "DataSetSchema",
    members = {
        ColumnSchemaList = {
            type = "list",
            member = M.ColumnSchema,
        },
    },
}

M.DataSetConfiguration = {
    type = "structure",
    id = "DataSetConfiguration",
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
    id = "TemplateVersionDefinition",
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
    id = "TemplateSourceAnalysis",
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
    id = "TemplateSourceTemplate",
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
    id = "TemplateSourceEntity",
    members = {
        SourceAnalysis = M.TemplateSourceAnalysis,
        SourceTemplate = M.TemplateSourceTemplate,
    },
}

M.CreateTemplateInput = {
    type = "structure",
    id = "CreateTemplateInput",
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
    id = "CreateTemplateOutput",
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
    id = "CreateTemplateAliasInput",
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
    id = "TemplateAlias",
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
    id = "CreateTemplateAliasOutput",
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
    id = "DataColorPalette",
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
    id = "SheetBackgroundStyle",
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
    id = "TileStyle",
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
    id = "GutterStyle",
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
    id = "MarginStyle",
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
    id = "TileLayoutStyle",
    members = {
        Gutter = M.GutterStyle,
        Margin = M.MarginStyle,
    },
}

M.SheetStyle = {
    type = "structure",
    id = "SheetStyle",
    members = {
        Tile = M.TileStyle,
        TileLayout = M.TileLayoutStyle,
        Background = M.SheetBackgroundStyle,
    },
}

M.Font = {
    type = "structure",
    id = "Font",
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
    id = "VisualSubtitleFontConfiguration",
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
    id = "VisualTitleFontConfiguration",
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
    id = "Typography",
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
    id = "UIColorPalette",
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
    id = "ThemeConfiguration",
    members = {
        DataColorPalette = M.DataColorPalette,
        UIColorPalette = M.UIColorPalette,
        Sheet = M.SheetStyle,
        Typography = M.Typography,
    },
}

M.CreateThemeInput = {
    type = "structure",
    id = "CreateThemeInput",
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
    id = "CreateThemeOutput",
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
    id = "CreateThemeAliasInput",
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
    id = "ThemeAlias",
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
    id = "CreateThemeAliasOutput",
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
    id = "CustomInstructions",
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
    id = "TopicConfigOptions",
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
    id = "DefaultFormatting",
    members = {
        DisplayFormat = {
            type = "string",
        },
        DisplayFormatOptions = M.DisplayFormatOptions,
    },
}

M.SemanticType = {
    type = "structure",
    id = "SemanticType",
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
    id = "TopicCalculatedField",
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
    id = "TopicColumn",
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
    id = "DataAggregation",
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
    id = "TopicCategoryFilterConstant",
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
    id = "TopicCategoryFilter",
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
    id = "RangeConstant",
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
    id = "TopicRangeFilterConstant",
    members = {
        ConstantType = {
            type = "string",
        },
        RangeConstant = M.RangeConstant,
    },
}

M.TopicDateRangeFilter = {
    type = "structure",
    id = "TopicDateRangeFilter",
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
    id = "TopicSingularFilterConstant",
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
    id = "TopicNullFilter",
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
    id = "TopicNumericEqualityFilter",
    members = {
        Constant = M.TopicSingularFilterConstant,
        Aggregation = {
            type = "string",
        },
    },
}

M.TopicNumericRangeFilter = {
    type = "structure",
    id = "TopicNumericRangeFilter",
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
    id = "TopicRelativeDateFilter",
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
    id = "TopicFilter",
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
    id = "NamedEntityDefinitionMetric",
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
    id = "NamedEntityDefinition",
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
    id = "SemanticEntityType",
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
    id = "TopicNamedEntity",
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
    id = "DatasetMetadata",
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
    id = "TopicDetails",
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
    id = "CreateTopicInput",
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
    id = "CreateTopicOutput",
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
    id = "TopicRefreshSchedule",
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
    id = "CreateTopicRefreshScheduleInput",
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
    id = "CreateTopicRefreshScheduleOutput",
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
    id = "CreateVPCConnectionInput",
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
    id = "CreateVPCConnectionOutput",
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
    id = "CustomPermissions",
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
    id = "DashboardError",
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
    id = "DashboardVersion",
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
    id = "Dashboard",
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
    id = "DashboardCustomizationSummaryConfigurations",
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
    id = "DashboardSearchFilter",
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
    id = "DashboardSummary",
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
    id = "DashboardVersionSummary",
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
    id = "DashboardVisualResult",
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
    id = "OutputColumn",
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
    id = "DataSet",
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
    id = "DataSetSearchFilter",
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
    id = "DataSetSummary",
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
    id = "DataSourceErrorInfo",
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
    id = "DataSource",
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
    id = "DataSourceSearchFilter",
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
    id = "DataSourceSummary",
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
    id = "DeleteAccountCustomizationInput",
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
    id = "DeleteAccountCustomizationOutput",
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
    id = "DeleteAccountCustomPermissionInput",
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
    id = "DeleteAccountCustomPermissionOutput",
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
    id = "DeleteAccountSubscriptionInput",
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
    id = "DeleteAccountSubscriptionOutput",
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
    id = "DeleteActionConnectorInput",
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
    id = "DeleteActionConnectorOutput",
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
    id = "DeleteAnalysisInput",
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
    id = "DeleteAnalysisOutput",
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
    id = "DeleteBrandInput",
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
    id = "DeleteBrandOutput",
    members = {
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteBrandAssignmentInput = {
    type = "structure",
    id = "DeleteBrandAssignmentInput",
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
    id = "DeleteBrandAssignmentOutput",
    members = {
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteCustomPermissionsInput = {
    type = "structure",
    id = "DeleteCustomPermissionsInput",
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
    id = "DeleteCustomPermissionsOutput",
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
    id = "DeleteDashboardInput",
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
    id = "DeleteDashboardOutput",
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
    id = "DeleteDataSetInput",
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
    id = "DeleteDataSetOutput",
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
    id = "DeleteDataSetRefreshPropertiesInput",
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
    id = "DeleteDataSetRefreshPropertiesOutput",
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
    id = "DeleteDataSourceInput",
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
    id = "DeleteDataSourceOutput",
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
    id = "DeleteDefaultQBusinessApplicationInput",
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
    id = "DeleteDefaultQBusinessApplicationOutput",
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
    id = "DeleteFolderInput",
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
    id = "DeleteFolderOutput",
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
    id = "DeleteFolderMembershipInput",
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
    id = "DeleteFolderMembershipOutput",
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
    id = "DeleteGroupInput",
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
    id = "DeleteGroupOutput",
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
    id = "DeleteGroupMembershipInput",
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
    id = "DeleteGroupMembershipOutput",
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
    id = "DeleteIAMPolicyAssignmentInput",
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
    id = "DeleteIAMPolicyAssignmentOutput",
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
    id = "DeleteIdentityPropagationConfigInput",
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
    id = "DeleteIdentityPropagationConfigOutput",
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
    id = "DeleteNamespaceInput",
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
    id = "DeleteNamespaceOutput",
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
    id = "DeleteRefreshScheduleInput",
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
    id = "DeleteRefreshScheduleOutput",
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
    id = "DeleteRoleCustomPermissionInput",
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
    id = "DeleteRoleCustomPermissionOutput",
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
    id = "DeleteRoleMembershipInput",
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
    id = "DeleteRoleMembershipOutput",
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
    id = "DeleteTemplateInput",
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
    id = "DeleteTemplateOutput",
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
    id = "DeleteTemplateAliasInput",
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
    id = "DeleteTemplateAliasOutput",
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
    id = "DeleteThemeInput",
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
    id = "DeleteThemeOutput",
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
    id = "DeleteThemeAliasInput",
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
    id = "DeleteThemeAliasOutput",
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
    id = "DeleteTopicInput",
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
    id = "DeleteTopicOutput",
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
    id = "DeleteTopicRefreshScheduleInput",
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
    id = "DeleteTopicRefreshScheduleOutput",
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
    id = "DeleteUserInput",
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
    id = "DeleteUserOutput",
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
    id = "DeleteUserByPrincipalIdInput",
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
    id = "DeleteUserByPrincipalIdOutput",
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
    id = "DeleteUserCustomPermissionInput",
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
    id = "DeleteUserCustomPermissionOutput",
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
    id = "DeleteVPCConnectionInput",
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
    id = "DeleteVPCConnectionOutput",
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
    id = "DescribeAccountCustomizationInput",
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
    id = "DescribeAccountCustomizationOutput",
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
    id = "DescribeAccountCustomPermissionInput",
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
    id = "DescribeAccountCustomPermissionOutput",
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
    id = "DescribeAccountSettingsInput",
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
    id = "DescribeAccountSettingsOutput",
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
    id = "DescribeAccountSubscriptionInput",
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
    id = "DescribeAccountSubscriptionOutput",
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
    id = "DescribeActionConnectorInput",
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
    id = "DescribeActionConnectorOutput",
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
    id = "DescribeActionConnectorPermissionsInput",
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
    id = "DescribeActionConnectorPermissionsOutput",
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
    id = "DescribeAnalysisInput",
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
    id = "DescribeAnalysisOutput",
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
    id = "DescribeAnalysisDefinitionInput",
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
    id = "DescribeAnalysisDefinitionOutput",
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
    id = "DescribeAnalysisPermissionsInput",
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
    id = "DescribeAnalysisPermissionsOutput",
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
    id = "DescribeAssetBundleExportJobInput",
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
    id = "DescribeAssetBundleExportJobOutput",
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
    id = "DescribeAssetBundleImportJobInput",
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
    id = "DescribeAssetBundleImportJobOutput",
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
    id = "DescribeAutomationJobInput",
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
    id = "DescribeAutomationJobOutput",
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
    id = "DescribeBrandInput",
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
    id = "DescribeBrandOutput",
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
    id = "DescribeBrandAssignmentInput",
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
    id = "DescribeBrandAssignmentOutput",
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
    id = "DescribeBrandPublishedVersionInput",
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
    id = "DescribeBrandPublishedVersionOutput",
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
    id = "DescribeCustomPermissionsInput",
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
    id = "DescribeCustomPermissionsOutput",
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
    id = "DescribeDashboardInput",
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
    id = "DescribeDashboardOutput",
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
    id = "DescribeDashboardDefinitionInput",
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
    id = "DescribeDashboardDefinitionOutput",
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
    id = "DescribeDashboardPermissionsInput",
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
    id = "DescribeDashboardPermissionsOutput",
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
    id = "DescribeDashboardSnapshotJobInput",
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
    id = "SnapshotDestinationConfiguration",
    members = {
        S3Destinations = {
            type = "list",
            member = M.SnapshotS3DestinationConfiguration,
        },
    },
}

M.SnapshotFileGroup = {
    type = "structure",
    id = "SnapshotFileGroup",
    members = {
        Files = {
            type = "list",
            member = M.SnapshotFile,
        },
    },
}

M.SnapshotConfiguration = {
    type = "structure",
    id = "SnapshotConfiguration",
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
    id = "SnapshotAnonymousUserRedacted",
    members = {
        RowLevelPermissionTagKeys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SnapshotUserConfigurationRedacted = {
    type = "structure",
    id = "SnapshotUserConfigurationRedacted",
    members = {
        AnonymousUsers = {
            type = "list",
            member = M.SnapshotAnonymousUserRedacted,
        },
    },
}

M.DescribeDashboardSnapshotJobOutput = {
    type = "structure",
    id = "DescribeDashboardSnapshotJobOutput",
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
    id = "DescribeDashboardSnapshotJobResultInput",
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
    id = "SnapshotJobErrorInfo",
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
    id = "RegisteredUserSnapshotJobResult",
    members = {
        FileGroups = {
            type = "list",
            member = M.SnapshotJobResultFileGroup,
        },
    },
}

M.SnapshotJobResult = {
    type = "structure",
    id = "SnapshotJobResult",
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
    id = "DescribeDashboardSnapshotJobResultOutput",
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
    id = "DescribeDashboardsQAConfigurationInput",
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
    id = "DescribeDashboardsQAConfigurationOutput",
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
    id = "DescribeDataSetInput",
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
    id = "DescribeDataSetOutput",
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
    id = "DescribeDataSetPermissionsInput",
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
    id = "DescribeDataSetPermissionsOutput",
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
    id = "DescribeDataSetRefreshPropertiesInput",
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
    id = "DescribeDataSetRefreshPropertiesOutput",
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
    id = "DescribeDataSourceInput",
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
    id = "DescribeDataSourceOutput",
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
    id = "DescribeDataSourcePermissionsInput",
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
    id = "DescribeDataSourcePermissionsOutput",
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
    id = "DescribeDefaultQBusinessApplicationInput",
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
    id = "DescribeDefaultQBusinessApplicationOutput",
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
    id = "DescribeFolderInput",
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
    id = "Folder",
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
    id = "DescribeFolderOutput",
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
    id = "DescribeFolderPermissionsInput",
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
    id = "DescribeFolderPermissionsOutput",
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
    id = "InvalidNextTokenException",
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
    id = "DescribeFolderResolvedPermissionsInput",
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
    id = "DescribeFolderResolvedPermissionsOutput",
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
    id = "DescribeGroupInput",
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
    id = "DescribeGroupOutput",
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
    id = "DescribeGroupMembershipInput",
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
    id = "DescribeGroupMembershipOutput",
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
    id = "DescribeIAMPolicyAssignmentInput",
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
    id = "IAMPolicyAssignment",
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
    id = "DescribeIAMPolicyAssignmentOutput",
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
    id = "DescribeIngestionInput",
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
    id = "ErrorInfo",
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
    id = "QueueInfo",
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
    id = "RowInfo",
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
    id = "Ingestion",
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
    id = "DescribeIngestionOutput",
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
    id = "DescribeIpRestrictionInput",
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
    id = "DescribeIpRestrictionOutput",
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
    id = "DescribeKeyRegistrationInput",
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
    id = "RegisteredCustomerManagedKey",
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
    id = "QDataKey",
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
    id = "DescribeKeyRegistrationOutput",
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
    id = "DescribeNamespaceInput",
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
    id = "NamespaceError",
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
    id = "NamespaceInfoV2",
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
    id = "DescribeNamespaceOutput",
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
    id = "DescribeQPersonalizationConfigurationInput",
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
    id = "DescribeQPersonalizationConfigurationOutput",
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
    id = "DescribeQuickSightQSearchConfigurationInput",
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
    id = "DescribeQuickSightQSearchConfigurationOutput",
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
    id = "DescribeRefreshScheduleInput",
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
    id = "DescribeRefreshScheduleOutput",
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
    id = "DescribeRoleCustomPermissionInput",
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
    id = "DescribeRoleCustomPermissionOutput",
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
    id = "DescribeSelfUpgradeConfigurationInput",
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
    id = "SelfUpgradeConfiguration",
    members = {
        SelfUpgradeStatus = {
            type = "string",
        },
    },
}

M.DescribeSelfUpgradeConfigurationOutput = {
    type = "structure",
    id = "DescribeSelfUpgradeConfigurationOutput",
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
    id = "InvalidParameterException",
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
    id = "DescribeTemplateInput",
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
    id = "TemplateError",
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
    id = "TemplateVersion",
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
    id = "Template",
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
    id = "DescribeTemplateOutput",
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
    id = "DescribeTemplateAliasInput",
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
    id = "DescribeTemplateAliasOutput",
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
    id = "DescribeTemplateDefinitionInput",
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
    id = "DescribeTemplateDefinitionOutput",
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
    id = "DescribeTemplatePermissionsInput",
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
    id = "DescribeTemplatePermissionsOutput",
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
    id = "DescribeThemeInput",
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
    id = "ThemeError",
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
    id = "ThemeVersion",
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
    id = "Theme",
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
    id = "DescribeThemeOutput",
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
    id = "DescribeThemeAliasInput",
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
    id = "DescribeThemeAliasOutput",
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
    id = "DescribeThemePermissionsInput",
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
    id = "DescribeThemePermissionsOutput",
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
    id = "DescribeTopicInput",
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
    id = "DescribeTopicOutput",
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
    id = "DescribeTopicPermissionsInput",
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
    id = "DescribeTopicPermissionsOutput",
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
    id = "DescribeTopicRefreshInput",
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
    id = "TopicRefreshDetails",
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
    id = "DescribeTopicRefreshOutput",
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
    id = "DescribeTopicRefreshScheduleInput",
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
    id = "DescribeTopicRefreshScheduleOutput",
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
    id = "DescribeUserInput",
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
    id = "User",
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
    id = "DescribeUserOutput",
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
    id = "DescribeVPCConnectionInput",
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
    id = "NetworkInterface",
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
    id = "VPCConnection",
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
    id = "DescribeVPCConnectionOutput",
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
    id = "DomainNotWhitelistedException",
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
    id = "FailedKeyRegistrationEntry",
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
    id = "FlowSummary",
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
    id = "MemberIdArnPair",
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
    id = "FolderSearchFilter",
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
    id = "FolderSummary",
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
    id = "GeneratedAnswerResult",
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
    id = "SessionTag",
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
    id = "GenerateEmbedUrlForAnonymousUserInput",
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
    id = "GenerateEmbedUrlForAnonymousUserOutput",
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
    id = "SessionLifetimeInMinutesInvalidException",
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
    id = "UnsupportedPricingPlanException",
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
    id = "RecentSnapshotsConfigurations",
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
    id = "SchedulesConfigurations",
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
    id = "StatePersistenceConfigurations",
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
    id = "ThresholdAlertsConfigurations",
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
    id = "RegisteredUserDashboardFeatureConfigurations",
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
    id = "RegisteredUserDashboardEmbeddingConfiguration",
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
    id = "RegisteredUserDashboardVisualEmbeddingConfiguration",
    members = {
        InitialDashboardVisualId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DashboardVisualId }),
    },
}

M.RegisteredUserGenerativeQnAEmbeddingConfiguration = {
    type = "structure",
    id = "RegisteredUserGenerativeQnAEmbeddingConfiguration",
    members = {
        InitialTopicId = {
            type = "string",
        },
    },
}

M.RegisteredUserQSearchBarEmbeddingConfiguration = {
    type = "structure",
    id = "RegisteredUserQSearchBarEmbeddingConfiguration",
    members = {
        InitialTopicId = {
            type = "string",
        },
    },
}

M.RegisteredUserQuickChatEmbeddingConfiguration = {
    type = "structure",
    id = "RegisteredUserQuickChatEmbeddingConfiguration",
}

M.RegisteredUserConsoleFeatureConfigurations = {
    type = "structure",
    id = "RegisteredUserConsoleFeatureConfigurations",
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
    id = "RegisteredUserQuickSightConsoleEmbeddingConfiguration",
    members = {
        InitialPath = {
            type = "string",
        },
        FeatureConfigurations = M.RegisteredUserConsoleFeatureConfigurations,
    },
}

M.RegisteredUserEmbeddingExperienceConfiguration = {
    type = "structure",
    id = "RegisteredUserEmbeddingExperienceConfiguration",
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
    id = "GenerateEmbedUrlForRegisteredUserInput",
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
    id = "GenerateEmbedUrlForRegisteredUserOutput",
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
    id = "QuickSightUserNotFoundException",
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
    id = "GenerateEmbedUrlForRegisteredUserWithIdentityInput",
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
    id = "GenerateEmbedUrlForRegisteredUserWithIdentityOutput",
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
    id = "GetDashboardEmbedUrlInput",
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
    id = "GetDashboardEmbedUrlOutput",
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
    id = "IdentityTypeNotSupportedException",
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
    id = "GetFlowMetadataInput",
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
    id = "GetFlowMetadataOutput",
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
    id = "GetFlowPermissionsInput",
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
    id = "Permission",
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
    id = "GetFlowPermissionsOutput",
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
    id = "UserIdentifier",
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
    id = "GetIdentityContextInput",
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
    id = "GetIdentityContextOutput",
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
    id = "GetSessionEmbedUrlInput",
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
    id = "GetSessionEmbedUrlOutput",
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
    id = "GroupSearchFilter",
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
    id = "IAMPolicyAssignmentSummary",
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
    id = "ListActionConnectorsInput",
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
    id = "ListActionConnectorsOutput",
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
    id = "ListAnalysesInput",
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
    id = "ListAnalysesOutput",
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
    id = "ListAssetBundleExportJobsInput",
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
    id = "ListAssetBundleExportJobsOutput",
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
    id = "ListAssetBundleImportJobsInput",
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
    id = "ListAssetBundleImportJobsOutput",
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
    id = "ListBrandsInput",
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
    id = "ListBrandsOutput",
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
    id = "ListCustomPermissionsInput",
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
    id = "ListCustomPermissionsOutput",
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
    id = "ListDashboardsInput",
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
    id = "ListDashboardsOutput",
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
    id = "ListDashboardVersionsInput",
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
    id = "ListDashboardVersionsOutput",
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
    id = "ListDataSetsInput",
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
    id = "ListDataSetsOutput",
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
    id = "ListDataSourcesInput",
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
    id = "ListDataSourcesOutput",
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
    id = "ListFlowsInput",
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
    id = "ListFlowsOutput",
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
    id = "ListFolderMembersInput",
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
    id = "ListFolderMembersOutput",
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
    id = "ListFoldersInput",
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
    id = "ListFoldersOutput",
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
    id = "ListFoldersForResourceInput",
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
    id = "ListFoldersForResourceOutput",
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
    id = "ListGroupMembershipsInput",
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
    id = "ListGroupMembershipsOutput",
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
    id = "ListGroupsInput",
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
    id = "ListGroupsOutput",
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
    id = "ListIAMPolicyAssignmentsInput",
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
    id = "ListIAMPolicyAssignmentsOutput",
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
    id = "ListIAMPolicyAssignmentsForUserInput",
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
    id = "ListIAMPolicyAssignmentsForUserOutput",
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
    id = "ListIdentityPropagationConfigsInput",
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
    id = "ListIdentityPropagationConfigsOutput",
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
    id = "ListIngestionsInput",
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
    id = "ListIngestionsOutput",
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
    id = "ListNamespacesInput",
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
    id = "ListNamespacesOutput",
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
    id = "ListRefreshSchedulesInput",
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
    id = "ListRefreshSchedulesOutput",
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
    id = "ListRoleMembershipsInput",
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
    id = "ListRoleMembershipsOutput",
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
    id = "ListSelfUpgradesInput",
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
    id = "SelfUpgradeRequestDetail",
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
    id = "ListSelfUpgradesOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "ListTemplateAliasesInput",
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
    id = "ListTemplateAliasesOutput",
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
    id = "ListTemplatesInput",
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
    id = "TemplateSummary",
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
    id = "ListTemplatesOutput",
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
    id = "ListTemplateVersionsInput",
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
    id = "TemplateVersionSummary",
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
    id = "ListTemplateVersionsOutput",
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
    id = "ListThemeAliasesInput",
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
    id = "ListThemeAliasesOutput",
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
    id = "ListThemesInput",
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
    id = "ThemeSummary",
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
    id = "ListThemesOutput",
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
    id = "ListThemeVersionsInput",
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
    id = "ThemeVersionSummary",
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
    id = "ListThemeVersionsOutput",
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
    id = "ListTopicRefreshSchedulesInput",
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
    id = "TopicRefreshScheduleSummary",
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
    id = "ListTopicRefreshSchedulesOutput",
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
    id = "ListTopicReviewedAnswersInput",
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
    id = "ListTopicsInput",
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
    id = "TopicSummary",
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
    id = "ListTopicsOutput",
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
    id = "ListUserGroupsInput",
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
    id = "ListUserGroupsOutput",
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
    id = "ListUsersInput",
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
    id = "ListUsersOutput",
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
    id = "ListVPCConnectionsInput",
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
    id = "VPCConnectionSummary",
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
    id = "ListVPCConnectionsOutput",
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
    id = "PredictQAResultsInput",
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
    id = "QAResult",
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
    id = "PredictQAResultsOutput",
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
    id = "PutDataSetRefreshPropertiesInput",
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
    id = "PutDataSetRefreshPropertiesOutput",
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
    id = "RegisterUserInput",
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
    id = "RegisterUserOutput",
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
    id = "RestoreAnalysisInput",
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
    id = "RestoreAnalysisOutput",
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
    id = "SearchActionConnectorsInput",
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
    id = "SearchActionConnectorsOutput",
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
    id = "SearchAnalysesInput",
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
    id = "SearchAnalysesOutput",
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
    id = "SearchDashboardsInput",
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
    id = "SearchDashboardsOutput",
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
    id = "SearchDataSetsInput",
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
    id = "SearchDataSetsOutput",
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
    id = "SearchDataSourcesInput",
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
    id = "SearchDataSourcesOutput",
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
    id = "SearchFlowsFilter",
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
    id = "SearchFlowsInput",
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
    id = "SearchFlowsOutput",
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
    id = "SearchFoldersInput",
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
    id = "SearchFoldersOutput",
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
    id = "SearchGroupsInput",
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
    id = "SearchGroupsOutput",
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
    id = "TopicSearchFilter",
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
    id = "SearchTopicsInput",
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
    id = "SearchTopicsOutput",
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
    id = "StartAssetBundleExportJobInput",
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
    id = "StartAssetBundleExportJobOutput",
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
    id = "StartAssetBundleImportJobInput",
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
    id = "StartAssetBundleImportJobOutput",
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
    id = "StartAutomationJobInput",
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
    id = "StartAutomationJobOutput",
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
    id = "SnapshotAnonymousUser",
    members = {
        RowLevelPermissionTags = {
            type = "list",
            member = M.SessionTag,
        },
    },
}

M.SnapshotUserConfiguration = {
    type = "structure",
    id = "SnapshotUserConfiguration",
    members = {
        AnonymousUsers = {
            type = "list",
            member = M.SnapshotAnonymousUser,
        },
    },
}

M.StartDashboardSnapshotJobInput = {
    type = "structure",
    id = "StartDashboardSnapshotJobInput",
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
    id = "StartDashboardSnapshotJobOutput",
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
    id = "StartDashboardSnapshotJobScheduleInput",
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
    id = "StartDashboardSnapshotJobScheduleOutput",
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
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
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
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
    id = "UpdateAccountCustomizationInput",
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
    id = "UpdateAccountCustomizationOutput",
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
    id = "UpdateAccountCustomPermissionInput",
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
    id = "UpdateAccountCustomPermissionOutput",
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
    id = "UpdateAccountSettingsInput",
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
    id = "UpdateAccountSettingsOutput",
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
    id = "UpdateActionConnectorInput",
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
    id = "UpdateActionConnectorOutput",
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
    id = "UpdateActionConnectorPermissionsInput",
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
    id = "UpdateActionConnectorPermissionsOutput",
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
    id = "UpdateAnalysisInput",
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
    id = "UpdateAnalysisOutput",
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
    id = "UpdateAnalysisPermissionsInput",
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
    id = "UpdateAnalysisPermissionsOutput",
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
    id = "UpdateApplicationWithTokenExchangeGrantInput",
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
    id = "UpdateApplicationWithTokenExchangeGrantOutput",
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
    id = "UpdateBrandInput",
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
    id = "UpdateBrandOutput",
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
    id = "UpdateBrandAssignmentInput",
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
    id = "UpdateBrandAssignmentOutput",
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
    id = "UpdateBrandPublishedVersionInput",
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
    id = "UpdateBrandPublishedVersionOutput",
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
    id = "UpdateCustomPermissionsInput",
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
    id = "UpdateCustomPermissionsOutput",
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
    id = "UpdateDashboardInput",
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
    id = "UpdateDashboardOutput",
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
    id = "UpdateDashboardLinksInput",
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
    id = "UpdateDashboardLinksOutput",
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
    id = "UpdateDashboardPermissionsInput",
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
    id = "UpdateDashboardPermissionsOutput",
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
    id = "UpdateDashboardPublishedVersionInput",
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
    id = "UpdateDashboardPublishedVersionOutput",
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
    id = "UpdateDashboardsQAConfigurationInput",
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
    id = "UpdateDashboardsQAConfigurationOutput",
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
    id = "UpdateDataSetInput",
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
    id = "UpdateDataSetOutput",
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
    id = "UpdateDataSetPermissionsInput",
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
    id = "UpdateDataSetPermissionsOutput",
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
    id = "UpdateDataSourceInput",
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
    id = "UpdateDataSourceOutput",
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
    id = "UpdateDataSourcePermissionsInput",
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
    id = "UpdateDataSourcePermissionsOutput",
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
    id = "UpdateDefaultQBusinessApplicationInput",
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
    id = "UpdateDefaultQBusinessApplicationOutput",
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
    id = "UpdateFlowPermissionsInput",
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
    id = "UpdateFlowPermissionsOutput",
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
    id = "UpdateFolderInput",
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
    id = "UpdateFolderOutput",
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
    id = "UpdateFolderPermissionsInput",
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
    id = "UpdateFolderPermissionsOutput",
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
    id = "UpdateGroupInput",
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
    id = "UpdateGroupOutput",
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
    id = "UpdateIAMPolicyAssignmentInput",
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
    id = "UpdateIAMPolicyAssignmentOutput",
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
    id = "UpdateIdentityPropagationConfigInput",
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
    id = "UpdateIdentityPropagationConfigOutput",
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
    id = "UpdateIpRestrictionInput",
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
    id = "UpdateIpRestrictionOutput",
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
    id = "UpdateKeyRegistrationInput",
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
    id = "SuccessfulKeyRegistrationEntry",
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
    id = "UpdateKeyRegistrationOutput",
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
    id = "UpdatePublicSharingSettingsInput",
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
    id = "UpdatePublicSharingSettingsOutput",
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
    id = "UpdateQPersonalizationConfigurationInput",
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
    id = "UpdateQPersonalizationConfigurationOutput",
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
    id = "UpdateQuickSightQSearchConfigurationInput",
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
    id = "UpdateQuickSightQSearchConfigurationOutput",
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
    id = "UpdateRefreshScheduleInput",
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
    id = "UpdateRefreshScheduleOutput",
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
    id = "UpdateRoleCustomPermissionInput",
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
    id = "UpdateRoleCustomPermissionOutput",
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
    id = "UpdateSelfUpgradeInput",
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
    id = "UpdateSelfUpgradeOutput",
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
    id = "UpdateSelfUpgradeConfigurationInput",
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
    id = "UpdateSelfUpgradeConfigurationOutput",
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
    id = "UpdateSPICECapacityConfigurationInput",
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
    id = "UpdateSPICECapacityConfigurationOutput",
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
    id = "UpdateTemplateInput",
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
    id = "UpdateTemplateOutput",
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
    id = "UpdateTemplateAliasInput",
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
    id = "UpdateTemplateAliasOutput",
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
    id = "UpdateTemplatePermissionsInput",
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
    id = "UpdateTemplatePermissionsOutput",
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
    id = "UpdateThemeInput",
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
    id = "UpdateThemeOutput",
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
    id = "UpdateThemeAliasInput",
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
    id = "UpdateThemeAliasOutput",
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
    id = "UpdateThemePermissionsInput",
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
    id = "UpdateThemePermissionsOutput",
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
    id = "UpdateTopicInput",
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
    id = "UpdateTopicOutput",
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
    id = "UpdateTopicPermissionsInput",
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
    id = "UpdateTopicPermissionsOutput",
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
    id = "UpdateTopicRefreshScheduleInput",
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
    id = "UpdateTopicRefreshScheduleOutput",
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
    id = "UpdateUserInput",
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
    id = "UpdateUserOutput",
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
    id = "UpdateUserCustomPermissionInput",
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
    id = "UpdateUserCustomPermissionOutput",
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
    id = "UpdateVPCConnectionInput",
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
    id = "UpdateVPCConnectionOutput",
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
    id = "TopicVisual",
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
    id = "CreateTopicReviewedAnswer",
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
    id = "TopicReviewedAnswer",
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
    id = "BatchCreateTopicReviewedAnswerInput",
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
    id = "ListTopicReviewedAnswersOutput",
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
