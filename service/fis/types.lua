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
            key_type = "string",
            value_type = "structure",
        },
        targets = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        targets = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        startAfter = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        s3Configuration = {
            type = "structure",
        },
    },
}

M.CreateExperimentTemplateReportConfigurationInput = {
    type = "structure",
    members = {
        outputs = {
            type = "structure",
        },
        dataSources = {
            type = "structure",
        },
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
        cloudWatchLogsConfiguration = {
            type = "structure",
        },
        s3Configuration = {
            type = "structure",
        },
        logSchemaVersion = {
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
        },
        resourceTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        selectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateExperimentTemplateInput = {
    type = "structure",
    members = {
        clientToken = {
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
        stopConditions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        targets = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        actions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        logConfiguration = {
            type = "structure",
        },
        experimentOptions = {
            type = "structure",
        },
        experimentReportConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        targets = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        startAfter = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        s3Configuration = {
            type = "structure",
        },
    },
}

M.ExperimentTemplateReportConfiguration = {
    type = "structure",
    members = {
        outputs = {
            type = "structure",
        },
        dataSources = {
            type = "structure",
        },
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
        cloudWatchLogsConfiguration = {
            type = "structure",
        },
        s3Configuration = {
            type = "structure",
        },
        logSchemaVersion = {
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
        },
        resourceTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        selectionMode = {
            type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "structure",
        },
        actions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        stopConditions = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        logConfiguration = {
            type = "structure",
        },
        experimentOptions = {
            type = "structure",
        },
        targetAccountConfigurationsCount = {
            type = "number",
        },
        experimentReportConfiguration = {
            type = "structure",
        },
    },
}

M.CreateExperimentTemplateOutput = {
    type = "structure",
    members = {
        experimentTemplate = {
            type = "structure",
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
        targetAccountConfiguration = {
            type = "structure",
        },
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
        experimentTemplate = {
            type = "structure",
        },
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
        targetAccountConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        targets = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        startAfter = {
            type = "list",
            member_type = "string",
        },
        state = {
            type = "structure",
        },
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
        error = {
            type = "structure",
        },
    },
}

M.ExperimentReport = {
    type = "structure",
    members = {
        state = {
            type = "structure",
        },
        s3Reports = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        s3Configuration = {
            type = "structure",
        },
    },
}

M.ExperimentReportConfiguration = {
    type = "structure",
    members = {
        outputs = {
            type = "structure",
        },
        dataSources = {
            type = "structure",
        },
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
        cloudWatchLogsConfiguration = {
            type = "structure",
        },
        s3Configuration = {
            type = "structure",
        },
        logSchemaVersion = {
            type = "number",
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
        error = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
        },
        resourceTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        selectionMode = {
            type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        state = {
            type = "structure",
        },
        targets = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        actions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        stopConditions = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        logConfiguration = {
            type = "structure",
        },
        experimentOptions = {
            type = "structure",
        },
        targetAccountConfigurationsCount = {
            type = "number",
        },
        experimentReportConfiguration = {
            type = "structure",
        },
        experimentReport = {
            type = "structure",
        },
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
        state = {
            type = "structure",
        },
        creationTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        experimentOptions = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        action = {
            type = "structure",
        },
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
        experiment = {
            type = "structure",
        },
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
        targetAccountConfiguration = {
            type = "structure",
        },
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
        experimentTemplate = {
            type = "structure",
        },
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
        state = {
            type = "structure",
        },
    },
}

M.GetSafetyLeverOutput = {
    type = "structure",
    members = {
        safetyLever = {
            type = "structure",
        },
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
        targetAccountConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.GetTargetResourceTypeOutput = {
    type = "structure",
    members = {
        targetResourceType = {
            type = "structure",
        },
    },
}

M.ListActionsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListExperimentResolvedTargetsOutput = {
    type = "structure",
    members = {
        resolvedTargets = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
                required = true,
            },
        },
        experimentTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        experimentOptions = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartExperimentOutput = {
    type = "structure",
    members = {
        experiment = {
            type = "structure",
        },
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
        experiment = {
            type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        targets = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        startAfter = {
            type = "list",
            member_type = "string",
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
        outputs = {
            type = "structure",
        },
        dataSources = {
            type = "structure",
        },
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
        cloudWatchLogsConfiguration = {
            type = "structure",
        },
        s3Configuration = {
            type = "structure",
        },
        logSchemaVersion = {
            type = "number",
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
            member_type = "string",
        },
        resourceTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        selectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        targets = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        actions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        roleArn = {
            type = "string",
        },
        logConfiguration = {
            type = "structure",
        },
        experimentOptions = {
            type = "structure",
        },
        experimentReportConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateExperimentTemplateOutput = {
    type = "structure",
    members = {
        experimentTemplate = {
            type = "structure",
        },
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
        state = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSafetyLeverStateOutput = {
    type = "structure",
    members = {
        safetyLever = {
            type = "structure",
        },
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
        targetAccountConfiguration = {
            type = "structure",
        },
    },
}

return M
