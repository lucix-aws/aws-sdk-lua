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

M.StepInput = {
    type = "union",
    id = "StepInput",
    members = {
        integerValue = {
            type = "integer",
        },
        stringValue = {
            type = "string",
        },
        listOfStringsValue = {
            type = "list",
            member = { type = "string" },
        },
        mapOfStringValue = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateWorkflowInput = {
    type = "structure",
    id = "CreateWorkflowInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        templateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationConfigurationId = {
            type = "string",
        },
        inputParameters = {
            type = "map",
            key = { type = "string" },
            value = M.StepInput,
            traits = {
                required = true,
            },
        },
        stepTargets = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MigrationWorkflowStatusEnum = {
    CREATING = "CREATING",
    NOT_STARTED = "NOT_STARTED",
    CREATION_FAILED = "CREATION_FAILED",
    STARTING = "STARTING",
    IN_PROGRESS = "IN_PROGRESS",
    WORKFLOW_FAILED = "WORKFLOW_FAILED",
    PAUSED = "PAUSED",
    PAUSING = "PAUSING",
    PAUSING_FAILED = "PAUSING_FAILED",
    USER_ATTENTION_REQUIRED = "USER_ATTENTION_REQUIRED",
    DELETING = "DELETING",
    DELETION_FAILED = "DELETION_FAILED",
    DELETED = "DELETED",
    COMPLETED = "COMPLETED",
}

M.CreateWorkflowOutput = {
    type = "structure",
    id = "CreateWorkflowOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        templateId = {
            type = "string",
        },
        adsApplicationConfigurationId = {
            type = "string",
        },
        workflowInputs = {
            type = "map",
            key = { type = "string" },
            value = M.StepInput,
        },
        stepTargets = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    },
}

M.DeleteWorkflowInput = {
    type = "structure",
    id = "DeleteWorkflowInput",
    members = {
        id = {
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
    },
}

M.GetWorkflowInput = {
    type = "structure",
    id = "GetWorkflowInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Tool = {
    type = "structure",
    id = "Tool",
    members = {
        name = {
            type = "string",
        },
        url = {
            type = "string",
        },
    },
}

M.GetWorkflowOutput = {
    type = "structure",
    id = "GetWorkflowOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        templateId = {
            type = "string",
        },
        adsApplicationConfigurationId = {
            type = "string",
        },
        adsApplicationName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastStartTime = {
            type = "timestamp",
        },
        lastStopTime = {
            type = "timestamp",
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        tools = {
            type = "list",
            member = M.Tool,
        },
        totalSteps = {
            type = "integer",
        },
        completedSteps = {
            type = "integer",
        },
        workflowInputs = {
            type = "map",
            key = { type = "string" },
            value = M.StepInput,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        workflowBucket = {
            type = "string",
        },
    },
}

M.ListWorkflowsInput = {
    type = "structure",
    id = "ListWorkflowsInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        templateId = {
            type = "string",
            traits = {
                http_query = "templateId",
            },
        },
        adsApplicationConfigurationName = {
            type = "string",
            traits = {
                http_query = "adsApplicationConfigurationName",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
    },
}

M.MigrationWorkflowSummary = {
    type = "structure",
    id = "MigrationWorkflowSummary",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        templateId = {
            type = "string",
        },
        adsApplicationConfigurationName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        statusMessage = {
            type = "string",
        },
        completedSteps = {
            type = "integer",
        },
        totalSteps = {
            type = "integer",
        },
    },
}

M.ListWorkflowsOutput = {
    type = "structure",
    id = "ListWorkflowsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        migrationWorkflowSummary = {
            type = "list",
            member = M.MigrationWorkflowSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.StartWorkflowInput = {
    type = "structure",
    id = "StartWorkflowInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartWorkflowOutput = {
    type = "structure",
    id = "StartWorkflowOutput",
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
        statusMessage = {
            type = "string",
        },
        lastStartTime = {
            type = "timestamp",
        },
    },
}

