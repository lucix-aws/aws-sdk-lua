local M = {}

M.AccountTargeting = {
    SINGLE_ACCOUNT = "single-account",
    MULTI_ACCOUNT = "multi-account",
}

M.ActionParameter = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        required = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.ActionTarget = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
        },
    },
}

M.Action = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.ActionParameter,
        },
        targets = {
            type = "map",
            key = { type = "string" },
            value = M.ActionTarget,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ActionsMode = {
    SKIP_ALL = "skip-all",
    RUN_ALL = "run-all",
}

M.ActionSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        targets = {
            type = "map",
            key = { type = "string" },
            value = M.ActionTarget,
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
        },
    },
}

M.CreateExperimentTemplateActionInput = {
    type = "structure",
    members = {
        actionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        targets = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        startAfter = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EmptyTargetResolutionMode = {
    FAIL = "fail",
    SKIP = "skip",
}

M.CreateExperimentTemplateExperimentOptionsInput = {
    type = "structure",
    members = {
        accountTargeting = {
            type = "string",
        },
        emptyTargetResolutionMode = {
            type = "string",
        },
    },
}

M.ReportConfigurationCloudWatchDashboardInput = {
    type = "structure",
    members = {
        dashboardIdentifier = {
            type = "string",
        },
    },
}

M.ExperimentTemplateReportConfigurationDataSourcesInput = {
    type = "structure",
    members = {
        cloudWatchDashboards = {
            type = "list",
            member = M.ReportConfigurationCloudWatchDashboardInput,
        },
    },
}

M.ReportConfigurationS3OutputInput = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.ExperimentTemplateReportConfigurationOutputsInput = {
    type = "structure",
    members = {
        s3Configuration = M.ReportConfigurationS3OutputInput,
    },
}

M.CreateExperimentTemplateReportConfigurationInput = {
    type = "structure",
    members = {
        outputs = M.ExperimentTemplateReportConfigurationOutputsInput,
        dataSources = M.ExperimentTemplateReportConfigurationDataSourcesInput,
        preExperimentDuration = {
            type = "string",
        },
        postExperimentDuration = {
            type = "string",
        },
    },
}

M.ExperimentTemplateCloudWatchLogsLogConfigurationInput = {
    type = "structure",
    members = {
        logGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExperimentTemplateS3LogConfigurationInput = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
        },
    },
}

M.CreateExperimentTemplateLogConfigurationInput = {
    type = "structure",
    members = {
        cloudWatchLogsConfiguration = M.ExperimentTemplateCloudWatchLogsLogConfigurationInput,
        s3Configuration = M.ExperimentTemplateS3LogConfigurationInput,
        logSchemaVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateExperimentTemplateStopConditionInput = {
    type = "structure",
    members = {
        source = {
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

M.ExperimentTemplateTargetInputFilter = {
    type = "structure",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateExperimentTemplateTargetInput = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        resourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.ExperimentTemplateTargetInputFilter,
        },
        selectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateExperimentTemplateInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stopConditions = {
            type = "list",
            member = M.CreateExperimentTemplateStopConditionInput,
            traits = {
                required = true,
            },
        },
        targets = {
            type = "map",
            key = { type = "string" },
            value = M.CreateExperimentTemplateTargetInput,
        },
        actions = {
            type = "map",
            key = { type = "string" },
            value = M.CreateExperimentTemplateActionInput,
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        logConfiguration = M.CreateExperimentTemplateLogConfigurationInput,
        experimentOptions = M.CreateExperimentTemplateExperimentOptionsInput,
        experimentReportConfiguration = M.CreateExperimentTemplateReportConfigurationInput,
    },
}

M.ExperimentTemplateAction = {
    type = "structure",
    members = {
        actionId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        targets = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        startAfter = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ExperimentTemplateExperimentOptions = {
    type = "structure",
    members = {
        accountTargeting = {
            type = "string",
        },
        emptyTargetResolutionMode = {
            type = "string",
        },
    },
}

M.ExperimentTemplateReportConfigurationCloudWatchDashboard = {
    type = "structure",
    members = {
        dashboardIdentifier = {
            type = "string",
        },
    },
}

M.ExperimentTemplateReportConfigurationDataSources = {
    type = "structure",
    members = {
        cloudWatchDashboards = {
            type = "list",
            member = M.ExperimentTemplateReportConfigurationCloudWatchDashboard,
        },
    },
}

M.ReportConfigurationS3Output = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.ExperimentTemplateReportConfigurationOutputs = {
    type = "structure",
    members = {
        s3Configuration = M.ReportConfigurationS3Output,
    },
}

M.ExperimentTemplateReportConfiguration = {
    type = "structure",
    members = {
        outputs = M.ExperimentTemplateReportConfigurationOutputs,
        dataSources = M.ExperimentTemplateReportConfigurationDataSources,
        preExperimentDuration = {
            type = "string",
        },
        postExperimentDuration = {
            type = "string",
        },
    },
}

M.ExperimentTemplateCloudWatchLogsLogConfiguration = {
    type = "structure",
    members = {
        logGroupArn = {
            type = "string",
        },
    },
}

M.ExperimentTemplateS3LogConfiguration = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.ExperimentTemplateLogConfiguration = {
    type = "structure",
    members = {
        cloudWatchLogsConfiguration = M.ExperimentTemplateCloudWatchLogsLogConfiguration,
        s3Configuration = M.ExperimentTemplateS3LogConfiguration,
        logSchemaVersion = {
            type = "integer",
        },
    },
}

M.ExperimentTemplateStopCondition = {
    type = "structure",
    members = {
        source = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.ExperimentTemplateTargetFilter = {
    type = "structure",
    members = {
        path = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ExperimentTemplateTarget = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
        },
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        resourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.ExperimentTemplateTargetFilter,
        },
        selectionMode = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ExperimentTemplate = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        targets = {
            type = "map",
            key = { type = "string" },
            value = M.ExperimentTemplateTarget,
        },
        actions = {
            type = "map",
            key = { type = "string" },
            value = M.ExperimentTemplateAction,
        },
        stopConditions = {
            type = "list",
            member = M.ExperimentTemplateStopCondition,
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        roleArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        logConfiguration = M.ExperimentTemplateLogConfiguration,
        experimentOptions = M.ExperimentTemplateExperimentOptions,
        targetAccountConfigurationsCount = {
            type = "long",
        },
        experimentReportConfiguration = M.ExperimentTemplateReportConfiguration,
    },
}

M.CreateExperimentTemplateOutput = {
    type = "structure",
    members = {
        experimentTemplate = M.ExperimentTemplate,
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

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateTargetAccountConfigurationInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        experimentTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
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

M.TargetAccountConfiguration = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.CreateTargetAccountConfigurationOutput = {
    type = "structure",
    members = {
        targetAccountConfiguration = M.TargetAccountConfiguration,
    },
}

M.DeleteExperimentTemplateInput = {
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

M.DeleteExperimentTemplateOutput = {
    type = "structure",
    members = {
        experimentTemplate = M.ExperimentTemplate,
    },
}

M.DeleteTargetAccountConfigurationInput = {
    type = "structure",
    members = {
        experimentTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTargetAccountConfigurationOutput = {
    type = "structure",
    members = {
        targetAccountConfiguration = M.TargetAccountConfiguration,
    },
}

M.ExperimentActionStatus = {
    pending = "pending",
    initiating = "initiating",
    running = "running",
    completed = "completed",
    cancelled = "cancelled",
    stopping = "stopping",
    stopped = "stopped",
    failed = "failed",
    skipped = "skipped",
}

M.ExperimentActionState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.ExperimentAction = {
    type = "structure",
    members = {
        actionId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        targets = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        startAfter = {
            type = "list",
            member = { type = "string" },
        },
        state = M.ExperimentActionState,
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.ExperimentOptions = {
    type = "structure",
    members = {
        accountTargeting = {
            type = "string",
        },
        emptyTargetResolutionMode = {
            type = "string",
        },
        actionsMode = {
            type = "string",
        },
    },
}

M.ExperimentReportS3Report = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        reportType = {
            type = "string",
        },
    },
}

M.ExperimentReportError = {
    type = "structure",
    members = {
        code = {
            type = "string",
        },
    },
}

M.ExperimentReportStatus = {
    pending = "pending",
    running = "running",
    completed = "completed",
    cancelled = "cancelled",
    failed = "failed",
}

M.ExperimentReportState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        error = M.ExperimentReportError,
    },
}

M.ExperimentReport = {
    type = "structure",
    members = {
        state = M.ExperimentReportState,
        s3Reports = {
            type = "list",
            member = M.ExperimentReportS3Report,
        },
    },
}

M.ExperimentReportConfigurationCloudWatchDashboard = {
    type = "structure",
    members = {
        dashboardIdentifier = {
            type = "string",
        },
    },
}

M.ExperimentReportConfigurationDataSources = {
    type = "structure",
    members = {
        cloudWatchDashboards = {
            type = "list",
            member = M.ExperimentReportConfigurationCloudWatchDashboard,
        },
    },
}

M.ExperimentReportConfigurationOutputsS3Configuration = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.ExperimentReportConfigurationOutputs = {
    type = "structure",
    members = {
        s3Configuration = M.ExperimentReportConfigurationOutputsS3Configuration,
    },
}

M.ExperimentReportConfiguration = {
    type = "structure",
    members = {
        outputs = M.ExperimentReportConfigurationOutputs,
        dataSources = M.ExperimentReportConfigurationDataSources,
        preExperimentDuration = {
            type = "string",
        },
        postExperimentDuration = {
            type = "string",
        },
    },
}

M.ExperimentCloudWatchLogsLogConfiguration = {
    type = "structure",
    members = {
        logGroupArn = {
            type = "string",
        },
    },
}

M.ExperimentS3LogConfiguration = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.ExperimentLogConfiguration = {
    type = "structure",
    members = {
        cloudWatchLogsConfiguration = M.ExperimentCloudWatchLogsLogConfiguration,
        s3Configuration = M.ExperimentS3LogConfiguration,
        logSchemaVersion = {
            type = "integer",
        },
    },
}

M.ExperimentError = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        code = {
            type = "string",
        },
        location = {
            type = "string",
        },
    },
}

M.ExperimentStatus = {
    pending = "pending",
    initiating = "initiating",
    running = "running",
    completed = "completed",
    stopping = "stopping",
    stopped = "stopped",
    failed = "failed",
    cancelled = "cancelled",
}

M.ExperimentState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        error = M.ExperimentError,
    },
}

M.ExperimentStopCondition = {
    type = "structure",
    members = {
        source = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.ExperimentTargetFilter = {
    type = "structure",
    members = {
        path = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ExperimentTarget = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
        },
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        resourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.ExperimentTargetFilter,
        },
        selectionMode = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Experiment = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        experimentTemplateId = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        state = M.ExperimentState,
        targets = {
            type = "map",
            key = { type = "string" },
            value = M.ExperimentTarget,
        },
        actions = {
            type = "map",
            key = { type = "string" },
            value = M.ExperimentAction,
        },
        stopConditions = {
            type = "list",
            member = M.ExperimentStopCondition,
        },
        creationTime = {
            type = "timestamp",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        logConfiguration = M.ExperimentLogConfiguration,
        experimentOptions = M.ExperimentOptions,
        targetAccountConfigurationsCount = {
            type = "long",
        },
        experimentReportConfiguration = M.ExperimentReportConfiguration,
        experimentReport = M.ExperimentReport,
    },
}

M.ExperimentSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        experimentTemplateId = {
            type = "string",
        },
        state = M.ExperimentState,
        creationTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        experimentOptions = M.ExperimentOptions,
    },
}

M.ExperimentTargetAccountConfiguration = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ExperimentTargetAccountConfigurationSummary = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ExperimentTemplateSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetActionInput = {
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

M.GetActionOutput = {
    type = "structure",
    members = {
        action = M.Action,
    },
}

M.GetExperimentInput = {
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

M.GetExperimentOutput = {
    type = "structure",
    members = {
        experiment = M.Experiment,
    },
}

M.GetExperimentTargetAccountConfigurationInput = {
    type = "structure",
    members = {
        experimentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetExperimentTargetAccountConfigurationOutput = {
    type = "structure",
    members = {
        targetAccountConfiguration = M.ExperimentTargetAccountConfiguration,
    },
}

M.GetExperimentTemplateInput = {
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

M.GetExperimentTemplateOutput = {
    type = "structure",
    members = {
        experimentTemplate = M.ExperimentTemplate,
    },
}

M.GetSafetyLeverInput = {
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

M.SafetyLeverStatus = {
    DISENGAGED = "disengaged",
    ENGAGED = "engaged",
    ENGAGING = "engaging",
}

M.SafetyLeverState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.SafetyLever = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        state = M.SafetyLeverState,
    },
}

M.GetSafetyLeverOutput = {
    type = "structure",
    members = {
        safetyLever = M.SafetyLever,
    },
}

M.GetTargetAccountConfigurationInput = {
    type = "structure",
    members = {
        experimentTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTargetAccountConfigurationOutput = {
    type = "structure",
    members = {
        targetAccountConfiguration = M.TargetAccountConfiguration,
    },
}

M.GetTargetResourceTypeInput = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TargetResourceTypeParameter = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        required = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.TargetResourceType = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.TargetResourceTypeParameter,
        },
    },
}

M.GetTargetResourceTypeOutput = {
    type = "structure",
    members = {
        targetResourceType = M.TargetResourceType,
    },
}

M.ListActionsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
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

M.ListActionsOutput = {
    type = "structure",
    members = {
        actions = {
            type = "list",
            member = M.ActionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListExperimentResolvedTargetsInput = {
    type = "structure",
    members = {
        experimentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        targetName = {
            type = "string",
            traits = {
                http_query = "targetName",
            },
        },
    },
}

M.ResolvedTarget = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
        },
        targetName = {
            type = "string",
        },
        targetInformation = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListExperimentResolvedTargetsOutput = {
    type = "structure",
    members = {
        resolvedTargets = {
            type = "list",
            member = M.ResolvedTarget,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListExperimentsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        experimentTemplateId = {
            type = "string",
            traits = {
                http_query = "experimentTemplateId",
            },
        },
    },
}

M.ListExperimentsOutput = {
    type = "structure",
    members = {
        experiments = {
            type = "list",
            member = M.ExperimentSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListExperimentTargetAccountConfigurationsInput = {
    type = "structure",
    members = {
        experimentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.ListExperimentTargetAccountConfigurationsOutput = {
    type = "structure",
    members = {
        targetAccountConfigurations = {
            type = "list",
            member = M.ExperimentTargetAccountConfigurationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListExperimentTemplatesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
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

M.ListExperimentTemplatesOutput = {
    type = "structure",
    members = {
        experimentTemplates = {
            type = "list",
            member = M.ExperimentTemplateSummary,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTargetAccountConfigurationsInput = {
    type = "structure",
    members = {
        experimentTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
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

M.TargetAccountConfigurationSummary = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ListTargetAccountConfigurationsOutput = {
    type = "structure",
    members = {
        targetAccountConfigurations = {
            type = "list",
            member = M.TargetAccountConfigurationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTargetResourceTypesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
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

M.TargetResourceTypeSummary = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ListTargetResourceTypesOutput = {
    type = "structure",
    members = {
        targetResourceTypes = {
            type = "list",
            member = M.TargetResourceTypeSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartExperimentExperimentOptionsInput = {
    type = "structure",
    members = {
        actionsMode = {
            type = "string",
        },
    },
}

M.StartExperimentInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        experimentTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        experimentOptions = M.StartExperimentExperimentOptionsInput,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartExperimentOutput = {
    type = "structure",
    members = {
        experiment = M.Experiment,
    },
}

M.StopExperimentInput = {
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

M.StopExperimentOutput = {
    type = "structure",
    members = {
        experiment = M.Experiment,
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
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateExperimentTemplateActionInputItem = {
    type = "structure",
    members = {
        actionId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        targets = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        startAfter = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateExperimentTemplateExperimentOptionsInput = {
    type = "structure",
    members = {
        emptyTargetResolutionMode = {
            type = "string",
        },
    },
}

M.UpdateExperimentTemplateReportConfigurationInput = {
    type = "structure",
    members = {
        outputs = M.ExperimentTemplateReportConfigurationOutputsInput,
        dataSources = M.ExperimentTemplateReportConfigurationDataSourcesInput,
        preExperimentDuration = {
            type = "string",
        },
        postExperimentDuration = {
            type = "string",
        },
    },
}

M.UpdateExperimentTemplateLogConfigurationInput = {
    type = "structure",
    members = {
        cloudWatchLogsConfiguration = M.ExperimentTemplateCloudWatchLogsLogConfigurationInput,
        s3Configuration = M.ExperimentTemplateS3LogConfigurationInput,
        logSchemaVersion = {
            type = "integer",
        },
    },
}

M.UpdateExperimentTemplateStopConditionInput = {
    type = "structure",
    members = {
        source = {
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

M.UpdateExperimentTemplateTargetInput = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        resourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.ExperimentTemplateTargetInputFilter,
        },
        selectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateExperimentTemplateInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        stopConditions = {
            type = "list",
            member = M.UpdateExperimentTemplateStopConditionInput,
        },
        targets = {
            type = "map",
            key = { type = "string" },
            value = M.UpdateExperimentTemplateTargetInput,
        },
        actions = {
            type = "map",
            key = { type = "string" },
            value = M.UpdateExperimentTemplateActionInputItem,
        },
        roleArn = {
            type = "string",
        },
        logConfiguration = M.UpdateExperimentTemplateLogConfigurationInput,
        experimentOptions = M.UpdateExperimentTemplateExperimentOptionsInput,
        experimentReportConfiguration = M.UpdateExperimentTemplateReportConfigurationInput,
    },
}

M.UpdateExperimentTemplateOutput = {
    type = "structure",
    members = {
        experimentTemplate = M.ExperimentTemplate,
    },
}

M.SafetyLeverStatusInput = {
    DISENGAGED = "disengaged",
    ENGAGED = "engaged",
}

M.UpdateSafetyLeverStateInput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSafetyLeverStateOperationInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        state = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateSafetyLeverStateInput }),
    },
}

M.UpdateSafetyLeverStateOutput = {
    type = "structure",
    members = {
        safetyLever = M.SafetyLever,
    },
}

M.UpdateTargetAccountConfigurationInput = {
    type = "structure",
    members = {
        experimentTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateTargetAccountConfigurationOutput = {
    type = "structure",
    members = {
        targetAccountConfiguration = M.TargetAccountConfiguration,
    },
}

return M
