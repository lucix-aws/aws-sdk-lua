local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "AdditionalSearchKey",
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
    id = "AddProfileKeyInput",
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
    id = "AddProfileKeyOutput",
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
    id = "BadRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
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
    },
}

M.Address = {
    type = "structure",
    id = "Address",
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
    id = "ProfileDimension",
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
    id = "AddressDimension",
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
    id = "Batch",
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
    id = "IncrementalPullConfig",
    members = {
        DatetimeTypeFieldName = {
            type = "string",
        },
    },
}

M.MarketoSourceProperties = {
    type = "structure",
    id = "MarketoSourceProperties",
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
    id = "S3SourceProperties",
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
    id = "SalesforceSourceProperties",
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
    id = "ServiceNowSourceProperties",
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
    id = "ZendeskSourceProperties",
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
    id = "SourceConnectorProperties",
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
    id = "SourceFlowConfig",
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
    id = "ConnectorOperator",
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
    id = "Task",
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
    id = "ScheduledTriggerProperties",
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
    id = "TriggerProperties",
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
    id = "TriggerConfig",
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
    id = "FlowDefinition",
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
    id = "AppflowIntegration",
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
    id = "AppflowIntegrationWorkflowAttributes",
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
    id = "AppflowIntegrationWorkflowMetrics",
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
    id = "AppflowIntegrationWorkflowStep",
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
    id = "AttributeItem",
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
    id = "AttributeDetails",
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
    id = "AttributeDimension",
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
    id = "FilterAttributeDimension",
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
    id = "AttributeTypesSelector",
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
    id = "AttributeValueItem",
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
    id = "ConflictResolution",
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
    id = "Consolidation",
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
    id = "AutoMerging",
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
    id = "RangeOverride",
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
    id = "ConditionOverrides",
    members = {
        Range = M.RangeOverride,
    },
}

