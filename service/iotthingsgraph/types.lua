local M = {}

M.AssociateEntityToThingInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaceVersion = {
            type = "long",
        },
    },
}

M.AssociateEntityToThingOutput = {
    type = "structure",
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
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

M.DefinitionLanguage = {
    GRAPHQL = "GRAPHQL",
}

M.DefinitionDocument = {
    type = "structure",
    members = {
        language = {
            type = "string",
            traits = {
                required = true,
            },
        },
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFlowTemplateInput = {
    type = "structure",
    members = {
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefinitionDocument }),
        compatibleNamespaceVersion = {
            type = "long",
        },
    },
}

M.FlowTemplateSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        revisionNumber = {
            type = "long",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.CreateFlowTemplateOutput = {
    type = "structure",
    members = {
        summary = M.FlowTemplateSummary,
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MetricsConfiguration = {
    type = "structure",
    members = {
        cloudMetricEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        metricRuleRoleArn = {
            type = "string",
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
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentTarget = {
    GREENGRASS = "GREENGRASS",
    CLOUD = "CLOUD",
}

M.CreateSystemInstanceInput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefinitionDocument }),
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        greengrassGroupName = {
            type = "string",
        },
        s3BucketName = {
            type = "string",
        },
        metricsConfiguration = M.MetricsConfiguration,
        flowActionsRoleArn = {
            type = "string",
        },
    },
}

M.SystemInstanceDeploymentStatus = {
    NOT_DEPLOYED = "NOT_DEPLOYED",
    BOOTSTRAP = "BOOTSTRAP",
    DEPLOY_IN_PROGRESS = "DEPLOY_IN_PROGRESS",
    DEPLOYED_IN_TARGET = "DEPLOYED_IN_TARGET",
    UNDEPLOY_IN_PROGRESS = "UNDEPLOY_IN_PROGRESS",
    FAILED = "FAILED",
    PENDING_DELETE = "PENDING_DELETE",
    DELETED_IN_TARGET = "DELETED_IN_TARGET",
}

M.SystemInstanceSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        target = {
            type = "string",
        },
        greengrassGroupName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        greengrassGroupId = {
            type = "string",
        },
        greengrassGroupVersionId = {
            type = "string",
        },
    },
}

M.CreateSystemInstanceOutput = {
    type = "structure",
    members = {
        summary = M.SystemInstanceSummary,
    },
}

M.CreateSystemTemplateInput = {
    type = "structure",
    members = {
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefinitionDocument }),
        compatibleNamespaceVersion = {
            type = "long",
        },
    },
}

M.SystemTemplateSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        revisionNumber = {
            type = "long",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.CreateSystemTemplateOutput = {
    type = "structure",
    members = {
        summary = M.SystemTemplateSummary,
    },
}

M.DeleteFlowTemplateInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFlowTemplateOutput = {
    type = "structure",
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteNamespaceInput = {
    type = "structure",
}

M.DeleteNamespaceOutput = {
    type = "structure",
    members = {
        namespaceArn = {
            type = "string",
        },
        namespaceName = {
            type = "string",
        },
    },
}

M.DeleteSystemInstanceInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
    },
}

M.DeleteSystemInstanceOutput = {
    type = "structure",
}

M.DeleteSystemTemplateInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSystemTemplateOutput = {
    type = "structure",
}

M.DependencyRevision = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        revisionNumber = {
            type = "long",
        },
    },
}

M.DeploySystemInstanceInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
    },
}

M.DeploySystemInstanceOutput = {
    type = "structure",
    members = {
        summary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SystemInstanceSummary }),
        greengrassDeploymentId = {
            type = "string",
        },
    },
}

M.DeprecateFlowTemplateInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeprecateFlowTemplateOutput = {
    type = "structure",
}

M.DeprecateSystemTemplateInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeprecateSystemTemplateOutput = {
    type = "structure",
}

M.DescribeNamespaceInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
        },
    },
}

M.DescribeNamespaceOutput = {
    type = "structure",
    members = {
        namespaceArn = {
            type = "string",
        },
        namespaceName = {
            type = "string",
        },
        trackingNamespaceName = {
            type = "string",
        },
        trackingNamespaceVersion = {
            type = "long",
        },
        namespaceVersion = {
            type = "long",
        },
    },
}

M.EntityType = {
    DEVICE = "DEVICE",
    SERVICE = "SERVICE",
    DEVICE_MODEL = "DEVICE_MODEL",
    CAPABILITY = "CAPABILITY",
    STATE = "STATE",
    ACTION = "ACTION",
    EVENT = "EVENT",
    PROPERTY = "PROPERTY",
    MAPPING = "MAPPING",
    ENUM = "ENUM",
}

