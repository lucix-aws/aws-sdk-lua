local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.fis"

local M = {}

M.CreateExperimentTemplateStopConditionInputList = schema.new({ type = "list", list_member = M.CreateExperimentTemplateStopConditionInput })

M.CreateExperimentTemplateTargetInputMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.CreateExperimentTemplateTargetInput })

M.CreateExperimentTemplateActionInputMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.CreateExperimentTemplateActionInput })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ActionSummaryList = schema.new({ type = "list", list_member = M.ActionSummary })

M.ResolvedTargetList = schema.new({ type = "list", list_member = M.ResolvedTarget })

M.ExperimentSummaryList = schema.new({ type = "list", list_member = M.ExperimentSummary })

M.ExperimentTargetAccountConfigurationList = schema.new({ type = "list", list_member = M.ExperimentTargetAccountConfigurationSummary })

M.ExperimentTemplateSummaryList = schema.new({ type = "list", list_member = M.ExperimentTemplateSummary })

M.TargetAccountConfigurationList = schema.new({ type = "list", list_member = M.TargetAccountConfigurationSummary })

M.TargetResourceTypeSummaryList = schema.new({ type = "list", list_member = M.TargetResourceTypeSummary })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.UpdateExperimentTemplateStopConditionInputList = schema.new({ type = "list", list_member = M.UpdateExperimentTemplateStopConditionInput })

M.UpdateExperimentTemplateTargetInputMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.UpdateExperimentTemplateTargetInput })

M.UpdateExperimentTemplateActionInputMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.UpdateExperimentTemplateActionInputItem })

M.ExperimentTemplateTargetMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ExperimentTemplateTarget })

M.ExperimentTemplateActionMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ExperimentTemplateAction })

M.ExperimentTemplateStopConditionList = schema.new({ type = "list", list_member = M.ExperimentTemplateStopCondition })

M.ActionParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ActionParameter })

M.ActionTargetMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ActionTarget })

M.ExperimentTargetMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ExperimentTarget })

M.ExperimentActionMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ExperimentAction })

M.ExperimentStopConditionList = schema.new({ type = "list", list_member = M.ExperimentStopCondition })

M.TargetResourceTypeParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.TargetResourceTypeParameter })

M.ResourceArnList = schema.new({ type = "list", list_member = prelude.String })

M.ExperimentTemplateTargetFilterInputList = schema.new({ type = "list", list_member = M.ExperimentTemplateTargetInputFilter })

M.ExperimentTemplateTargetParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ExperimentTemplateActionParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ExperimentTemplateActionTargetMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ExperimentTemplateActionStartAfterList = schema.new({ type = "list", list_member = prelude.String })

M.ReportConfigurationCloudWatchDashboardInputList = schema.new({ type = "list", list_member = M.ReportConfigurationCloudWatchDashboardInput })

M.ExperimentReportS3ReportList = schema.new({ type = "list", list_member = M.ExperimentReportS3Report })

M.TargetInformationMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ExperimentTemplateTargetFilterList = schema.new({ type = "list", list_member = M.ExperimentTemplateTargetFilter })

M.ExperimentTemplateReportConfigurationCloudWatchDashboardList = schema.new({ type = "list", list_member = M.ExperimentTemplateReportConfigurationCloudWatchDashboard })

M.ExperimentTargetFilterList = schema.new({ type = "list", list_member = M.ExperimentTargetFilter })

M.ExperimentTargetParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ExperimentActionParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ExperimentActionTargetMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ExperimentActionStartAfterList = schema.new({ type = "list", list_member = prelude.String })

M.ExperimentReportConfigurationCloudWatchDashboardList = schema.new({ type = "list", list_member = M.ExperimentReportConfigurationCloudWatchDashboard })

M.ExperimentTemplateTargetFilterValues = schema.new({ type = "list", list_member = prelude.String })

M.ExperimentTargetFilterValues = schema.new({ type = "list", list_member = prelude.String })

