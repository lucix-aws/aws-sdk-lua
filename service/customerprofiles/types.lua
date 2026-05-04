local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ActionType = {
    ADDED_PROFILE_KEY = "ADDED_PROFILE_KEY",
    DELETED_PROFILE_KEY = "DELETED_PROFILE_KEY",
    CREATED = "CREATED",
    UPDATED = "UPDATED",
    INGESTED = "INGESTED",
    DELETED_BY_CUSTOMER = "DELETED_BY_CUSTOMER",
    EXPIRED = "EXPIRED",
    MERGED = "MERGED",
    DELETED_BY_MERGE = "DELETED_BY_MERGE",
}

M.AdditionalSearchKey = {
    type = "structure",
    members = {
        KeyName = {
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

M.AddProfileKeyInput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyName = {
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
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AddProfileKeyOutput = {
    type = "structure",
    members = {
        KeyName = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
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

M.Address = {
    type = "structure",
    members = {
        Address1 = {
            type = "string",
        },
        Address2 = {
            type = "string",
        },
        Address3 = {
            type = "string",
        },
        Address4 = {
            type = "string",
        },
        City = {
            type = "string",
        },
        County = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Province = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        PostalCode = {
            type = "string",
        },
    },
}

M.StringDimensionType = {
    INCLUSIVE = "INCLUSIVE",
    EXCLUSIVE = "EXCLUSIVE",
    CONTAINS = "CONTAINS",
    BEGINS_WITH = "BEGINS_WITH",
    ENDS_WITH = "ENDS_WITH",
}

M.ProfileDimension = {
    type = "structure",
    members = {
        DimensionType = {
            type = "string",
            traits = {
                json_name = "DimensionType",
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "Values",
                required = true,
            },
        },
    },
}

M.AddressDimension = {
    type = "structure",
    members = {
        City = setmetatable({ traits = {
            json_name = "City",
        } }, { __index = M.ProfileDimension }),
        Country = setmetatable({ traits = {
            json_name = "Country",
        } }, { __index = M.ProfileDimension }),
        County = setmetatable({ traits = {
            json_name = "County",
        } }, { __index = M.ProfileDimension }),
        PostalCode = setmetatable({ traits = {
            json_name = "PostalCode",
        } }, { __index = M.ProfileDimension }),
        Province = setmetatable({ traits = {
            json_name = "Province",
        } }, { __index = M.ProfileDimension }),
        State = setmetatable({ traits = {
            json_name = "State",
        } }, { __index = M.ProfileDimension }),
    },
}

M.Batch = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceConnectorType = {
    SALESFORCE = "Salesforce",
    MARKETO = "Marketo",
    ZENDESK = "Zendesk",
    SERVICENOW = "Servicenow",
    S3 = "S3",
}

M.IncrementalPullConfig = {
    type = "structure",
    members = {
        DatetimeTypeFieldName = {
            type = "string",
        },
    },
}

M.MarketoSourceProperties = {
    type = "structure",
    members = {
        Object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3SourceProperties = {
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
        },
    },
}

M.SalesforceSourceProperties = {
    type = "structure",
    members = {
        Object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableDynamicFieldUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeDeletedRecords = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ServiceNowSourceProperties = {
    type = "structure",
    members = {
        Object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ZendeskSourceProperties = {
    type = "structure",
    members = {
        Object = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceConnectorProperties = {
    type = "structure",
    members = {
        Marketo = M.MarketoSourceProperties,
        S3 = M.S3SourceProperties,
        Salesforce = M.SalesforceSourceProperties,
        ServiceNow = M.ServiceNowSourceProperties,
        Zendesk = M.ZendeskSourceProperties,
    },
}

M.SourceFlowConfig = {
    type = "structure",
    members = {
        ConnectorProfileName = {
            type = "string",
        },
        ConnectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncrementalPullConfig = M.IncrementalPullConfig,
        SourceConnectorProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceConnectorProperties }),
    },
}

M.MarketoConnectorOperator = {
    PROJECTION = "PROJECTION",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    BETWEEN = "BETWEEN",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.S3ConnectorOperator = {
    PROJECTION = "PROJECTION",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    BETWEEN = "BETWEEN",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.SalesforceConnectorOperator = {
    PROJECTION = "PROJECTION",
    LESS_THAN = "LESS_THAN",
    CONTAINS = "CONTAINS",
    GREATER_THAN = "GREATER_THAN",
    BETWEEN = "BETWEEN",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.ServiceNowConnectorOperator = {
    PROJECTION = "PROJECTION",
    CONTAINS = "CONTAINS",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    BETWEEN = "BETWEEN",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.ZendeskConnectorOperator = {
    PROJECTION = "PROJECTION",
    GREATER_THAN = "GREATER_THAN",
    ADDITION = "ADDITION",
    MULTIPLICATION = "MULTIPLICATION",
    DIVISION = "DIVISION",
    SUBTRACTION = "SUBTRACTION",
    MASK_ALL = "MASK_ALL",
    MASK_FIRST_N = "MASK_FIRST_N",
    MASK_LAST_N = "MASK_LAST_N",
    VALIDATE_NON_NULL = "VALIDATE_NON_NULL",
    VALIDATE_NON_ZERO = "VALIDATE_NON_ZERO",
    VALIDATE_NON_NEGATIVE = "VALIDATE_NON_NEGATIVE",
    VALIDATE_NUMERIC = "VALIDATE_NUMERIC",
    NO_OP = "NO_OP",
}

M.ConnectorOperator = {
    type = "structure",
    members = {
        Marketo = {
            type = "string",
        },
        S3 = {
            type = "string",
        },
        Salesforce = {
            type = "string",
        },
        ServiceNow = {
            type = "string",
        },
        Zendesk = {
            type = "string",
        },
    },
}

M.OperatorPropertiesKeys = {
    VALUE = "VALUE",
    VALUES = "VALUES",
    DATA_TYPE = "DATA_TYPE",
    UPPER_BOUND = "UPPER_BOUND",
    LOWER_BOUND = "LOWER_BOUND",
    SOURCE_DATA_TYPE = "SOURCE_DATA_TYPE",
    DESTINATION_DATA_TYPE = "DESTINATION_DATA_TYPE",
    VALIDATION_ACTION = "VALIDATION_ACTION",
    MASK_VALUE = "MASK_VALUE",
    MASK_LENGTH = "MASK_LENGTH",
    TRUNCATE_LENGTH = "TRUNCATE_LENGTH",
    MATH_OPERATION_FIELDS_ORDER = "MATH_OPERATION_FIELDS_ORDER",
    CONCAT_FORMAT = "CONCAT_FORMAT",
    SUBFIELD_CATEGORY_MAP = "SUBFIELD_CATEGORY_MAP",
}

M.TaskType = {
    ARITHMETIC = "Arithmetic",
    FILTER = "Filter",
    MAP = "Map",
    MASK = "Mask",
    MERGE = "Merge",
    TRUNCATE = "Truncate",
    VALIDATE = "Validate",
}

M.Task = {
    type = "structure",
    members = {
        ConnectorOperator = M.ConnectorOperator,
        DestinationField = {
            type = "string",
        },
        SourceFields = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TaskProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TaskType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataPullMode = {
    INCREMENTAL = "Incremental",
    COMPLETE = "Complete",
}

M.ScheduledTriggerProperties = {
    type = "structure",
    members = {
        ScheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataPullMode = {
            type = "string",
        },
        ScheduleStartTime = {
            type = "timestamp",
        },
        ScheduleEndTime = {
            type = "timestamp",
        },
        Timezone = {
            type = "string",
        },
        ScheduleOffset = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        FirstExecutionFrom = {
            type = "timestamp",
        },
    },
}

M.TriggerProperties = {
    type = "structure",
    members = {
        Scheduled = M.ScheduledTriggerProperties,
    },
}

M.TriggerType = {
    SCHEDULED = "Scheduled",
    EVENT = "Event",
    ONDEMAND = "OnDemand",
}

M.TriggerConfig = {
    type = "structure",
    members = {
        TriggerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TriggerProperties = M.TriggerProperties,
    },
}

M.FlowDefinition = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        FlowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceFlowConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceFlowConfig }),
        Tasks = {
            type = "list",
            member = M.Task,
            traits = {
                required = true,
            },
        },
        TriggerConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TriggerConfig }),
    },
}

M.AppflowIntegration = {
    type = "structure",
    members = {
        FlowDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowDefinition }),
        Batches = {
            type = "list",
            member = M.Batch,
        },
    },
}

M.AppflowIntegrationWorkflowAttributes = {
    type = "structure",
    members = {
        SourceConnectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectorProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.AppflowIntegrationWorkflowMetrics = {
    type = "structure",
    members = {
        RecordsProcessed = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        StepsCompleted = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        TotalSteps = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.Status = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    SPLIT = "SPLIT",
    RETRY = "RETRY",
    CANCELLED = "CANCELLED",
}

M.AppflowIntegrationWorkflowStep = {
    type = "structure",
    members = {
        FlowName = {
            type = "string",
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
        ExecutionMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordsProcessed = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        BatchRecordsStartTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BatchRecordsEndTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.AttributeItem = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttributeDetails = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member = M.AttributeItem,
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

M.AttributeDimensionType = {
    INCLUSIVE = "INCLUSIVE",
    EXCLUSIVE = "EXCLUSIVE",
    CONTAINS = "CONTAINS",
    BEGINS_WITH = "BEGINS_WITH",
    ENDS_WITH = "ENDS_WITH",
    BEFORE = "BEFORE",
    AFTER = "AFTER",
    BETWEEN = "BETWEEN",
    NOT_BETWEEN = "NOT_BETWEEN",
    ON = "ON",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
    LESS_THAN_OR_EQUAL = "LESS_THAN_OR_EQUAL",
    EQUAL = "EQUAL",
}

M.AttributeDimension = {
    type = "structure",
    members = {
        DimensionType = {
            type = "string",
            traits = {
                json_name = "DimensionType",
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "Values",
                required = true,
            },
        },
    },
}

M.FilterDimensionType = {
    INCLUSIVE = "INCLUSIVE",
    EXCLUSIVE = "EXCLUSIVE",
    CONTAINS = "CONTAINS",
    BEGINS_WITH = "BEGINS_WITH",
    ENDS_WITH = "ENDS_WITH",
    BEFORE = "BEFORE",
    AFTER = "AFTER",
    BETWEEN = "BETWEEN",
    NOT_BETWEEN = "NOT_BETWEEN",
    ON = "ON",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
    LESS_THAN_OR_EQUAL = "LESS_THAN_OR_EQUAL",
    EQUAL = "EQUAL",
}

M.FilterAttributeDimension = {
    type = "structure",
    members = {
        DimensionType = {
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

M.AttributeMatchingModel = {
    ONE_TO_ONE = "ONE_TO_ONE",
    MANY_TO_MANY = "MANY_TO_MANY",
}

M.AttributeTypesSelector = {
    type = "structure",
    members = {
        AttributeMatchingModel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = {
            type = "list",
            member = { type = "string" },
        },
        PhoneNumber = {
            type = "list",
            member = { type = "string" },
        },
        EmailAddress = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AttributeValueItem = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
    },
}

M.ConflictResolvingModel = {
    RECENCY = "RECENCY",
    SOURCE = "SOURCE",
}

M.ConflictResolution = {
    type = "structure",
    members = {
        ConflictResolvingModel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceName = {
            type = "string",
        },
    },
}

M.Consolidation = {
    type = "structure",
    members = {
        MatchingAttributesList = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.AutoMerging = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Consolidation = M.Consolidation,
        ConflictResolution = M.ConflictResolution,
        MinAllowedConfidenceScoreForMerging = {
            type = "double",
        },
    },
}

M.RangeUnit = {
    DAYS = "DAYS",
}

M.RangeOverride = {
    type = "structure",
    members = {
        Start = {
            type = "integer",
            traits = {
                default = 366,
                required = true,
            },
        },
        End = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConditionOverrides = {
    type = "structure",
    members = {
        Range = M.RangeOverride,
    },
}

M.BatchGetCalculatedAttributeForProfileInput = {
    type = "structure",
    members = {
        CalculatedAttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ConditionOverrides = M.ConditionOverrides,
    },
}

M.CalculatedAttributeValue = {
    type = "structure",
    members = {
        CalculatedAttributeName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        IsDataPartial = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        LastObjectTimestamp = {
            type = "timestamp",
        },
    },
}

M.BatchGetCalculatedAttributeForProfileError = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetCalculatedAttributeForProfileOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member = M.BatchGetCalculatedAttributeForProfileError,
        },
        CalculatedAttributeValues = {
            type = "list",
            member = M.CalculatedAttributeValue,
        },
        ConditionOverrides = M.ConditionOverrides,
    },
}

M.BatchGetProfileInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetProfileError = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContactType = {
    PHONE_NUMBER = "PhoneNumber",
    MOBILE_PHONE_NUMBER = "MobilePhoneNumber",
    HOME_PHONE_NUMBER = "HomePhoneNumber",
    BUSINESS_PHONE_NUMBER = "BusinessPhoneNumber",
    EMAIL_ADDRESS = "EmailAddress",
    PERSONAL_EMAIL_ADDRESS = "PersonalEmailAddress",
    BUSINESS_EMAIL_ADDRESS = "BusinessEmailAddress",
}

M.ContactPreference = {
    type = "structure",
    members = {
        KeyName = {
            type = "string",
        },
        KeyValue = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        ContactType = {
            type = "string",
        },
    },
}

M.EngagementPreferences = {
    type = "structure",
    members = {
        Phone = {
            type = "list",
            member = M.ContactPreference,
        },
        Email = {
            type = "list",
            member = M.ContactPreference,
        },
    },
}

M.FoundByKeyValue = {
    type = "structure",
    members = {
        KeyName = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Gender = {
    MALE = "MALE",
    FEMALE = "FEMALE",
    UNSPECIFIED = "UNSPECIFIED",
}

M.PartyType = {
    INDIVIDUAL = "INDIVIDUAL",
    BUSINESS = "BUSINESS",
    OTHER = "OTHER",
}

M.ProfileType = {
    ACCOUNT_PROFILE = "ACCOUNT_PROFILE",
    PROFILE = "PROFILE",
}

M.Profile = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
        },
        AccountNumber = {
            type = "string",
        },
        AdditionalInformation = {
            type = "string",
        },
        PartyType = {
            type = "string",
        },
        BusinessName = {
            type = "string",
        },
        FirstName = {
            type = "string",
        },
        MiddleName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        BirthDate = {
            type = "string",
        },
        Gender = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        MobilePhoneNumber = {
            type = "string",
        },
        HomePhoneNumber = {
            type = "string",
        },
        BusinessPhoneNumber = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        PersonalEmailAddress = {
            type = "string",
        },
        BusinessEmailAddress = {
            type = "string",
        },
        Address = M.Address,
        ShippingAddress = M.Address,
        MailingAddress = M.Address,
        BillingAddress = M.Address,
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        FoundByItems = {
            type = "list",
            member = M.FoundByKeyValue,
        },
        PartyTypeString = {
            type = "string",
        },
        GenderString = {
            type = "string",
        },
        ProfileType = {
            type = "string",
        },
        EngagementPreferences = M.EngagementPreferences,
    },
}

M.BatchGetProfileOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member = M.BatchGetProfileError,
        },
        Profiles = {
            type = "list",
            member = M.Profile,
        },
    },
}

M.ReadinessStatus = {
    PREPARING = "PREPARING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ListCalculatedAttributeDefinitionItem = {
    type = "structure",
    members = {
        CalculatedAttributeName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        UseHistoricalData = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CalculatedAttributeDimension = {
    type = "structure",
    members = {
        DimensionType = {
            type = "string",
            traits = {
                json_name = "DimensionType",
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "Values",
                required = true,
            },
        },
        ConditionOverrides = setmetatable({ traits = {
            json_name = "ConditionOverrides",
        } }, { __index = M.ConditionOverrides }),
    },
}

M.ListCalculatedAttributeForProfileItem = {
    type = "structure",
    members = {
        CalculatedAttributeName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        IsDataPartial = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        LastObjectTimestamp = {
            type = "timestamp",
        },
    },
}

M.CatalogItem = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Category = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        AdditionalInformation = {
            type = "string",
        },
        ImageLink = {
            type = "string",
        },
        Link = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Price = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ComparisonOperator = {
    INCLUSIVE = "INCLUSIVE",
    EXCLUSIVE = "EXCLUSIVE",
    CONTAINS = "CONTAINS",
    BEGINS_WITH = "BEGINS_WITH",
    ENDS_WITH = "ENDS_WITH",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
    LESS_THAN_OR_EQUAL = "LESS_THAN_OR_EQUAL",
    EQUAL = "EQUAL",
    BEFORE = "BEFORE",
    AFTER = "AFTER",
    ON = "ON",
    BETWEEN = "BETWEEN",
    NOT_BETWEEN = "NOT_BETWEEN",
}

M.Unit = {
    DAYS = "DAYS",
}

M.ValueRange = {
    type = "structure",
    members = {
        Start = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        End = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.Range = {
    type = "structure",
    members = {
        Value = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Unit = {
            type = "string",
            traits = {
                default = "DAYS",
            },
        },
        ValueRange = M.ValueRange,
        TimestampSource = {
            type = "string",
        },
        TimestampFormat = {
            type = "string",
        },
    },
}

M.Operator = {
    EQUAL_TO = "EQUAL_TO",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
}

M.Threshold = {
    type = "structure",
    members = {
        Value = {
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
    },
}

M.Conditions = {
    type = "structure",
    members = {
        Range = M.Range,
        ObjectCount = {
            type = "integer",
        },
        Threshold = M.Threshold,
    },
}

M.ContentType = {
    STRING = "STRING",
    NUMBER = "NUMBER",
}

M.FilterDimension = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = M.FilterAttributeDimension,
            traits = {
                required = true,
            },
        },
    },
}

M.Type = {
    ALL = "ALL",
    ANY = "ANY",
    NONE = "NONE",
}

M.FilterGroup = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "list",
            member = M.FilterDimension,
            traits = {
                required = true,
            },
        },
    },
}

M.Include = {
    ALL = "ALL",
    ANY = "ANY",
    NONE = "NONE",
}

M.Filter = {
    type = "structure",
    members = {
        Include = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Groups = {
            type = "list",
            member = M.FilterGroup,
            traits = {
                required = true,
            },
        },
    },
}

M.Statistic = {
    FIRST_OCCURRENCE = "FIRST_OCCURRENCE",
    LAST_OCCURRENCE = "LAST_OCCURRENCE",
    COUNT = "COUNT",
    SUM = "SUM",
    MINIMUM = "MINIMUM",
    MAXIMUM = "MAXIMUM",
    AVERAGE = "AVERAGE",
    MAX_OCCURRENCE = "MAX_OCCURRENCE",
}

M.CreateCalculatedAttributeDefinitionInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CalculatedAttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        AttributeDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AttributeDetails }),
        Conditions = M.Conditions,
        Filter = M.Filter,
        Statistic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseHistoricalData = {
            type = "boolean",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Readiness = {
    type = "structure",
    members = {
        ProgressPercentage = {
            type = "integer",
        },
        Message = {
            type = "string",
        },
    },
}

M.CreateCalculatedAttributeDefinitionOutput = {
    type = "structure",
    members = {
        CalculatedAttributeName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        AttributeDetails = M.AttributeDetails,
        Conditions = M.Conditions,
        Filter = M.Filter,
        Statistic = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        UseHistoricalData = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        Readiness = M.Readiness,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DataStoreRequest = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.S3ExportingConfig = {
    type = "structure",
    members = {
        S3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3KeyName = {
            type = "string",
        },
    },
}

M.ExportingConfig = {
    type = "structure",
    members = {
        S3Exporting = M.S3ExportingConfig,
    },
}

M.JobScheduleDayOfTheWeek = {
    SUNDAY = "SUNDAY",
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
}

M.JobSchedule = {
    type = "structure",
    members = {
        DayOfTheWeek = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Time = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MatchingRequest = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        JobSchedule = M.JobSchedule,
        AutoMerging = M.AutoMerging,
        ExportingConfig = M.ExportingConfig,
    },
}

M.MatchingRule = {
    type = "structure",
    members = {
        Rule = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RuleBasedMatchingRequest = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        MatchingRules = {
            type = "list",
            member = M.MatchingRule,
        },
        MaxAllowedRuleLevelForMerging = {
            type = "integer",
        },
        MaxAllowedRuleLevelForMatching = {
            type = "integer",
        },
        AttributeTypesSelector = M.AttributeTypesSelector,
        ConflictResolution = M.ConflictResolution,
        ExportingConfig = M.ExportingConfig,
    },
}

M.CreateDomainInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DefaultExpirationDays = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DefaultEncryptionKey = {
            type = "string",
        },
        DeadLetterQueueUrl = {
            type = "string",
        },
        Matching = M.MatchingRequest,
        RuleBasedMatching = M.RuleBasedMatchingRequest,
        DataStore = M.DataStoreRequest,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DataStoreResponse = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        Readiness = M.Readiness,
    },
}

M.MatchingResponse = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        JobSchedule = M.JobSchedule,
        AutoMerging = M.AutoMerging,
        ExportingConfig = M.ExportingConfig,
    },
}

M.RuleBasedMatchingStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    ACTIVE = "ACTIVE",
}

M.RuleBasedMatchingResponse = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        MatchingRules = {
            type = "list",
            member = M.MatchingRule,
        },
        Status = {
            type = "string",
        },
        MaxAllowedRuleLevelForMerging = {
            type = "integer",
        },
        MaxAllowedRuleLevelForMatching = {
            type = "integer",
        },
        AttributeTypesSelector = M.AttributeTypesSelector,
        ConflictResolution = M.ConflictResolution,
        ExportingConfig = M.ExportingConfig,
    },
}

M.CreateDomainOutput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultExpirationDays = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DefaultEncryptionKey = {
            type = "string",
        },
        DeadLetterQueueUrl = {
            type = "string",
        },
        Matching = M.MatchingResponse,
        RuleBasedMatching = M.RuleBasedMatchingResponse,
        DataStore = M.DataStoreResponse,
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.LayoutType = {
    PROFILE_EXPLORER = "PROFILE_EXPLORER",
}

M.CreateDomainLayoutInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LayoutDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LayoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Layout = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDomainLayoutOutput = {
    type = "structure",
    members = {
        LayoutDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LayoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Layout = {
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
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.CreateEventStreamInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventStreamName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateEventStreamOutput = {
    type = "structure",
    members = {
        EventStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ObjectAttribute = {
    type = "structure",
    members = {
        Source = {
            type = "string",
        },
        FieldName = {
            type = "string",
        },
        ComparisonOperator = {
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

M.EventTriggerDimension = {
    type = "structure",
    members = {
        ObjectAttributes = {
            type = "list",
            member = M.ObjectAttribute,
            traits = {
                required = true,
            },
        },
    },
}

M.EventTriggerLogicalOperator = {
    ANY = "ANY",
    ALL = "ALL",
    NONE = "NONE",
}

M.EventTriggerCondition = {
    type = "structure",
    members = {
        EventTriggerDimensions = {
            type = "list",
            member = M.EventTriggerDimension,
            traits = {
                required = true,
            },
        },
        LogicalOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PeriodUnit = {
    HOURS = "HOURS",
    DAYS = "DAYS",
    WEEKS = "WEEKS",
    MONTHS = "MONTHS",
}

M.Period = {
    type = "structure",
    members = {
        Unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxInvocationsPerProfile = {
            type = "integer",
        },
        Unlimited = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.EventTriggerLimits = {
    type = "structure",
    members = {
        EventExpiration = {
            type = "long",
        },
        Periods = {
            type = "list",
            member = M.Period,
        },
    },
}

M.CreateEventTriggerInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventTriggerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        EventTriggerConditions = {
            type = "list",
            member = M.EventTriggerCondition,
            traits = {
                required = true,
            },
        },
        SegmentFilter = {
            type = "string",
        },
        EventTriggerLimits = M.EventTriggerLimits,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateEventTriggerOutput = {
    type = "structure",
    members = {
        EventTriggerName = {
            type = "string",
        },
        ObjectTypeName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EventTriggerConditions = {
            type = "list",
            member = M.EventTriggerCondition,
        },
        SegmentFilter = {
            type = "string",
        },
        EventTriggerLimits = M.EventTriggerLimits,
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.IntegrationConfig = {
    type = "structure",
    members = {
        AppflowIntegration = M.AppflowIntegration,
    },
}

M.WorkflowType = {
    APPFLOW_INTEGRATION = "APPFLOW_INTEGRATION",
}

M.CreateIntegrationWorkflowInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkflowType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IntegrationConfig }),
        ObjectTypeName = {
            type = "string",
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateIntegrationWorkflowOutput = {
    type = "structure",
    members = {
        WorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateProfileInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountNumber = {
            type = "string",
        },
        AdditionalInformation = {
            type = "string",
        },
        PartyType = {
            type = "string",
        },
        BusinessName = {
            type = "string",
        },
        FirstName = {
            type = "string",
        },
        MiddleName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        BirthDate = {
            type = "string",
        },
        Gender = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        MobilePhoneNumber = {
            type = "string",
        },
        HomePhoneNumber = {
            type = "string",
        },
        BusinessPhoneNumber = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        PersonalEmailAddress = {
            type = "string",
        },
        BusinessEmailAddress = {
            type = "string",
        },
        Address = M.Address,
        ShippingAddress = M.Address,
        MailingAddress = M.Address,
        BillingAddress = M.Address,
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PartyTypeString = {
            type = "string",
        },
        GenderString = {
            type = "string",
        },
        ProfileType = {
            type = "string",
        },
        EngagementPreferences = M.EngagementPreferences,
    },
}

M.CreateProfileOutput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventParameters = {
    type = "structure",
    members = {
        EventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventValueThreshold = {
            type = "double",
        },
        EventWeight = {
            type = "double",
        },
    },
}

M.EventsConfig = {
    type = "structure",
    members = {
        EventParametersList = {
            type = "list",
            member = M.EventParameters,
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceConfig = {
    type = "structure",
    members = {
        MinProvisionedTPS = {
            type = "integer",
        },
    },
}

M.RecommenderConfig = {
    type = "structure",
    members = {
        EventsConfig = M.EventsConfig,
        TrainingFrequency = {
            type = "integer",
        },
        InferenceConfig = M.InferenceConfig,
        IncludedColumns = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.RecommenderRecipeName = {
    RECOMMENDED_FOR_YOU = "recommended-for-you",
    SIMILAR_ITEMS = "similar-items",
    FREQUENTLY_PAIRED_ITEMS = "frequently-paired-items",
    POPULAR_ITEMS = "popular-items",
    TRENDING_NOW = "trending-now",
    PERSONALIZED_RANKING = "personalized-ranking",
}

M.CreateRecommenderInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderRecipeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommenderConfig = M.RecommenderConfig,
        Description = {
            type = "string",
        },
        RecommenderSchemaName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateRecommenderOutput = {
    type = "structure",
    members = {
        RecommenderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateRecommenderFilterInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderFilterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderFilterExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommenderSchemaName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateRecommenderFilterOutput = {
    type = "structure",
    members = {
        RecommenderFilterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.FeatureType = {
    TEXTUAL = "TEXTUAL",
    CATEGORICAL = "CATEGORICAL",
}

M.RecommenderSchemaField = {
    type = "structure",
    members = {
        TargetFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
        },
        FeatureType = {
            type = "string",
        },
    },
}

M.CreateRecommenderSchemaInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderSchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RecommenderSchemaStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.CreateRecommenderSchemaOutput = {
    type = "structure",
    members = {
        RecommenderSchemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommenderSchemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
        CreatedAt = {
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
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ExtraLengthValueProfileDimension = {
    type = "structure",
    members = {
        DimensionType = {
            type = "string",
            traits = {
                json_name = "DimensionType",
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "Values",
                required = true,
            },
        },
    },
}

M.DateDimensionType = {
    BEFORE = "BEFORE",
    AFTER = "AFTER",
    BETWEEN = "BETWEEN",
    NOT_BETWEEN = "NOT_BETWEEN",
    ON = "ON",
}

M.DateDimension = {
    type = "structure",
    members = {
        DimensionType = {
            type = "string",
            traits = {
                json_name = "DimensionType",
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "Values",
                required = true,
            },
        },
    },
}

M.ProfileTypeDimensionType = {
    INCLUSIVE = "INCLUSIVE",
    EXCLUSIVE = "EXCLUSIVE",
}

M.ProfileTypeDimension = {
    type = "structure",
    members = {
        DimensionType = {
            type = "string",
            traits = {
                json_name = "DimensionType",
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "Values",
                required = true,
            },
        },
    },
}

M.ProfileAttributes = {
    type = "structure",
    members = {
        AccountNumber = setmetatable({ traits = {
            json_name = "AccountNumber",
        } }, { __index = M.ProfileDimension }),
        AdditionalInformation = setmetatable({ traits = {
            json_name = "AdditionalInformation",
        } }, { __index = M.ExtraLengthValueProfileDimension }),
        FirstName = setmetatable({ traits = {
            json_name = "FirstName",
        } }, { __index = M.ProfileDimension }),
        LastName = setmetatable({ traits = {
            json_name = "LastName",
        } }, { __index = M.ProfileDimension }),
        MiddleName = setmetatable({ traits = {
            json_name = "MiddleName",
        } }, { __index = M.ProfileDimension }),
        GenderString = setmetatable({ traits = {
            json_name = "GenderString",
        } }, { __index = M.ProfileDimension }),
        PartyTypeString = setmetatable({ traits = {
            json_name = "PartyTypeString",
        } }, { __index = M.ProfileDimension }),
        BirthDate = setmetatable({ traits = {
            json_name = "BirthDate",
        } }, { __index = M.DateDimension }),
        PhoneNumber = setmetatable({ traits = {
            json_name = "PhoneNumber",
        } }, { __index = M.ProfileDimension }),
        BusinessName = setmetatable({ traits = {
            json_name = "BusinessName",
        } }, { __index = M.ProfileDimension }),
        BusinessPhoneNumber = setmetatable({ traits = {
            json_name = "BusinessPhoneNumber",
        } }, { __index = M.ProfileDimension }),
        HomePhoneNumber = setmetatable({ traits = {
            json_name = "HomePhoneNumber",
        } }, { __index = M.ProfileDimension }),
        MobilePhoneNumber = setmetatable({ traits = {
            json_name = "MobilePhoneNumber",
        } }, { __index = M.ProfileDimension }),
        EmailAddress = setmetatable({ traits = {
            json_name = "EmailAddress",
        } }, { __index = M.ProfileDimension }),
        PersonalEmailAddress = setmetatable({ traits = {
            json_name = "PersonalEmailAddress",
        } }, { __index = M.ProfileDimension }),
        BusinessEmailAddress = setmetatable({ traits = {
            json_name = "BusinessEmailAddress",
        } }, { __index = M.ProfileDimension }),
        Address = setmetatable({ traits = {
            json_name = "Address",
        } }, { __index = M.AddressDimension }),
        ShippingAddress = setmetatable({ traits = {
            json_name = "ShippingAddress",
        } }, { __index = M.AddressDimension }),
        MailingAddress = setmetatable({ traits = {
            json_name = "MailingAddress",
        } }, { __index = M.AddressDimension }),
        BillingAddress = setmetatable({ traits = {
            json_name = "BillingAddress",
        } }, { __index = M.AddressDimension }),
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeDimension,
            traits = {
                json_name = "Attributes",
            },
        },
        ProfileType = setmetatable({ traits = {
            json_name = "ProfileType",
        } }, { __index = M.ProfileTypeDimension }),
    },
}

M.Dimension = {
    type = "union",
    members = {
        ProfileAttributes = setmetatable({ traits = {
            json_name = "ProfileAttributes",
        } }, { __index = M.ProfileAttributes }),
        CalculatedAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.CalculatedAttributeDimension,
            traits = {
                json_name = "CalculatedAttributes",
            },
        },
    },
}

M.SourceSegment = {
    type = "structure",
    members = {
        SegmentDefinitionName = {
            type = "string",
            traits = {
                json_name = "SegmentDefinitionName",
            },
        },
    },
}

M.IncludeOptions = {
    ALL = "ALL",
    ANY = "ANY",
    NONE = "NONE",
}

M.Group = {
    type = "structure",
    members = {
        Dimensions = {
            type = "list",
            member = M.Dimension,
            traits = {
                json_name = "Dimensions",
            },
        },
        SourceSegments = {
            type = "list",
            member = M.SourceSegment,
            traits = {
                json_name = "SourceSegments",
            },
        },
        SourceType = {
            type = "string",
            traits = {
                default = "ALL",
                json_name = "SourceType",
            },
        },
        Type = {
            type = "string",
            traits = {
                default = "ALL",
                json_name = "Type",
            },
        },
    },
}

M.SegmentGroup = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member = M.Group,
            traits = {
                json_name = "Groups",
            },
        },
        Include = {
            type = "string",
            traits = {
                default = "ALL",
                json_name = "Include",
            },
        },
    },
}

M.SegmentSortDataType = {
    STRING = "STRING",
    NUMBER = "NUMBER",
    DATE = "DATE",
}

M.SegmentSortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.SortAttributeType = {
    PROFILE = "PROFILE",
    CALCULATED = "CALCULATED",
}

M.SortAttribute = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "Name",
                required = true,
            },
        },
        DataType = {
            type = "string",
            traits = {
                json_name = "DataType",
            },
        },
        Order = {
            type = "string",
            traits = {
                json_name = "Order",
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                default = "PROFILE",
                json_name = "Type",
            },
        },
    },
}

M.SegmentSort = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member = M.SortAttribute,
            traits = {
                json_name = "Attributes",
                required = true,
            },
        },
    },
}

M.CreateSegmentDefinitionInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        SegmentGroups = M.SegmentGroup,
        SegmentSqlQuery = {
            type = "string",
        },
        SegmentSort = M.SegmentSort,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateSegmentDefinitionOutput = {
    type = "structure",
    members = {
        SegmentDefinitionName = {
            type = "string",
            traits = {
                json_name = "SegmentDefinitionName",
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "DisplayName",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "Description",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "CreatedAt",
            },
        },
        SegmentDefinitionArn = {
            type = "string",
            traits = {
                json_name = "SegmentDefinitionArn",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "Tags",
            },
        },
    },
}

M.SegmentGroupStructure = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member = M.Group,
        },
        Include = {
            type = "string",
        },
    },
}

M.CreateSegmentEstimateInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentQuery = M.SegmentGroupStructure,
        SegmentSqlQuery = {
            type = "string",
        },
    },
}

M.CreateSegmentEstimateOutput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
        },
        EstimateId = {
            type = "string",
        },
        StatusCode = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DataFormat = {
    CSV = "CSV",
    JSONL = "JSONL",
    ORC = "ORC",
}

M.CreateSegmentSnapshotInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKey = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        DestinationUri = {
            type = "string",
        },
    },
}

M.CreateSegmentSnapshotOutput = {
    type = "structure",
    members = {
        SnapshotId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FieldContentType = {
    STRING = "STRING",
    NUMBER = "NUMBER",
    PHONE_NUMBER = "PHONE_NUMBER",
    EMAIL_ADDRESS = "EMAIL_ADDRESS",
    NAME = "NAME",
}

M.ObjectTypeField = {
    type = "structure",
    members = {
        Source = {
            type = "string",
        },
        Target = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
    },
}

M.CreateUploadJobInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = M.ObjectTypeField,
            traits = {
                required = true,
            },
        },
        UniqueKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataExpiry = {
            type = "integer",
        },
    },
}

M.CreateUploadJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                json_name = "JobId",
                required = true,
            },
        },
    },
}

M.DeleteCalculatedAttributeDefinitionInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CalculatedAttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCalculatedAttributeDefinitionOutput = {
    type = "structure",
}

M.DeleteDomainInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDomainLayoutInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LayoutDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainLayoutOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDomainObjectTypeInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainObjectTypeOutput = {
    type = "structure",
}

M.DeleteEventStreamInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventStreamName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEventStreamOutput = {
    type = "structure",
}

M.DeleteEventTriggerInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventTriggerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEventTriggerOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIntegrationInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIntegrationOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProfileInput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProfileOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteProfileKeyInput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyName = {
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
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProfileKeyOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteProfileObjectInput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileObjectUniqueKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProfileObjectOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteProfileObjectTypeInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProfileObjectTypeOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRecommenderInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRecommenderOutput = {
    type = "structure",
}

M.DeleteRecommenderFilterInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderFilterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRecommenderFilterOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRecommenderSchemaInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderSchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRecommenderSchemaOutput = {
    type = "structure",
}

M.DeleteSegmentDefinitionInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSegmentDefinitionOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "Message",
            },
        },
    },
}

M.DeleteWorkflowInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkflowOutput = {
    type = "structure",
}

M.DetectProfileObjectTypeInput = {
    type = "structure",
    members = {
        Objects = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StandardIdentifier = {
    PROFILE = "PROFILE",
    ASSET = "ASSET",
    CASE = "CASE",
    DEVICE = "DEVICE",
    WEB_ANALYTICS = "WEB_ANALYTICS",
    ORDER = "ORDER",
    COMMUNICATION_RECORD = "COMMUNICATION_RECORD",
    AIR_PREFERENCE = "AIR_PREFERENCE",
    HOTEL_PREFERENCE = "HOTEL_PREFERENCE",
    AIR_BOOKING = "AIR_BOOKING",
    AIR_SEGMENT = "AIR_SEGMENT",
    HOTEL_RESERVATION = "HOTEL_RESERVATION",
    HOTEL_STAY_REVENUE = "HOTEL_STAY_REVENUE",
    LOYALTY = "LOYALTY",
    LOYALTY_TRANSACTION = "LOYALTY_TRANSACTION",
    LOYALTY_PROMOTION = "LOYALTY_PROMOTION",
    UNIQUE = "UNIQUE",
    SECONDARY = "SECONDARY",
    LOOKUP_ONLY = "LOOKUP_ONLY",
    NEW_ONLY = "NEW_ONLY",
}

M.ObjectTypeKey = {
    type = "structure",
    members = {
        StandardIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        FieldNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DetectedProfileObjectType = {
    type = "structure",
    members = {
        SourceLastUpdatedTimestampFormat = {
            type = "string",
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = M.ObjectTypeField,
        },
        Keys = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.DetectProfileObjectTypeOutput = {
    type = "structure",
    members = {
        DetectedProfileObjectTypes = {
            type = "list",
            member = M.DetectedProfileObjectType,
        },
    },
}

M.GetAutoMergingPreviewInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Consolidation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Consolidation }),
        ConflictResolution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConflictResolution }),
        MinAllowedConfidenceScoreForMerging = {
            type = "double",
        },
    },
}

M.GetAutoMergingPreviewOutput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberOfMatchesInSample = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        NumberOfProfilesInSample = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        NumberOfProfilesWillBeMerged = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetCalculatedAttributeDefinitionInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CalculatedAttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCalculatedAttributeDefinitionOutput = {
    type = "structure",
    members = {
        CalculatedAttributeName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Statistic = {
            type = "string",
        },
        Filter = M.Filter,
        Conditions = M.Conditions,
        AttributeDetails = M.AttributeDetails,
        UseHistoricalData = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        Readiness = M.Readiness,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetCalculatedAttributeForProfileInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CalculatedAttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCalculatedAttributeForProfileOutput = {
    type = "structure",
    members = {
        CalculatedAttributeName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        IsDataPartial = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        LastObjectTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetDomainInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DomainStats = {
    type = "structure",
    members = {
        ProfileCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MeteringProfileCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ObjectCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TotalSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetDomainOutput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultExpirationDays = {
            type = "integer",
        },
        DefaultEncryptionKey = {
            type = "string",
        },
        DeadLetterQueueUrl = {
            type = "string",
        },
        Stats = M.DomainStats,
        Matching = M.MatchingResponse,
        RuleBasedMatching = M.RuleBasedMatchingResponse,
        DataStore = M.DataStoreResponse,
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDomainLayoutInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LayoutDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDomainLayoutOutput = {
    type = "structure",
    members = {
        LayoutDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LayoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Layout = {
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
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDomainObjectTypeInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DomainObjectTypeField = {
    type = "structure",
    members = {
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
        },
        FeatureType = {
            type = "string",
        },
    },
}

M.GetDomainObjectTypeOutput = {
    type = "structure",
    members = {
        ObjectTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        EncryptionKey = {
            type = "string",
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = M.DomainObjectTypeField,
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetEventStreamInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventStreamName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EventStreamDestinationStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.EventStreamDestinationDetails = {
    type = "structure",
    members = {
        Uri = {
            type = "string",
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
        UnhealthySince = {
            type = "timestamp",
        },
        Message = {
            type = "string",
        },
    },
}

M.EventStreamState = {
    RUNNING = "RUNNING",
    STOPPED = "STOPPED",
}

M.GetEventStreamOutput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppedSince = {
            type = "timestamp",
        },
        DestinationDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventStreamDestinationDetails }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetEventTriggerInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventTriggerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEventTriggerOutput = {
    type = "structure",
    members = {
        EventTriggerName = {
            type = "string",
        },
        ObjectTypeName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EventTriggerConditions = {
            type = "list",
            member = M.EventTriggerCondition,
        },
        SegmentFilter = {
            type = "string",
        },
        EventTriggerLimits = M.EventTriggerLimits,
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetIdentityResolutionJobInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.S3ExportingLocation = {
    type = "structure",
    members = {
        S3BucketName = {
            type = "string",
        },
        S3KeyName = {
            type = "string",
        },
    },
}

M.ExportingLocation = {
    type = "structure",
    members = {
        S3Exporting = M.S3ExportingLocation,
    },
}

M.JobStats = {
    type = "structure",
    members = {
        NumberOfProfilesReviewed = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        NumberOfMatchesFound = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        NumberOfMergesDone = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.IdentityResolutionJobStatus = {
    PENDING = "PENDING",
    PREPROCESSING = "PREPROCESSING",
    FIND_MATCHING = "FIND_MATCHING",
    MERGING = "MERGING",
    COMPLETED = "COMPLETED",
    PARTIAL_SUCCESS = "PARTIAL_SUCCESS",
    FAILED = "FAILED",
}

M.GetIdentityResolutionJobOutput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        JobStartTime = {
            type = "timestamp",
        },
        JobEndTime = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        JobExpirationTime = {
            type = "timestamp",
        },
        AutoMerging = M.AutoMerging,
        ExportingLocation = M.ExportingLocation,
        JobStats = M.JobStats,
    },
}

M.GetIntegrationInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Scope = {
    PROFILE = "PROFILE",
    DOMAIN = "DOMAIN",
}

M.GetIntegrationOutput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ObjectTypeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        WorkflowId = {
            type = "string",
        },
        IsUnstructured = {
            type = "boolean",
        },
        RoleArn = {
            type = "string",
        },
        EventTriggerNames = {
            type = "list",
            member = { type = "string" },
        },
        Scope = {
            type = "string",
        },
    },
}

M.GetMatchesInput = {
    type = "structure",
    members = {
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
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MatchItem = {
    type = "structure",
    members = {
        MatchId = {
            type = "string",
        },
        ProfileIds = {
            type = "list",
            member = { type = "string" },
        },
        ConfidenceScore = {
            type = "double",
        },
    },
}

M.GetMatchesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MatchGenerationDate = {
            type = "timestamp",
        },
        PotentialMatches = {
            type = "integer",
        },
        Matches = {
            type = "list",
            member = M.MatchItem,
        },
    },
}

M.GetObjectTypeAttributeStatisticsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetObjectTypeAttributeStatisticsPercentiles = {
    type = "structure",
    members = {
        P5 = {
            type = "double",
            traits = {
                required = true,
            },
        },
        P25 = {
            type = "double",
            traits = {
                required = true,
            },
        },
        P50 = {
            type = "double",
            traits = {
                required = true,
            },
        },
        P75 = {
            type = "double",
            traits = {
                required = true,
            },
        },
        P95 = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.GetObjectTypeAttributeStatisticsStats = {
    type = "structure",
    members = {
        Maximum = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Minimum = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Average = {
            type = "double",
            traits = {
                required = true,
            },
        },
        StandardDeviation = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Percentiles = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GetObjectTypeAttributeStatisticsPercentiles }),
    },
}

M.GetObjectTypeAttributeStatisticsOutput = {
    type = "structure",
    members = {
        Statistics = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GetObjectTypeAttributeStatisticsStats }),
        CalculatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetProfileHistoryRecordInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProfileHistoryRecordOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        ActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileObjectUniqueKey = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        PerformedBy = {
            type = "string",
        },
    },
}

M.GetProfileObjectTypeInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProfileObjectTypeOutput = {
    type = "structure",
    members = {
        ObjectTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateId = {
            type = "string",
        },
        ExpirationDays = {
            type = "integer",
        },
        EncryptionKey = {
            type = "string",
        },
        AllowProfileCreation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SourceLastUpdatedTimestampFormat = {
            type = "string",
        },
        MaxAvailableProfileObjectCount = {
            type = "integer",
        },
        MaxProfileObjectCount = {
            type = "integer",
        },
        SourcePriority = {
            type = "integer",
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = M.ObjectTypeField,
        },
        Keys = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetProfileObjectTypeTemplateInput = {
    type = "structure",
    members = {
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProfileObjectTypeTemplateOutput = {
    type = "structure",
    members = {
        TemplateId = {
            type = "string",
        },
        SourceName = {
            type = "string",
        },
        SourceObject = {
            type = "string",
        },
        AllowProfileCreation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SourceLastUpdatedTimestampFormat = {
            type = "string",
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = M.ObjectTypeField,
        },
        Keys = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.MetadataConfig = {
    type = "structure",
    members = {
        MetadataColumns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RecommenderFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RecommenderPromotionalFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PromotionName = {
            type = "string",
        },
        PercentPromotedItems = {
            type = "integer",
        },
    },
}

M.GetProfileRecommendationsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RecommenderFilters = {
            type = "list",
            member = M.RecommenderFilter,
        },
        RecommenderPromotionalFilters = {
            type = "list",
            member = M.RecommenderPromotionalFilter,
        },
        CandidateIds = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        MetadataConfig = M.MetadataConfig,
    },
}

M.Recommendation = {
    type = "structure",
    members = {
        CatalogItem = M.CatalogItem,
        Score = {
            type = "double",
        },
    },
}

M.GetProfileRecommendationsOutput = {
    type = "structure",
    members = {
        Recommendations = {
            type = "list",
            member = M.Recommendation,
        },
    },
}

M.GetRecommenderInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TrainingMetricsCount = {
            type = "integer",
            traits = {
                http_query = "training-metrics-count",
            },
        },
    },
}

M.RecommenderStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
    STOPPING = "STOPPING",
    INACTIVE = "INACTIVE",
    STARTING = "STARTING",
    DELETING = "DELETING",
}

M.RecommenderUpdate = {
    type = "structure",
    members = {
        RecommenderConfig = M.RecommenderConfig,
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.TrainingMetricName = {
    HIT = "hit",
    COVERAGE = "coverage",
    RECALL = "recall",
    POPULARITY = "popularity",
    FRESHNESS = "freshness",
    SIMILARITY = "similarity",
    MEAN_RECIPROCAL_RANK_AT_25 = "mean_reciprocal_rank_at_25",
    NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN_AT_5 = "normalized_discounted_cumulative_gain_at_5",
    NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN_AT_10 = "normalized_discounted_cumulative_gain_at_10",
    NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN_AT_25 = "normalized_discounted_cumulative_gain_at_25",
    PRECISION_AT_5 = "precision_at_5",
    PRECISION_AT_10 = "precision_at_10",
    PRECISION_AT_25 = "precision_at_25",
}

M.TrainingMetrics = {
    type = "structure",
    members = {
        Time = {
            type = "timestamp",
        },
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
    },
}

M.GetRecommenderOutput = {
    type = "structure",
    members = {
        RecommenderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommenderRecipeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommenderSchemaName = {
            type = "string",
        },
        RecommenderConfig = M.RecommenderConfig,
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        CreatedAt = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        LatestRecommenderUpdate = M.RecommenderUpdate,
        TrainingMetrics = {
            type = "list",
            member = M.TrainingMetrics,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetRecommenderFilterInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderFilterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RecommenderFilterStatus = {
    ACTIVE = "ACTIVE",
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    DELETING = "DELETING",
}

M.GetRecommenderFilterOutput = {
    type = "structure",
    members = {
        RecommenderFilterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommenderFilterExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommenderSchemaName = {
            type = "string",
        },
        CreatedAt = {
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
        Description = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetRecommenderSchemaInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderSchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRecommenderSchemaOutput = {
    type = "structure",
    members = {
        RecommenderSchemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
        CreatedAt = {
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

M.GetSegmentDefinitionInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SegmentType = {
    CLASSIC = "CLASSIC",
    ENHANCED = "ENHANCED",
}

M.GetSegmentDefinitionOutput = {
    type = "structure",
    members = {
        SegmentDefinitionName = {
            type = "string",
            traits = {
                json_name = "SegmentDefinitionName",
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "DisplayName",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "Description",
            },
        },
        SegmentGroups = setmetatable({ traits = {
            json_name = "SegmentGroups",
        } }, { __index = M.SegmentGroup }),
        SegmentSort = setmetatable({ traits = {
            json_name = "SegmentSort",
        } }, { __index = M.SegmentSort }),
        SegmentDefinitionArn = {
            type = "string",
            traits = {
                json_name = "SegmentDefinitionArn",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "CreatedAt",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "Tags",
            },
        },
        SegmentSqlQuery = {
            type = "string",
            traits = {
                json_name = "SegmentSqlQuery",
            },
        },
        SegmentType = {
            type = "string",
            traits = {
                json_name = "SegmentType",
            },
        },
    },
}

M.GetSegmentEstimateInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EstimateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EstimateStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.GetSegmentEstimateOutput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
        },
        EstimateId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Estimate = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        StatusCode = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.GetSegmentMembershipInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "ProfileIds",
                required = true,
            },
        },
    },
}

M.ProfileQueryFailures = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                json_name = "ProfileId",
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "Message",
                required = true,
            },
        },
        Status = {
            type = "integer",
            traits = {
                json_name = "Status",
            },
        },
    },
}

M.QueryResult = {
    PRESENT = "PRESENT",
    ABSENT = "ABSENT",
}

M.ProfileQueryResult = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                json_name = "ProfileId",
                required = true,
            },
        },
        QueryResult = {
            type = "string",
            traits = {
                json_name = "QueryResult",
                required = true,
            },
        },
        Profile = setmetatable({ traits = {
            json_name = "Profile",
        } }, { __index = M.Profile }),
    },
}

M.GetSegmentMembershipOutput = {
    type = "structure",
    members = {
        SegmentDefinitionName = {
            type = "string",
            traits = {
                json_name = "SegmentDefinitionName",
            },
        },
        Profiles = {
            type = "list",
            member = M.ProfileQueryResult,
            traits = {
                json_name = "Profiles",
            },
        },
        Failures = {
            type = "list",
            member = M.ProfileQueryFailures,
            traits = {
                json_name = "Failures",
            },
        },
        LastComputedAt = {
            type = "timestamp",
            traits = {
                json_name = "LastComputedAt",
            },
        },
    },
}

M.GetSegmentSnapshotInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SnapshotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SegmentSnapshotStatus = {
    COMPLETED = "COMPLETED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.GetSegmentSnapshotOutput = {
    type = "structure",
    members = {
        SnapshotId = {
            type = "string",
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
        StatusMessage = {
            type = "string",
        },
        DataFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKey = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        DestinationUri = {
            type = "string",
        },
    },
}

M.MatchType = {
    RULE_BASED_MATCHING = "RULE_BASED_MATCHING",
    ML_BASED_MATCHING = "ML_BASED_MATCHING",
}

M.GetSimilarProfilesInput = {
    type = "structure",
    members = {
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
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MatchType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SearchKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SearchValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSimilarProfilesOutput = {
    type = "structure",
    members = {
        ProfileIds = {
            type = "list",
            member = { type = "string" },
        },
        MatchId = {
            type = "string",
        },
        MatchType = {
            type = "string",
        },
        RuleLevel = {
            type = "integer",
        },
        ConfidenceScore = {
            type = "double",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetUploadJobInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.ResultsSummary = {
    type = "structure",
    members = {
        UpdatedRecords = {
            type = "long",
            traits = {
                json_name = "UpdatedRecords",
            },
        },
        CreatedRecords = {
            type = "long",
            traits = {
                json_name = "CreatedRecords",
            },
        },
        FailedRecords = {
            type = "long",
            traits = {
                json_name = "FailedRecords",
            },
        },
    },
}

M.UploadJobStatus = {
    CREATED = "CREATED",
    IN_PROGRESS = "IN_PROGRESS",
    PARTIALLY_SUCCEEDED = "PARTIALLY_SUCCEEDED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
}

M.StatusReason = {
    VALIDATION_FAILURE = "VALIDATION_FAILURE",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.GetUploadJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                json_name = "JobId",
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "DisplayName",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "Status",
            },
        },
        StatusReason = {
            type = "string",
            traits = {
                json_name = "StatusReason",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "CreatedAt",
            },
        },
        CompletedAt = {
            type = "timestamp",
            traits = {
                json_name = "CompletedAt",
            },
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = M.ObjectTypeField,
            traits = {
                json_name = "Fields",
            },
        },
        UniqueKey = {
            type = "string",
            traits = {
                json_name = "UniqueKey",
            },
        },
        ResultsSummary = setmetatable({ traits = {
            json_name = "ResultsSummary",
        } }, { __index = M.ResultsSummary }),
        DataExpiry = {
            type = "integer",
            traits = {
                json_name = "DataExpiry",
            },
        },
    },
}

M.GetUploadJobPathInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.GetUploadJobPathOutput = {
    type = "structure",
    members = {
        Url = {
            type = "string",
            traits = {
                json_name = "Url",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "ClientToken",
            },
        },
        ValidUntil = {
            type = "timestamp",
            traits = {
                json_name = "ValidUntil",
            },
        },
    },
}

M.GetWorkflowInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkflowAttributes = {
    type = "structure",
    members = {
        AppflowIntegration = M.AppflowIntegrationWorkflowAttributes,
    },
}

M.WorkflowMetrics = {
    type = "structure",
    members = {
        AppflowIntegration = M.AppflowIntegrationWorkflowMetrics,
    },
}

M.GetWorkflowOutput = {
    type = "structure",
    members = {
        WorkflowId = {
            type = "string",
        },
        WorkflowType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ErrorDescription = {
            type = "string",
        },
        StartDate = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Attributes = M.WorkflowAttributes,
        Metrics = M.WorkflowMetrics,
    },
}

M.GetWorkflowStepsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkflowId = {
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

M.WorkflowStepItem = {
    type = "structure",
    members = {
        AppflowIntegration = M.AppflowIntegrationWorkflowStep,
    },
}

M.GetWorkflowStepsOutput = {
    type = "structure",
    members = {
        WorkflowId = {
            type = "string",
        },
        WorkflowType = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.WorkflowStepItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountIntegrationsInput = {
    type = "structure",
    members = {
        Uri = {
            type = "string",
            traits = {
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
        IncludeHidden = {
            type = "boolean",
            traits = {
                http_query = "include-hidden",
            },
        },
    },
}

M.ListIntegrationItem = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ObjectTypeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        WorkflowId = {
            type = "string",
        },
        IsUnstructured = {
            type = "boolean",
        },
        RoleArn = {
            type = "string",
        },
        EventTriggerNames = {
            type = "list",
            member = { type = "string" },
        },
        Scope = {
            type = "string",
        },
    },
}

M.ListAccountIntegrationsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ListIntegrationItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCalculatedAttributeDefinitionsInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.ListCalculatedAttributeDefinitionsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ListCalculatedAttributeDefinitionItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCalculatedAttributesForProfileInput = {
    type = "structure",
    members = {
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
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListCalculatedAttributesForProfileOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ListCalculatedAttributeForProfileItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDomainLayoutsInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.LayoutItem = {
    type = "structure",
    members = {
        LayoutDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LayoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDomainLayoutsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.LayoutItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDomainObjectTypesInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.DomainObjectTypesListItem = {
    type = "structure",
    members = {
        ObjectTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListDomainObjectTypesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.DomainObjectTypesListItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDomainsInput = {
    type = "structure",
    members = {
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

M.ListDomainItem = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListDomainsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ListDomainItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEventStreamsInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.DestinationSummary = {
    type = "structure",
    members = {
        Uri = {
            type = "string",
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
        UnhealthySince = {
            type = "timestamp",
        },
    },
}

M.EventStreamSummary = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppedSince = {
            type = "timestamp",
        },
        DestinationSummary = M.DestinationSummary,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListEventStreamsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.EventStreamSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEventTriggersInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.EventTriggerSummaryItem = {
    type = "structure",
    members = {
        ObjectTypeName = {
            type = "string",
        },
        EventTriggerName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListEventTriggersOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.EventTriggerSummaryItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIdentityResolutionJobsInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.IdentityResolutionJob = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        JobStartTime = {
            type = "timestamp",
        },
        JobEndTime = {
            type = "timestamp",
        },
        JobStats = M.JobStats,
        ExportingLocation = M.ExportingLocation,
        Message = {
            type = "string",
        },
    },
}

M.ListIdentityResolutionJobsOutput = {
    type = "structure",
    members = {
        IdentityResolutionJobsList = {
            type = "list",
            member = M.IdentityResolutionJob,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIntegrationsInput = {
    type = "structure",
    members = {
        DomainName = {
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
        IncludeHidden = {
            type = "boolean",
            traits = {
                http_query = "include-hidden",
            },
        },
    },
}

M.ListIntegrationsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ListIntegrationItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListObjectTypeAttributesInput = {
    type = "structure",
    members = {
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
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListObjectTypeAttributeItem = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListObjectTypeAttributesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ListObjectTypeAttributeItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListObjectTypeAttributeValuesInput = {
    type = "structure",
    members = {
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
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListObjectTypeAttributeValuesItem = {
    type = "structure",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListObjectTypeAttributeValuesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ListObjectTypeAttributeValuesItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProfileAttributeValuesInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListProfileAttributeValuesOutput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
        },
        AttributeName = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.AttributeValueItem,
        },
        StatusCode = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ListProfileHistoryRecordsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
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
        ActionType = {
            type = "string",
        },
        PerformedBy = {
            type = "string",
        },
    },
}

M.ProfileHistoryRecord = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        ActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileObjectUniqueKey = {
            type = "string",
        },
        PerformedBy = {
            type = "string",
        },
    },
}

M.ListProfileHistoryRecordsOutput = {
    type = "structure",
    members = {
        ProfileHistoryRecords = {
            type = "list",
            member = M.ProfileHistoryRecord,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ObjectFilter = {
    type = "structure",
    members = {
        KeyName = {
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

M.ListProfileObjectsInput = {
    type = "structure",
    members = {
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
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectFilter = M.ObjectFilter,
    },
}

M.ListProfileObjectsItem = {
    type = "structure",
    members = {
        ObjectTypeName = {
            type = "string",
        },
        ProfileObjectUniqueKey = {
            type = "string",
        },
        Object = {
            type = "string",
        },
    },
}

M.ListProfileObjectsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ListProfileObjectsItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProfileObjectTypesInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.ListProfileObjectTypeItem = {
    type = "structure",
    members = {
        ObjectTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        MaxProfileObjectCount = {
            type = "integer",
        },
        MaxAvailableProfileObjectCount = {
            type = "integer",
        },
        SourcePriority = {
            type = "integer",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListProfileObjectTypesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ListProfileObjectTypeItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProfileObjectTypeTemplatesInput = {
    type = "structure",
    members = {
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

M.ListProfileObjectTypeTemplateItem = {
    type = "structure",
    members = {
        TemplateId = {
            type = "string",
        },
        SourceName = {
            type = "string",
        },
        SourceObject = {
            type = "string",
        },
    },
}

M.ListProfileObjectTypeTemplatesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ListProfileObjectTypeTemplateItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRecommenderFiltersInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.RecommenderFilterSummary = {
    type = "structure",
    members = {
        RecommenderFilterName = {
            type = "string",
        },
        RecommenderSchemaName = {
            type = "string",
        },
        RecommenderFilterExpression = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListRecommenderFiltersOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RecommenderFilters = {
            type = "list",
            member = M.RecommenderFilterSummary,
        },
    },
}

M.ListRecommenderRecipesInput = {
    type = "structure",
    members = {
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

M.RecommenderRecipe = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ListRecommenderRecipesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RecommenderRecipes = {
            type = "list",
            member = M.RecommenderRecipe,
        },
    },
}

M.ListRecommendersInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.RecommenderSummary = {
    type = "structure",
    members = {
        RecommenderName = {
            type = "string",
        },
        RecipeName = {
            type = "string",
        },
        RecommenderSchemaName = {
            type = "string",
        },
        RecommenderConfig = M.RecommenderConfig,
        CreatedAt = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        FailureReason = {
            type = "string",
        },
        LatestRecommenderUpdate = M.RecommenderUpdate,
    },
}

M.ListRecommendersOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Recommenders = {
            type = "list",
            member = M.RecommenderSummary,
        },
    },
}

M.ListRecommenderSchemasInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.RecommenderSchemaSummary = {
    type = "structure",
    members = {
        RecommenderSchemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
        CreatedAt = {
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

M.ListRecommenderSchemasOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RecommenderSchemas = {
            type = "list",
            member = M.RecommenderSchemaSummary,
        },
    },
}

M.ListRuleBasedMatchesInput = {
    type = "structure",
    members = {
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
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListRuleBasedMatchesOutput = {
    type = "structure",
    members = {
        MatchIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSegmentDefinitionsInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.SegmentDefinitionItem = {
    type = "structure",
    members = {
        SegmentDefinitionName = {
            type = "string",
            traits = {
                json_name = "SegmentDefinitionName",
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "DisplayName",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "Description",
            },
        },
        SegmentDefinitionArn = {
            type = "string",
            traits = {
                json_name = "SegmentDefinitionArn",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "CreatedAt",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "Tags",
            },
        },
        SegmentType = {
            type = "string",
            traits = {
                json_name = "SegmentType",
            },
        },
    },
}

M.ListSegmentDefinitionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "NextToken",
            },
        },
        Items = {
            type = "list",
            member = M.SegmentDefinitionItem,
            traits = {
                json_name = "Items",
            },
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListUploadJobsInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.UploadJobItem = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                json_name = "JobId",
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "DisplayName",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "Status",
            },
        },
        StatusReason = {
            type = "string",
            traits = {
                json_name = "StatusReason",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "CreatedAt",
            },
        },
        CompletedAt = {
            type = "timestamp",
            traits = {
                json_name = "CompletedAt",
            },
        },
        DataExpiry = {
            type = "integer",
            traits = {
                json_name = "DataExpiry",
            },
        },
    },
}

M.ListUploadJobsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "NextToken",
            },
        },
        Items = {
            type = "list",
            member = M.UploadJobItem,
            traits = {
                json_name = "Items",
            },
        },
    },
}

M.ListWorkflowsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkflowType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        QueryStartDate = {
            type = "timestamp",
        },
        QueryEndDate = {
            type = "timestamp",
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

M.ListWorkflowsItem = {
    type = "structure",
    members = {
        WorkflowType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkflowId = {
            type = "string",
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
        StatusDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkflowsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ListWorkflowsItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FieldSourceProfileIds = {
    type = "structure",
    members = {
        AccountNumber = {
            type = "string",
        },
        AdditionalInformation = {
            type = "string",
        },
        PartyType = {
            type = "string",
        },
        BusinessName = {
            type = "string",
        },
        FirstName = {
            type = "string",
        },
        MiddleName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        BirthDate = {
            type = "string",
        },
        Gender = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        MobilePhoneNumber = {
            type = "string",
        },
        HomePhoneNumber = {
            type = "string",
        },
        BusinessPhoneNumber = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        PersonalEmailAddress = {
            type = "string",
        },
        BusinessEmailAddress = {
            type = "string",
        },
        Address = {
            type = "string",
        },
        ShippingAddress = {
            type = "string",
        },
        MailingAddress = {
            type = "string",
        },
        BillingAddress = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ProfileType = {
            type = "string",
        },
        EngagementPreferences = {
            type = "string",
        },
    },
}

M.MergeProfilesInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MainProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileIdsToBeMerged = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        FieldSourceProfileIds = M.FieldSourceProfileIds,
    },
}

M.MergeProfilesOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutDomainObjectTypeInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        EncryptionKey = {
            type = "string",
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = M.DomainObjectTypeField,
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutDomainObjectTypeOutput = {
    type = "structure",
    members = {
        ObjectTypeName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EncryptionKey = {
            type = "string",
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = M.DomainObjectTypeField,
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutIntegrationInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Uri = {
            type = "string",
        },
        ObjectTypeName = {
            type = "string",
        },
        ObjectTypeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        FlowDefinition = M.FlowDefinition,
        RoleArn = {
            type = "string",
        },
        EventTriggerNames = {
            type = "list",
            member = { type = "string" },
        },
        Scope = {
            type = "string",
        },
    },
}

M.PutIntegrationOutput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ObjectTypeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        WorkflowId = {
            type = "string",
        },
        IsUnstructured = {
            type = "boolean",
        },
        RoleArn = {
            type = "string",
        },
        EventTriggerNames = {
            type = "list",
            member = { type = "string" },
        },
        Scope = {
            type = "string",
        },
    },
}

M.PutProfileObjectInput = {
    type = "structure",
    members = {
        ObjectTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Object = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PutProfileObjectOutput = {
    type = "structure",
    members = {
        ProfileObjectUniqueKey = {
            type = "string",
        },
    },
}

M.PutProfileObjectTypeInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateId = {
            type = "string",
        },
        ExpirationDays = {
            type = "integer",
        },
        EncryptionKey = {
            type = "string",
        },
        AllowProfileCreation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SourceLastUpdatedTimestampFormat = {
            type = "string",
        },
        MaxProfileObjectCount = {
            type = "integer",
        },
        SourcePriority = {
            type = "integer",
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = M.ObjectTypeField,
        },
        Keys = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutProfileObjectTypeOutput = {
    type = "structure",
    members = {
        ObjectTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateId = {
            type = "string",
        },
        ExpirationDays = {
            type = "integer",
        },
        EncryptionKey = {
            type = "string",
        },
        AllowProfileCreation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SourceLastUpdatedTimestampFormat = {
            type = "string",
        },
        MaxProfileObjectCount = {
            type = "integer",
        },
        MaxAvailableProfileObjectCount = {
            type = "integer",
        },
        SourcePriority = {
            type = "integer",
        },
        Fields = {
            type = "map",
            key = { type = "string" },
            value = M.ObjectTypeField,
        },
        Keys = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.logicalOperator = {
    AND = "AND",
    OR = "OR",
}

M.SearchProfilesInput = {
    type = "structure",
    members = {
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
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        KeyName = {
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
        AdditionalSearchKeys = {
            type = "list",
            member = M.AdditionalSearchKey,
        },
        LogicalOperator = {
            type = "string",
        },
    },
}

M.SearchProfilesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.Profile,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartRecommenderInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartRecommenderOutput = {
    type = "structure",
}

M.StartUploadJobInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.StartUploadJobOutput = {
    type = "structure",
}

M.StopRecommenderInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopRecommenderOutput = {
    type = "structure",
}

M.StopUploadJobInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.StopUploadJobOutput = {
    type = "structure",
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
}

M.UpdateCalculatedAttributeDefinitionInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CalculatedAttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Conditions = M.Conditions,
    },
}

M.UpdateCalculatedAttributeDefinitionOutput = {
    type = "structure",
    members = {
        CalculatedAttributeName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Statistic = {
            type = "string",
        },
        Conditions = M.Conditions,
        AttributeDetails = M.AttributeDetails,
        UseHistoricalData = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        Readiness = M.Readiness,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateDomainInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DefaultExpirationDays = {
            type = "integer",
        },
        DefaultEncryptionKey = {
            type = "string",
        },
        DeadLetterQueueUrl = {
            type = "string",
        },
        Matching = M.MatchingRequest,
        RuleBasedMatching = M.RuleBasedMatchingRequest,
        DataStore = M.DataStoreRequest,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateDomainOutput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultExpirationDays = {
            type = "integer",
        },
        DefaultEncryptionKey = {
            type = "string",
        },
        DeadLetterQueueUrl = {
            type = "string",
        },
        Matching = M.MatchingResponse,
        RuleBasedMatching = M.RuleBasedMatchingResponse,
        DataStore = M.DataStoreResponse,
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateDomainLayoutInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LayoutDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LayoutType = {
            type = "string",
        },
        Layout = {
            type = "string",
        },
    },
}

M.UpdateDomainLayoutOutput = {
    type = "structure",
    members = {
        LayoutDefinitionName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LayoutType = {
            type = "string",
        },
        Layout = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateEventTriggerInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventTriggerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectTypeName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EventTriggerConditions = {
            type = "list",
            member = M.EventTriggerCondition,
        },
        SegmentFilter = {
            type = "string",
        },
        EventTriggerLimits = M.EventTriggerLimits,
    },
}

M.UpdateEventTriggerOutput = {
    type = "structure",
    members = {
        EventTriggerName = {
            type = "string",
        },
        ObjectTypeName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EventTriggerConditions = {
            type = "list",
            member = M.EventTriggerCondition,
        },
        SegmentFilter = {
            type = "string",
        },
        EventTriggerLimits = M.EventTriggerLimits,
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateAddress = {
    type = "structure",
    members = {
        Address1 = {
            type = "string",
        },
        Address2 = {
            type = "string",
        },
        Address3 = {
            type = "string",
        },
        Address4 = {
            type = "string",
        },
        City = {
            type = "string",
        },
        County = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Province = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        PostalCode = {
            type = "string",
        },
    },
}

M.UpdateProfileInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalInformation = {
            type = "string",
        },
        AccountNumber = {
            type = "string",
        },
        PartyType = {
            type = "string",
        },
        BusinessName = {
            type = "string",
        },
        FirstName = {
            type = "string",
        },
        MiddleName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        BirthDate = {
            type = "string",
        },
        Gender = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        MobilePhoneNumber = {
            type = "string",
        },
        HomePhoneNumber = {
            type = "string",
        },
        BusinessPhoneNumber = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        PersonalEmailAddress = {
            type = "string",
        },
        BusinessEmailAddress = {
            type = "string",
        },
        Address = M.UpdateAddress,
        ShippingAddress = M.UpdateAddress,
        MailingAddress = M.UpdateAddress,
        BillingAddress = M.UpdateAddress,
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PartyTypeString = {
            type = "string",
        },
        GenderString = {
            type = "string",
        },
        ProfileType = {
            type = "string",
        },
        EngagementPreferences = M.EngagementPreferences,
    },
}

M.UpdateProfileOutput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRecommenderInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommenderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RecommenderConfig = M.RecommenderConfig,
    },
}

M.UpdateRecommenderOutput = {
    type = "structure",
    members = {
        RecommenderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
