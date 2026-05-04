local M = {}

M.AccountTargeting = {
    SINGLE_ACCOUNT = "single-account",
    MULTI_ACCOUNT = "multi-account",
}

M.ActionParameter = {
    type = "structure",
    id = "ActionParameter",
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
    id = "ActionTarget",
    members = {
        resourceType = {
            type = "string",
        },
    },
}

M.Action = {
    type = "structure",
    id = "Action",
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
    id = "ActionSummary",
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
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateExperimentTemplateActionInput = {
    type = "structure",
    id = "CreateExperimentTemplateActionInput",
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
    id = "CreateExperimentTemplateExperimentOptionsInput",
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
    id = "ReportConfigurationCloudWatchDashboardInput",
    members = {
        dashboardIdentifier = {
            type = "string",
        },
    },
}

M.ExperimentTemplateReportConfigurationDataSourcesInput = {
    type = "structure",
    id = "ExperimentTemplateReportConfigurationDataSourcesInput",
    members = {
        cloudWatchDashboards = {
            type = "list",
            member = M.ReportConfigurationCloudWatchDashboardInput,
        },
    },
}

M.ReportConfigurationS3OutputInput = {
    type = "structure",
    id = "ReportConfigurationS3OutputInput",
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
    id = "ExperimentTemplateReportConfigurationOutputsInput",
    members = {
        s3Configuration = M.ReportConfigurationS3OutputInput,
    },
}

M.CreateExperimentTemplateReportConfigurationInput = {
    type = "structure",
    id = "CreateExperimentTemplateReportConfigurationInput",
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
    id = "ExperimentTemplateCloudWatchLogsLogConfigurationInput",
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
    id = "ExperimentTemplateS3LogConfigurationInput",
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
    id = "CreateExperimentTemplateLogConfigurationInput",
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
    id = "CreateExperimentTemplateStopConditionInput",
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
    id = "ExperimentTemplateTargetInputFilter",
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
    id = "CreateExperimentTemplateTargetInput",
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
    id = "CreateExperimentTemplateInput",
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
    id = "ExperimentTemplateAction",
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
    id = "ExperimentTemplateExperimentOptions",
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
    id = "ExperimentTemplateReportConfigurationCloudWatchDashboard",
    members = {
        dashboardIdentifier = {
            type = "string",
        },
    },
}

M.ExperimentTemplateReportConfigurationDataSources = {
    type = "structure",
    id = "ExperimentTemplateReportConfigurationDataSources",
    members = {
        cloudWatchDashboards = {
            type = "list",
            member = M.ExperimentTemplateReportConfigurationCloudWatchDashboard,
        },
    },
}

M.ReportConfigurationS3Output = {
    type = "structure",
    id = "ReportConfigurationS3Output",
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
    id = "ExperimentTemplateReportConfigurationOutputs",
    members = {
        s3Configuration = M.ReportConfigurationS3Output,
    },
}

M.ExperimentTemplateReportConfiguration = {
    type = "structure",
    id = "ExperimentTemplateReportConfiguration",
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
    id = "ExperimentTemplateCloudWatchLogsLogConfiguration",
    members = {
        logGroupArn = {
            type = "string",
        },
    },
}

M.ExperimentTemplateS3LogConfiguration = {
    type = "structure",
    id = "ExperimentTemplateS3LogConfiguration",
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
    id = "ExperimentTemplateLogConfiguration",
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
    id = "ExperimentTemplateStopCondition",
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
    id = "ExperimentTemplateTargetFilter",
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
    id = "ExperimentTemplateTarget",
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
    id = "ExperimentTemplate",
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
    id = "CreateExperimentTemplateOutput",
    members = {
        experimentTemplate = M.ExperimentTemplate,
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.CreateTargetAccountConfigurationInput = {
    type = "structure",
    id = "CreateTargetAccountConfigurationInput",
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
    id = "TargetAccountConfiguration",
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
    id = "CreateTargetAccountConfigurationOutput",
    members = {
        targetAccountConfiguration = M.TargetAccountConfiguration,
    },
}

M.DeleteExperimentTemplateInput = {
    type = "structure",
    id = "DeleteExperimentTemplateInput",
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
    id = "DeleteExperimentTemplateOutput",
    members = {
        experimentTemplate = M.ExperimentTemplate,
    },
}

M.DeleteTargetAccountConfigurationInput = {
    type = "structure",
    id = "DeleteTargetAccountConfigurationInput",
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
    id = "DeleteTargetAccountConfigurationOutput",
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
    id = "ExperimentActionState",
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
    id = "ExperimentAction",
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
    id = "ExperimentOptions",
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
    id = "ExperimentReportS3Report",
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
    id = "ExperimentReportError",
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
    id = "ExperimentReportState",
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
    id = "ExperimentReport",
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
    id = "ExperimentReportConfigurationCloudWatchDashboard",
    members = {
        dashboardIdentifier = {
            type = "string",
        },
    },
}

M.ExperimentReportConfigurationDataSources = {
    type = "structure",
    id = "ExperimentReportConfigurationDataSources",
    members = {
        cloudWatchDashboards = {
            type = "list",
            member = M.ExperimentReportConfigurationCloudWatchDashboard,
        },
    },
}

M.ExperimentReportConfigurationOutputsS3Configuration = {
    type = "structure",
    id = "ExperimentReportConfigurationOutputsS3Configuration",
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
    id = "ExperimentReportConfigurationOutputs",
    members = {
        s3Configuration = M.ExperimentReportConfigurationOutputsS3Configuration,
    },
}

M.ExperimentReportConfiguration = {
    type = "structure",
    id = "ExperimentReportConfiguration",
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
    id = "ExperimentCloudWatchLogsLogConfiguration",
    members = {
        logGroupArn = {
            type = "string",
        },
    },
}

M.ExperimentS3LogConfiguration = {
    type = "structure",
    id = "ExperimentS3LogConfiguration",
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
    id = "ExperimentLogConfiguration",
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
    id = "ExperimentError",
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
    id = "ExperimentState",
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
    id = "ExperimentStopCondition",
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
    id = "ExperimentTargetFilter",
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
    id = "ExperimentTarget",
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
    id = "Experiment",
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
    id = "ExperimentSummary",
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
    id = "ExperimentTargetAccountConfiguration",
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
    id = "ExperimentTargetAccountConfigurationSummary",
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
    id = "ExperimentTemplateSummary",
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
    id = "GetActionInput",
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
    id = "GetActionOutput",
    members = {
        action = M.Action,
    },
}

M.GetExperimentInput = {
    type = "structure",
    id = "GetExperimentInput",
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
    id = "GetExperimentOutput",
    members = {
        experiment = M.Experiment,
    },
}

M.GetExperimentTargetAccountConfigurationInput = {
    type = "structure",
    id = "GetExperimentTargetAccountConfigurationInput",
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
    id = "GetExperimentTargetAccountConfigurationOutput",
    members = {
        targetAccountConfiguration = M.ExperimentTargetAccountConfiguration,
    },
}

M.GetExperimentTemplateInput = {
    type = "structure",
    id = "GetExperimentTemplateInput",
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
    id = "GetExperimentTemplateOutput",
    members = {
        experimentTemplate = M.ExperimentTemplate,
    },
}

M.GetSafetyLeverInput = {
    type = "structure",
    id = "GetSafetyLeverInput",
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
    id = "SafetyLeverState",
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
    id = "SafetyLever",
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
    id = "GetSafetyLeverOutput",
    members = {
        safetyLever = M.SafetyLever,
    },
}

M.GetTargetAccountConfigurationInput = {
    type = "structure",
    id = "GetTargetAccountConfigurationInput",
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
    id = "GetTargetAccountConfigurationOutput",
    members = {
        targetAccountConfiguration = M.TargetAccountConfiguration,
    },
}

M.GetTargetResourceTypeInput = {
    type = "structure",
    id = "GetTargetResourceTypeInput",
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
    id = "TargetResourceTypeParameter",
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
    id = "TargetResourceType",
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
    id = "GetTargetResourceTypeOutput",
    members = {
        targetResourceType = M.TargetResourceType,
    },
}

M.ListActionsInput = {
    type = "structure",
    id = "ListActionsInput",
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
    id = "ListActionsOutput",
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
    id = "ListExperimentResolvedTargetsInput",
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
    id = "ResolvedTarget",
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
    id = "ListExperimentResolvedTargetsOutput",
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
    id = "ListExperimentsInput",
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
    id = "ListExperimentsOutput",
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
    id = "ListExperimentTargetAccountConfigurationsInput",
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
    id = "ListExperimentTargetAccountConfigurationsOutput",
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
    id = "ListExperimentTemplatesInput",
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
    id = "ListExperimentTemplatesOutput",
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

M.ListTargetAccountConfigurationsInput = {
    type = "structure",
    id = "ListTargetAccountConfigurationsInput",
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
    id = "TargetAccountConfigurationSummary",
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
    id = "ListTargetAccountConfigurationsOutput",
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
    id = "ListTargetResourceTypesInput",
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
    id = "TargetResourceTypeSummary",
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
    id = "ListTargetResourceTypesOutput",
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
    id = "StartExperimentExperimentOptionsInput",
    members = {
        actionsMode = {
            type = "string",
        },
    },
}

M.StartExperimentInput = {
    type = "structure",
    id = "StartExperimentInput",
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
    id = "StartExperimentOutput",
    members = {
        experiment = M.Experiment,
    },
}

M.StopExperimentInput = {
    type = "structure",
    id = "StopExperimentInput",
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
    id = "StopExperimentOutput",
    members = {
        experiment = M.Experiment,
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
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateExperimentTemplateActionInputItem = {
    type = "structure",
    id = "UpdateExperimentTemplateActionInputItem",
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
    id = "UpdateExperimentTemplateExperimentOptionsInput",
    members = {
        emptyTargetResolutionMode = {
            type = "string",
        },
    },
}

M.UpdateExperimentTemplateReportConfigurationInput = {
    type = "structure",
    id = "UpdateExperimentTemplateReportConfigurationInput",
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
    id = "UpdateExperimentTemplateLogConfigurationInput",
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
    id = "UpdateExperimentTemplateStopConditionInput",
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
    id = "UpdateExperimentTemplateTargetInput",
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
    id = "UpdateExperimentTemplateInput",
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
    id = "UpdateExperimentTemplateOutput",
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
    id = "UpdateSafetyLeverStateInput",
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
    id = "UpdateSafetyLeverStateOperationInput",
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
    id = "UpdateSafetyLeverStateOutput",
    members = {
        safetyLever = M.SafetyLever,
    },
}

M.UpdateTargetAccountConfigurationInput = {
    type = "structure",
    id = "UpdateTargetAccountConfigurationInput",
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
    id = "UpdateTargetAccountConfigurationOutput",
    members = {
        targetAccountConfiguration = M.TargetAccountConfiguration,
    },
}

return M
