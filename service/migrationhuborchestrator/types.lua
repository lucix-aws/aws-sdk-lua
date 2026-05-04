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

M.StepInput = {
    type = "union",
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
    members = {
        workflowId = {
            type = "string",
        },
    },
}

M.CreateTemplateInput = {
    type = "structure",
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
}

M.GetTemplateInput = {
    type = "structure",
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

M.GetTemplateStepInput = {
    type = "structure",
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

M.WorkflowStepOutputUnion = {
    type = "union",
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
}

M.GetWorkflowStepInput = {
    type = "structure",
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
}

M.GetWorkflowStepGroupInput = {
    type = "structure",
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
