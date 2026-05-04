local M = {}

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
    },
}

M.VariableType = {
    INCIDENT_RECORD_ARN = "INCIDENT_RECORD_ARN",
    INVOLVED_RESOURCES = "INVOLVED_RESOURCES",
}

M.DynamicSsmParameterValue = {
    type = "union",
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
            key_type = "string",
            value_type = "list",
        },
        dynamicParameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.Action = {
    type = "union",
    members = {
        ssmAutomation = {
            type = "structure",
        },
    },
}

M.AddRegionAction = {
    type = "structure",
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
    members = {
        stringValues = {
            type = "list",
            member_type = "string",
        },
        integerValues = {
            type = "list",
            member_type = "number",
        },
    },
}

M.AutomationExecution = {
    type = "union",
    members = {
        ssmExecutionArn = {
            type = "string",
        },
    },
}

M.BatchGetIncidentFindingsInput = {
    type = "structure",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        findingIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetIncidentFindingsError = {
    type = "structure",
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
    members = {
        codeDeployDeployment = {
            type = "structure",
        },
        cloudFormationStackUpdate = {
            type = "structure",
        },
    },
}

M.Finding = {
    type = "structure",
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
        details = {
            type = "union",
        },
    },
}

M.BatchGetIncidentFindingsOutput = {
    type = "structure",
    members = {
        findings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
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
}

M.ChatChannel = {
    type = "union",
    members = {
        empty = {
            type = "structure",
        },
        chatbotSns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Condition = {
    type = "union",
    members = {
        before = {
            type = "timestamp",
        },
        after = {
            type = "timestamp",
        },
        equals = {
            type = "union",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        sseKmsKeyId = {
            type = "string",
        },
    },
}

M.CreateReplicationSetInput = {
    type = "structure",
    members = {
        regions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateReplicationSetOutput = {
    type = "structure",
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
    members = {
        snsTopicArn = {
            type = "string",
        },
    },
}

M.IncidentTemplate = {
    type = "structure",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        impact = {
            type = "number",
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
            member_type = "union",
        },
        incidentTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PagerDutyIncidentConfiguration = {
    type = "structure",
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
        pagerDutyIncidentConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Integration = {
    type = "union",
    members = {
        pagerDutyConfiguration = {
            type = "structure",
        },
    },
}

M.CreateResponsePlanInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
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
        incidentTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        chatChannel = {
            type = "union",
        },
        engagements = {
            type = "list",
            member_type = "string",
        },
        actions = {
            type = "list",
            member_type = "union",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        integrations = {
            type = "list",
            member_type = "union",
        },
    },
}

M.CreateResponsePlanOutput = {
    type = "structure",
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
    members = {
        clientToken = {
            type = "string",
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
            member_type = "union",
        },
    },
}

M.CreateTimelineEventOutput = {
    type = "structure",
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
}

M.DeleteRegionAction = {
    type = "structure",
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
}

M.DeleteResourcePolicyInput = {
    type = "structure",
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
}

M.DeleteResponsePlanInput = {
    type = "structure",
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
}

M.DeleteTimelineEventInput = {
    type = "structure",
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
}

M.EventSummary = {
    type = "structure",
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
            member_type = "union",
        },
    },
}

M.Filter = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.FindingSummary = {
    type = "structure",
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
            type = "number",
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
            member_type = "union",
        },
        incidentRecordSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        dedupeString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        chatChannel = {
            type = "union",
        },
        notificationTargets = {
            type = "list",
            member_type = "union",
        },
    },
}

M.GetIncidentRecordOutput = {
    type = "structure",
    members = {
        incidentRecord = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetReplicationSetInput = {
    type = "structure",
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
    members = {
        arn = {
            type = "string",
        },
        regionMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
    members = {
        replicationSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePoliciesInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResourcePolicy = {
    type = "structure",
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
    members = {
        resourcePolicies = {
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

M.GetResponsePlanInput = {
    type = "structure",
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
        incidentTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        chatChannel = {
            type = "union",
        },
        engagements = {
            type = "list",
            member_type = "string",
        },
        actions = {
            type = "list",
            member_type = "union",
        },
        integrations = {
            type = "list",
            member_type = "union",
        },
    },
}

M.GetTimelineEventInput = {
    type = "structure",
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
            member_type = "union",
        },
    },
}

M.GetTimelineEventOutput = {
    type = "structure",
    members = {
        event = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IncidentRecordSummary = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        impact = {
            type = "number",
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
        incidentRecordSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        pagerDutyIncidentDetail = {
            type = "structure",
        },
    },
}

M.ItemIdentifier = {
    type = "structure",
    members = {
        value = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIncidentFindingsOutput = {
    type = "structure",
    members = {
        findings = {
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

M.ListIncidentRecordsInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIncidentRecordsOutput = {
    type = "structure",
    members = {
        incidentRecordSummaries = {
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

M.ListRelatedItemsInput = {
    type = "structure",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RelatedItem = {
    type = "structure",
    members = {
        identifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        relatedItems = {
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

M.ListReplicationSetsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListReplicationSetsOutput = {
    type = "structure",
    members = {
        replicationSetArns = {
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

M.ListResponsePlansInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResponsePlanSummary = {
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
        displayName = {
            type = "string",
        },
    },
}

M.ListResponsePlansOutput = {
    type = "structure",
    members = {
        responsePlanSummaries = {
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

M.TimelineEventSort = {
    EVENT_TIME = "EVENT_TIME",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ListTimelineEventsInput = {
    type = "structure",
    members = {
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        sortBy = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTimelineEventsOutput = {
    type = "structure",
    members = {
        eventSummaries = {
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

M.PutResourcePolicyInput = {
    type = "structure",
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
    members = {
        itemToAdd = {
            type = "structure",
        },
        itemToRemove = {
            type = "structure",
        },
    },
}

M.TriggerDetails = {
    type = "structure",
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
    members = {
        clientToken = {
            type = "string",
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
            type = "number",
        },
        triggerDetails = {
            type = "structure",
        },
        relatedItems = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartIncidentOutput = {
    type = "structure",
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

M.UpdateDeletionProtectionInput = {
    type = "structure",
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
        },
    },
}

M.UpdateDeletionProtectionOutput = {
    type = "structure",
}

M.UpdateIncidentRecordInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
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
            type = "number",
        },
        status = {
            type = "string",
        },
        chatChannel = {
            type = "union",
        },
        notificationTargets = {
            type = "list",
            member_type = "union",
        },
    },
}

M.UpdateIncidentRecordOutput = {
    type = "structure",
}

M.UpdateRelatedItemsInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        incidentRecordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relatedItemsUpdate = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRelatedItemsOutput = {
    type = "structure",
}

M.UpdateReplicationSetAction = {
    type = "union",
    members = {
        addRegionAction = {
            type = "structure",
        },
        deleteRegionAction = {
            type = "structure",
        },
    },
}

M.UpdateReplicationSetInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actions = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateReplicationSetOutput = {
    type = "structure",
}

M.UpdateResponsePlanInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
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
            type = "number",
        },
        incidentTemplateSummary = {
            type = "string",
        },
        incidentTemplateDedupeString = {
            type = "string",
        },
        incidentTemplateNotificationTargets = {
            type = "list",
            member_type = "union",
        },
        chatChannel = {
            type = "union",
        },
        engagements = {
            type = "list",
            member_type = "string",
        },
        actions = {
            type = "list",
            member_type = "union",
        },
        incidentTemplateTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        integrations = {
            type = "list",
            member_type = "union",
        },
    },
}

M.UpdateResponsePlanOutput = {
    type = "structure",
}

M.UpdateTimelineEventInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
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
            member_type = "union",
        },
    },
}

M.UpdateTimelineEventOutput = {
    type = "structure",
}

return M
