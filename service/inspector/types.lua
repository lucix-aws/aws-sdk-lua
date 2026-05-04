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
    members = {
        findingArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "list",
            member_type = "structure",
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
    members = {
        failedItems = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalException = {
    type = "structure",
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
    members = {
        agentHealths = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        agentHealthCodes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentPreview = {
    type = "structure",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        rulesPackageArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        userAttributesForFindings = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        notifications = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        findingCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TelemetryMetadata = {
    type = "structure",
    members = {
        messageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        count = {
            type = "number",
            traits = {
                required = true,
            },
        },
        dataSize = {
            type = "number",
        },
    },
}

M.AssessmentRunAgent = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TimestampRange = {
    type = "structure",
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
    members = {
        minSeconds = {
            type = "number",
        },
        maxSeconds = {
            type = "number",
        },
    },
}

M.AssessmentRunFilter = {
    type = "structure",
    members = {
        namePattern = {
            type = "string",
        },
        states = {
            type = "list",
            member_type = "string",
        },
        durationRange = {
            type = "structure",
        },
        rulesPackageArns = {
            type = "list",
            member_type = "string",
        },
        startTimeRange = {
            type = "structure",
        },
        completionTimeRange = {
            type = "structure",
        },
        stateChangeTimeRange = {
            type = "structure",
        },
    },
}

M.AssessmentRunInProgressException = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        assessmentTargetNamePattern = {
            type = "string",
        },
    },
}

M.AssessmentTemplate = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        rulesPackageArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        userAttributesForFindings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        lastAssessmentRunArn = {
            type = "string",
        },
        assessmentRunCount = {
            type = "number",
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
    members = {
        namePattern = {
            type = "string",
        },
        durationRange = {
            type = "structure",
        },
        rulesPackageArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.PrivateIp = {
    type = "structure",
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
            member_type = "structure",
        },
        publicDnsName = {
            type = "string",
        },
        publicIp = {
            type = "string",
        },
        ipv6Addresses = {
            type = "list",
            member_type = "string",
        },
        securityGroups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Tag = {
    type = "structure",
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
    members = {
        schemaVersion = {
            type = "number",
            traits = {
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
            member_type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        networkInterfaces = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetType = {
    EC2_INSTANCE = "ec2-instance",
}

M.CreateAssessmentTargetInput = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        rulesPackageArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        userAttributesForFindings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateAssessmentTemplateOutput = {
    type = "structure",
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
    members = {
        resourceGroupTags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateResourceGroupOutput = {
    type = "structure",
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
}

M.DeleteAssessmentTargetInput = {
    type = "structure",
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
}

M.DeleteAssessmentTemplateInput = {
    type = "structure",
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
}

M.DescribeAssessmentRunsInput = {
    type = "structure",
    members = {
        assessmentRunArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssessmentRunsOutput = {
    type = "structure",
    members = {
        assessmentRuns = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssessmentTargetsInput = {
    type = "structure",
    members = {
        assessmentTargetArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssessmentTargetsOutput = {
    type = "structure",
    members = {
        assessmentTargets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssessmentTemplatesInput = {
    type = "structure",
    members = {
        assessmentTemplateArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssessmentTemplatesOutput = {
    type = "structure",
    members = {
        assessmentTemplates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCrossAccountAccessRoleInput = {
    type = "structure",
}

M.DescribeCrossAccountAccessRoleOutput = {
    type = "structure",
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
    members = {
        exclusionArns = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeExclusionsOutput = {
    type = "structure",
    members = {
        exclusions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeFindingsInput = {
    type = "structure",
    members = {
        findingArns = {
            type = "list",
            member_type = "string",
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
    members = {
        schemaVersion = {
            type = "number",
            traits = {
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
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaVersion = {
            type = "number",
        },
        service = {
            type = "string",
        },
        serviceAttributes = {
            type = "structure",
        },
        assetType = {
            type = "string",
        },
        assetAttributes = {
            type = "structure",
        },
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
            type = "number",
        },
        confidence = {
            type = "number",
        },
        indicatorOfCompromise = {
            type = "boolean",
        },
        attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        userAttributes = {
            type = "list",
            member_type = "structure",
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
    members = {
        findings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeResourceGroupsInput = {
    type = "structure",
    members = {
        resourceGroupArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceGroup = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
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
    members = {
        resourceGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRulesPackagesInput = {
    type = "structure",
    members = {
        rulesPackageArns = {
            type = "list",
            member_type = "string",
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
    members = {
        rulesPackages = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedItems = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EventSubscription = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FindingFilter = {
    type = "structure",
    members = {
        agentIds = {
            type = "list",
            member_type = "string",
        },
        autoScalingGroups = {
            type = "list",
            member_type = "string",
        },
        ruleNames = {
            type = "list",
            member_type = "string",
        },
        severities = {
            type = "list",
            member_type = "string",
        },
        rulesPackageArns = {
            type = "list",
            member_type = "string",
        },
        attributes = {
            type = "list",
            member_type = "structure",
        },
        userAttributes = {
            type = "list",
            member_type = "structure",
        },
        creationTimeRange = {
            type = "structure",
        },
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
            type = "number",
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
    members = {
        previewStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exclusionPreviews = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetTelemetryMetadataInput = {
    type = "structure",
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
    members = {
        telemetryMetadata = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAssessmentRunAgentsInput = {
    type = "structure",
    members = {
        assessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListAssessmentRunAgentsOutput = {
    type = "structure",
    members = {
        assessmentRunAgents = {
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

M.ListAssessmentRunsInput = {
    type = "structure",
    members = {
        assessmentTemplateArns = {
            type = "list",
            member_type = "string",
        },
        filter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListAssessmentRunsOutput = {
    type = "structure",
    members = {
        assessmentRunArns = {
            type = "list",
            member_type = "string",
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
    members = {
        filter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListAssessmentTargetsOutput = {
    type = "structure",
    members = {
        assessmentTargetArns = {
            type = "list",
            member_type = "string",
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
    members = {
        assessmentTargetArns = {
            type = "list",
            member_type = "string",
        },
        filter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListAssessmentTemplatesOutput = {
    type = "structure",
    members = {
        assessmentTemplateArns = {
            type = "list",
            member_type = "string",
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
    members = {
        resourceArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.Subscription = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEventSubscriptionsOutput = {
    type = "structure",
    members = {
        subscriptions = {
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

M.ListExclusionsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListExclusionsOutput = {
    type = "structure",
    members = {
        exclusionArns = {
            type = "list",
            member_type = "string",
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
    members = {
        assessmentRunArns = {
            type = "list",
            member_type = "string",
        },
        filter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListFindingsOutput = {
    type = "structure",
    members = {
        findingArns = {
            type = "list",
            member_type = "string",
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
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListRulesPackagesOutput = {
    type = "structure",
    members = {
        rulesPackageArns = {
            type = "list",
            member_type = "string",
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
    members = {
        tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PreviewAgentsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.PreviewAgentsOutput = {
    type = "structure",
    members = {
        agentPreviews = {
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

M.RegisterCrossAccountAccessRoleInput = {
    type = "structure",
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
}

M.RemoveAttributesFromFindingsInput = {
    type = "structure",
    members = {
        findingArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        attributeKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveAttributesFromFindingsOutput = {
    type = "structure",
    members = {
        failedItems = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SetTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SetTagsForResourceOutput = {
    type = "structure",
}

M.StartAssessmentRunInput = {
    type = "structure",
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
}

M.SubscribeToEventInput = {
    type = "structure",
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
}

M.UnsubscribeFromEventInput = {
    type = "structure",
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
}

M.UpdateAssessmentTargetInput = {
    type = "structure",
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
}

return M
