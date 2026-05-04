local M = {}

M.AccessDeniedErrorCode = {
    ACCESS_DENIED_TO_ASSESSMENT_TARGET = "ACCESS_DENIED_TO_ASSESSMENT_TARGET",
    ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE = "ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE",
    ACCESS_DENIED_TO_ASSESSMENT_RUN = "ACCESS_DENIED_TO_ASSESSMENT_RUN",
    ACCESS_DENIED_TO_FINDING = "ACCESS_DENIED_TO_FINDING",
    ACCESS_DENIED_TO_RESOURCE_GROUP = "ACCESS_DENIED_TO_RESOURCE_GROUP",
    ACCESS_DENIED_TO_RULES_PACKAGE = "ACCESS_DENIED_TO_RULES_PACKAGE",
    ACCESS_DENIED_TO_SNS_TOPIC = "ACCESS_DENIED_TO_SNS_TOPIC",
    ACCESS_DENIED_TO_IAM_ROLE = "ACCESS_DENIED_TO_IAM_ROLE",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        canRetry = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.Attribute = {
    type = "structure",
    id = "Attribute",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.AddAttributesToFindingsInput = {
    type = "structure",
    id = "AddAttributesToFindingsInput",
    members = {
        findingArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "list",
            member = M.Attribute,
            traits = {
                required = true,
            },
        },
    },
}

M.FailedItemErrorCode = {
    INVALID_ARN = "INVALID_ARN",
    DUPLICATE_ARN = "DUPLICATE_ARN",
    ITEM_DOES_NOT_EXIST = "ITEM_DOES_NOT_EXIST",
    ACCESS_DENIED = "ACCESS_DENIED",
    LIMIT_EXCEEDED = "LIMIT_EXCEEDED",
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.FailedItemDetails = {
    type = "structure",
    id = "FailedItemDetails",
    members = {
        failureCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.AddAttributesToFindingsOutput = {
    type = "structure",
    id = "AddAttributesToFindingsOutput",
    members = {
        failedItems = {
            type = "map",
            key = { type = "string" },
            value = M.FailedItemDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.InternalException = {
    type = "structure",
    id = "InternalException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        canRetry = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidInputErrorCode = {
    INVALID_ASSESSMENT_TARGET_ARN = "INVALID_ASSESSMENT_TARGET_ARN",
    INVALID_ASSESSMENT_TEMPLATE_ARN = "INVALID_ASSESSMENT_TEMPLATE_ARN",
    INVALID_ASSESSMENT_RUN_ARN = "INVALID_ASSESSMENT_RUN_ARN",
    INVALID_FINDING_ARN = "INVALID_FINDING_ARN",
    INVALID_RESOURCE_GROUP_ARN = "INVALID_RESOURCE_GROUP_ARN",
    INVALID_RULES_PACKAGE_ARN = "INVALID_RULES_PACKAGE_ARN",
    INVALID_RESOURCE_ARN = "INVALID_RESOURCE_ARN",
    INVALID_SNS_TOPIC_ARN = "INVALID_SNS_TOPIC_ARN",
    INVALID_IAM_ROLE_ARN = "INVALID_IAM_ROLE_ARN",
    INVALID_ASSESSMENT_TARGET_NAME = "INVALID_ASSESSMENT_TARGET_NAME",
    INVALID_ASSESSMENT_TARGET_NAME_PATTERN = "INVALID_ASSESSMENT_TARGET_NAME_PATTERN",
    INVALID_ASSESSMENT_TEMPLATE_NAME = "INVALID_ASSESSMENT_TEMPLATE_NAME",
    INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN = "INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN",
    INVALID_ASSESSMENT_TEMPLATE_DURATION = "INVALID_ASSESSMENT_TEMPLATE_DURATION",
    INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE = "INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE",
    INVALID_ASSESSMENT_RUN_DURATION_RANGE = "INVALID_ASSESSMENT_RUN_DURATION_RANGE",
    INVALID_ASSESSMENT_RUN_START_TIME_RANGE = "INVALID_ASSESSMENT_RUN_START_TIME_RANGE",
    INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE = "INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE",
    INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE = "INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE",
    INVALID_ASSESSMENT_RUN_STATE = "INVALID_ASSESSMENT_RUN_STATE",
    INVALID_TAG = "INVALID_TAG",
    INVALID_TAG_KEY = "INVALID_TAG_KEY",
    INVALID_TAG_VALUE = "INVALID_TAG_VALUE",
    INVALID_RESOURCE_GROUP_TAG_KEY = "INVALID_RESOURCE_GROUP_TAG_KEY",
    INVALID_RESOURCE_GROUP_TAG_VALUE = "INVALID_RESOURCE_GROUP_TAG_VALUE",
    INVALID_ATTRIBUTE = "INVALID_ATTRIBUTE",
    INVALID_USER_ATTRIBUTE = "INVALID_USER_ATTRIBUTE",
    INVALID_USER_ATTRIBUTE_KEY = "INVALID_USER_ATTRIBUTE_KEY",
    INVALID_USER_ATTRIBUTE_VALUE = "INVALID_USER_ATTRIBUTE_VALUE",
    INVALID_PAGINATION_TOKEN = "INVALID_PAGINATION_TOKEN",
    INVALID_MAX_RESULTS = "INVALID_MAX_RESULTS",
    INVALID_AGENT_ID = "INVALID_AGENT_ID",
    INVALID_AUTO_SCALING_GROUP = "INVALID_AUTO_SCALING_GROUP",
    INVALID_RULE_NAME = "INVALID_RULE_NAME",
    INVALID_SEVERITY = "INVALID_SEVERITY",
    INVALID_LOCALE = "INVALID_LOCALE",
    INVALID_EVENT = "INVALID_EVENT",
    ASSESSMENT_TARGET_NAME_ALREADY_TAKEN = "ASSESSMENT_TARGET_NAME_ALREADY_TAKEN",
    ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN = "ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN",
    INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS = "INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS",
    INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS = "INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS",
    INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS = "INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS",
    INVALID_NUMBER_OF_FINDING_ARNS = "INVALID_NUMBER_OF_FINDING_ARNS",
    INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS = "INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS",
    INVALID_NUMBER_OF_RULES_PACKAGE_ARNS = "INVALID_NUMBER_OF_RULES_PACKAGE_ARNS",
    INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES = "INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES",
    INVALID_NUMBER_OF_TAGS = "INVALID_NUMBER_OF_TAGS",
    INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS = "INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS",
    INVALID_NUMBER_OF_ATTRIBUTES = "INVALID_NUMBER_OF_ATTRIBUTES",
    INVALID_NUMBER_OF_USER_ATTRIBUTES = "INVALID_NUMBER_OF_USER_ATTRIBUTES",
    INVALID_NUMBER_OF_AGENT_IDS = "INVALID_NUMBER_OF_AGENT_IDS",
    INVALID_NUMBER_OF_AUTO_SCALING_GROUPS = "INVALID_NUMBER_OF_AUTO_SCALING_GROUPS",
    INVALID_NUMBER_OF_RULE_NAMES = "INVALID_NUMBER_OF_RULE_NAMES",
    INVALID_NUMBER_OF_SEVERITIES = "INVALID_NUMBER_OF_SEVERITIES",
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        canRetry = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.NoSuchEntityErrorCode = {
    ASSESSMENT_TARGET_DOES_NOT_EXIST = "ASSESSMENT_TARGET_DOES_NOT_EXIST",
    ASSESSMENT_TEMPLATE_DOES_NOT_EXIST = "ASSESSMENT_TEMPLATE_DOES_NOT_EXIST",
    ASSESSMENT_RUN_DOES_NOT_EXIST = "ASSESSMENT_RUN_DOES_NOT_EXIST",
    FINDING_DOES_NOT_EXIST = "FINDING_DOES_NOT_EXIST",
    RESOURCE_GROUP_DOES_NOT_EXIST = "RESOURCE_GROUP_DOES_NOT_EXIST",
    RULES_PACKAGE_DOES_NOT_EXIST = "RULES_PACKAGE_DOES_NOT_EXIST",
    SNS_TOPIC_DOES_NOT_EXIST = "SNS_TOPIC_DOES_NOT_EXIST",
    IAM_ROLE_DOES_NOT_EXIST = "IAM_ROLE_DOES_NOT_EXIST",
}

M.NoSuchEntityException = {
    type = "structure",
    id = "NoSuchEntityException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        canRetry = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceTemporarilyUnavailableException = {
    type = "structure",
    id = "ServiceTemporarilyUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        canRetry = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentAlreadyRunningAssessment = {
    type = "structure",
    id = "AgentAlreadyRunningAssessment",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentHealthCode = {
    IDLE = "IDLE",
    RUNNING = "RUNNING",
    SHUTDOWN = "SHUTDOWN",
    UNHEALTHY = "UNHEALTHY",
    THROTTLED = "THROTTLED",
    UNKNOWN = "UNKNOWN",
}

M.AgentHealth = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
    UNKNOWN = "UNKNOWN",
}

M.AgentFilter = {
    type = "structure",
    id = "AgentFilter",
    members = {
        agentHealths = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        agentHealthCodes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AgentPreview = {
    type = "structure",
    id = "AgentPreview",
    members = {
        hostname = {
            type = "string",
        },
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoScalingGroup = {
            type = "string",
        },
        agentHealth = {
            type = "string",
        },
        agentVersion = {
            type = "string",
        },
        operatingSystem = {
            type = "string",
        },
        kernelVersion = {
            type = "string",
        },
        ipv4Address = {
            type = "string",
        },
    },
}

M.AgentsAlreadyRunningAssessmentException = {
    type = "structure",
    id = "AgentsAlreadyRunningAssessmentException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agents = {
            type = "list",
            member = M.AgentAlreadyRunningAssessment,
            traits = {
                required = true,
            },
        },
        agentsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        canRetry = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.Severity = {
    LOW = "Low",
    MEDIUM = "Medium",
    HIGH = "High",
    INFORMATIONAL = "Informational",
    UNDEFINED = "Undefined",
}

M.InspectorEvent = {
    ASSESSMENT_RUN_STARTED = "ASSESSMENT_RUN_STARTED",
    ASSESSMENT_RUN_COMPLETED = "ASSESSMENT_RUN_COMPLETED",
    ASSESSMENT_RUN_STATE_CHANGED = "ASSESSMENT_RUN_STATE_CHANGED",
    FINDING_REPORTED = "FINDING_REPORTED",
    OTHER = "OTHER",
}

M.AssessmentRunNotificationSnsStatusCode = {
    SUCCESS = "SUCCESS",
    TOPIC_DOES_NOT_EXIST = "TOPIC_DOES_NOT_EXIST",
    ACCESS_DENIED = "ACCESS_DENIED",
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.AssessmentRunNotification = {
    type = "structure",
    id = "AssessmentRunNotification",
    members = {
        date = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
        error = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        snsTopicArn = {
            type = "string",
        },
        snsPublishStatusCode = {
            type = "string",
        },
    },
}

M.AssessmentRunState = {
    CREATED = "CREATED",
    START_DATA_COLLECTION_PENDING = "START_DATA_COLLECTION_PENDING",
    START_DATA_COLLECTION_IN_PROGRESS = "START_DATA_COLLECTION_IN_PROGRESS",
    COLLECTING_DATA = "COLLECTING_DATA",
    STOP_DATA_COLLECTION_PENDING = "STOP_DATA_COLLECTION_PENDING",
    DATA_COLLECTED = "DATA_COLLECTED",
    START_EVALUATING_RULES_PENDING = "START_EVALUATING_RULES_PENDING",
    EVALUATING_RULES = "EVALUATING_RULES",
    FAILED = "FAILED",
    ERROR = "ERROR",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS",
    CANCELED = "CANCELED",
}

M.AssessmentRunStateChange = {
    type = "structure",
    id = "AssessmentRunStateChange",
    members = {
        stateChangedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssessmentRun = {
    type = "structure",
    id = "AssessmentRun",
    members = {
        arn = {
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
        assessmentTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        durationInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        rulesPackageArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        userAttributesForFindings = {
            type = "list",
            member = M.Attribute,
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
        },
        completedAt = {
            type = "timestamp",
        },
        stateChangedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        dataCollected = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        stateChanges = {
            type = "list",
            member = M.AssessmentRunStateChange,
            traits = {
                required = true,
            },
        },
        notifications = {
            type = "list",
            member = M.AssessmentRunNotification,
            traits = {
                required = true,
            },
        },
        findingCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.TelemetryMetadata = {
    type = "structure",
    id = "TelemetryMetadata",
    members = {
        messageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        count = {
            type = "long",
            traits = {
                required = true,
            },
        },
        dataSize = {
            type = "long",
        },
    },
}

M.AssessmentRunAgent = {
    type = "structure",
    id = "AssessmentRunAgent",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentHealth = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentHealthCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentHealthDetails = {
            type = "string",
        },
        autoScalingGroup = {
            type = "string",
        },
        telemetryMetadata = {
            type = "list",
            member = M.TelemetryMetadata,
            traits = {
                required = true,
            },
        },
    },
}

M.TimestampRange = {
    type = "structure",
    id = "TimestampRange",
    members = {
        beginDate = {
            type = "timestamp",
        },
        endDate = {
            type = "timestamp",
        },
    },
}

M.DurationRange = {
    type = "structure",
    id = "DurationRange",
    members = {
        minSeconds = {
            type = "integer",
        },
        maxSeconds = {
            type = "integer",
        },
    },
}

M.AssessmentRunFilter = {
    type = "structure",
    id = "AssessmentRunFilter",
    members = {
        namePattern = {
            type = "string",
        },
        states = {
            type = "list",
            member = { type = "string" },
        },
        durationRange = M.DurationRange,
        rulesPackageArns = {
            type = "list",
            member = { type = "string" },
        },
        startTimeRange = M.TimestampRange,
        completionTimeRange = M.TimestampRange,
        stateChangeTimeRange = M.TimestampRange,
    },
}

M.AssessmentRunInProgressException = {
    type = "structure",
    id = "AssessmentRunInProgressException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assessmentRunArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        assessmentRunArnsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        canRetry = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.AssessmentTarget = {
    type = "structure",
    id = "AssessmentTarget",
    members = {
        arn = {
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
        resourceGroupArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.AssessmentTargetFilter = {
    type = "structure",
    id = "AssessmentTargetFilter",
    members = {
        assessmentTargetNamePattern = {
            type = "string",
        },
    },
}

M.AssessmentTemplate = {
    type = "structure",
    id = "AssessmentTemplate",
    members = {
        arn = {
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
        assessmentTargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        durationInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        rulesPackageArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        userAttributesForFindings = {
            type = "list",
            member = M.Attribute,
            traits = {
                required = true,
            },
        },
        lastAssessmentRunArn = {
            type = "string",
        },
        assessmentRunCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.AssessmentTemplateFilter = {
    type = "structure",
    id = "AssessmentTemplateFilter",
    members = {
        namePattern = {
            type = "string",
        },
        durationRange = M.DurationRange,
        rulesPackageArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PrivateIp = {
    type = "structure",
    id = "PrivateIp",
    members = {
        privateDnsName = {
            type = "string",
        },
        privateIpAddress = {
            type = "string",
        },
    },
}

M.SecurityGroup = {
    type = "structure",
    id = "SecurityGroup",
    members = {
        groupName = {
            type = "string",
        },
        groupId = {
            type = "string",
        },
    },
}

M.NetworkInterface = {
    type = "structure",
    id = "NetworkInterface",
    members = {
        networkInterfaceId = {
            type = "string",
        },
        subnetId = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        privateDnsName = {
            type = "string",
        },
        privateIpAddress = {
            type = "string",
        },
        privateIpAddresses = {
            type = "list",
            member = M.PrivateIp,
        },
        publicDnsName = {
            type = "string",
        },
        publicIp = {
            type = "string",
        },
        ipv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        securityGroups = {
            type = "list",
            member = M.SecurityGroup,
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.AssetAttributes = {
    type = "structure",
    id = "AssetAttributes",
    members = {
        schemaVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        agentId = {
            type = "string",
        },
        autoScalingGroup = {
            type = "string",
        },
        amiId = {
            type = "string",
        },
        hostname = {
            type = "string",
        },
        ipv4Addresses = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        networkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
    },
}

M.AssetType = {
    EC2_INSTANCE = "ec2-instance",
}

M.CreateAssessmentTargetInput = {
    type = "structure",
    id = "CreateAssessmentTargetInput",
    members = {
        assessmentTargetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceGroupArn = {
            type = "string",
        },
    },
}

M.CreateAssessmentTargetOutput = {
    type = "structure",
    id = "CreateAssessmentTargetOutput",
    members = {
        assessmentTargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidCrossAccountRoleErrorCode = {
    ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP = "ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP",
    ROLE_DOES_NOT_HAVE_CORRECT_POLICY = "ROLE_DOES_NOT_HAVE_CORRECT_POLICY",
}

M.InvalidCrossAccountRoleException = {
    type = "structure",
    id = "InvalidCrossAccountRoleException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        canRetry = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.LimitExceededErrorCode = {
    ASSESSMENT_TARGET_LIMIT_EXCEEDED = "ASSESSMENT_TARGET_LIMIT_EXCEEDED",
    ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED = "ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED",
    ASSESSMENT_RUN_LIMIT_EXCEEDED = "ASSESSMENT_RUN_LIMIT_EXCEEDED",
    RESOURCE_GROUP_LIMIT_EXCEEDED = "RESOURCE_GROUP_LIMIT_EXCEEDED",
    EVENT_SUBSCRIPTION_LIMIT_EXCEEDED = "EVENT_SUBSCRIPTION_LIMIT_EXCEEDED",
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        canRetry = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAssessmentTemplateInput = {
    type = "structure",
    id = "CreateAssessmentTemplateInput",
    members = {
        assessmentTargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assessmentTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        durationInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        rulesPackageArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        userAttributesForFindings = {
            type = "list",
            member = M.Attribute,
        },
    },
}

M.CreateAssessmentTemplateOutput = {
    type = "structure",
    id = "CreateAssessmentTemplateOutput",
    members = {
        assessmentTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateExclusionsPreviewInput = {
    type = "structure",
    id = "CreateExclusionsPreviewInput",
    members = {
        assessmentTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateExclusionsPreviewOutput = {
    type = "structure",
    id = "CreateExclusionsPreviewOutput",
    members = {
        previewToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PreviewGenerationInProgressException = {
    type = "structure",
    id = "PreviewGenerationInProgressException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceGroupTag = {
    type = "structure",
    id = "ResourceGroupTag",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.CreateResourceGroupInput = {
    type = "structure",
    id = "CreateResourceGroupInput",
    members = {
        resourceGroupTags = {
            type = "list",
            member = M.ResourceGroupTag,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateResourceGroupOutput = {
    type = "structure",
    id = "CreateResourceGroupOutput",
    members = {
        resourceGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAssessmentRunInput = {
    type = "structure",
    id = "DeleteAssessmentRunInput",
    members = {
        assessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAssessmentRunOutput = {
    type = "structure",
    id = "DeleteAssessmentRunOutput",
}

M.DeleteAssessmentTargetInput = {
    type = "structure",
    id = "DeleteAssessmentTargetInput",
    members = {
        assessmentTargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAssessmentTargetOutput = {
    type = "structure",
    id = "DeleteAssessmentTargetOutput",
}

M.DeleteAssessmentTemplateInput = {
    type = "structure",
    id = "DeleteAssessmentTemplateInput",
    members = {
        assessmentTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAssessmentTemplateOutput = {
    type = "structure",
    id = "DeleteAssessmentTemplateOutput",
}

M.DescribeAssessmentRunsInput = {
    type = "structure",
    id = "DescribeAssessmentRunsInput",
    members = {
        assessmentRunArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssessmentRunsOutput = {
    type = "structure",
    id = "DescribeAssessmentRunsOutput",
    members = {
        assessmentRuns = {
            type = "list",
            member = M.AssessmentRun,
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key = { type = "string" },
            value = M.FailedItemDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssessmentTargetsInput = {
    type = "structure",
    id = "DescribeAssessmentTargetsInput",
    members = {
        assessmentTargetArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssessmentTargetsOutput = {
    type = "structure",
    id = "DescribeAssessmentTargetsOutput",
    members = {
        assessmentTargets = {
            type = "list",
            member = M.AssessmentTarget,
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key = { type = "string" },
            value = M.FailedItemDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssessmentTemplatesInput = {
    type = "structure",
    id = "DescribeAssessmentTemplatesInput",
    members = {
        assessmentTemplateArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssessmentTemplatesOutput = {
    type = "structure",
    id = "DescribeAssessmentTemplatesOutput",
    members = {
        assessmentTemplates = {
            type = "list",
            member = M.AssessmentTemplate,
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key = { type = "string" },
            value = M.FailedItemDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCrossAccountAccessRoleInput = {
    type = "structure",
    id = "DescribeCrossAccountAccessRoleInput",
}

M.DescribeCrossAccountAccessRoleOutput = {
    type = "structure",
    id = "DescribeCrossAccountAccessRoleOutput",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        valid = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        registeredAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.Locale = {
    EN_US = "EN_US",
}

M.DescribeExclusionsInput = {
    type = "structure",
    id = "DescribeExclusionsInput",
    members = {
        exclusionArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        locale = {
            type = "string",
        },
    },
}

M.ScopeType = {
    INSTANCE_ID = "INSTANCE_ID",
    RULES_PACKAGE_ARN = "RULES_PACKAGE_ARN",
}

M.Scope = {
    type = "structure",
    id = "Scope",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.Exclusion = {
    type = "structure",
    id = "Exclusion",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "list",
            member = M.Scope,
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "list",
            member = M.Attribute,
        },
    },
}

M.DescribeExclusionsOutput = {
    type = "structure",
    id = "DescribeExclusionsOutput",
    members = {
        exclusions = {
            type = "map",
            key = { type = "string" },
            value = M.Exclusion,
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key = { type = "string" },
            value = M.FailedItemDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeFindingsInput = {
    type = "structure",
    id = "DescribeFindingsInput",
    members = {
        findingArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        locale = {
            type = "string",
        },
    },
}

M.InspectorServiceAttributes = {
    type = "structure",
    id = "InspectorServiceAttributes",
    members = {
        schemaVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        assessmentRunArn = {
            type = "string",
        },
        rulesPackageArn = {
            type = "string",
        },
    },
}

M.Finding = {
    type = "structure",
    id = "Finding",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaVersion = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        service = {
            type = "string",
        },
        serviceAttributes = M.InspectorServiceAttributes,
        assetType = {
            type = "string",
        },
        assetAttributes = M.AssetAttributes,
        id = {
            type = "string",
        },
        title = {
            type = "string",
        },
        description = {
            type = "string",
        },
        recommendation = {
            type = "string",
        },
        severity = {
            type = "string",
        },
        numericSeverity = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        confidence = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        indicatorOfCompromise = {
            type = "boolean",
        },
        attributes = {
            type = "list",
            member = M.Attribute,
            traits = {
                required = true,
            },
        },
        userAttributes = {
            type = "list",
            member = M.Attribute,
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeFindingsOutput = {
    type = "structure",
    id = "DescribeFindingsOutput",
    members = {
        findings = {
            type = "list",
            member = M.Finding,
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key = { type = "string" },
            value = M.FailedItemDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeResourceGroupsInput = {
    type = "structure",
    id = "DescribeResourceGroupsInput",
    members = {
        resourceGroupArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceGroup = {
    type = "structure",
    id = "ResourceGroup",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.ResourceGroupTag,
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeResourceGroupsOutput = {
    type = "structure",
    id = "DescribeResourceGroupsOutput",
    members = {
        resourceGroups = {
            type = "list",
            member = M.ResourceGroup,
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key = { type = "string" },
            value = M.FailedItemDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRulesPackagesInput = {
    type = "structure",
    id = "DescribeRulesPackagesInput",
    members = {
        rulesPackageArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        locale = {
            type = "string",
        },
    },
}

M.RulesPackage = {
    type = "structure",
    id = "RulesPackage",
    members = {
        arn = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.DescribeRulesPackagesOutput = {
    type = "structure",
    id = "DescribeRulesPackagesOutput",
    members = {
        rulesPackages = {
            type = "list",
            member = M.RulesPackage,
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key = { type = "string" },
            value = M.FailedItemDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.EventSubscription = {
    type = "structure",
    id = "EventSubscription",
    members = {
        event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscribedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ExclusionPreview = {
    type = "structure",
    id = "ExclusionPreview",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "list",
            member = M.Scope,
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "list",
            member = M.Attribute,
        },
    },
}

M.FindingFilter = {
    type = "structure",
    id = "FindingFilter",
    members = {
        agentIds = {
            type = "list",
            member = { type = "string" },
        },
        autoScalingGroups = {
            type = "list",
            member = { type = "string" },
        },
        ruleNames = {
            type = "list",
            member = { type = "string" },
        },
        severities = {
            type = "list",
            member = { type = "string" },
        },
        rulesPackageArns = {
            type = "list",
            member = { type = "string" },
        },
        attributes = {
            type = "list",
            member = M.Attribute,
        },
        userAttributes = {
            type = "list",
            member = M.Attribute,
        },
        creationTimeRange = M.TimestampRange,
    },
}

M.ReportFileFormat = {
    HTML = "HTML",
    PDF = "PDF",
}

M.ReportType = {
    FINDING = "FINDING",
    FULL = "FULL",
}

M.GetAssessmentReportInput = {
    type = "structure",
    id = "GetAssessmentReportInput",
    members = {
        assessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reportFileFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reportType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReportStatus = {
    WORK_IN_PROGRESS = "WORK_IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.GetAssessmentReportOutput = {
    type = "structure",
    id = "GetAssessmentReportOutput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        url = {
            type = "string",
        },
    },
}

M.UnsupportedFeatureException = {
    type = "structure",
    id = "UnsupportedFeatureException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        canRetry = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.GetExclusionsPreviewInput = {
    type = "structure",
    id = "GetExclusionsPreviewInput",
    members = {
        assessmentTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        previewToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        locale = {
            type = "string",
        },
    },
}

M.PreviewStatus = {
    WORK_IN_PROGRESS = "WORK_IN_PROGRESS",
    COMPLETED = "COMPLETED",
}

M.GetExclusionsPreviewOutput = {
    type = "structure",
    id = "GetExclusionsPreviewOutput",
    members = {
        previewStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exclusionPreviews = {
            type = "list",
            member = M.ExclusionPreview,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetTelemetryMetadataInput = {
    type = "structure",
    id = "GetTelemetryMetadataInput",
    members = {
        assessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTelemetryMetadataOutput = {
    type = "structure",
    id = "GetTelemetryMetadataOutput",
    members = {
        telemetryMetadata = {
            type = "list",
            member = M.TelemetryMetadata,
            traits = {
                required = true,
            },
        },
    },
}

M.ListAssessmentRunAgentsInput = {
    type = "structure",
    id = "ListAssessmentRunAgentsInput",
    members = {
        assessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = M.AgentFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListAssessmentRunAgentsOutput = {
    type = "structure",
    id = "ListAssessmentRunAgentsOutput",
    members = {
        assessmentRunAgents = {
            type = "list",
            member = M.AssessmentRunAgent,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssessmentRunsInput = {
    type = "structure",
    id = "ListAssessmentRunsInput",
    members = {
        assessmentTemplateArns = {
            type = "list",
            member = { type = "string" },
        },
        filter = M.AssessmentRunFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListAssessmentRunsOutput = {
    type = "structure",
    id = "ListAssessmentRunsOutput",
    members = {
        assessmentRunArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssessmentTargetsInput = {
    type = "structure",
    id = "ListAssessmentTargetsInput",
    members = {
        filter = M.AssessmentTargetFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListAssessmentTargetsOutput = {
    type = "structure",
    id = "ListAssessmentTargetsOutput",
    members = {
        assessmentTargetArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssessmentTemplatesInput = {
    type = "structure",
    id = "ListAssessmentTemplatesInput",
    members = {
        assessmentTargetArns = {
            type = "list",
            member = { type = "string" },
        },
        filter = M.AssessmentTemplateFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListAssessmentTemplatesOutput = {
    type = "structure",
    id = "ListAssessmentTemplatesOutput",
    members = {
        assessmentTemplateArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEventSubscriptionsInput = {
    type = "structure",
    id = "ListEventSubscriptionsInput",
    members = {
        resourceArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.Subscription = {
    type = "structure",
    id = "Subscription",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        topicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventSubscriptions = {
            type = "list",
            member = M.EventSubscription,
            traits = {
                required = true,
            },
        },
    },
}

M.ListEventSubscriptionsOutput = {
    type = "structure",
    id = "ListEventSubscriptionsOutput",
    members = {
        subscriptions = {
            type = "list",
            member = M.Subscription,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListExclusionsInput = {
    type = "structure",
    id = "ListExclusionsInput",
    members = {
        assessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListExclusionsOutput = {
    type = "structure",
    id = "ListExclusionsOutput",
    members = {
        exclusionArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFindingsInput = {
    type = "structure",
    id = "ListFindingsInput",
    members = {
        assessmentRunArns = {
            type = "list",
            member = { type = "string" },
        },
        filter = M.FindingFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListFindingsOutput = {
    type = "structure",
    id = "ListFindingsOutput",
    members = {
        findingArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRulesPackagesInput = {
    type = "structure",
    id = "ListRulesPackagesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListRulesPackagesOutput = {
    type = "structure",
    id = "ListRulesPackagesOutput",
    members = {
        rulesPackageArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        nextToken = {
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
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.PreviewAgentsInput = {
    type = "structure",
    id = "PreviewAgentsInput",
    members = {
        previewAgentsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.PreviewAgentsOutput = {
    type = "structure",
    id = "PreviewAgentsOutput",
    members = {
        agentPreviews = {
            type = "list",
            member = M.AgentPreview,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RegisterCrossAccountAccessRoleInput = {
    type = "structure",
    id = "RegisterCrossAccountAccessRoleInput",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterCrossAccountAccessRoleOutput = {
    type = "structure",
    id = "RegisterCrossAccountAccessRoleOutput",
}

M.RemoveAttributesFromFindingsInput = {
    type = "structure",
    id = "RemoveAttributesFromFindingsInput",
    members = {
        findingArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        attributeKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveAttributesFromFindingsOutput = {
    type = "structure",
    id = "RemoveAttributesFromFindingsOutput",
    members = {
        failedItems = {
            type = "map",
            key = { type = "string" },
            value = M.FailedItemDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.SetTagsForResourceInput = {
    type = "structure",
    id = "SetTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.SetTagsForResourceOutput = {
    type = "structure",
    id = "SetTagsForResourceOutput",
}

M.StartAssessmentRunInput = {
    type = "structure",
    id = "StartAssessmentRunInput",
    members = {
        assessmentTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assessmentRunName = {
            type = "string",
        },
    },
}

M.StartAssessmentRunOutput = {
    type = "structure",
    id = "StartAssessmentRunOutput",
    members = {
        assessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopAction = {
    START_EVALUATION = "START_EVALUATION",
    SKIP_EVALUATION = "SKIP_EVALUATION",
}

M.StopAssessmentRunInput = {
    type = "structure",
    id = "StopAssessmentRunInput",
    members = {
        assessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stopAction = {
            type = "string",
        },
    },
}

M.StopAssessmentRunOutput = {
    type = "structure",
    id = "StopAssessmentRunOutput",
}

M.SubscribeToEventInput = {
    type = "structure",
    id = "SubscribeToEventInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        topicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubscribeToEventOutput = {
    type = "structure",
    id = "SubscribeToEventOutput",
}

M.UnsubscribeFromEventInput = {
    type = "structure",
    id = "UnsubscribeFromEventInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        topicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnsubscribeFromEventOutput = {
    type = "structure",
    id = "UnsubscribeFromEventOutput",
}

M.UpdateAssessmentTargetInput = {
    type = "structure",
    id = "UpdateAssessmentTargetInput",
    members = {
        assessmentTargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assessmentTargetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceGroupArn = {
            type = "string",
        },
    },
}

M.UpdateAssessmentTargetOutput = {
    type = "structure",
    id = "UpdateAssessmentTargetOutput",
}

return M
