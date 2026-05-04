local M = {}

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
    },
}

M.VariableType = {
    INCIDENT_RECORD_ARN = "INCIDENT_RECORD_ARN",
    INVOLVED_RESOURCES = "INVOLVED_RESOURCES",
}

M.DynamicSsmParameterValue = {
    type = "union",
    id = "DynamicSsmParameterValue",
    members = {
        variable = {
            type = "string",
        },
    },
}

M.SsmTargetAccount = {
    RESPONSE_PLAN_OWNER_ACCOUNT = "RESPONSE_PLAN_OWNER_ACCOUNT",
    IMPACTED_ACCOUNT = "IMPACTED_ACCOUNT",
}

M.SsmAutomation = {
    type = "structure",
    id = "SsmAutomation",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentVersion = {
            type = "string",
        },
        targetAccount = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        dynamicParameters = {
            type = "map",
            key = { type = "string" },
            value = M.DynamicSsmParameterValue,
        },
    },
}

M.Action = {
    type = "union",
    id = "Action",
    members = {
        ssmAutomation = M.SsmAutomation,
    },
}

M.AddRegionAction = {
    type = "structure",
    id = "AddRegionAction",
    members = {
        regionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sseKmsKeyId = {
            type = "string",
        },
    },
}

M.AttributeValueList = {
    type = "union",
    id = "AttributeValueList",
    members = {
        stringValues = {
            type = "list",
            member = { type = "string" },
        },
        integerValues = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.AutomationExecution = {
    type = "union",
    id = "AutomationExecution",
    members = {
        ssmExecutionArn = {
            type = "string",
        },
    },
}

M.BatchGetIncidentFindingsInput = {
    type = "structure",
    id = "BatchGetIncidentFindingsInput",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        findingIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetIncidentFindingsError = {
    type = "structure",
    id = "BatchGetIncidentFindingsError",
    members = {
        findingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudFormationStackUpdate = {
    type = "structure",
    id = "CloudFormationStackUpdate",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
        stackArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeDeployDeployment = {
    type = "structure",
    id = "CodeDeployDeployment",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
        deploymentGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FindingDetails = {
    type = "union",
    id = "FindingDetails",
    members = {
        codeDeployDeployment = M.CodeDeployDeployment,
        cloudFormationStackUpdate = M.CloudFormationStackUpdate,
    },
}

M.Finding = {
    type = "structure",
    id = "Finding",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        details = M.FindingDetails,
    },
}

M.BatchGetIncidentFindingsOutput = {
    type = "structure",
    id = "BatchGetIncidentFindingsOutput",
    members = {
        findings = {
            type = "list",
            member = M.Finding,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetIncidentFindingsError,
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceType = {
    RESPONSE_PLAN = "RESPONSE_PLAN",
    INCIDENT_RECORD = "INCIDENT_RECORD",
    TIMELINE_EVENT = "TIMELINE_EVENT",
    REPLICATION_SET = "REPLICATION_SET",
    RESOURCE_POLICY = "RESOURCE_POLICY",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ServiceCode = {
    SSM_INCIDENTS = "ssm-incidents",
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
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

M.EmptyChatChannel = {
    type = "structure",
    id = "EmptyChatChannel",
}

M.ChatChannel = {
    type = "union",
    id = "ChatChannel",
    members = {
        empty = M.EmptyChatChannel,
        chatbotSns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Condition = {
    type = "union",
    id = "Condition",
    members = {
        before = {
            type = "timestamp",
        },
        after = {
            type = "timestamp",
        },
        equals = M.AttributeValueList,
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        retryAfter = {
            type = "timestamp",
        },
    },
}

M.RegionMapInputValue = {
    type = "structure",
    id = "RegionMapInputValue",
    members = {
        sseKmsKeyId = {
            type = "string",
        },
    },
}

M.CreateReplicationSetInput = {
    type = "structure",
    id = "CreateReplicationSetInput",
    members = {
        regions = {
            type = "map",
            key = { type = "string" },
            value = M.RegionMapInputValue,
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateReplicationSetOutput = {
    type = "structure",
    id = "CreateReplicationSetOutput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
        resourceIdentifier = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationTargetItem = {
    type = "union",
    id = "NotificationTargetItem",
    members = {
        snsTopicArn = {
            type = "string",
        },
    },
}

M.IncidentTemplate = {
    type = "structure",
    id = "IncidentTemplate",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        impact = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        summary = {
            type = "string",
        },
        dedupeString = {
            type = "string",
        },
        notificationTargets = {
            type = "list",
            member = M.NotificationTargetItem,
        },
        incidentTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PagerDutyIncidentConfiguration = {
    type = "structure",
    id = "PagerDutyIncidentConfiguration",
    members = {
        serviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PagerDutyConfiguration = {
    type = "structure",
    id = "PagerDutyConfiguration",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pagerDutyIncidentConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PagerDutyIncidentConfiguration }),
    },
}

M.Integration = {
    type = "union",
    id = "Integration",
    members = {
        pagerDutyConfiguration = M.PagerDutyConfiguration,
    },
}

M.CreateResponsePlanInput = {
    type = "structure",
    id = "CreateResponsePlanInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        incidentTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IncidentTemplate }),
        chatChannel = M.ChatChannel,
        engagements = {
            type = "list",
            member = { type = "string" },
        },
        actions = {
            type = "list",
            member = M.Action,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        integrations = {
            type = "list",
            member = M.Integration,
        },
    },
}

M.CreateResponsePlanOutput = {
    type = "structure",
    id = "CreateResponsePlanOutput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventReference = {
    type = "union",
    id = "EventReference",
    members = {
        resource = {
            type = "string",
        },
        relatedItemId = {
            type = "string",
        },
    },
}

M.CreateTimelineEventInput = {
    type = "structure",
    id = "CreateTimelineEventInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventReferences = {
            type = "list",
            member = M.EventReference,
        },
    },
}

M.CreateTimelineEventOutput = {
    type = "structure",
    id = "CreateTimelineEventOutput",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIncidentRecordInput = {
    type = "structure",
    id = "DeleteIncidentRecordInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIncidentRecordOutput = {
    type = "structure",
    id = "DeleteIncidentRecordOutput",
}

M.DeleteRegionAction = {
    type = "structure",
    id = "DeleteRegionAction",
    members = {
        regionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReplicationSetInput = {
    type = "structure",
    id = "DeleteReplicationSetInput",
    members = {
        arn = {
            type = "string",
            traits = {
                http_query = "arn",
                required = true,
            },
        },
    },
}

M.DeleteReplicationSetOutput = {
    type = "structure",
    id = "DeleteReplicationSetOutput",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
}

M.DeleteResponsePlanInput = {
    type = "structure",
    id = "DeleteResponsePlanInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResponsePlanOutput = {
    type = "structure",
    id = "DeleteResponsePlanOutput",
}

M.DeleteTimelineEventInput = {
    type = "structure",
    id = "DeleteTimelineEventInput",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTimelineEventOutput = {
    type = "structure",
    id = "DeleteTimelineEventOutput",
}

M.EventSummary = {
    type = "structure",
    id = "EventSummary",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        eventUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventReferences = {
            type = "list",
            member = M.EventReference,
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        condition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Condition }),
    },
}

M.FindingSummary = {
    type = "structure",
    id = "FindingSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIncidentRecordInput = {
    type = "structure",
    id = "GetIncidentRecordInput",
    members = {
        arn = {
            type = "string",
            traits = {
                http_query = "arn",
                required = true,
            },
        },
    },
}

M.IncidentRecordSource = {
    type = "structure",
    id = "IncidentRecordSource",
    members = {
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invokedBy = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IncidentRecordStatus = {
    OPEN = "OPEN",
    RESOLVED = "RESOLVED",
}

M.IncidentRecord = {
    type = "structure",
    id = "IncidentRecord",
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
        summary = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        impact = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        resolvedTime = {
            type = "timestamp",
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        automationExecutions = {
            type = "list",
            member = M.AutomationExecution,
        },
        incidentRecordSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IncidentRecordSource }),
        dedupeString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        chatChannel = M.ChatChannel,
        notificationTargets = {
            type = "list",
            member = M.NotificationTargetItem,
        },
    },
}

M.GetIncidentRecordOutput = {
    type = "structure",
    id = "GetIncidentRecordOutput",
    members = {
        incidentRecord = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IncidentRecord }),
    },
}

M.GetReplicationSetInput = {
    type = "structure",
    id = "GetReplicationSetInput",
    members = {
        arn = {
            type = "string",
            traits = {
                http_query = "arn",
                required = true,
            },
        },
    },
}

M.RegionStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.RegionInfo = {
    type = "structure",
    id = "RegionInfo",
    members = {
        sseKmsKeyId = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        statusUpdateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicationSetStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.ReplicationSet = {
    type = "structure",
    id = "ReplicationSet",
    members = {
        arn = {
            type = "string",
        },
        regionMap = {
            type = "map",
            key = { type = "string" },
            value = M.RegionInfo,
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deletionProtected = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetReplicationSetOutput = {
    type = "structure",
    id = "GetReplicationSetOutput",
    members = {
        replicationSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReplicationSet }),
    },
}

M.GetResourcePoliciesInput = {
    type = "structure",
    id = "GetResourcePoliciesInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResourcePolicy = {
    type = "structure",
    id = "ResourcePolicy",
    members = {
        policyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ramResourceShareRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePoliciesOutput = {
    type = "structure",
    id = "GetResourcePoliciesOutput",
    members = {
        resourcePolicies = {
            type = "list",
            member = M.ResourcePolicy,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetResponsePlanInput = {
    type = "structure",
    id = "GetResponsePlanInput",
    members = {
        arn = {
            type = "string",
            traits = {
                http_query = "arn",
                required = true,
            },
        },
    },
}

M.GetResponsePlanOutput = {
    type = "structure",
    id = "GetResponsePlanOutput",
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
        displayName = {
            type = "string",
        },
        incidentTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IncidentTemplate }),
        chatChannel = M.ChatChannel,
        engagements = {
            type = "list",
            member = { type = "string" },
        },
        actions = {
            type = "list",
            member = M.Action,
        },
        integrations = {
            type = "list",
            member = M.Integration,
        },
    },
}

M.GetTimelineEventInput = {
    type = "structure",
    id = "GetTimelineEventInput",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                http_query = "incidentRecordArn",
                required = true,
            },
        },
        eventId = {
            type = "string",
            traits = {
                http_query = "eventId",
                required = true,
            },
        },
    },
}

M.TimelineEvent = {
    type = "structure",
    id = "TimelineEvent",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        eventUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventReferences = {
            type = "list",
            member = M.EventReference,
        },
    },
}

M.GetTimelineEventOutput = {
    type = "structure",
    id = "GetTimelineEventOutput",
    members = {
        event = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimelineEvent }),
    },
}

M.IncidentRecordSummary = {
    type = "structure",
    id = "IncidentRecordSummary",
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        impact = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        resolvedTime = {
            type = "timestamp",
        },
        incidentRecordSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IncidentRecordSource }),
    },
}

M.ItemType = {
    ANALYSIS = "ANALYSIS",
    INCIDENT = "INCIDENT",
    METRIC = "METRIC",
    PARENT = "PARENT",
    ATTACHMENT = "ATTACHMENT",
    OTHER = "OTHER",
    AUTOMATION = "AUTOMATION",
    INVOLVED_RESOURCE = "INVOLVED_RESOURCE",
    TASK = "TASK",
}

M.PagerDutyIncidentDetail = {
    type = "structure",
    id = "PagerDutyIncidentDetail",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoResolve = {
            type = "boolean",
        },
        secretId = {
            type = "string",
        },
    },
}

M.ItemValue = {
    type = "union",
    id = "ItemValue",
    members = {
        arn = {
            type = "string",
        },
        url = {
            type = "string",
        },
        metricDefinition = {
            type = "string",
        },
        pagerDutyIncidentDetail = M.PagerDutyIncidentDetail,
    },
}

M.ItemIdentifier = {
    type = "structure",
    id = "ItemIdentifier",
    members = {
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ItemValue }),
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIncidentFindingsInput = {
    type = "structure",
    id = "ListIncidentFindingsInput",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIncidentFindingsOutput = {
    type = "structure",
    id = "ListIncidentFindingsOutput",
    members = {
        findings = {
            type = "list",
            member = M.FindingSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIncidentRecordsInput = {
    type = "structure",
    id = "ListIncidentRecordsInput",
    members = {
        filters = {
            type = "list",
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIncidentRecordsOutput = {
    type = "structure",
    id = "ListIncidentRecordsOutput",
    members = {
        incidentRecordSummaries = {
            type = "list",
            member = M.IncidentRecordSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRelatedItemsInput = {
    type = "structure",
    id = "ListRelatedItemsInput",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RelatedItem = {
    type = "structure",
    id = "RelatedItem",
    members = {
        identifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ItemIdentifier }),
        title = {
            type = "string",
        },
        generatedId = {
            type = "string",
        },
    },
}

M.ListRelatedItemsOutput = {
    type = "structure",
    id = "ListRelatedItemsOutput",
    members = {
        relatedItems = {
            type = "list",
            member = M.RelatedItem,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListReplicationSetsInput = {
    type = "structure",
    id = "ListReplicationSetsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListReplicationSetsOutput = {
    type = "structure",
    id = "ListReplicationSetsOutput",
    members = {
        replicationSetArns = {
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

M.ListResponsePlansInput = {
    type = "structure",
    id = "ListResponsePlansInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResponsePlanSummary = {
    type = "structure",
    id = "ResponsePlanSummary",
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
        displayName = {
            type = "string",
        },
    },
}

M.ListResponsePlansOutput = {
    type = "structure",
    id = "ListResponsePlansOutput",
    members = {
        responsePlanSummaries = {
            type = "list",
            member = M.ResponsePlanSummary,
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

M.TimelineEventSort = {
    EVENT_TIME = "EVENT_TIME",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ListTimelineEventsInput = {
    type = "structure",
    id = "ListTimelineEventsInput",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        sortBy = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTimelineEventsOutput = {
    type = "structure",
    id = "ListTimelineEventsOutput",
    members = {
        eventSummaries = {
            type = "list",
            member = M.EventSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    id = "PutResourcePolicyOutput",
    members = {
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RelatedItemsUpdate = {
    type = "union",
    id = "RelatedItemsUpdate",
    members = {
        itemToAdd = M.RelatedItem,
        itemToRemove = M.ItemIdentifier,
    },
}

M.TriggerDetails = {
    type = "structure",
    id = "TriggerDetails",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        triggerArn = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        rawData = {
            type = "string",
        },
    },
}

M.StartIncidentInput = {
    type = "structure",
    id = "StartIncidentInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        responsePlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
        },
        impact = {
            type = "integer",
        },
        triggerDetails = M.TriggerDetails,
        relatedItems = {
            type = "list",
            member = M.RelatedItem,
        },
    },
}

M.StartIncidentOutput = {
    type = "structure",
    id = "StartIncidentOutput",
    members = {
        incidentRecordArn = {
            type = "string",
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

M.UpdateDeletionProtectionInput = {
    type = "structure",
    id = "UpdateDeletionProtectionInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deletionProtected = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateDeletionProtectionOutput = {
    type = "structure",
    id = "UpdateDeletionProtectionOutput",
}

M.UpdateIncidentRecordInput = {
    type = "structure",
    id = "UpdateIncidentRecordInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
        },
        summary = {
            type = "string",
        },
        impact = {
            type = "integer",
        },
        status = {
            type = "string",
        },
        chatChannel = M.ChatChannel,
        notificationTargets = {
            type = "list",
            member = M.NotificationTargetItem,
        },
    },
}

M.UpdateIncidentRecordOutput = {
    type = "structure",
    id = "UpdateIncidentRecordOutput",
}

M.UpdateRelatedItemsInput = {
    type = "structure",
    id = "UpdateRelatedItemsInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relatedItemsUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RelatedItemsUpdate }),
    },
}

M.UpdateRelatedItemsOutput = {
    type = "structure",
    id = "UpdateRelatedItemsOutput",
}

M.UpdateReplicationSetAction = {
    type = "union",
    id = "UpdateReplicationSetAction",
    members = {
        addRegionAction = M.AddRegionAction,
        deleteRegionAction = M.DeleteRegionAction,
    },
}

M.UpdateReplicationSetInput = {
    type = "structure",
    id = "UpdateReplicationSetInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actions = {
            type = "list",
            member = M.UpdateReplicationSetAction,
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateReplicationSetOutput = {
    type = "structure",
    id = "UpdateReplicationSetOutput",
}

M.UpdateResponsePlanInput = {
    type = "structure",
    id = "UpdateResponsePlanInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        incidentTemplateTitle = {
            type = "string",
        },
        incidentTemplateImpact = {
            type = "integer",
        },
        incidentTemplateSummary = {
            type = "string",
        },
        incidentTemplateDedupeString = {
            type = "string",
        },
        incidentTemplateNotificationTargets = {
            type = "list",
            member = M.NotificationTargetItem,
        },
        chatChannel = M.ChatChannel,
        engagements = {
            type = "list",
            member = { type = "string" },
        },
        actions = {
            type = "list",
            member = M.Action,
        },
        incidentTemplateTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        integrations = {
            type = "list",
            member = M.Integration,
        },
    },
}

M.UpdateResponsePlanOutput = {
    type = "structure",
    id = "UpdateResponsePlanOutput",
}

M.UpdateTimelineEventInput = {
    type = "structure",
    id = "UpdateTimelineEventInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTime = {
            type = "timestamp",
        },
        eventType = {
            type = "string",
        },
        eventData = {
            type = "string",
        },
        eventReferences = {
            type = "list",
            member = M.EventReference,
        },
    },
}

M.UpdateTimelineEventOutput = {
    type = "structure",
    id = "UpdateTimelineEventOutput",
}

return M