M.DissociateEntityFromThingInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DissociateEntityFromThingOutput = {
    type = "structure",
}

M.EntityDescription = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        definition = M.DefinitionDocument,
    },
}

M.EntityFilterName = {
    NAME = "NAME",
    NAMESPACE = "NAMESPACE",
    SEMANTIC_TYPE_PATH = "SEMANTIC_TYPE_PATH",
    REFERENCED_ENTITY_ID = "REFERENCED_ENTITY_ID",
}

M.EntityFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FlowExecutionEventType = {
    EXECUTION_STARTED = "EXECUTION_STARTED",
    EXECUTION_FAILED = "EXECUTION_FAILED",
    EXECUTION_ABORTED = "EXECUTION_ABORTED",
    EXECUTION_SUCCEEDED = "EXECUTION_SUCCEEDED",
    STEP_STARTED = "STEP_STARTED",
    STEP_FAILED = "STEP_FAILED",
    STEP_SUCCEEDED = "STEP_SUCCEEDED",
    ACTIVITY_SCHEDULED = "ACTIVITY_SCHEDULED",
    ACTIVITY_STARTED = "ACTIVITY_STARTED",
    ACTIVITY_FAILED = "ACTIVITY_FAILED",
    ACTIVITY_SUCCEEDED = "ACTIVITY_SUCCEEDED",
    START_FLOW_EXECUTION_TASK = "START_FLOW_EXECUTION_TASK",
    SCHEDULE_NEXT_READY_STEPS_TASK = "SCHEDULE_NEXT_READY_STEPS_TASK",
    THING_ACTION_TASK = "THING_ACTION_TASK",
    THING_ACTION_TASK_FAILED = "THING_ACTION_TASK_FAILED",
    THING_ACTION_TASK_SUCCEEDED = "THING_ACTION_TASK_SUCCEEDED",
    ACKNOWLEDGE_TASK_MESSAGE = "ACKNOWLEDGE_TASK_MESSAGE",
}

M.FlowExecutionMessage = {
    type = "structure",
    members = {
        messageId = {
            type = "string",
        },
        eventType = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
        },
        payload = {
            type = "string",
        },
    },
}

M.FlowExecutionStatus = {
    RUNNING = "RUNNING",
    ABORTED = "ABORTED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.FlowExecutionSummary = {
    type = "structure",
    members = {
        flowExecutionId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        systemInstanceId = {
            type = "string",
        },
        flowTemplateId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.FlowTemplateDescription = {
    type = "structure",
    members = {
        summary = M.FlowTemplateSummary,
        definition = M.DefinitionDocument,
        validatedNamespaceVersion = {
            type = "long",
        },
    },
}

M.FlowTemplateFilterName = {
    DEVICE_MODEL_ID = "DEVICE_MODEL_ID",
}

M.FlowTemplateFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetEntitiesInput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        namespaceVersion = {
            type = "long",
        },
    },
}

M.GetEntitiesOutput = {
    type = "structure",
    members = {
        descriptions = {
            type = "list",
            member = M.EntityDescription,
        },
    },
}

M.GetFlowTemplateInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionNumber = {
            type = "long",
        },
    },
}

M.GetFlowTemplateOutput = {
    type = "structure",
    members = {
        description = M.FlowTemplateDescription,
    },
}