M.StopWorkflowInput = {
    type = "structure",
    id = "StopWorkflowInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopWorkflowOutput = {
    type = "structure",
    id = "StopWorkflowOutput",
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
        statusMessage = {
            type = "string",
        },
        lastStopTime = {
            type = "timestamp",
        },
    },
}

M.UpdateWorkflowInput = {
    type = "structure",
    id = "UpdateWorkflowInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        inputParameters = {
            type = "map",
            key = { type = "string" },
            value = M.StepInput,
        },
        stepTargets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateWorkflowOutput = {
    type = "structure",
    id = "UpdateWorkflowOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        templateId = {
            type = "string",
        },
        adsApplicationConfigurationId = {
            type = "string",
        },
        workflowInputs = {
            type = "map",
            key = { type = "string" },
            value = M.StepInput,
        },
        stepTargets = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
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
    },
}

M.TemplateSource = {
    type = "union",
    id = "TemplateSource",
    members = {
        workflowId = {
            type = "string",
        },
    },
}

M.CreateTemplateInput = {
    type = "structure",
    id = "CreateTemplateInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateDescription = {
            type = "string",
        },
        templateSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TemplateSource }),
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

M.CreateTemplateOutput = {
    type = "structure",
    id = "CreateTemplateOutput",
    members = {
        templateId = {
            type = "string",
        },
        templateArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteTemplateInput = {
    type = "structure",
    id = "DeleteTemplateInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTemplateOutput = {
    type = "structure",
    id = "DeleteTemplateOutput",
}

M.GetTemplateInput = {
    type = "structure",
    id = "GetTemplateInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DataType = {
    STRING = "STRING",
    INTEGER = "INTEGER",
    STRINGLIST = "STRINGLIST",
    STRINGMAP = "STRINGMAP",
}

M.TemplateInput = {
    type = "structure",
    id = "TemplateInput",
    members = {
        inputName = {
            type = "string",
        },
        dataType = {
            type = "string",
        },
        required = {
            type = "boolean",
        },
    },
}

M.TemplateStatus = {
    CREATED = "CREATED",
    READY = "READY",
    PENDING_CREATION = "PENDING_CREATION",
    CREATING = "CREATING",
    CREATION_FAILED = "CREATION_FAILED",
}

M.GetTemplateOutput = {
    type = "structure",
    id = "GetTemplateOutput",
    members = {
        id = {
            type = "string",
        },
        templateArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        inputs = {
            type = "list",
            member = M.TemplateInput,
        },
        tools = {
            type = "list",
            member = M.Tool,
        },
        creationTime = {
            type = "timestamp",
        },
        owner = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        templateClass = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTemplatesInput = {
    type = "structure",
    id = "ListTemplatesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
    },
}

M.TemplateSummary = {
    type = "structure",
    id = "TemplateSummary",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ListTemplatesOutput = {
    type = "structure",
    id = "ListTemplatesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        templateSummary = {
            type = "list",
            member = M.TemplateSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTemplateInput = {
    type = "structure",
    id = "UpdateTemplateInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        templateName = {
            type = "string",
        },
        templateDescription = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateTemplateOutput = {
    type = "structure",
    id = "UpdateTemplateOutput",
    members = {
        templateId = {
            type = "string",
        },
        templateArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListPluginsInput = {
    type = "structure",
    id = "ListPluginsInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.PluginHealth = {
    PLUGIN_HEALTHY = "HEALTHY",
    PLUGIN_UNHEALTHY = "UNHEALTHY",
}

M.PluginSummary = {
    type = "structure",
    id = "PluginSummary",
    members = {
        pluginId = {
            type = "string",
        },
        hostname = {
            type = "string",
        },
        status = {
            type = "string",
        },
        ipAddress = {
            type = "string",
        },
        version = {
            type = "string",
        },
        registeredTime = {
            type = "string",
        },
    },
}

M.ListPluginsOutput = {
    type = "structure",
    id = "ListPluginsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        plugins = {
            type = "list",
            member = M.PluginSummary,
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

M.GetTemplateStepInput = {
    type = "structure",
    id = "GetTemplateStepInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        templateId = {
            type = "string",
            traits = {
                http_query = "templateId",
                required = true,
            },
        },
        stepGroupId = {
            type = "string",
            traits = {
                http_query = "stepGroupId",
                required = true,
            },
        },
    },
}

M.StepOutput = {
    type = "structure",
    id = "StepOutput",
    members = {
        name = {
            type = "string",
        },
        dataType = {
            type = "string",
        },
        required = {
            type = "boolean",
        },
    },
}

M.StepActionType = {
    MANUAL = "MANUAL",
    AUTOMATED = "AUTOMATED",
}

M.PlatformCommand = {
    type = "structure",
    id = "PlatformCommand",
    members = {
        linux = {
            type = "string",
        },
        windows = {
            type = "string",
        },
    },
}

M.RunEnvironment = {
    AWS = "AWS",
    ONPREMISE = "ONPREMISE",
}

M.PlatformScriptKey = {
    type = "structure",
    id = "PlatformScriptKey",
    members = {
        linux = {
            type = "string",
        },
        windows = {
            type = "string",
        },
    },
}

M.TargetType = {
    SINGLE = "SINGLE",
    ALL = "ALL",
    NONE = "NONE",
}

M.StepAutomationConfiguration = {
    type = "structure",
    id = "StepAutomationConfiguration",
    members = {
        scriptLocationS3Bucket = {
            type = "string",
        },
        scriptLocationS3Key = M.PlatformScriptKey,
        command = M.PlatformCommand,
        runEnvironment = {
            type = "string",
        },
        targetType = {
            type = "string",
        },
    },
}

M.GetTemplateStepOutput = {
    type = "structure",
    id = "GetTemplateStepOutput",
    members = {
        id = {
            type = "string",
        },
        stepGroupId = {
            type = "string",
        },
        templateId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        stepActionType = {
            type = "string",
        },
        creationTime = {
            type = "string",
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
        outputs = {
            type = "list",
            member = M.StepOutput,
        },
        stepAutomationConfiguration = M.StepAutomationConfiguration,
    },
}

M.ListTemplateStepsInput = {
    type = "structure",
    id = "ListTemplateStepsInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        templateId = {
            type = "string",
            traits = {
                http_query = "templateId",
                required = true,
            },
        },
        stepGroupId = {
            type = "string",
            traits = {
                http_query = "stepGroupId",
                required = true,
            },
        },
    },
}

M.Owner = {
    AWSManaged = "AWS_MANAGED",
    CUSTOM = "CUSTOM",
}

M.TemplateStepSummary = {
    type = "structure",
    id = "TemplateStepSummary",
    members = {
        id = {
            type = "string",
        },
        stepGroupId = {
            type = "string",
        },
        templateId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        stepActionType = {
            type = "string",
        },
        targetType = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListTemplateStepsOutput = {
    type = "structure",
    id = "ListTemplateStepsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        templateStepSummaryList = {
            type = "list",
            member = M.TemplateStepSummary,
        },
    },
}

M.GetTemplateStepGroupInput = {
    type = "structure",
    id = "GetTemplateStepGroupInput",
    members = {
        templateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StepGroupStatus = {
    AWAITING_DEPENDENCIES = "AWAITING_DEPENDENCIES",
    READY = "READY",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    PAUSED = "PAUSED",
    PAUSING = "PAUSING",
    USER_ATTENTION_REQUIRED = "USER_ATTENTION_REQUIRED",
}

M.GetTemplateStepGroupOutput = {
    type = "structure",
    id = "GetTemplateStepGroupOutput",
    members = {
        templateId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        tools = {
            type = "list",
            member = M.Tool,
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListTemplateStepGroupsInput = {
    type = "structure",
    id = "ListTemplateStepGroupsInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        templateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TemplateStepGroupSummary = {
    type = "structure",
    id = "TemplateStepGroupSummary",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListTemplateStepGroupsOutput = {
    type = "structure",
    id = "ListTemplateStepGroupsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        templateStepGroupSummary = {
            type = "list",
            member = M.TemplateStepGroupSummary,
            traits = {
                required = true,
            },
        },
    },
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

M.WorkflowStepOutputUnion = {
    type = "union",
    id = "WorkflowStepOutputUnion",
    members = {
        integerValue = {
            type = "integer",
        },
        stringValue = {
            type = "string",
        },
        listOfStringValue = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.WorkflowStepOutput = {
    type = "structure",
    id = "WorkflowStepOutput",
    members = {
        name = {
            type = "string",
        },
        dataType = {
            type = "string",
        },
        required = {
            type = "boolean",
        },
        value = M.WorkflowStepOutputUnion,
    },
}

M.WorkflowStepAutomationConfiguration = {
    type = "structure",
    id = "WorkflowStepAutomationConfiguration",
    members = {
        scriptLocationS3Bucket = {
            type = "string",
        },
        scriptLocationS3Key = M.PlatformScriptKey,
        command = M.PlatformCommand,
        runEnvironment = {
            type = "string",
        },
        targetType = {
            type = "string",
        },
    },
}

M.CreateWorkflowStepInput = {
    type = "structure",
    id = "CreateWorkflowStepInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        workflowStepAutomationConfiguration = M.WorkflowStepAutomationConfiguration,
        stepTarget = {
            type = "list",
            member = { type = "string" },
        },
        outputs = {
            type = "list",
            member = M.WorkflowStepOutput,
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateWorkflowStepOutput = {
    type = "structure",
    id = "CreateWorkflowStepOutput",
    members = {
        id = {
            type = "string",
        },
        stepGroupId = {
            type = "string",
        },
        workflowId = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.DeleteWorkflowStepInput = {
    type = "structure",
    id = "DeleteWorkflowStepInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stepGroupId = {
            type = "string",
            traits = {
                http_query = "stepGroupId",
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                http_query = "workflowId",
                required = true,
            },
        },
    },
}

M.DeleteWorkflowStepOutput = {
    type = "structure",
    id = "DeleteWorkflowStepOutput",
}

M.GetWorkflowStepInput = {
    type = "structure",
    id = "GetWorkflowStepInput",
    members = {
        workflowId = {
            type = "string",
            traits = {
                http_query = "workflowId",
                required = true,
            },
        },
        stepGroupId = {
            type = "string",
            traits = {
                http_query = "stepGroupId",
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StepStatus = {
    AWAITING_DEPENDENCIES = "AWAITING_DEPENDENCIES",
    SKIPPED = "SKIPPED",
    READY = "READY",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    PAUSED = "PAUSED",
    USER_ATTENTION_REQUIRED = "USER_ATTENTION_REQUIRED",
}

M.GetWorkflowStepOutput = {
    type = "structure",
    id = "GetWorkflowStepOutput",
    members = {
        name = {
            type = "string",
        },
        stepGroupId = {
            type = "string",
        },
        workflowId = {
            type = "string",
        },
        stepId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        stepActionType = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        workflowStepAutomationConfiguration = M.WorkflowStepAutomationConfiguration,
        stepTarget = {
            type = "list",
            member = { type = "string" },
        },
        outputs = {
            type = "list",
            member = M.WorkflowStepOutput,
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        scriptOutputLocation = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastStartTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        noOfSrvCompleted = {
            type = "integer",
        },
        noOfSrvFailed = {
            type = "integer",
        },
        totalNoOfSrv = {
            type = "integer",
        },
    },
}

M.ListWorkflowStepsInput = {
    type = "structure",
    id = "ListWorkflowStepsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        workflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stepGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkflowStepSummary = {
    type = "structure",
    id = "WorkflowStepSummary",
    members = {
        stepId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        stepActionType = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        noOfSrvCompleted = {
            type = "integer",
        },
        noOfSrvFailed = {
            type = "integer",
        },
        totalNoOfSrv = {
            type = "integer",
        },
        description = {
            type = "string",
        },
        scriptLocation = {
            type = "string",
        },
    },
}

M.ListWorkflowStepsOutput = {
    type = "structure",
    id = "ListWorkflowStepsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        workflowStepsSummary = {
            type = "list",
            member = M.WorkflowStepSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.RetryWorkflowStepInput = {
    type = "structure",
    id = "RetryWorkflowStepInput",
    members = {
        workflowId = {
            type = "string",
            traits = {
                http_query = "workflowId",
                required = true,
            },
        },
        stepGroupId = {
            type = "string",
            traits = {
                http_query = "stepGroupId",
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RetryWorkflowStepOutput = {
    type = "structure",
    id = "RetryWorkflowStepOutput",
    members = {
        stepGroupId = {
            type = "string",
        },
        workflowId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.UpdateWorkflowStepInput = {
    type = "structure",
    id = "UpdateWorkflowStepInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stepGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        stepActionType = {
            type = "string",
        },
        workflowStepAutomationConfiguration = M.WorkflowStepAutomationConfiguration,
        stepTarget = {
            type = "list",
            member = { type = "string" },
        },
        outputs = {
            type = "list",
            member = M.WorkflowStepOutput,
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
    },
}

M.UpdateWorkflowStepOutput = {
    type = "structure",
    id = "UpdateWorkflowStepOutput",
    members = {
        id = {
            type = "string",
        },
        stepGroupId = {
            type = "string",
        },
        workflowId = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.CreateWorkflowStepGroupInput = {
    type = "structure",
    id = "CreateWorkflowStepGroupInput",
    members = {
        workflowId = {
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
        description = {
            type = "string",
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateWorkflowStepGroupOutput = {
    type = "structure",
    id = "CreateWorkflowStepGroupOutput",
    members = {
        workflowId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tools = {
            type = "list",
            member = M.Tool,
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        creationTime = {
            type = "timestamp",
        },
    },
}

M.DeleteWorkflowStepGroupInput = {
    type = "structure",
    id = "DeleteWorkflowStepGroupInput",
    members = {
        workflowId = {
            type = "string",
            traits = {
                http_query = "workflowId",
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkflowStepGroupOutput = {
    type = "structure",
    id = "DeleteWorkflowStepGroupOutput",
}

M.GetWorkflowStepGroupInput = {
    type = "structure",
    id = "GetWorkflowStepGroupInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                http_query = "workflowId",
                required = true,
            },
        },
    },
}

M.GetWorkflowStepGroupOutput = {
    type = "structure",
    id = "GetWorkflowStepGroupOutput",
    members = {
        id = {
            type = "string",
        },
        workflowId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        tools = {
            type = "list",
            member = M.Tool,
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListWorkflowStepGroupsInput = {
    type = "structure",
    id = "ListWorkflowStepGroupsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        workflowId = {
            type = "string",
            traits = {
                http_query = "workflowId",
                required = true,
            },
        },
    },
}

M.WorkflowStepGroupSummary = {
    type = "structure",
    id = "WorkflowStepGroupSummary",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        status = {
            type = "string",
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListWorkflowStepGroupsOutput = {
    type = "structure",
    id = "ListWorkflowStepGroupsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        workflowStepGroupsSummary = {
            type = "list",
            member = M.WorkflowStepGroupSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateWorkflowStepGroupInput = {
    type = "structure",
    id = "UpdateWorkflowStepGroupInput",
    members = {
        workflowId = {
            type = "string",
            traits = {
                http_query = "workflowId",
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateWorkflowStepGroupOutput = {
    type = "structure",
    id = "UpdateWorkflowStepGroupOutput",
    members = {
        workflowId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tools = {
            type = "list",
            member = M.Tool,
        },
        next = {
            type = "list",
            member = { type = "string" },
        },
        previous = {
            type = "list",
            member = { type = "string" },
        },
        lastModifiedTime = {
            type = "timestamp",
        },
    },
}

return M