M.BatchGetCalculatedAttributeForProfileInput = {
    type = "structure",
    id = "BatchGetCalculatedAttributeForProfileInput",
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
    id = "CalculatedAttributeValue",
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
    id = "BatchGetCalculatedAttributeForProfileError",
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
    id = "BatchGetCalculatedAttributeForProfileOutput",
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
    id = "BatchGetProfileInput",
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
    id = "BatchGetProfileError",
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
    id = "ContactPreference",
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
    id = "EngagementPreferences",
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
    id = "FoundByKeyValue",
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
    id = "Profile",
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
    id = "BatchGetProfileOutput",
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
    id = "ListCalculatedAttributeDefinitionItem",
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
    id = "CalculatedAttributeDimension",
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
    id = "ListCalculatedAttributeForProfileItem",
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
    id = "CatalogItem",
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
    id = "ValueRange",
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
    id = "Range",
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
    id = "Threshold",
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
    id = "Conditions",
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
    id = "FilterDimension",
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
    id = "FilterGroup",
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
    id = "Filter",
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
    id = "CreateCalculatedAttributeDefinitionInput",
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
    id = "Readiness",
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
    id = "CreateCalculatedAttributeDefinitionOutput",
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
    id = "DataStoreRequest",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.S3ExportingConfig = {
    type = "structure",
    id = "S3ExportingConfig",
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
    id = "ExportingConfig",
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
    id = "JobSchedule",
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
    id = "MatchingRequest",
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
    id = "MatchingRule",
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
    id = "RuleBasedMatchingRequest",
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
    id = "CreateDomainInput",
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
    id = "DataStoreResponse",
    members = {
        Enabled = {
            type = "boolean",
        },
        Readiness = M.Readiness,
    },
}

M.MatchingResponse = {
    type = "structure",
    id = "MatchingResponse",
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
    id = "RuleBasedMatchingResponse",
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
    id = "CreateDomainOutput",
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
    id = "CreateDomainLayoutInput",
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
    id = "CreateDomainLayoutOutput",
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
    id = "CreateEventStreamInput",
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
    id = "CreateEventStreamOutput",
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
    id = "ObjectAttribute",
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
    id = "EventTriggerDimension",
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
    id = "EventTriggerCondition",
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
    id = "Period",
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
    id = "EventTriggerLimits",
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
    id = "CreateEventTriggerInput",
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
    id = "CreateEventTriggerOutput",
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
    id = "IntegrationConfig",
    members = {
        AppflowIntegration = M.AppflowIntegration,
    },
}

M.WorkflowType = {
    APPFLOW_INTEGRATION = "APPFLOW_INTEGRATION",
}

M.CreateIntegrationWorkflowInput = {
    type = "structure",
    id = "CreateIntegrationWorkflowInput",
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
    id = "CreateIntegrationWorkflowOutput",
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
    id = "CreateProfileInput",
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
    id = "CreateProfileOutput",
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
    id = "EventParameters",
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
    id = "EventsConfig",
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
    id = "InferenceConfig",
    members = {
        MinProvisionedTPS = {
            type = "integer",
        },
    },
}

M.RecommenderConfig = {
    type = "structure",
    id = "RecommenderConfig",
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
    id = "CreateRecommenderInput",
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
    id = "CreateRecommenderOutput",
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
    id = "CreateRecommenderFilterInput",
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
    id = "CreateRecommenderFilterOutput",
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
    id = "RecommenderSchemaField",
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
    id = "CreateRecommenderSchemaInput",
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
    id = "CreateRecommenderSchemaOutput",
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
    id = "ExtraLengthValueProfileDimension",
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
    id = "DateDimension",
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
    id = "ProfileTypeDimension",
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
    id = "ProfileAttributes",
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
    id = "Dimension",
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
    id = "SourceSegment",
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
    id = "Group",
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
    id = "SegmentGroup",
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
    id = "SortAttribute",
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
    id = "SegmentSort",
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
    id = "CreateSegmentDefinitionInput",
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
    id = "CreateSegmentDefinitionOutput",
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
    id = "SegmentGroupStructure",
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
    id = "CreateSegmentEstimateInput",
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
    id = "CreateSegmentEstimateOutput",
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
    id = "CreateSegmentSnapshotInput",
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
    id = "CreateSegmentSnapshotOutput",
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
    id = "ObjectTypeField",
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
    id = "CreateUploadJobInput",
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
    id = "CreateUploadJobOutput",
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
    id = "DeleteCalculatedAttributeDefinitionInput",
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
    id = "DeleteCalculatedAttributeDefinitionOutput",
}

M.DeleteDomainInput = {
    type = "structure",
    id = "DeleteDomainInput",
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
    id = "DeleteDomainOutput",
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
    id = "DeleteDomainLayoutInput",
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
    id = "DeleteDomainLayoutOutput",
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
    id = "DeleteDomainObjectTypeInput",
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
    id = "DeleteDomainObjectTypeOutput",
}

M.DeleteEventStreamInput = {
    type = "structure",
    id = "DeleteEventStreamInput",
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
    id = "DeleteEventStreamOutput",
}

M.DeleteEventTriggerInput = {
    type = "structure",
    id = "DeleteEventTriggerInput",
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
    id = "DeleteEventTriggerOutput",
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
    id = "DeleteIntegrationInput",
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
    id = "DeleteIntegrationOutput",
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
    id = "DeleteProfileInput",
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
    id = "DeleteProfileOutput",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteProfileKeyInput = {
    type = "structure",
    id = "DeleteProfileKeyInput",
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
    id = "DeleteProfileKeyOutput",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteProfileObjectInput = {
    type = "structure",
    id = "DeleteProfileObjectInput",
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
    id = "DeleteProfileObjectOutput",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteProfileObjectTypeInput = {
    type = "structure",
    id = "DeleteProfileObjectTypeInput",
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
    id = "DeleteProfileObjectTypeOutput",
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
    id = "DeleteRecommenderInput",
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
    id = "DeleteRecommenderOutput",
}

M.DeleteRecommenderFilterInput = {
    type = "structure",
    id = "DeleteRecommenderFilterInput",
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
    id = "DeleteRecommenderFilterOutput",
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
    id = "DeleteRecommenderSchemaInput",
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
    id = "DeleteRecommenderSchemaOutput",
}

M.DeleteSegmentDefinitionInput = {
    type = "structure",
    id = "DeleteSegmentDefinitionInput",
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
    id = "DeleteSegmentDefinitionOutput",
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
    id = "DeleteWorkflowInput",
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
    id = "DeleteWorkflowOutput",
}

M.DetectProfileObjectTypeInput = {
    type = "structure",
    id = "DetectProfileObjectTypeInput",
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
    id = "ObjectTypeKey",
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
    id = "DetectedProfileObjectType",
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
    id = "DetectProfileObjectTypeOutput",
    members = {
        DetectedProfileObjectTypes = {
            type = "list",
            member = M.DetectedProfileObjectType,
        },
    },
}

M.GetAutoMergingPreviewInput = {
    type = "structure",
    id = "GetAutoMergingPreviewInput",
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
    id = "GetAutoMergingPreviewOutput",
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
    id = "GetCalculatedAttributeDefinitionInput",
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
    id = "GetCalculatedAttributeDefinitionOutput",
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
    id = "GetCalculatedAttributeForProfileInput",
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
    id = "GetCalculatedAttributeForProfileOutput",
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
    id = "GetDomainInput",
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
    id = "DomainStats",
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
    id = "GetDomainOutput",
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
    id = "GetDomainLayoutInput",
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
    id = "GetDomainLayoutOutput",
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
    id = "GetDomainObjectTypeInput",
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
    id = "DomainObjectTypeField",
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
    id = "GetDomainObjectTypeOutput",
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
    id = "GetEventStreamInput",
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
    id = "EventStreamDestinationDetails",
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
    id = "GetEventStreamOutput",
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
    id = "GetEventTriggerInput",
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
    id = "GetEventTriggerOutput",
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
    id = "GetIdentityResolutionJobInput",
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
    id = "S3ExportingLocation",
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
    id = "ExportingLocation",
    members = {
        S3Exporting = M.S3ExportingLocation,
    },
}

M.JobStats = {
    type = "structure",
    id = "JobStats",
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
    id = "GetIdentityResolutionJobOutput",
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
    id = "GetIntegrationInput",
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
    id = "GetIntegrationOutput",
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
    id = "GetMatchesInput",
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
    id = "MatchItem",
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
    id = "GetMatchesOutput",
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
    id = "GetObjectTypeAttributeStatisticsInput",
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
    id = "GetObjectTypeAttributeStatisticsPercentiles",
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
    id = "GetObjectTypeAttributeStatisticsStats",
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
    id = "GetObjectTypeAttributeStatisticsOutput",
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
    id = "GetProfileHistoryRecordInput",
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
    id = "GetProfileHistoryRecordOutput",
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
    id = "GetProfileObjectTypeInput",
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
    id = "GetProfileObjectTypeOutput",
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
    id = "GetProfileObjectTypeTemplateInput",
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
    id = "GetProfileObjectTypeTemplateOutput",
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
    id = "MetadataConfig",
    members = {
        MetadataColumns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RecommenderFilter = {
    type = "structure",
    id = "RecommenderFilter",
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
    id = "RecommenderPromotionalFilter",
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
    id = "GetProfileRecommendationsInput",
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
    id = "Recommendation",
    members = {
        CatalogItem = M.CatalogItem,
        Score = {
            type = "double",
        },
    },
}

M.GetProfileRecommendationsOutput = {
    type = "structure",
    id = "GetProfileRecommendationsOutput",
    members = {
        Recommendations = {
            type = "list",
            member = M.Recommendation,
        },
    },
}

M.GetRecommenderInput = {
    type = "structure",
    id = "GetRecommenderInput",
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
    id = "RecommenderUpdate",
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
    id = "TrainingMetrics",
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
    id = "GetRecommenderOutput",
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
    id = "GetRecommenderFilterInput",
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
    id = "GetRecommenderFilterOutput",
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
    id = "GetRecommenderSchemaInput",
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
    id = "GetRecommenderSchemaOutput",
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
    id = "GetSegmentDefinitionInput",
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
    id = "GetSegmentDefinitionOutput",
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
    id = "GetSegmentEstimateInput",
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
    id = "GetSegmentEstimateOutput",
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
    id = "GetSegmentMembershipInput",
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
    id = "ProfileQueryFailures",
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
    id = "ProfileQueryResult",
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
    id = "GetSegmentMembershipOutput",
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
    id = "GetSegmentSnapshotInput",
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
    id = "GetSegmentSnapshotOutput",
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
    id = "GetSimilarProfilesInput",
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
    id = "GetSimilarProfilesOutput",
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
    id = "GetUploadJobInput",
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
    id = "ResultsSummary",
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
    id = "GetUploadJobOutput",
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
    id = "GetUploadJobPathInput",
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
    id = "GetUploadJobPathOutput",
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
    id = "GetWorkflowInput",
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
    id = "WorkflowAttributes",
    members = {
        AppflowIntegration = M.AppflowIntegrationWorkflowAttributes,
    },
}

M.WorkflowMetrics = {
    type = "structure",
    id = "WorkflowMetrics",
    members = {
        AppflowIntegration = M.AppflowIntegrationWorkflowMetrics,
    },
}

M.GetWorkflowOutput = {
    type = "structure",
    id = "GetWorkflowOutput",
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
    id = "GetWorkflowStepsInput",
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
    id = "WorkflowStepItem",
    members = {
        AppflowIntegration = M.AppflowIntegrationWorkflowStep,
    },
}

M.GetWorkflowStepsOutput = {
    type = "structure",
    id = "GetWorkflowStepsOutput",
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
    id = "ListAccountIntegrationsInput",
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
    id = "ListIntegrationItem",
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
    id = "ListAccountIntegrationsOutput",
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
    id = "ListCalculatedAttributeDefinitionsInput",
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
    id = "ListCalculatedAttributeDefinitionsOutput",
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
    id = "ListCalculatedAttributesForProfileInput",
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
    id = "ListCalculatedAttributesForProfileOutput",
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
    id = "ListDomainLayoutsInput",
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
    id = "LayoutItem",
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
    id = "ListDomainLayoutsOutput",
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
    id = "ListDomainObjectTypesInput",
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
    id = "DomainObjectTypesListItem",
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
    id = "ListDomainObjectTypesOutput",
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
    id = "ListDomainsInput",
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
    id = "ListDomainItem",
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
    id = "ListDomainsOutput",
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
    id = "ListEventStreamsInput",
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
    id = "DestinationSummary",
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
    id = "EventStreamSummary",
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
    id = "ListEventStreamsOutput",
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
    id = "ListEventTriggersInput",
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
    id = "EventTriggerSummaryItem",
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
    id = "ListEventTriggersOutput",
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
    id = "ListIdentityResolutionJobsInput",
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
    id = "IdentityResolutionJob",
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
    id = "ListIdentityResolutionJobsOutput",
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
    id = "ListIntegrationsInput",
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
    id = "ListIntegrationsOutput",
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
    id = "ListObjectTypeAttributesInput",
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
    id = "ListObjectTypeAttributeItem",
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
    id = "ListObjectTypeAttributesOutput",
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
    id = "ListObjectTypeAttributeValuesInput",
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
    id = "ListObjectTypeAttributeValuesItem",
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
    id = "ListObjectTypeAttributeValuesOutput",
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
    id = "ListProfileAttributeValuesInput",
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
    id = "ListProfileAttributeValuesOutput",
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
    id = "ListProfileHistoryRecordsInput",
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
    id = "ProfileHistoryRecord",
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
    id = "ListProfileHistoryRecordsOutput",
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
    id = "ObjectFilter",
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
    id = "ListProfileObjectsInput",
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
    id = "ListProfileObjectsItem",
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
    id = "ListProfileObjectsOutput",
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
    id = "ListProfileObjectTypesInput",
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
    id = "ListProfileObjectTypeItem",
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
    id = "ListProfileObjectTypesOutput",
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
    id = "ListProfileObjectTypeTemplatesInput",
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
    id = "ListProfileObjectTypeTemplateItem",
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
    id = "ListProfileObjectTypeTemplatesOutput",
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
    id = "ListRecommenderFiltersInput",
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
    id = "RecommenderFilterSummary",
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
    id = "ListRecommenderFiltersOutput",
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
    id = "ListRecommenderRecipesInput",
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
    id = "RecommenderRecipe",
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
    id = "ListRecommenderRecipesOutput",
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
    id = "ListRecommendersInput",
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
    id = "RecommenderSummary",
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
    id = "ListRecommendersOutput",
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
    id = "ListRecommenderSchemasInput",
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
    id = "RecommenderSchemaSummary",
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
    id = "ListRecommenderSchemasOutput",
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
    id = "ListRuleBasedMatchesInput",
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
    id = "ListRuleBasedMatchesOutput",
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
    id = "ListSegmentDefinitionsInput",
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
    id = "SegmentDefinitionItem",
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
    id = "ListSegmentDefinitionsOutput",
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
        },
    },
}

M.ListUploadJobsInput = {
    type = "structure",
    id = "ListUploadJobsInput",
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
    id = "UploadJobItem",
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
    id = "ListUploadJobsOutput",
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
    id = "ListWorkflowsInput",
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
    id = "ListWorkflowsItem",
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
    id = "ListWorkflowsOutput",
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
    id = "FieldSourceProfileIds",
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
    id = "MergeProfilesInput",
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
    id = "MergeProfilesOutput",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutDomainObjectTypeInput = {
    type = "structure",
    id = "PutDomainObjectTypeInput",
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
    id = "PutDomainObjectTypeOutput",
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
    id = "PutIntegrationInput",
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
    id = "PutIntegrationOutput",
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
    id = "PutProfileObjectInput",
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
    id = "PutProfileObjectOutput",
    members = {
        ProfileObjectUniqueKey = {
            type = "string",
        },
    },
}

M.PutProfileObjectTypeInput = {
    type = "structure",
    id = "PutProfileObjectTypeInput",
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
    id = "PutProfileObjectTypeOutput",
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
    id = "SearchProfilesInput",
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
    id = "SearchProfilesOutput",
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
    id = "StartRecommenderInput",
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
    id = "StartRecommenderOutput",
}

M.StartUploadJobInput = {
    type = "structure",
    id = "StartUploadJobInput",
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
    id = "StartUploadJobOutput",
}

M.StopRecommenderInput = {
    type = "structure",
    id = "StopRecommenderInput",
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
    id = "StopRecommenderOutput",
}

M.StopUploadJobInput = {
    type = "structure",
    id = "StopUploadJobInput",
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
    id = "StopUploadJobOutput",
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

M.UpdateCalculatedAttributeDefinitionInput = {
    type = "structure",
    id = "UpdateCalculatedAttributeDefinitionInput",
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
    id = "UpdateCalculatedAttributeDefinitionOutput",
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
    id = "UpdateDomainInput",
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
    id = "UpdateDomainOutput",
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
    id = "UpdateDomainLayoutInput",
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
    id = "UpdateDomainLayoutOutput",
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
    id = "UpdateEventTriggerInput",
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
    id = "UpdateEventTriggerOutput",
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
    id = "UpdateAddress",
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
    id = "UpdateProfileInput",
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
    id = "UpdateProfileOutput",
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
    id = "UpdateRecommenderInput",
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
    id = "UpdateRecommenderOutput",
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