M.GetFlowTemplateRevisionsInput = {
    type = "structure",
    members = {
        id = {
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

M.GetFlowTemplateRevisionsOutput = {
    type = "structure",
    members = {
        summaries = {
            type = "list",
            member = M.FlowTemplateSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetNamespaceDeletionStatusInput = {
    type = "structure",
}

M.NamespaceDeletionStatusErrorCodes = {
    VALIDATION_FAILED = "VALIDATION_FAILED",
}

M.NamespaceDeletionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.GetNamespaceDeletionStatusOutput = {
    type = "structure",
    members = {
        namespaceArn = {
            type = "string",
        },
        namespaceName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.GetSystemInstanceInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SystemInstanceDescription = {
    type = "structure",
    members = {
        summary = M.SystemInstanceSummary,
        definition = M.DefinitionDocument,
        s3BucketName = {
            type = "string",
        },
        metricsConfiguration = M.MetricsConfiguration,
        validatedNamespaceVersion = {
            type = "long",
        },
        validatedDependencyRevisions = {
            type = "list",
            member = M.DependencyRevision,
        },
        flowActionsRoleArn = {
            type = "string",
        },
    },
}

M.GetSystemInstanceOutput = {
    type = "structure",
    members = {
        description = M.SystemInstanceDescription,
    },
}

M.GetSystemTemplateInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionNumber = {
            type = "long",
        },
    },
}

M.SystemTemplateDescription = {
    type = "structure",
    members = {
        summary = M.SystemTemplateSummary,
        definition = M.DefinitionDocument,
        validatedNamespaceVersion = {
            type = "long",
        },
    },
}

M.GetSystemTemplateOutput = {
    type = "structure",
    members = {
        description = M.SystemTemplateDescription,
    },
}

M.GetSystemTemplateRevisionsInput = {
    type = "structure",
    members = {
        id = {
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

M.GetSystemTemplateRevisionsOutput = {
    type = "structure",
    members = {
        summaries = {
            type = "list",
            member = M.SystemTemplateSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetUploadStatusInput = {
    type = "structure",
    members = {
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UploadStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.GetUploadStatusOutput = {
    type = "structure",
    members = {
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uploadStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaceArn = {
            type = "string",
        },
        namespaceName = {
            type = "string",
        },
        namespaceVersion = {
            type = "long",
        },
        failureReason = {
            type = "list",
            member = { type = "string" },
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFlowExecutionMessagesInput = {
    type = "structure",
    members = {
        flowExecutionId = {
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

M.ListFlowExecutionMessagesOutput = {
    type = "structure",
    members = {
        messages = {
            type = "list",
            member = M.FlowExecutionMessage,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SearchEntitiesInput = {
    type = "structure",
    members = {
        entityTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member = M.EntityFilter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        namespaceVersion = {
            type = "long",
        },
    },
}

M.SearchEntitiesOutput = {
    type = "structure",
    members = {
        descriptions = {
            type = "list",
            member = M.EntityDescription,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SearchFlowExecutionsInput = {
    type = "structure",
    members = {
        systemInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        flowExecutionId = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.SearchFlowExecutionsOutput = {
    type = "structure",
    members = {
        summaries = {
            type = "list",
            member = M.FlowExecutionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SearchFlowTemplatesInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.FlowTemplateFilter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.SearchFlowTemplatesOutput = {
    type = "structure",
    members = {
        summaries = {
            type = "list",
            member = M.FlowTemplateSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SystemInstanceFilterName = {
    SYSTEM_TEMPLATE_ID = "SYSTEM_TEMPLATE_ID",
    STATUS = "STATUS",
    GREENGRASS_GROUP_NAME = "GREENGRASS_GROUP_NAME",
}

M.SystemInstanceFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchSystemInstancesInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.SystemInstanceFilter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.SearchSystemInstancesOutput = {
    type = "structure",
    members = {
        summaries = {
            type = "list",
            member = M.SystemInstanceSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SystemTemplateFilterName = {
    FLOW_TEMPLATE_ID = "FLOW_TEMPLATE_ID",
}

M.SystemTemplateFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SearchSystemTemplatesInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.SystemTemplateFilter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.SearchSystemTemplatesOutput = {
    type = "structure",
    members = {
        summaries = {
            type = "list",
            member = M.SystemTemplateSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SearchThingsInput = {
    type = "structure",
    members = {
        entityId = {
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
        namespaceVersion = {
            type = "long",
        },
    },
}

M.Thing = {
    type = "structure",
    members = {
        thingArn = {
            type = "string",
        },
        thingName = {
            type = "string",
        },
    },
}

M.SearchThingsOutput = {
    type = "structure",
    members = {
        things = {
            type = "list",
            member = M.Thing,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
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
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UndeploySystemInstanceInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
    },
}

M.UndeploySystemInstanceOutput = {
    type = "structure",
    members = {
        summary = M.SystemInstanceSummary,
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateFlowTemplateInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefinitionDocument }),
        compatibleNamespaceVersion = {
            type = "long",
        },
    },
}

M.UpdateFlowTemplateOutput = {
    type = "structure",
    members = {
        summary = M.FlowTemplateSummary,
    },
}

M.UpdateSystemTemplateInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefinitionDocument }),
        compatibleNamespaceVersion = {
            type = "long",
        },
    },
}

M.UpdateSystemTemplateOutput = {
    type = "structure",
    members = {
        summary = M.SystemTemplateSummary,
    },
}

M.UploadEntityDefinitionsInput = {
    type = "structure",
    members = {
        document = M.DefinitionDocument,
        syncWithPublicNamespace = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        deprecateExistingEntities = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UploadEntityDefinitionsOutput = {
    type = "structure",
    members = {
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