M.ActionParameter = schema.new({
    id = id.from(_N, "ActionParameter"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "ActionParameter", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        required = schema.new({
            id = id.from(_N, "ActionParameter", "required"),
            type = "boolean",
            name = "required",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.ActionTarget = schema.new({
    id = id.from(_N, "ActionTarget"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "ActionTarget", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.Action = schema.new({
    id = id.from(_N, "Action"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Action", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Action", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Action", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "Action", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ActionParameter,
        }),
        targets = schema.new({
            id = id.from(_N, "Action", "targets"),
            type = "map",
            name = "targets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ActionTarget,
        }),
        tags = schema.new({
            id = id.from(_N, "Action", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ActionSummary = schema.new({
    id = id.from(_N, "ActionSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ActionSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ActionSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ActionSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targets = schema.new({
            id = id.from(_N, "ActionSummary", "targets"),
            type = "map",
            name = "targets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ActionTarget,
        }),
        tags = schema.new({
            id = id.from(_N, "ActionSummary", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateExperimentTemplateActionInput = schema.new({
    id = id.from(_N, "CreateExperimentTemplateActionInput"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "CreateExperimentTemplateActionInput", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateExperimentTemplateActionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "CreateExperimentTemplateActionInput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        targets = schema.new({
            id = id.from(_N, "CreateExperimentTemplateActionInput", "targets"),
            type = "map",
            name = "targets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        startAfter = schema.new({
            id = id.from(_N, "CreateExperimentTemplateActionInput", "startAfter"),
            type = "list",
            name = "startAfter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateExperimentTemplateExperimentOptionsInput = schema.new({
    id = id.from(_N, "CreateExperimentTemplateExperimentOptionsInput"),
    type = "structure",
    members = {
        accountTargeting = schema.new({
            id = id.from(_N, "CreateExperimentTemplateExperimentOptionsInput", "accountTargeting"),
            type = "string",
            name = "accountTargeting",
            target_id = prelude.String.id,
        }),
        emptyTargetResolutionMode = schema.new({
            id = id.from(_N, "CreateExperimentTemplateExperimentOptionsInput", "emptyTargetResolutionMode"),
            type = "string",
            name = "emptyTargetResolutionMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ReportConfigurationCloudWatchDashboardInput = schema.new({
    id = id.from(_N, "ReportConfigurationCloudWatchDashboardInput"),
    type = "structure",
    members = {
        dashboardIdentifier = schema.new({
            id = id.from(_N, "ReportConfigurationCloudWatchDashboardInput", "dashboardIdentifier"),
            type = "string",
            name = "dashboardIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateReportConfigurationDataSourcesInput = schema.new({
    id = id.from(_N, "ExperimentTemplateReportConfigurationDataSourcesInput"),
    type = "structure",
    members = {
        cloudWatchDashboards = schema.new({
            id = id.from(_N, "ExperimentTemplateReportConfigurationDataSourcesInput", "cloudWatchDashboards"),
            type = "list",
            name = "cloudWatchDashboards",
            target_id = prelude.Document.id,
            list_member = M.ReportConfigurationCloudWatchDashboardInput,
        }),
    },
})

M.ReportConfigurationS3OutputInput = schema.new({
    id = id.from(_N, "ReportConfigurationS3OutputInput"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "ReportConfigurationS3OutputInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
        }),
        prefix = schema.new({
            id = id.from(_N, "ReportConfigurationS3OutputInput", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateReportConfigurationOutputsInput = schema.new({
    id = id.from(_N, "ExperimentTemplateReportConfigurationOutputsInput"),
    type = "structure",
    members = {
        s3Configuration = schema.new({
            id = id.from(_N, "ExperimentTemplateReportConfigurationOutputsInput", "s3Configuration"),
            type = "structure",
            name = "s3Configuration",
            target_id = id.from(_N, "ReportConfigurationS3OutputInput"),
            target = M.ReportConfigurationS3OutputInput,
        }),
    },
})

M.CreateExperimentTemplateReportConfigurationInput = schema.new({
    id = id.from(_N, "CreateExperimentTemplateReportConfigurationInput"),
    type = "structure",
    members = {
        outputs = schema.new({
            id = id.from(_N, "CreateExperimentTemplateReportConfigurationInput", "outputs"),
            type = "structure",
            name = "outputs",
            target_id = id.from(_N, "ExperimentTemplateReportConfigurationOutputsInput"),
            target = M.ExperimentTemplateReportConfigurationOutputsInput,
        }),
        dataSources = schema.new({
            id = id.from(_N, "CreateExperimentTemplateReportConfigurationInput", "dataSources"),
            type = "structure",
            name = "dataSources",
            target_id = id.from(_N, "ExperimentTemplateReportConfigurationDataSourcesInput"),
            target = M.ExperimentTemplateReportConfigurationDataSourcesInput,
        }),
        preExperimentDuration = schema.new({
            id = id.from(_N, "CreateExperimentTemplateReportConfigurationInput", "preExperimentDuration"),
            type = "string",
            name = "preExperimentDuration",
            target_id = prelude.String.id,
        }),
        postExperimentDuration = schema.new({
            id = id.from(_N, "CreateExperimentTemplateReportConfigurationInput", "postExperimentDuration"),
            type = "string",
            name = "postExperimentDuration",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateCloudWatchLogsLogConfigurationInput = schema.new({
    id = id.from(_N, "ExperimentTemplateCloudWatchLogsLogConfigurationInput"),
    type = "structure",
    members = {
        logGroupArn = schema.new({
            id = id.from(_N, "ExperimentTemplateCloudWatchLogsLogConfigurationInput", "logGroupArn"),
            type = "string",
            name = "logGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExperimentTemplateS3LogConfigurationInput = schema.new({
    id = id.from(_N, "ExperimentTemplateS3LogConfigurationInput"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "ExperimentTemplateS3LogConfigurationInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        prefix = schema.new({
            id = id.from(_N, "ExperimentTemplateS3LogConfigurationInput", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateExperimentTemplateLogConfigurationInput = schema.new({
    id = id.from(_N, "CreateExperimentTemplateLogConfigurationInput"),
    type = "structure",
    members = {
        cloudWatchLogsConfiguration = schema.new({
            id = id.from(_N, "CreateExperimentTemplateLogConfigurationInput", "cloudWatchLogsConfiguration"),
            type = "structure",
            name = "cloudWatchLogsConfiguration",
            target_id = id.from(_N, "ExperimentTemplateCloudWatchLogsLogConfigurationInput"),
            target = M.ExperimentTemplateCloudWatchLogsLogConfigurationInput,
        }),
        s3Configuration = schema.new({
            id = id.from(_N, "CreateExperimentTemplateLogConfigurationInput", "s3Configuration"),
            type = "structure",
            name = "s3Configuration",
            target_id = id.from(_N, "ExperimentTemplateS3LogConfigurationInput"),
            target = M.ExperimentTemplateS3LogConfigurationInput,
        }),
        logSchemaVersion = schema.new({
            id = id.from(_N, "CreateExperimentTemplateLogConfigurationInput", "logSchemaVersion"),
            type = "integer",
            name = "logSchemaVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateExperimentTemplateStopConditionInput = schema.new({
    id = id.from(_N, "CreateExperimentTemplateStopConditionInput"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "CreateExperimentTemplateStopConditionInput", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "CreateExperimentTemplateStopConditionInput", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateTargetInputFilter = schema.new({
    id = id.from(_N, "ExperimentTemplateTargetInputFilter"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "ExperimentTemplateTargetInputFilter", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "ExperimentTemplateTargetInputFilter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateExperimentTemplateTargetInput = schema.new({
    id = id.from(_N, "CreateExperimentTemplateTargetInput"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "CreateExperimentTemplateTargetInput", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArns = schema.new({
            id = id.from(_N, "CreateExperimentTemplateTargetInput", "resourceArns"),
            type = "list",
            name = "resourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        resourceTags = schema.new({
            id = id.from(_N, "CreateExperimentTemplateTargetInput", "resourceTags"),
            type = "map",
            name = "resourceTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        filters = schema.new({
            id = id.from(_N, "CreateExperimentTemplateTargetInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ExperimentTemplateTargetInputFilter,
        }),
        selectionMode = schema.new({
            id = id.from(_N, "CreateExperimentTemplateTargetInput", "selectionMode"),
            type = "string",
            name = "selectionMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parameters = schema.new({
            id = id.from(_N, "CreateExperimentTemplateTargetInput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateExperimentTemplateInput = schema.new({
    id = id.from(_N, "CreateExperimentTemplateRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateExperimentTemplateInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateExperimentTemplateInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stopConditions = schema.new({
            id = id.from(_N, "CreateExperimentTemplateInput", "stopConditions"),
            type = "list",
            name = "stopConditions",
            target_id = prelude.Document.id,
            list_member = M.CreateExperimentTemplateStopConditionInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targets = schema.new({
            id = id.from(_N, "CreateExperimentTemplateInput", "targets"),
            type = "map",
            name = "targets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.CreateExperimentTemplateTargetInput,
        }),
        actions = schema.new({
            id = id.from(_N, "CreateExperimentTemplateInput", "actions"),
            type = "map",
            name = "actions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.CreateExperimentTemplateActionInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateExperimentTemplateInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateExperimentTemplateInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        logConfiguration = schema.new({
            id = id.from(_N, "CreateExperimentTemplateInput", "logConfiguration"),
            type = "structure",
            name = "logConfiguration",
            target_id = id.from(_N, "CreateExperimentTemplateLogConfigurationInput"),
            target = M.CreateExperimentTemplateLogConfigurationInput,
        }),
        experimentOptions = schema.new({
            id = id.from(_N, "CreateExperimentTemplateInput", "experimentOptions"),
            type = "structure",
            name = "experimentOptions",
            target_id = id.from(_N, "CreateExperimentTemplateExperimentOptionsInput"),
            target = M.CreateExperimentTemplateExperimentOptionsInput,
        }),
        experimentReportConfiguration = schema.new({
            id = id.from(_N, "CreateExperimentTemplateInput", "experimentReportConfiguration"),
            type = "structure",
            name = "experimentReportConfiguration",
            target_id = id.from(_N, "CreateExperimentTemplateReportConfigurationInput"),
            target = M.CreateExperimentTemplateReportConfigurationInput,
        }),
    },
})

M.ExperimentTemplateAction = schema.new({
    id = id.from(_N, "ExperimentTemplateAction"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "ExperimentTemplateAction", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ExperimentTemplateAction", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "ExperimentTemplateAction", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        targets = schema.new({
            id = id.from(_N, "ExperimentTemplateAction", "targets"),
            type = "map",
            name = "targets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        startAfter = schema.new({
            id = id.from(_N, "ExperimentTemplateAction", "startAfter"),
            type = "list",
            name = "startAfter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ExperimentTemplateExperimentOptions = schema.new({
    id = id.from(_N, "ExperimentTemplateExperimentOptions"),
    type = "structure",
    members = {
        accountTargeting = schema.new({
            id = id.from(_N, "ExperimentTemplateExperimentOptions", "accountTargeting"),
            type = "string",
            name = "accountTargeting",
            target_id = prelude.String.id,
        }),
        emptyTargetResolutionMode = schema.new({
            id = id.from(_N, "ExperimentTemplateExperimentOptions", "emptyTargetResolutionMode"),
            type = "string",
            name = "emptyTargetResolutionMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateReportConfigurationCloudWatchDashboard = schema.new({
    id = id.from(_N, "ExperimentTemplateReportConfigurationCloudWatchDashboard"),
    type = "structure",
    members = {
        dashboardIdentifier = schema.new({
            id = id.from(_N, "ExperimentTemplateReportConfigurationCloudWatchDashboard", "dashboardIdentifier"),
            type = "string",
            name = "dashboardIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateReportConfigurationDataSources = schema.new({
    id = id.from(_N, "ExperimentTemplateReportConfigurationDataSources"),
    type = "structure",
    members = {
        cloudWatchDashboards = schema.new({
            id = id.from(_N, "ExperimentTemplateReportConfigurationDataSources", "cloudWatchDashboards"),
            type = "list",
            name = "cloudWatchDashboards",
            target_id = prelude.Document.id,
            list_member = M.ExperimentTemplateReportConfigurationCloudWatchDashboard,
        }),
    },
})

M.ReportConfigurationS3Output = schema.new({
    id = id.from(_N, "ReportConfigurationS3Output"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "ReportConfigurationS3Output", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
        }),
        prefix = schema.new({
            id = id.from(_N, "ReportConfigurationS3Output", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateReportConfigurationOutputs = schema.new({
    id = id.from(_N, "ExperimentTemplateReportConfigurationOutputs"),
    type = "structure",
    members = {
        s3Configuration = schema.new({
            id = id.from(_N, "ExperimentTemplateReportConfigurationOutputs", "s3Configuration"),
            type = "structure",
            name = "s3Configuration",
            target_id = id.from(_N, "ReportConfigurationS3Output"),
            target = M.ReportConfigurationS3Output,
        }),
    },
})

M.ExperimentTemplateReportConfiguration = schema.new({
    id = id.from(_N, "ExperimentTemplateReportConfiguration"),
    type = "structure",
    members = {
        outputs = schema.new({
            id = id.from(_N, "ExperimentTemplateReportConfiguration", "outputs"),
            type = "structure",
            name = "outputs",
            target_id = id.from(_N, "ExperimentTemplateReportConfigurationOutputs"),
            target = M.ExperimentTemplateReportConfigurationOutputs,
        }),
        dataSources = schema.new({
            id = id.from(_N, "ExperimentTemplateReportConfiguration", "dataSources"),
            type = "structure",
            name = "dataSources",
            target_id = id.from(_N, "ExperimentTemplateReportConfigurationDataSources"),
            target = M.ExperimentTemplateReportConfigurationDataSources,
        }),
        preExperimentDuration = schema.new({
            id = id.from(_N, "ExperimentTemplateReportConfiguration", "preExperimentDuration"),
            type = "string",
            name = "preExperimentDuration",
            target_id = prelude.String.id,
        }),
        postExperimentDuration = schema.new({
            id = id.from(_N, "ExperimentTemplateReportConfiguration", "postExperimentDuration"),
            type = "string",
            name = "postExperimentDuration",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateCloudWatchLogsLogConfiguration = schema.new({
    id = id.from(_N, "ExperimentTemplateCloudWatchLogsLogConfiguration"),
    type = "structure",
    members = {
        logGroupArn = schema.new({
            id = id.from(_N, "ExperimentTemplateCloudWatchLogsLogConfiguration", "logGroupArn"),
            type = "string",
            name = "logGroupArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateS3LogConfiguration = schema.new({
    id = id.from(_N, "ExperimentTemplateS3LogConfiguration"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "ExperimentTemplateS3LogConfiguration", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
        }),
        prefix = schema.new({
            id = id.from(_N, "ExperimentTemplateS3LogConfiguration", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateLogConfiguration = schema.new({
    id = id.from(_N, "ExperimentTemplateLogConfiguration"),
    type = "structure",
    members = {
        cloudWatchLogsConfiguration = schema.new({
            id = id.from(_N, "ExperimentTemplateLogConfiguration", "cloudWatchLogsConfiguration"),
            type = "structure",
            name = "cloudWatchLogsConfiguration",
            target_id = id.from(_N, "ExperimentTemplateCloudWatchLogsLogConfiguration"),
            target = M.ExperimentTemplateCloudWatchLogsLogConfiguration,
        }),
        s3Configuration = schema.new({
            id = id.from(_N, "ExperimentTemplateLogConfiguration", "s3Configuration"),
            type = "structure",
            name = "s3Configuration",
            target_id = id.from(_N, "ExperimentTemplateS3LogConfiguration"),
            target = M.ExperimentTemplateS3LogConfiguration,
        }),
        logSchemaVersion = schema.new({
            id = id.from(_N, "ExperimentTemplateLogConfiguration", "logSchemaVersion"),
            type = "integer",
            name = "logSchemaVersion",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ExperimentTemplateStopCondition = schema.new({
    id = id.from(_N, "ExperimentTemplateStopCondition"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "ExperimentTemplateStopCondition", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "ExperimentTemplateStopCondition", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateTargetFilter = schema.new({
    id = id.from(_N, "ExperimentTemplateTargetFilter"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "ExperimentTemplateTargetFilter", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        values = schema.new({
            id = id.from(_N, "ExperimentTemplateTargetFilter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ExperimentTemplateTarget = schema.new({
    id = id.from(_N, "ExperimentTemplateTarget"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "ExperimentTemplateTarget", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        resourceArns = schema.new({
            id = id.from(_N, "ExperimentTemplateTarget", "resourceArns"),
            type = "list",
            name = "resourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        resourceTags = schema.new({
            id = id.from(_N, "ExperimentTemplateTarget", "resourceTags"),
            type = "map",
            name = "resourceTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        filters = schema.new({
            id = id.from(_N, "ExperimentTemplateTarget", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ExperimentTemplateTargetFilter,
        }),
        selectionMode = schema.new({
            id = id.from(_N, "ExperimentTemplateTarget", "selectionMode"),
            type = "string",
            name = "selectionMode",
            target_id = prelude.String.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "ExperimentTemplateTarget", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ExperimentTemplate = schema.new({
    id = id.from(_N, "ExperimentTemplate"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ExperimentTemplate", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ExperimentTemplate", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ExperimentTemplate", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targets = schema.new({
            id = id.from(_N, "ExperimentTemplate", "targets"),
            type = "map",
            name = "targets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ExperimentTemplateTarget,
        }),
        actions = schema.new({
            id = id.from(_N, "ExperimentTemplate", "actions"),
            type = "map",
            name = "actions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ExperimentTemplateAction,
        }),
        stopConditions = schema.new({
            id = id.from(_N, "ExperimentTemplate", "stopConditions"),
            type = "list",
            name = "stopConditions",
            target_id = prelude.Document.id,
            list_member = M.ExperimentTemplateStopCondition,
        }),
        creationTime = schema.new({
            id = id.from(_N, "ExperimentTemplate", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdateTime = schema.new({
            id = id.from(_N, "ExperimentTemplate", "lastUpdateTime"),
            type = "timestamp",
            name = "lastUpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "ExperimentTemplate", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ExperimentTemplate", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        logConfiguration = schema.new({
            id = id.from(_N, "ExperimentTemplate", "logConfiguration"),
            type = "structure",
            name = "logConfiguration",
            target_id = id.from(_N, "ExperimentTemplateLogConfiguration"),
            target = M.ExperimentTemplateLogConfiguration,
        }),
        experimentOptions = schema.new({
            id = id.from(_N, "ExperimentTemplate", "experimentOptions"),
            type = "structure",
            name = "experimentOptions",
            target_id = id.from(_N, "ExperimentTemplateExperimentOptions"),
            target = M.ExperimentTemplateExperimentOptions,
        }),
        targetAccountConfigurationsCount = schema.new({
            id = id.from(_N, "ExperimentTemplate", "targetAccountConfigurationsCount"),
            type = "long",
            name = "targetAccountConfigurationsCount",
            target_id = prelude.Long.id,
        }),
        experimentReportConfiguration = schema.new({
            id = id.from(_N, "ExperimentTemplate", "experimentReportConfiguration"),
            type = "structure",
            name = "experimentReportConfiguration",
            target_id = id.from(_N, "ExperimentTemplateReportConfiguration"),
            target = M.ExperimentTemplateReportConfiguration,
        }),
    },
})

M.CreateExperimentTemplateOutput = schema.new({
    id = id.from(_N, "CreateExperimentTemplateResponse"),
    type = "structure",
    members = {
        experimentTemplate = schema.new({
            id = id.from(_N, "CreateExperimentTemplateOutput", "experimentTemplate"),
            type = "structure",
            name = "experimentTemplate",
            target_id = id.from(_N, "ExperimentTemplate"),
            target = M.ExperimentTemplate,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTargetAccountConfigurationInput = schema.new({
    id = id.from(_N, "CreateTargetAccountConfigurationRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateTargetAccountConfigurationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        experimentTemplateId = schema.new({
            id = id.from(_N, "CreateTargetAccountConfigurationInput", "experimentTemplateId"),
            type = "string",
            name = "experimentTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accountId = schema.new({
            id = id.from(_N, "CreateTargetAccountConfigurationInput", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateTargetAccountConfigurationInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateTargetAccountConfigurationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetAccountConfiguration = schema.new({
    id = id.from(_N, "TargetAccountConfiguration"),
    type = "structure",
    members = {
        roleArn = schema.new({
            id = id.from(_N, "TargetAccountConfiguration", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        accountId = schema.new({
            id = id.from(_N, "TargetAccountConfiguration", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "TargetAccountConfiguration", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTargetAccountConfigurationOutput = schema.new({
    id = id.from(_N, "CreateTargetAccountConfigurationResponse"),
    type = "structure",
    members = {
        targetAccountConfiguration = schema.new({
            id = id.from(_N, "CreateTargetAccountConfigurationOutput", "targetAccountConfiguration"),
            type = "structure",
            name = "targetAccountConfiguration",
            target_id = id.from(_N, "TargetAccountConfiguration"),
            target = M.TargetAccountConfiguration,
        }),
    },
})

M.DeleteExperimentTemplateInput = schema.new({
    id = id.from(_N, "DeleteExperimentTemplateRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteExperimentTemplateInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteExperimentTemplateOutput = schema.new({
    id = id.from(_N, "DeleteExperimentTemplateResponse"),
    type = "structure",
    members = {
        experimentTemplate = schema.new({
            id = id.from(_N, "DeleteExperimentTemplateOutput", "experimentTemplate"),
            type = "structure",
            name = "experimentTemplate",
            target_id = id.from(_N, "ExperimentTemplate"),
            target = M.ExperimentTemplate,
        }),
    },
})

M.DeleteTargetAccountConfigurationInput = schema.new({
    id = id.from(_N, "DeleteTargetAccountConfigurationRequest"),
    type = "structure",
    members = {
        experimentTemplateId = schema.new({
            id = id.from(_N, "DeleteTargetAccountConfigurationInput", "experimentTemplateId"),
            type = "string",
            name = "experimentTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accountId = schema.new({
            id = id.from(_N, "DeleteTargetAccountConfigurationInput", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteTargetAccountConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteTargetAccountConfigurationResponse"),
    type = "structure",
    members = {
        targetAccountConfiguration = schema.new({
            id = id.from(_N, "DeleteTargetAccountConfigurationOutput", "targetAccountConfiguration"),
            type = "structure",
            name = "targetAccountConfiguration",
            target_id = id.from(_N, "TargetAccountConfiguration"),
            target = M.TargetAccountConfiguration,
        }),
    },
})

M.ExperimentActionState = schema.new({
    id = id.from(_N, "ExperimentActionState"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ExperimentActionState", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "ExperimentActionState", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentAction = schema.new({
    id = id.from(_N, "ExperimentAction"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "ExperimentAction", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ExperimentAction", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "ExperimentAction", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        targets = schema.new({
            id = id.from(_N, "ExperimentAction", "targets"),
            type = "map",
            name = "targets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        startAfter = schema.new({
            id = id.from(_N, "ExperimentAction", "startAfter"),
            type = "list",
            name = "startAfter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        state = schema.new({
            id = id.from(_N, "ExperimentAction", "state"),
            type = "structure",
            name = "state",
            target_id = id.from(_N, "ExperimentActionState"),
            target = M.ExperimentActionState,
        }),
        startTime = schema.new({
            id = id.from(_N, "ExperimentAction", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "ExperimentAction", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ExperimentOptions = schema.new({
    id = id.from(_N, "ExperimentOptions"),
    type = "structure",
    members = {
        accountTargeting = schema.new({
            id = id.from(_N, "ExperimentOptions", "accountTargeting"),
            type = "string",
            name = "accountTargeting",
            target_id = prelude.String.id,
        }),
        emptyTargetResolutionMode = schema.new({
            id = id.from(_N, "ExperimentOptions", "emptyTargetResolutionMode"),
            type = "string",
            name = "emptyTargetResolutionMode",
            target_id = prelude.String.id,
        }),
        actionsMode = schema.new({
            id = id.from(_N, "ExperimentOptions", "actionsMode"),
            type = "string",
            name = "actionsMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentReportS3Report = schema.new({
    id = id.from(_N, "ExperimentReportS3Report"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ExperimentReportS3Report", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        reportType = schema.new({
            id = id.from(_N, "ExperimentReportS3Report", "reportType"),
            type = "string",
            name = "reportType",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentReportError = schema.new({
    id = id.from(_N, "ExperimentReportError"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "ExperimentReportError", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentReportState = schema.new({
    id = id.from(_N, "ExperimentReportState"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ExperimentReportState", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "ExperimentReportState", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "ExperimentReportState", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ExperimentReportError"),
            target = M.ExperimentReportError,
        }),
    },
})

M.ExperimentReport = schema.new({
    id = id.from(_N, "ExperimentReport"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "ExperimentReport", "state"),
            type = "structure",
            name = "state",
            target_id = id.from(_N, "ExperimentReportState"),
            target = M.ExperimentReportState,
        }),
        s3Reports = schema.new({
            id = id.from(_N, "ExperimentReport", "s3Reports"),
            type = "list",
            name = "s3Reports",
            target_id = prelude.Document.id,
            list_member = M.ExperimentReportS3Report,
        }),
    },
})

M.ExperimentReportConfigurationCloudWatchDashboard = schema.new({
    id = id.from(_N, "ExperimentReportConfigurationCloudWatchDashboard"),
    type = "structure",
    members = {
        dashboardIdentifier = schema.new({
            id = id.from(_N, "ExperimentReportConfigurationCloudWatchDashboard", "dashboardIdentifier"),
            type = "string",
            name = "dashboardIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentReportConfigurationDataSources = schema.new({
    id = id.from(_N, "ExperimentReportConfigurationDataSources"),
    type = "structure",
    members = {
        cloudWatchDashboards = schema.new({
            id = id.from(_N, "ExperimentReportConfigurationDataSources", "cloudWatchDashboards"),
            type = "list",
            name = "cloudWatchDashboards",
            target_id = prelude.Document.id,
            list_member = M.ExperimentReportConfigurationCloudWatchDashboard,
        }),
    },
})

M.ExperimentReportConfigurationOutputsS3Configuration = schema.new({
    id = id.from(_N, "ExperimentReportConfigurationOutputsS3Configuration"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "ExperimentReportConfigurationOutputsS3Configuration", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
        }),
        prefix = schema.new({
            id = id.from(_N, "ExperimentReportConfigurationOutputsS3Configuration", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentReportConfigurationOutputs = schema.new({
    id = id.from(_N, "ExperimentReportConfigurationOutputs"),
    type = "structure",
    members = {
        s3Configuration = schema.new({
            id = id.from(_N, "ExperimentReportConfigurationOutputs", "s3Configuration"),
            type = "structure",
            name = "s3Configuration",
            target_id = id.from(_N, "ExperimentReportConfigurationOutputsS3Configuration"),
            target = M.ExperimentReportConfigurationOutputsS3Configuration,
        }),
    },
})

M.ExperimentReportConfiguration = schema.new({
    id = id.from(_N, "ExperimentReportConfiguration"),
    type = "structure",
    members = {
        outputs = schema.new({
            id = id.from(_N, "ExperimentReportConfiguration", "outputs"),
            type = "structure",
            name = "outputs",
            target_id = id.from(_N, "ExperimentReportConfigurationOutputs"),
            target = M.ExperimentReportConfigurationOutputs,
        }),
        dataSources = schema.new({
            id = id.from(_N, "ExperimentReportConfiguration", "dataSources"),
            type = "structure",
            name = "dataSources",
            target_id = id.from(_N, "ExperimentReportConfigurationDataSources"),
            target = M.ExperimentReportConfigurationDataSources,
        }),
        preExperimentDuration = schema.new({
            id = id.from(_N, "ExperimentReportConfiguration", "preExperimentDuration"),
            type = "string",
            name = "preExperimentDuration",
            target_id = prelude.String.id,
        }),
        postExperimentDuration = schema.new({
            id = id.from(_N, "ExperimentReportConfiguration", "postExperimentDuration"),
            type = "string",
            name = "postExperimentDuration",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentCloudWatchLogsLogConfiguration = schema.new({
    id = id.from(_N, "ExperimentCloudWatchLogsLogConfiguration"),
    type = "structure",
    members = {
        logGroupArn = schema.new({
            id = id.from(_N, "ExperimentCloudWatchLogsLogConfiguration", "logGroupArn"),
            type = "string",
            name = "logGroupArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentS3LogConfiguration = schema.new({
    id = id.from(_N, "ExperimentS3LogConfiguration"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "ExperimentS3LogConfiguration", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
        }),
        prefix = schema.new({
            id = id.from(_N, "ExperimentS3LogConfiguration", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentLogConfiguration = schema.new({
    id = id.from(_N, "ExperimentLogConfiguration"),
    type = "structure",
    members = {
        cloudWatchLogsConfiguration = schema.new({
            id = id.from(_N, "ExperimentLogConfiguration", "cloudWatchLogsConfiguration"),
            type = "structure",
            name = "cloudWatchLogsConfiguration",
            target_id = id.from(_N, "ExperimentCloudWatchLogsLogConfiguration"),
            target = M.ExperimentCloudWatchLogsLogConfiguration,
        }),
        s3Configuration = schema.new({
            id = id.from(_N, "ExperimentLogConfiguration", "s3Configuration"),
            type = "structure",
            name = "s3Configuration",
            target_id = id.from(_N, "ExperimentS3LogConfiguration"),
            target = M.ExperimentS3LogConfiguration,
        }),
        logSchemaVersion = schema.new({
            id = id.from(_N, "ExperimentLogConfiguration", "logSchemaVersion"),
            type = "integer",
            name = "logSchemaVersion",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ExperimentError = schema.new({
    id = id.from(_N, "ExperimentError"),
    type = "structure",
    members = {
        accountId = schema.new({
            id = id.from(_N, "ExperimentError", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "ExperimentError", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "ExperimentError", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentState = schema.new({
    id = id.from(_N, "ExperimentState"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ExperimentState", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "ExperimentState", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "ExperimentState", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ExperimentError"),
            target = M.ExperimentError,
        }),
    },
})

M.ExperimentStopCondition = schema.new({
    id = id.from(_N, "ExperimentStopCondition"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "ExperimentStopCondition", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "ExperimentStopCondition", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTargetFilter = schema.new({
    id = id.from(_N, "ExperimentTargetFilter"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "ExperimentTargetFilter", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        values = schema.new({
            id = id.from(_N, "ExperimentTargetFilter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ExperimentTarget = schema.new({
    id = id.from(_N, "ExperimentTarget"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "ExperimentTarget", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        resourceArns = schema.new({
            id = id.from(_N, "ExperimentTarget", "resourceArns"),
            type = "list",
            name = "resourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        resourceTags = schema.new({
            id = id.from(_N, "ExperimentTarget", "resourceTags"),
            type = "map",
            name = "resourceTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        filters = schema.new({
            id = id.from(_N, "ExperimentTarget", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ExperimentTargetFilter,
        }),
        selectionMode = schema.new({
            id = id.from(_N, "ExperimentTarget", "selectionMode"),
            type = "string",
            name = "selectionMode",
            target_id = prelude.String.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "ExperimentTarget", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.Experiment = schema.new({
    id = id.from(_N, "Experiment"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Experiment", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Experiment", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        experimentTemplateId = schema.new({
            id = id.from(_N, "Experiment", "experimentTemplateId"),
            type = "string",
            name = "experimentTemplateId",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "Experiment", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "Experiment", "state"),
            type = "structure",
            name = "state",
            target_id = id.from(_N, "ExperimentState"),
            target = M.ExperimentState,
        }),
        targets = schema.new({
            id = id.from(_N, "Experiment", "targets"),
            type = "map",
            name = "targets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ExperimentTarget,
        }),
        actions = schema.new({
            id = id.from(_N, "Experiment", "actions"),
            type = "map",
            name = "actions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ExperimentAction,
        }),
        stopConditions = schema.new({
            id = id.from(_N, "Experiment", "stopConditions"),
            type = "list",
            name = "stopConditions",
            target_id = prelude.Document.id,
            list_member = M.ExperimentStopCondition,
        }),
        creationTime = schema.new({
            id = id.from(_N, "Experiment", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "Experiment", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "Experiment", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Experiment", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        logConfiguration = schema.new({
            id = id.from(_N, "Experiment", "logConfiguration"),
            type = "structure",
            name = "logConfiguration",
            target_id = id.from(_N, "ExperimentLogConfiguration"),
            target = M.ExperimentLogConfiguration,
        }),
        experimentOptions = schema.new({
            id = id.from(_N, "Experiment", "experimentOptions"),
            type = "structure",
            name = "experimentOptions",
            target_id = id.from(_N, "ExperimentOptions"),
            target = M.ExperimentOptions,
        }),
        targetAccountConfigurationsCount = schema.new({
            id = id.from(_N, "Experiment", "targetAccountConfigurationsCount"),
            type = "long",
            name = "targetAccountConfigurationsCount",
            target_id = prelude.Long.id,
        }),
        experimentReportConfiguration = schema.new({
            id = id.from(_N, "Experiment", "experimentReportConfiguration"),
            type = "structure",
            name = "experimentReportConfiguration",
            target_id = id.from(_N, "ExperimentReportConfiguration"),
            target = M.ExperimentReportConfiguration,
        }),
        experimentReport = schema.new({
            id = id.from(_N, "Experiment", "experimentReport"),
            type = "structure",
            name = "experimentReport",
            target_id = id.from(_N, "ExperimentReport"),
            target = M.ExperimentReport,
        }),
    },
})

M.ExperimentSummary = schema.new({
    id = id.from(_N, "ExperimentSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ExperimentSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ExperimentSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        experimentTemplateId = schema.new({
            id = id.from(_N, "ExperimentSummary", "experimentTemplateId"),
            type = "string",
            name = "experimentTemplateId",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "ExperimentSummary", "state"),
            type = "structure",
            name = "state",
            target_id = id.from(_N, "ExperimentState"),
            target = M.ExperimentState,
        }),
        creationTime = schema.new({
            id = id.from(_N, "ExperimentSummary", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ExperimentSummary", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        experimentOptions = schema.new({
            id = id.from(_N, "ExperimentSummary", "experimentOptions"),
            type = "structure",
            name = "experimentOptions",
            target_id = id.from(_N, "ExperimentOptions"),
            target = M.ExperimentOptions,
        }),
    },
})

M.ExperimentTargetAccountConfiguration = schema.new({
    id = id.from(_N, "ExperimentTargetAccountConfiguration"),
    type = "structure",
    members = {
        roleArn = schema.new({
            id = id.from(_N, "ExperimentTargetAccountConfiguration", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        accountId = schema.new({
            id = id.from(_N, "ExperimentTargetAccountConfiguration", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ExperimentTargetAccountConfiguration", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTargetAccountConfigurationSummary = schema.new({
    id = id.from(_N, "ExperimentTargetAccountConfigurationSummary"),
    type = "structure",
    members = {
        roleArn = schema.new({
            id = id.from(_N, "ExperimentTargetAccountConfigurationSummary", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        accountId = schema.new({
            id = id.from(_N, "ExperimentTargetAccountConfigurationSummary", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ExperimentTargetAccountConfigurationSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ExperimentTemplateSummary = schema.new({
    id = id.from(_N, "ExperimentTemplateSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ExperimentTemplateSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ExperimentTemplateSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ExperimentTemplateSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "ExperimentTemplateSummary", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdateTime = schema.new({
            id = id.from(_N, "ExperimentTemplateSummary", "lastUpdateTime"),
            type = "timestamp",
            name = "lastUpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ExperimentTemplateSummary", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetActionInput = schema.new({
    id = id.from(_N, "GetActionRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetActionInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetActionOutput = schema.new({
    id = id.from(_N, "GetActionResponse"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "GetActionOutput", "action"),
            type = "structure",
            name = "action",
            target_id = id.from(_N, "Action"),
            target = M.Action,
        }),
    },
})

M.GetExperimentInput = schema.new({
    id = id.from(_N, "GetExperimentRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetExperimentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetExperimentOutput = schema.new({
    id = id.from(_N, "GetExperimentResponse"),
    type = "structure",
    members = {
        experiment = schema.new({
            id = id.from(_N, "GetExperimentOutput", "experiment"),
            type = "structure",
            name = "experiment",
            target_id = id.from(_N, "Experiment"),
            target = M.Experiment,
        }),
    },
})

M.GetExperimentTargetAccountConfigurationInput = schema.new({
    id = id.from(_N, "GetExperimentTargetAccountConfigurationRequest"),
    type = "structure",
    members = {
        experimentId = schema.new({
            id = id.from(_N, "GetExperimentTargetAccountConfigurationInput", "experimentId"),
            type = "string",
            name = "experimentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accountId = schema.new({
            id = id.from(_N, "GetExperimentTargetAccountConfigurationInput", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetExperimentTargetAccountConfigurationOutput = schema.new({
    id = id.from(_N, "GetExperimentTargetAccountConfigurationResponse"),
    type = "structure",
    members = {
        targetAccountConfiguration = schema.new({
            id = id.from(_N, "GetExperimentTargetAccountConfigurationOutput", "targetAccountConfiguration"),
            type = "structure",
            name = "targetAccountConfiguration",
            target_id = id.from(_N, "ExperimentTargetAccountConfiguration"),
            target = M.ExperimentTargetAccountConfiguration,
        }),
    },
})

M.GetExperimentTemplateInput = schema.new({
    id = id.from(_N, "GetExperimentTemplateRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetExperimentTemplateInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetExperimentTemplateOutput = schema.new({
    id = id.from(_N, "GetExperimentTemplateResponse"),
    type = "structure",
    members = {
        experimentTemplate = schema.new({
            id = id.from(_N, "GetExperimentTemplateOutput", "experimentTemplate"),
            type = "structure",
            name = "experimentTemplate",
            target_id = id.from(_N, "ExperimentTemplate"),
            target = M.ExperimentTemplate,
        }),
    },
})

M.GetSafetyLeverInput = schema.new({
    id = id.from(_N, "GetSafetyLeverRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetSafetyLeverInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SafetyLeverState = schema.new({
    id = id.from(_N, "SafetyLeverState"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "SafetyLeverState", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "SafetyLeverState", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
    },
})

M.SafetyLever = schema.new({
    id = id.from(_N, "SafetyLever"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "SafetyLever", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "SafetyLever", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "SafetyLever", "state"),
            type = "structure",
            name = "state",
            target_id = id.from(_N, "SafetyLeverState"),
            target = M.SafetyLeverState,
        }),
    },
})

M.GetSafetyLeverOutput = schema.new({
    id = id.from(_N, "GetSafetyLeverResponse"),
    type = "structure",
    members = {
        safetyLever = schema.new({
            id = id.from(_N, "GetSafetyLeverOutput", "safetyLever"),
            type = "structure",
            name = "safetyLever",
            target_id = id.from(_N, "SafetyLever"),
            target = M.SafetyLever,
        }),
    },
})

M.GetTargetAccountConfigurationInput = schema.new({
    id = id.from(_N, "GetTargetAccountConfigurationRequest"),
    type = "structure",
    members = {
        experimentTemplateId = schema.new({
            id = id.from(_N, "GetTargetAccountConfigurationInput", "experimentTemplateId"),
            type = "string",
            name = "experimentTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accountId = schema.new({
            id = id.from(_N, "GetTargetAccountConfigurationInput", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetTargetAccountConfigurationOutput = schema.new({
    id = id.from(_N, "GetTargetAccountConfigurationResponse"),
    type = "structure",
    members = {
        targetAccountConfiguration = schema.new({
            id = id.from(_N, "GetTargetAccountConfigurationOutput", "targetAccountConfiguration"),
            type = "structure",
            name = "targetAccountConfiguration",
            target_id = id.from(_N, "TargetAccountConfiguration"),
            target = M.TargetAccountConfiguration,
        }),
    },
})

M.GetTargetResourceTypeInput = schema.new({
    id = id.from(_N, "GetTargetResourceTypeRequest"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "GetTargetResourceTypeInput", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.TargetResourceTypeParameter = schema.new({
    id = id.from(_N, "TargetResourceTypeParameter"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "TargetResourceTypeParameter", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        required = schema.new({
            id = id.from(_N, "TargetResourceTypeParameter", "required"),
            type = "boolean",
            name = "required",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.TargetResourceType = schema.new({
    id = id.from(_N, "TargetResourceType"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "TargetResourceType", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "TargetResourceType", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "TargetResourceType", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.TargetResourceTypeParameter,
        }),
    },
})

M.GetTargetResourceTypeOutput = schema.new({
    id = id.from(_N, "GetTargetResourceTypeResponse"),
    type = "structure",
    members = {
        targetResourceType = schema.new({
            id = id.from(_N, "GetTargetResourceTypeOutput", "targetResourceType"),
            type = "structure",
            name = "targetResourceType",
            target_id = id.from(_N, "TargetResourceType"),
            target = M.TargetResourceType,
        }),
    },
})

M.ListActionsInput = schema.new({
    id = id.from(_N, "ListActionsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListActionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListActionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListActionsOutput = schema.new({
    id = id.from(_N, "ListActionsResponse"),
    type = "structure",
    members = {
        actions = schema.new({
            id = id.from(_N, "ListActionsOutput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.ActionSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListActionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExperimentResolvedTargetsInput = schema.new({
    id = id.from(_N, "ListExperimentResolvedTargetsRequest"),
    type = "structure",
    members = {
        experimentId = schema.new({
            id = id.from(_N, "ListExperimentResolvedTargetsInput", "experimentId"),
            type = "string",
            name = "experimentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListExperimentResolvedTargetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExperimentResolvedTargetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        targetName = schema.new({
            id = id.from(_N, "ListExperimentResolvedTargetsInput", "targetName"),
            type = "string",
            name = "targetName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "targetName" },
            },
        }),
    },
})

M.ResolvedTarget = schema.new({
    id = id.from(_N, "ResolvedTarget"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "ResolvedTarget", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        targetName = schema.new({
            id = id.from(_N, "ResolvedTarget", "targetName"),
            type = "string",
            name = "targetName",
            target_id = prelude.String.id,
        }),
        targetInformation = schema.new({
            id = id.from(_N, "ResolvedTarget", "targetInformation"),
            type = "map",
            name = "targetInformation",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListExperimentResolvedTargetsOutput = schema.new({
    id = id.from(_N, "ListExperimentResolvedTargetsResponse"),
    type = "structure",
    members = {
        resolvedTargets = schema.new({
            id = id.from(_N, "ListExperimentResolvedTargetsOutput", "resolvedTargets"),
            type = "list",
            name = "resolvedTargets",
            target_id = prelude.Document.id,
            list_member = M.ResolvedTarget,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExperimentResolvedTargetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExperimentsInput = schema.new({
    id = id.from(_N, "ListExperimentsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListExperimentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExperimentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        experimentTemplateId = schema.new({
            id = id.from(_N, "ListExperimentsInput", "experimentTemplateId"),
            type = "string",
            name = "experimentTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "experimentTemplateId" },
            },
        }),
    },
})

M.ListExperimentsOutput = schema.new({
    id = id.from(_N, "ListExperimentsResponse"),
    type = "structure",
    members = {
        experiments = schema.new({
            id = id.from(_N, "ListExperimentsOutput", "experiments"),
            type = "list",
            name = "experiments",
            target_id = prelude.Document.id,
            list_member = M.ExperimentSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExperimentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExperimentTargetAccountConfigurationsInput = schema.new({
    id = id.from(_N, "ListExperimentTargetAccountConfigurationsRequest"),
    type = "structure",
    members = {
        experimentId = schema.new({
            id = id.from(_N, "ListExperimentTargetAccountConfigurationsInput", "experimentId"),
            type = "string",
            name = "experimentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExperimentTargetAccountConfigurationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListExperimentTargetAccountConfigurationsOutput = schema.new({
    id = id.from(_N, "ListExperimentTargetAccountConfigurationsResponse"),
    type = "structure",
    members = {
        targetAccountConfigurations = schema.new({
            id = id.from(_N, "ListExperimentTargetAccountConfigurationsOutput", "targetAccountConfigurations"),
            type = "list",
            name = "targetAccountConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ExperimentTargetAccountConfigurationSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExperimentTargetAccountConfigurationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExperimentTemplatesInput = schema.new({
    id = id.from(_N, "ListExperimentTemplatesRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListExperimentTemplatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExperimentTemplatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListExperimentTemplatesOutput = schema.new({
    id = id.from(_N, "ListExperimentTemplatesResponse"),
    type = "structure",
    members = {
        experimentTemplates = schema.new({
            id = id.from(_N, "ListExperimentTemplatesOutput", "experimentTemplates"),
            type = "list",
            name = "experimentTemplates",
            target_id = prelude.Document.id,
            list_member = M.ExperimentTemplateSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExperimentTemplatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListTargetAccountConfigurationsInput = schema.new({
    id = id.from(_N, "ListTargetAccountConfigurationsRequest"),
    type = "structure",
    members = {
        experimentTemplateId = schema.new({
            id = id.from(_N, "ListTargetAccountConfigurationsInput", "experimentTemplateId"),
            type = "string",
            name = "experimentTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTargetAccountConfigurationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTargetAccountConfigurationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.TargetAccountConfigurationSummary = schema.new({
    id = id.from(_N, "TargetAccountConfigurationSummary"),
    type = "structure",
    members = {
        roleArn = schema.new({
            id = id.from(_N, "TargetAccountConfigurationSummary", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        accountId = schema.new({
            id = id.from(_N, "TargetAccountConfigurationSummary", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "TargetAccountConfigurationSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTargetAccountConfigurationsOutput = schema.new({
    id = id.from(_N, "ListTargetAccountConfigurationsResponse"),
    type = "structure",
    members = {
        targetAccountConfigurations = schema.new({
            id = id.from(_N, "ListTargetAccountConfigurationsOutput", "targetAccountConfigurations"),
            type = "list",
            name = "targetAccountConfigurations",
            target_id = prelude.Document.id,
            list_member = M.TargetAccountConfigurationSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTargetAccountConfigurationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTargetResourceTypesInput = schema.new({
    id = id.from(_N, "ListTargetResourceTypesRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListTargetResourceTypesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTargetResourceTypesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.TargetResourceTypeSummary = schema.new({
    id = id.from(_N, "TargetResourceTypeSummary"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "TargetResourceTypeSummary", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "TargetResourceTypeSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTargetResourceTypesOutput = schema.new({
    id = id.from(_N, "ListTargetResourceTypesResponse"),
    type = "structure",
    members = {
        targetResourceTypes = schema.new({
            id = id.from(_N, "ListTargetResourceTypesOutput", "targetResourceTypes"),
            type = "list",
            name = "targetResourceTypes",
            target_id = prelude.Document.id,
            list_member = M.TargetResourceTypeSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTargetResourceTypesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartExperimentExperimentOptionsInput = schema.new({
    id = id.from(_N, "StartExperimentExperimentOptionsInput"),
    type = "structure",
    members = {
        actionsMode = schema.new({
            id = id.from(_N, "StartExperimentExperimentOptionsInput", "actionsMode"),
            type = "string",
            name = "actionsMode",
            target_id = prelude.String.id,
        }),
    },
})

M.StartExperimentInput = schema.new({
    id = id.from(_N, "StartExperimentRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "StartExperimentInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        experimentTemplateId = schema.new({
            id = id.from(_N, "StartExperimentInput", "experimentTemplateId"),
            type = "string",
            name = "experimentTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        experimentOptions = schema.new({
            id = id.from(_N, "StartExperimentInput", "experimentOptions"),
            type = "structure",
            name = "experimentOptions",
            target_id = id.from(_N, "StartExperimentExperimentOptionsInput"),
            target = M.StartExperimentExperimentOptionsInput,
        }),
        tags = schema.new({
            id = id.from(_N, "StartExperimentInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartExperimentOutput = schema.new({
    id = id.from(_N, "StartExperimentResponse"),
    type = "structure",
    members = {
        experiment = schema.new({
            id = id.from(_N, "StartExperimentOutput", "experiment"),
            type = "structure",
            name = "experiment",
            target_id = id.from(_N, "Experiment"),
            target = M.Experiment,
        }),
    },
})

M.StopExperimentInput = schema.new({
    id = id.from(_N, "StopExperimentRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StopExperimentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopExperimentOutput = schema.new({
    id = id.from(_N, "StopExperimentResponse"),
    type = "structure",
    members = {
        experiment = schema.new({
            id = id.from(_N, "StopExperimentOutput", "experiment"),
            type = "structure",
            name = "experiment",
            target_id = id.from(_N, "Experiment"),
            target = M.Experiment,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateExperimentTemplateActionInputItem = schema.new({
    id = id.from(_N, "UpdateExperimentTemplateActionInputItem"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateActionInputItem", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateActionInputItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateActionInputItem", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        targets = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateActionInputItem", "targets"),
            type = "map",
            name = "targets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        startAfter = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateActionInputItem", "startAfter"),
            type = "list",
            name = "startAfter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateExperimentTemplateExperimentOptionsInput = schema.new({
    id = id.from(_N, "UpdateExperimentTemplateExperimentOptionsInput"),
    type = "structure",
    members = {
        emptyTargetResolutionMode = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateExperimentOptionsInput", "emptyTargetResolutionMode"),
            type = "string",
            name = "emptyTargetResolutionMode",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateExperimentTemplateReportConfigurationInput = schema.new({
    id = id.from(_N, "UpdateExperimentTemplateReportConfigurationInput"),
    type = "structure",
    members = {
        outputs = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateReportConfigurationInput", "outputs"),
            type = "structure",
            name = "outputs",
            target_id = id.from(_N, "ExperimentTemplateReportConfigurationOutputsInput"),
            target = M.ExperimentTemplateReportConfigurationOutputsInput,
        }),
        dataSources = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateReportConfigurationInput", "dataSources"),
            type = "structure",
            name = "dataSources",
            target_id = id.from(_N, "ExperimentTemplateReportConfigurationDataSourcesInput"),
            target = M.ExperimentTemplateReportConfigurationDataSourcesInput,
        }),
        preExperimentDuration = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateReportConfigurationInput", "preExperimentDuration"),
            type = "string",
            name = "preExperimentDuration",
            target_id = prelude.String.id,
        }),
        postExperimentDuration = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateReportConfigurationInput", "postExperimentDuration"),
            type = "string",
            name = "postExperimentDuration",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateExperimentTemplateLogConfigurationInput = schema.new({
    id = id.from(_N, "UpdateExperimentTemplateLogConfigurationInput"),
    type = "structure",
    members = {
        cloudWatchLogsConfiguration = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateLogConfigurationInput", "cloudWatchLogsConfiguration"),
            type = "structure",
            name = "cloudWatchLogsConfiguration",
            target_id = id.from(_N, "ExperimentTemplateCloudWatchLogsLogConfigurationInput"),
            target = M.ExperimentTemplateCloudWatchLogsLogConfigurationInput,
        }),
        s3Configuration = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateLogConfigurationInput", "s3Configuration"),
            type = "structure",
            name = "s3Configuration",
            target_id = id.from(_N, "ExperimentTemplateS3LogConfigurationInput"),
            target = M.ExperimentTemplateS3LogConfigurationInput,
        }),
        logSchemaVersion = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateLogConfigurationInput", "logSchemaVersion"),
            type = "integer",
            name = "logSchemaVersion",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateExperimentTemplateStopConditionInput = schema.new({
    id = id.from(_N, "UpdateExperimentTemplateStopConditionInput"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateStopConditionInput", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateStopConditionInput", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateExperimentTemplateTargetInput = schema.new({
    id = id.from(_N, "UpdateExperimentTemplateTargetInput"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateTargetInput", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArns = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateTargetInput", "resourceArns"),
            type = "list",
            name = "resourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        resourceTags = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateTargetInput", "resourceTags"),
            type = "map",
            name = "resourceTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        filters = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateTargetInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ExperimentTemplateTargetInputFilter,
        }),
        selectionMode = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateTargetInput", "selectionMode"),
            type = "string",
            name = "selectionMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parameters = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateTargetInput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateExperimentTemplateInput = schema.new({
    id = id.from(_N, "UpdateExperimentTemplateRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        stopConditions = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateInput", "stopConditions"),
            type = "list",
            name = "stopConditions",
            target_id = prelude.Document.id,
            list_member = M.UpdateExperimentTemplateStopConditionInput,
        }),
        targets = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateInput", "targets"),
            type = "map",
            name = "targets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.UpdateExperimentTemplateTargetInput,
        }),
        actions = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateInput", "actions"),
            type = "map",
            name = "actions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.UpdateExperimentTemplateActionInputItem,
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        logConfiguration = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateInput", "logConfiguration"),
            type = "structure",
            name = "logConfiguration",
            target_id = id.from(_N, "UpdateExperimentTemplateLogConfigurationInput"),
            target = M.UpdateExperimentTemplateLogConfigurationInput,
        }),
        experimentOptions = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateInput", "experimentOptions"),
            type = "structure",
            name = "experimentOptions",
            target_id = id.from(_N, "UpdateExperimentTemplateExperimentOptionsInput"),
            target = M.UpdateExperimentTemplateExperimentOptionsInput,
        }),
        experimentReportConfiguration = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateInput", "experimentReportConfiguration"),
            type = "structure",
            name = "experimentReportConfiguration",
            target_id = id.from(_N, "UpdateExperimentTemplateReportConfigurationInput"),
            target = M.UpdateExperimentTemplateReportConfigurationInput,
        }),
    },
})

M.UpdateExperimentTemplateOutput = schema.new({
    id = id.from(_N, "UpdateExperimentTemplateResponse"),
    type = "structure",
    members = {
        experimentTemplate = schema.new({
            id = id.from(_N, "UpdateExperimentTemplateOutput", "experimentTemplate"),
            type = "structure",
            name = "experimentTemplate",
            target_id = id.from(_N, "ExperimentTemplate"),
            target = M.ExperimentTemplate,
        }),
    },
})

M.UpdateSafetyLeverStateInput = schema.new({
    id = id.from(_N, "UpdateSafetyLeverStateInput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "UpdateSafetyLeverStateInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "UpdateSafetyLeverStateInput", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSafetyLeverStateOperationInput = schema.new({
    id = id.from(_N, "UpdateSafetyLeverStateRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateSafetyLeverStateOperationInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        state = schema.new({
            id = id.from(_N, "UpdateSafetyLeverStateOperationInput", "state"),
            type = "structure",
            name = "state",
            target_id = id.from(_N, "UpdateSafetyLeverStateInput"),
            target = M.UpdateSafetyLeverStateInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSafetyLeverStateOutput = schema.new({
    id = id.from(_N, "UpdateSafetyLeverStateResponse"),
    type = "structure",
    members = {
        safetyLever = schema.new({
            id = id.from(_N, "UpdateSafetyLeverStateOutput", "safetyLever"),
            type = "structure",
            name = "safetyLever",
            target_id = id.from(_N, "SafetyLever"),
            target = M.SafetyLever,
        }),
    },
})

M.UpdateTargetAccountConfigurationInput = schema.new({
    id = id.from(_N, "UpdateTargetAccountConfigurationRequest"),
    type = "structure",
    members = {
        experimentTemplateId = schema.new({
            id = id.from(_N, "UpdateTargetAccountConfigurationInput", "experimentTemplateId"),
            type = "string",
            name = "experimentTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accountId = schema.new({
            id = id.from(_N, "UpdateTargetAccountConfigurationInput", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateTargetAccountConfigurationInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateTargetAccountConfigurationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateTargetAccountConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateTargetAccountConfigurationResponse"),
    type = "structure",
    members = {
        targetAccountConfiguration = schema.new({
            id = id.from(_N, "UpdateTargetAccountConfigurationOutput", "targetAccountConfiguration"),
            type = "structure",
            name = "targetAccountConfiguration",
            target_id = id.from(_N, "TargetAccountConfiguration"),
            target = M.TargetAccountConfiguration,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
