local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.cloudwatch"

local M = {}

M.AlarmContributor = schema.new({
    id = id.from(_N, "AlarmContributor"),
    type = "structure",
    members = {
        ContributorId = schema.new({
            id = id.from(_N, "AlarmContributor", "ContributorId"),
            type = "string",
            name = "ContributorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContributorAttributes = schema.new({
            id = id.from(_N, "AlarmContributor", "ContributorAttributes"),
            type = "map",
            name = "ContributorAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StateReason = schema.new({
            id = id.from(_N, "AlarmContributor", "StateReason"),
            type = "string",
            name = "StateReason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StateTransitionedTimestamp = schema.new({
            id = id.from(_N, "AlarmContributor", "StateTransitionedTimestamp"),
            type = "timestamp",
            name = "StateTransitionedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AlarmHistoryItem = schema.new({
    id = id.from(_N, "AlarmHistoryItem"),
    type = "structure",
    members = {
        AlarmName = schema.new({
            id = id.from(_N, "AlarmHistoryItem", "AlarmName"),
            type = "string",
            name = "AlarmName",
            target_id = prelude.String.id,
        }),
        AlarmContributorId = schema.new({
            id = id.from(_N, "AlarmHistoryItem", "AlarmContributorId"),
            type = "string",
            name = "AlarmContributorId",
            target_id = prelude.String.id,
        }),
        AlarmType = schema.new({
            id = id.from(_N, "AlarmHistoryItem", "AlarmType"),
            type = "string",
            name = "AlarmType",
            target_id = prelude.String.id,
        }),
        Timestamp = schema.new({
            id = id.from(_N, "AlarmHistoryItem", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
        HistoryItemType = schema.new({
            id = id.from(_N, "AlarmHistoryItem", "HistoryItemType"),
            type = "string",
            name = "HistoryItemType",
            target_id = prelude.String.id,
        }),
        HistorySummary = schema.new({
            id = id.from(_N, "AlarmHistoryItem", "HistorySummary"),
            type = "string",
            name = "HistorySummary",
            target_id = prelude.String.id,
        }),
        HistoryData = schema.new({
            id = id.from(_N, "AlarmHistoryItem", "HistoryData"),
            type = "string",
            name = "HistoryData",
            target_id = prelude.String.id,
        }),
        AlarmContributorAttributes = schema.new({
            id = id.from(_N, "AlarmHistoryItem", "AlarmContributorAttributes"),
            type = "map",
            name = "AlarmContributorAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.AlarmMuteRuleSummary = schema.new({
    id = id.from(_N, "AlarmMuteRuleSummary"),
    type = "structure",
    members = {
        AlarmMuteRuleArn = schema.new({
            id = id.from(_N, "AlarmMuteRuleSummary", "AlarmMuteRuleArn"),
            type = "string",
            name = "AlarmMuteRuleArn",
            target_id = prelude.String.id,
        }),
        ExpireDate = schema.new({
            id = id.from(_N, "AlarmMuteRuleSummary", "ExpireDate"),
            type = "timestamp",
            name = "ExpireDate",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "AlarmMuteRuleSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        MuteType = schema.new({
            id = id.from(_N, "AlarmMuteRuleSummary", "MuteType"),
            type = "string",
            name = "MuteType",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "AlarmMuteRuleSummary", "LastUpdatedTimestamp"),
            type = "timestamp",
            name = "LastUpdatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AlarmPromQLCriteria = schema.new({
    id = id.from(_N, "AlarmPromQLCriteria"),
    type = "structure",
    members = {
        Query = schema.new({
            id = id.from(_N, "AlarmPromQLCriteria", "Query"),
            type = "string",
            name = "Query",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PendingPeriod = schema.new({
            id = id.from(_N, "AlarmPromQLCriteria", "PendingPeriod"),
            type = "integer",
            name = "PendingPeriod",
            target_id = prelude.Integer.id,
        }),
        RecoveryPeriod = schema.new({
            id = id.from(_N, "AlarmPromQLCriteria", "RecoveryPeriod"),
            type = "integer",
            name = "RecoveryPeriod",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Range = schema.new({
    id = id.from(_N, "Range"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "Range", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "Range", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AnomalyDetectorConfiguration = schema.new({
    id = id.from(_N, "AnomalyDetectorConfiguration"),
    type = "structure",
    members = {
        ExcludedTimeRanges = schema.new({
            id = id.from(_N, "AnomalyDetectorConfiguration", "ExcludedTimeRanges"),
            type = "list",
            name = "ExcludedTimeRanges",
            target_id = prelude.Document.id,
            list_member = M.Range,
        }),
        MetricTimezone = schema.new({
            id = id.from(_N, "AnomalyDetectorConfiguration", "MetricTimezone"),
            type = "string",
            name = "MetricTimezone",
            target_id = prelude.String.id,
        }),
    },
})

M.Dimension = schema.new({
    id = id.from(_N, "Dimension"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Dimension", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Dimension", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetricCharacteristics = schema.new({
    id = id.from(_N, "MetricCharacteristics"),
    type = "structure",
    members = {
        PeriodicSpikes = schema.new({
            id = id.from(_N, "MetricCharacteristics", "PeriodicSpikes"),
            type = "boolean",
            name = "PeriodicSpikes",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.Metric = schema.new({
    id = id.from(_N, "Metric"),
    type = "structure",
    members = {
        Namespace = schema.new({
            id = id.from(_N, "Metric", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "Metric", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "Metric", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
    },
})

M.MetricStat = schema.new({
    id = id.from(_N, "MetricStat"),
    type = "structure",
    members = {
        Metric = schema.new({
            id = id.from(_N, "MetricStat", "Metric"),
            type = "structure",
            name = "Metric",
            target_id = id.from(_N, "Metric"),
            target = M.Metric,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Period = schema.new({
            id = id.from(_N, "MetricStat", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Stat = schema.new({
            id = id.from(_N, "MetricStat", "Stat"),
            type = "string",
            name = "Stat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "MetricStat", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
    },
})

M.MetricDataQuery = schema.new({
    id = id.from(_N, "MetricDataQuery"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "MetricDataQuery", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricStat = schema.new({
            id = id.from(_N, "MetricDataQuery", "MetricStat"),
            type = "structure",
            name = "MetricStat",
            target_id = id.from(_N, "MetricStat"),
            target = M.MetricStat,
        }),
        Expression = schema.new({
            id = id.from(_N, "MetricDataQuery", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
        }),
        Label = schema.new({
            id = id.from(_N, "MetricDataQuery", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
        ReturnData = schema.new({
            id = id.from(_N, "MetricDataQuery", "ReturnData"),
            type = "boolean",
            name = "ReturnData",
            target_id = prelude.Boolean.id,
        }),
        Period = schema.new({
            id = id.from(_N, "MetricDataQuery", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "MetricDataQuery", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.MetricMathAnomalyDetector = schema.new({
    id = id.from(_N, "MetricMathAnomalyDetector"),
    type = "structure",
    members = {
        MetricDataQueries = schema.new({
            id = id.from(_N, "MetricMathAnomalyDetector", "MetricDataQueries"),
            type = "list",
            name = "MetricDataQueries",
            target_id = prelude.Document.id,
            list_member = M.MetricDataQuery,
        }),
    },
})

M.SingleMetricAnomalyDetector = schema.new({
    id = id.from(_N, "SingleMetricAnomalyDetector"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "SingleMetricAnomalyDetector", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "SingleMetricAnomalyDetector", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "SingleMetricAnomalyDetector", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "SingleMetricAnomalyDetector", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        Stat = schema.new({
            id = id.from(_N, "SingleMetricAnomalyDetector", "Stat"),
            type = "string",
            name = "Stat",
            target_id = prelude.String.id,
        }),
    },
})

M.AnomalyDetector = schema.new({
    id = id.from(_N, "AnomalyDetector"),
    type = "structure",
    members = {
        Namespace = schema.new({
            id = id.from(_N, "AnomalyDetector", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "AnomalyDetector", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "AnomalyDetector", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        Stat = schema.new({
            id = id.from(_N, "AnomalyDetector", "Stat"),
            type = "string",
            name = "Stat",
            target_id = prelude.String.id,
        }),
        Configuration = schema.new({
            id = id.from(_N, "AnomalyDetector", "Configuration"),
            type = "structure",
            name = "Configuration",
            target_id = id.from(_N, "AnomalyDetectorConfiguration"),
            target = M.AnomalyDetectorConfiguration,
        }),
        StateValue = schema.new({
            id = id.from(_N, "AnomalyDetector", "StateValue"),
            type = "string",
            name = "StateValue",
            target_id = prelude.String.id,
        }),
        MetricCharacteristics = schema.new({
            id = id.from(_N, "AnomalyDetector", "MetricCharacteristics"),
            type = "structure",
            name = "MetricCharacteristics",
            target_id = id.from(_N, "MetricCharacteristics"),
            target = M.MetricCharacteristics,
        }),
        SingleMetricAnomalyDetector = schema.new({
            id = id.from(_N, "AnomalyDetector", "SingleMetricAnomalyDetector"),
            type = "structure",
            name = "SingleMetricAnomalyDetector",
            target_id = id.from(_N, "SingleMetricAnomalyDetector"),
            target = M.SingleMetricAnomalyDetector,
        }),
        MetricMathAnomalyDetector = schema.new({
            id = id.from(_N, "AnomalyDetector", "MetricMathAnomalyDetector"),
            type = "structure",
            name = "MetricMathAnomalyDetector",
            target_id = id.from(_N, "MetricMathAnomalyDetector"),
            target = M.MetricMathAnomalyDetector,
        }),
    },
})

M.PartialFailure = schema.new({
    id = id.from(_N, "PartialFailure"),
    type = "structure",
    members = {
        FailureResource = schema.new({
            id = id.from(_N, "PartialFailure", "FailureResource"),
            type = "string",
            name = "FailureResource",
            target_id = prelude.String.id,
        }),
        ExceptionType = schema.new({
            id = id.from(_N, "PartialFailure", "ExceptionType"),
            type = "string",
            name = "ExceptionType",
            target_id = prelude.String.id,
        }),
        FailureCode = schema.new({
            id = id.from(_N, "PartialFailure", "FailureCode"),
            type = "string",
            name = "FailureCode",
            target_id = prelude.String.id,
        }),
        FailureDescription = schema.new({
            id = id.from(_N, "PartialFailure", "FailureDescription"),
            type = "string",
            name = "FailureDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.CompositeAlarm = schema.new({
    id = id.from(_N, "CompositeAlarm"),
    type = "structure",
    members = {
        ActionsEnabled = schema.new({
            id = id.from(_N, "CompositeAlarm", "ActionsEnabled"),
            type = "boolean",
            name = "ActionsEnabled",
            target_id = prelude.Boolean.id,
        }),
        AlarmActions = schema.new({
            id = id.from(_N, "CompositeAlarm", "AlarmActions"),
            type = "list",
            name = "AlarmActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AlarmArn = schema.new({
            id = id.from(_N, "CompositeAlarm", "AlarmArn"),
            type = "string",
            name = "AlarmArn",
            target_id = prelude.String.id,
        }),
        AlarmConfigurationUpdatedTimestamp = schema.new({
            id = id.from(_N, "CompositeAlarm", "AlarmConfigurationUpdatedTimestamp"),
            type = "timestamp",
            name = "AlarmConfigurationUpdatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        AlarmDescription = schema.new({
            id = id.from(_N, "CompositeAlarm", "AlarmDescription"),
            type = "string",
            name = "AlarmDescription",
            target_id = prelude.String.id,
        }),
        AlarmName = schema.new({
            id = id.from(_N, "CompositeAlarm", "AlarmName"),
            type = "string",
            name = "AlarmName",
            target_id = prelude.String.id,
        }),
        AlarmRule = schema.new({
            id = id.from(_N, "CompositeAlarm", "AlarmRule"),
            type = "string",
            name = "AlarmRule",
            target_id = prelude.String.id,
        }),
        InsufficientDataActions = schema.new({
            id = id.from(_N, "CompositeAlarm", "InsufficientDataActions"),
            type = "list",
            name = "InsufficientDataActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OKActions = schema.new({
            id = id.from(_N, "CompositeAlarm", "OKActions"),
            type = "list",
            name = "OKActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StateReason = schema.new({
            id = id.from(_N, "CompositeAlarm", "StateReason"),
            type = "string",
            name = "StateReason",
            target_id = prelude.String.id,
        }),
        StateReasonData = schema.new({
            id = id.from(_N, "CompositeAlarm", "StateReasonData"),
            type = "string",
            name = "StateReasonData",
            target_id = prelude.String.id,
        }),
        StateUpdatedTimestamp = schema.new({
            id = id.from(_N, "CompositeAlarm", "StateUpdatedTimestamp"),
            type = "timestamp",
            name = "StateUpdatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        StateValue = schema.new({
            id = id.from(_N, "CompositeAlarm", "StateValue"),
            type = "string",
            name = "StateValue",
            target_id = prelude.String.id,
        }),
        StateTransitionedTimestamp = schema.new({
            id = id.from(_N, "CompositeAlarm", "StateTransitionedTimestamp"),
            type = "timestamp",
            name = "StateTransitionedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ActionsSuppressedBy = schema.new({
            id = id.from(_N, "CompositeAlarm", "ActionsSuppressedBy"),
            type = "string",
            name = "ActionsSuppressedBy",
            target_id = prelude.String.id,
        }),
        ActionsSuppressedReason = schema.new({
            id = id.from(_N, "CompositeAlarm", "ActionsSuppressedReason"),
            type = "string",
            name = "ActionsSuppressedReason",
            target_id = prelude.String.id,
        }),
        ActionsSuppressor = schema.new({
            id = id.from(_N, "CompositeAlarm", "ActionsSuppressor"),
            type = "string",
            name = "ActionsSuppressor",
            target_id = prelude.String.id,
        }),
        ActionsSuppressorWaitPeriod = schema.new({
            id = id.from(_N, "CompositeAlarm", "ActionsSuppressorWaitPeriod"),
            type = "integer",
            name = "ActionsSuppressorWaitPeriod",
            target_id = prelude.Integer.id,
        }),
        ActionsSuppressorExtensionPeriod = schema.new({
            id = id.from(_N, "CompositeAlarm", "ActionsSuppressorExtensionPeriod"),
            type = "integer",
            name = "ActionsSuppressorExtensionPeriod",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ConcurrentModificationException = schema.new({
    id = id.from(_N, "ConcurrentModificationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConcurrentModificationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DashboardEntry = schema.new({
    id = id.from(_N, "DashboardEntry"),
    type = "structure",
    members = {
        DashboardName = schema.new({
            id = id.from(_N, "DashboardEntry", "DashboardName"),
            type = "string",
            name = "DashboardName",
            target_id = prelude.String.id,
        }),
        DashboardArn = schema.new({
            id = id.from(_N, "DashboardEntry", "DashboardArn"),
            type = "string",
            name = "DashboardArn",
            target_id = prelude.String.id,
        }),
        LastModified = schema.new({
            id = id.from(_N, "DashboardEntry", "LastModified"),
            type = "timestamp",
            name = "LastModified",
            target_id = prelude.Timestamp.id,
        }),
        Size = schema.new({
            id = id.from(_N, "DashboardEntry", "Size"),
            type = "long",
            name = "Size",
            target_id = prelude.Long.id,
        }),
    },
})

M.DashboardValidationMessage = schema.new({
    id = id.from(_N, "DashboardValidationMessage"),
    type = "structure",
    members = {
        DataPath = schema.new({
            id = id.from(_N, "DashboardValidationMessage", "DataPath"),
            type = "string",
            name = "DataPath",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "DashboardValidationMessage", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DashboardInvalidInputError = schema.new({
    id = id.from(_N, "DashboardInvalidInputError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DashboardInvalidInputError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        dashboardValidationMessages = schema.new({
            id = id.from(_N, "DashboardInvalidInputError", "dashboardValidationMessages"),
            type = "list",
            name = "dashboardValidationMessages",
            target_id = prelude.Document.id,
            list_member = M.DashboardValidationMessage,
        }),
    },
})

M.DashboardNotFoundError = schema.new({
    id = id.from(_N, "DashboardNotFoundError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DashboardNotFoundError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Datapoint = schema.new({
    id = id.from(_N, "Datapoint"),
    type = "structure",
    members = {
        Timestamp = schema.new({
            id = id.from(_N, "Datapoint", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
        SampleCount = schema.new({
            id = id.from(_N, "Datapoint", "SampleCount"),
            type = "double",
            name = "SampleCount",
            target_id = prelude.Double.id,
        }),
        Average = schema.new({
            id = id.from(_N, "Datapoint", "Average"),
            type = "double",
            name = "Average",
            target_id = prelude.Double.id,
        }),
        Sum = schema.new({
            id = id.from(_N, "Datapoint", "Sum"),
            type = "double",
            name = "Sum",
            target_id = prelude.Double.id,
        }),
        Minimum = schema.new({
            id = id.from(_N, "Datapoint", "Minimum"),
            type = "double",
            name = "Minimum",
            target_id = prelude.Double.id,
        }),
        Maximum = schema.new({
            id = id.from(_N, "Datapoint", "Maximum"),
            type = "double",
            name = "Maximum",
            target_id = prelude.Double.id,
        }),
        Unit = schema.new({
            id = id.from(_N, "Datapoint", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        ExtendedStatistics = schema.new({
            id = id.from(_N, "Datapoint", "ExtendedStatistics"),
            type = "map",
            name = "ExtendedStatistics",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Double,
        }),
    },
})

M.DeleteAlarmMuteRuleInput = schema.new({
    id = id.from(_N, "DeleteAlarmMuteRuleInput"),
    type = "structure",
    members = {
        AlarmMuteRuleName = schema.new({
            id = id.from(_N, "DeleteAlarmMuteRuleInput", "AlarmMuteRuleName"),
            type = "string",
            name = "AlarmMuteRuleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAlarmMuteRuleOutput = schema.new({
    id = id.from(_N, "DeleteAlarmMuteRuleOutput"),
    type = "structure",
})

M.DeleteAlarmsInput = schema.new({
    id = id.from(_N, "DeleteAlarmsInput"),
    type = "structure",
    members = {
        AlarmNames = schema.new({
            id = id.from(_N, "DeleteAlarmsInput", "AlarmNames"),
            type = "list",
            name = "AlarmNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAlarmsOutput = schema.new({
    id = id.from(_N, "DeleteAlarmsOutput"),
    type = "structure",
})

M.ResourceNotFound = schema.new({
    id = id.from(_N, "ResourceNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFound", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAnomalyDetectorInput = schema.new({
    id = id.from(_N, "DeleteAnomalyDetectorInput"),
    type = "structure",
    members = {
        Namespace = schema.new({
            id = id.from(_N, "DeleteAnomalyDetectorInput", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "DeleteAnomalyDetectorInput", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "DeleteAnomalyDetectorInput", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        Stat = schema.new({
            id = id.from(_N, "DeleteAnomalyDetectorInput", "Stat"),
            type = "string",
            name = "Stat",
            target_id = prelude.String.id,
        }),
        SingleMetricAnomalyDetector = schema.new({
            id = id.from(_N, "DeleteAnomalyDetectorInput", "SingleMetricAnomalyDetector"),
            type = "structure",
            name = "SingleMetricAnomalyDetector",
            target_id = id.from(_N, "SingleMetricAnomalyDetector"),
            target = M.SingleMetricAnomalyDetector,
        }),
        MetricMathAnomalyDetector = schema.new({
            id = id.from(_N, "DeleteAnomalyDetectorInput", "MetricMathAnomalyDetector"),
            type = "structure",
            name = "MetricMathAnomalyDetector",
            target_id = id.from(_N, "MetricMathAnomalyDetector"),
            target = M.MetricMathAnomalyDetector,
        }),
    },
})

M.DeleteAnomalyDetectorOutput = schema.new({
    id = id.from(_N, "DeleteAnomalyDetectorOutput"),
    type = "structure",
})

M.InternalServiceFault = schema.new({
    id = id.from(_N, "InternalServiceFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServiceFault", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidParameterCombinationException = schema.new({
    id = id.from(_N, "InvalidParameterCombinationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidParameterCombinationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidParameterValueException = schema.new({
    id = id.from(_N, "InvalidParameterValueException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidParameterValueException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MissingRequiredParameterException = schema.new({
    id = id.from(_N, "MissingRequiredParameterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MissingRequiredParameterException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDashboardsInput = schema.new({
    id = id.from(_N, "DeleteDashboardsInput"),
    type = "structure",
    members = {
        DashboardNames = schema.new({
            id = id.from(_N, "DeleteDashboardsInput", "DashboardNames"),
            type = "list",
            name = "DashboardNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDashboardsOutput = schema.new({
    id = id.from(_N, "DeleteDashboardsOutput"),
    type = "structure",
})

M.DeleteInsightRulesInput = schema.new({
    id = id.from(_N, "DeleteInsightRulesInput"),
    type = "structure",
    members = {
        RuleNames = schema.new({
            id = id.from(_N, "DeleteInsightRulesInput", "RuleNames"),
            type = "list",
            name = "RuleNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteInsightRulesOutput = schema.new({
    id = id.from(_N, "DeleteInsightRulesOutput"),
    type = "structure",
    members = {
        Failures = schema.new({
            id = id.from(_N, "DeleteInsightRulesOutput", "Failures"),
            type = "list",
            name = "Failures",
            target_id = prelude.Document.id,
            list_member = M.PartialFailure,
        }),
    },
})

M.DeleteMetricStreamInput = schema.new({
    id = id.from(_N, "DeleteMetricStreamInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteMetricStreamInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMetricStreamOutput = schema.new({
    id = id.from(_N, "DeleteMetricStreamOutput"),
    type = "structure",
})

M.DescribeAlarmContributorsInput = schema.new({
    id = id.from(_N, "DescribeAlarmContributorsInput"),
    type = "structure",
    members = {
        AlarmName = schema.new({
            id = id.from(_N, "DescribeAlarmContributorsInput", "AlarmName"),
            type = "string",
            name = "AlarmName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAlarmContributorsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAlarmContributorsOutput = schema.new({
    id = id.from(_N, "DescribeAlarmContributorsOutput"),
    type = "structure",
    members = {
        AlarmContributors = schema.new({
            id = id.from(_N, "DescribeAlarmContributorsOutput", "AlarmContributors"),
            type = "list",
            name = "AlarmContributors",
            target_id = prelude.Document.id,
            list_member = M.AlarmContributor,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAlarmContributorsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidNextToken = schema.new({
    id = id.from(_N, "InvalidNextToken"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidNextToken", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAlarmHistoryInput = schema.new({
    id = id.from(_N, "DescribeAlarmHistoryInput"),
    type = "structure",
    members = {
        AlarmName = schema.new({
            id = id.from(_N, "DescribeAlarmHistoryInput", "AlarmName"),
            type = "string",
            name = "AlarmName",
            target_id = prelude.String.id,
        }),
        AlarmContributorId = schema.new({
            id = id.from(_N, "DescribeAlarmHistoryInput", "AlarmContributorId"),
            type = "string",
            name = "AlarmContributorId",
            target_id = prelude.String.id,
        }),
        AlarmTypes = schema.new({
            id = id.from(_N, "DescribeAlarmHistoryInput", "AlarmTypes"),
            type = "list",
            name = "AlarmTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        HistoryItemType = schema.new({
            id = id.from(_N, "DescribeAlarmHistoryInput", "HistoryItemType"),
            type = "string",
            name = "HistoryItemType",
            target_id = prelude.String.id,
        }),
        StartDate = schema.new({
            id = id.from(_N, "DescribeAlarmHistoryInput", "StartDate"),
            type = "timestamp",
            name = "StartDate",
            target_id = prelude.Timestamp.id,
        }),
        EndDate = schema.new({
            id = id.from(_N, "DescribeAlarmHistoryInput", "EndDate"),
            type = "timestamp",
            name = "EndDate",
            target_id = prelude.Timestamp.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeAlarmHistoryInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAlarmHistoryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ScanBy = schema.new({
            id = id.from(_N, "DescribeAlarmHistoryInput", "ScanBy"),
            type = "string",
            name = "ScanBy",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAlarmHistoryOutput = schema.new({
    id = id.from(_N, "DescribeAlarmHistoryOutput"),
    type = "structure",
    members = {
        AlarmHistoryItems = schema.new({
            id = id.from(_N, "DescribeAlarmHistoryOutput", "AlarmHistoryItems"),
            type = "list",
            name = "AlarmHistoryItems",
            target_id = prelude.Document.id,
            list_member = M.AlarmHistoryItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAlarmHistoryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAlarmsInput = schema.new({
    id = id.from(_N, "DescribeAlarmsInput"),
    type = "structure",
    members = {
        AlarmNames = schema.new({
            id = id.from(_N, "DescribeAlarmsInput", "AlarmNames"),
            type = "list",
            name = "AlarmNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AlarmNamePrefix = schema.new({
            id = id.from(_N, "DescribeAlarmsInput", "AlarmNamePrefix"),
            type = "string",
            name = "AlarmNamePrefix",
            target_id = prelude.String.id,
        }),
        AlarmTypes = schema.new({
            id = id.from(_N, "DescribeAlarmsInput", "AlarmTypes"),
            type = "list",
            name = "AlarmTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ChildrenOfAlarmName = schema.new({
            id = id.from(_N, "DescribeAlarmsInput", "ChildrenOfAlarmName"),
            type = "string",
            name = "ChildrenOfAlarmName",
            target_id = prelude.String.id,
        }),
        ParentsOfAlarmName = schema.new({
            id = id.from(_N, "DescribeAlarmsInput", "ParentsOfAlarmName"),
            type = "string",
            name = "ParentsOfAlarmName",
            target_id = prelude.String.id,
        }),
        StateValue = schema.new({
            id = id.from(_N, "DescribeAlarmsInput", "StateValue"),
            type = "string",
            name = "StateValue",
            target_id = prelude.String.id,
        }),
        ActionPrefix = schema.new({
            id = id.from(_N, "DescribeAlarmsInput", "ActionPrefix"),
            type = "string",
            name = "ActionPrefix",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeAlarmsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAlarmsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.EvaluationCriteria = schema.new({
    id = id.from(_N, "EvaluationCriteria"),
    type = "union",
    members = {
        PromQLCriteria = schema.new({
            id = id.from(_N, "EvaluationCriteria", "PromQLCriteria"),
            type = "structure",
            name = "PromQLCriteria",
            target_id = id.from(_N, "AlarmPromQLCriteria"),
            target = M.AlarmPromQLCriteria,
        }),
    },
})

M.MetricAlarm = schema.new({
    id = id.from(_N, "MetricAlarm"),
    type = "structure",
    members = {
        AlarmName = schema.new({
            id = id.from(_N, "MetricAlarm", "AlarmName"),
            type = "string",
            name = "AlarmName",
            target_id = prelude.String.id,
        }),
        AlarmArn = schema.new({
            id = id.from(_N, "MetricAlarm", "AlarmArn"),
            type = "string",
            name = "AlarmArn",
            target_id = prelude.String.id,
        }),
        AlarmDescription = schema.new({
            id = id.from(_N, "MetricAlarm", "AlarmDescription"),
            type = "string",
            name = "AlarmDescription",
            target_id = prelude.String.id,
        }),
        AlarmConfigurationUpdatedTimestamp = schema.new({
            id = id.from(_N, "MetricAlarm", "AlarmConfigurationUpdatedTimestamp"),
            type = "timestamp",
            name = "AlarmConfigurationUpdatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ActionsEnabled = schema.new({
            id = id.from(_N, "MetricAlarm", "ActionsEnabled"),
            type = "boolean",
            name = "ActionsEnabled",
            target_id = prelude.Boolean.id,
        }),
        OKActions = schema.new({
            id = id.from(_N, "MetricAlarm", "OKActions"),
            type = "list",
            name = "OKActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AlarmActions = schema.new({
            id = id.from(_N, "MetricAlarm", "AlarmActions"),
            type = "list",
            name = "AlarmActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InsufficientDataActions = schema.new({
            id = id.from(_N, "MetricAlarm", "InsufficientDataActions"),
            type = "list",
            name = "InsufficientDataActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StateValue = schema.new({
            id = id.from(_N, "MetricAlarm", "StateValue"),
            type = "string",
            name = "StateValue",
            target_id = prelude.String.id,
        }),
        StateReason = schema.new({
            id = id.from(_N, "MetricAlarm", "StateReason"),
            type = "string",
            name = "StateReason",
            target_id = prelude.String.id,
        }),
        StateReasonData = schema.new({
            id = id.from(_N, "MetricAlarm", "StateReasonData"),
            type = "string",
            name = "StateReasonData",
            target_id = prelude.String.id,
        }),
        StateUpdatedTimestamp = schema.new({
            id = id.from(_N, "MetricAlarm", "StateUpdatedTimestamp"),
            type = "timestamp",
            name = "StateUpdatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "MetricAlarm", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "MetricAlarm", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        Statistic = schema.new({
            id = id.from(_N, "MetricAlarm", "Statistic"),
            type = "string",
            name = "Statistic",
            target_id = prelude.String.id,
        }),
        ExtendedStatistic = schema.new({
            id = id.from(_N, "MetricAlarm", "ExtendedStatistic"),
            type = "string",
            name = "ExtendedStatistic",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "MetricAlarm", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        Period = schema.new({
            id = id.from(_N, "MetricAlarm", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
        }),
        Unit = schema.new({
            id = id.from(_N, "MetricAlarm", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        EvaluationPeriods = schema.new({
            id = id.from(_N, "MetricAlarm", "EvaluationPeriods"),
            type = "integer",
            name = "EvaluationPeriods",
            target_id = prelude.Integer.id,
        }),
        DatapointsToAlarm = schema.new({
            id = id.from(_N, "MetricAlarm", "DatapointsToAlarm"),
            type = "integer",
            name = "DatapointsToAlarm",
            target_id = prelude.Integer.id,
        }),
        Threshold = schema.new({
            id = id.from(_N, "MetricAlarm", "Threshold"),
            type = "double",
            name = "Threshold",
            target_id = prelude.Double.id,
        }),
        ComparisonOperator = schema.new({
            id = id.from(_N, "MetricAlarm", "ComparisonOperator"),
            type = "string",
            name = "ComparisonOperator",
            target_id = prelude.String.id,
        }),
        TreatMissingData = schema.new({
            id = id.from(_N, "MetricAlarm", "TreatMissingData"),
            type = "string",
            name = "TreatMissingData",
            target_id = prelude.String.id,
        }),
        EvaluateLowSampleCountPercentile = schema.new({
            id = id.from(_N, "MetricAlarm", "EvaluateLowSampleCountPercentile"),
            type = "string",
            name = "EvaluateLowSampleCountPercentile",
            target_id = prelude.String.id,
        }),
        Metrics = schema.new({
            id = id.from(_N, "MetricAlarm", "Metrics"),
            type = "list",
            name = "Metrics",
            target_id = prelude.Document.id,
            list_member = M.MetricDataQuery,
        }),
        ThresholdMetricId = schema.new({
            id = id.from(_N, "MetricAlarm", "ThresholdMetricId"),
            type = "string",
            name = "ThresholdMetricId",
            target_id = prelude.String.id,
        }),
        EvaluationState = schema.new({
            id = id.from(_N, "MetricAlarm", "EvaluationState"),
            type = "string",
            name = "EvaluationState",
            target_id = prelude.String.id,
        }),
        StateTransitionedTimestamp = schema.new({
            id = id.from(_N, "MetricAlarm", "StateTransitionedTimestamp"),
            type = "timestamp",
            name = "StateTransitionedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        EvaluationCriteria = schema.new({
            id = id.from(_N, "MetricAlarm", "EvaluationCriteria"),
            type = "union",
            name = "EvaluationCriteria",
            target_id = id.from(_N, "EvaluationCriteria"),
            target = M.EvaluationCriteria,
        }),
        EvaluationInterval = schema.new({
            id = id.from(_N, "MetricAlarm", "EvaluationInterval"),
            type = "integer",
            name = "EvaluationInterval",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeAlarmsOutput = schema.new({
    id = id.from(_N, "DescribeAlarmsOutput"),
    type = "structure",
    members = {
        CompositeAlarms = schema.new({
            id = id.from(_N, "DescribeAlarmsOutput", "CompositeAlarms"),
            type = "list",
            name = "CompositeAlarms",
            target_id = prelude.Document.id,
            list_member = M.CompositeAlarm,
        }),
        MetricAlarms = schema.new({
            id = id.from(_N, "DescribeAlarmsOutput", "MetricAlarms"),
            type = "list",
            name = "MetricAlarms",
            target_id = prelude.Document.id,
            list_member = M.MetricAlarm,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAlarmsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAlarmsForMetricInput = schema.new({
    id = id.from(_N, "DescribeAlarmsForMetricInput"),
    type = "structure",
    members = {
        MetricName = schema.new({
            id = id.from(_N, "DescribeAlarmsForMetricInput", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Namespace = schema.new({
            id = id.from(_N, "DescribeAlarmsForMetricInput", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Statistic = schema.new({
            id = id.from(_N, "DescribeAlarmsForMetricInput", "Statistic"),
            type = "string",
            name = "Statistic",
            target_id = prelude.String.id,
        }),
        ExtendedStatistic = schema.new({
            id = id.from(_N, "DescribeAlarmsForMetricInput", "ExtendedStatistic"),
            type = "string",
            name = "ExtendedStatistic",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "DescribeAlarmsForMetricInput", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        Period = schema.new({
            id = id.from(_N, "DescribeAlarmsForMetricInput", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
        }),
        Unit = schema.new({
            id = id.from(_N, "DescribeAlarmsForMetricInput", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAlarmsForMetricOutput = schema.new({
    id = id.from(_N, "DescribeAlarmsForMetricOutput"),
    type = "structure",
    members = {
        MetricAlarms = schema.new({
            id = id.from(_N, "DescribeAlarmsForMetricOutput", "MetricAlarms"),
            type = "list",
            name = "MetricAlarms",
            target_id = prelude.Document.id,
            list_member = M.MetricAlarm,
        }),
    },
})

M.DescribeAnomalyDetectorsInput = schema.new({
    id = id.from(_N, "DescribeAnomalyDetectorsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeAnomalyDetectorsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeAnomalyDetectorsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "DescribeAnomalyDetectorsInput", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "DescribeAnomalyDetectorsInput", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "DescribeAnomalyDetectorsInput", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        AnomalyDetectorTypes = schema.new({
            id = id.from(_N, "DescribeAnomalyDetectorsInput", "AnomalyDetectorTypes"),
            type = "list",
            name = "AnomalyDetectorTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeAnomalyDetectorsOutput = schema.new({
    id = id.from(_N, "DescribeAnomalyDetectorsOutput"),
    type = "structure",
    members = {
        AnomalyDetectors = schema.new({
            id = id.from(_N, "DescribeAnomalyDetectorsOutput", "AnomalyDetectors"),
            type = "list",
            name = "AnomalyDetectors",
            target_id = prelude.Document.id,
            list_member = M.AnomalyDetector,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAnomalyDetectorsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInsightRulesInput = schema.new({
    id = id.from(_N, "DescribeInsightRulesInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeInsightRulesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeInsightRulesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InsightRule = schema.new({
    id = id.from(_N, "InsightRule"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "InsightRule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        State = schema.new({
            id = id.from(_N, "InsightRule", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Schema = schema.new({
            id = id.from(_N, "InsightRule", "Schema"),
            type = "string",
            name = "Schema",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Definition = schema.new({
            id = id.from(_N, "InsightRule", "Definition"),
            type = "string",
            name = "Definition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ManagedRule = schema.new({
            id = id.from(_N, "InsightRule", "ManagedRule"),
            type = "boolean",
            name = "ManagedRule",
            target_id = prelude.Boolean.id,
        }),
        ApplyOnTransformedLogs = schema.new({
            id = id.from(_N, "InsightRule", "ApplyOnTransformedLogs"),
            type = "boolean",
            name = "ApplyOnTransformedLogs",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeInsightRulesOutput = schema.new({
    id = id.from(_N, "DescribeInsightRulesOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeInsightRulesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        InsightRules = schema.new({
            id = id.from(_N, "DescribeInsightRulesOutput", "InsightRules"),
            type = "list",
            name = "InsightRules",
            target_id = prelude.Document.id,
            list_member = M.InsightRule,
        }),
    },
})

M.DimensionFilter = schema.new({
    id = id.from(_N, "DimensionFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DimensionFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "DimensionFilter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableAlarmActionsInput = schema.new({
    id = id.from(_N, "DisableAlarmActionsInput"),
    type = "structure",
    members = {
        AlarmNames = schema.new({
            id = id.from(_N, "DisableAlarmActionsInput", "AlarmNames"),
            type = "list",
            name = "AlarmNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableAlarmActionsOutput = schema.new({
    id = id.from(_N, "DisableAlarmActionsOutput"),
    type = "structure",
})

M.DisableInsightRulesInput = schema.new({
    id = id.from(_N, "DisableInsightRulesInput"),
    type = "structure",
    members = {
        RuleNames = schema.new({
            id = id.from(_N, "DisableInsightRulesInput", "RuleNames"),
            type = "list",
            name = "RuleNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableInsightRulesOutput = schema.new({
    id = id.from(_N, "DisableInsightRulesOutput"),
    type = "structure",
    members = {
        Failures = schema.new({
            id = id.from(_N, "DisableInsightRulesOutput", "Failures"),
            type = "list",
            name = "Failures",
            target_id = prelude.Document.id,
            list_member = M.PartialFailure,
        }),
    },
})

M.EnableAlarmActionsInput = schema.new({
    id = id.from(_N, "EnableAlarmActionsInput"),
    type = "structure",
    members = {
        AlarmNames = schema.new({
            id = id.from(_N, "EnableAlarmActionsInput", "AlarmNames"),
            type = "list",
            name = "AlarmNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableAlarmActionsOutput = schema.new({
    id = id.from(_N, "EnableAlarmActionsOutput"),
    type = "structure",
})

M.EnableInsightRulesInput = schema.new({
    id = id.from(_N, "EnableInsightRulesInput"),
    type = "structure",
    members = {
        RuleNames = schema.new({
            id = id.from(_N, "EnableInsightRulesInput", "RuleNames"),
            type = "list",
            name = "RuleNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableInsightRulesOutput = schema.new({
    id = id.from(_N, "EnableInsightRulesOutput"),
    type = "structure",
    members = {
        Failures = schema.new({
            id = id.from(_N, "EnableInsightRulesOutput", "Failures"),
            type = "list",
            name = "Failures",
            target_id = prelude.Document.id,
            list_member = M.PartialFailure,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Entity = schema.new({
    id = id.from(_N, "Entity"),
    type = "structure",
    members = {
        KeyAttributes = schema.new({
            id = id.from(_N, "Entity", "KeyAttributes"),
            type = "map",
            name = "KeyAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Attributes = schema.new({
            id = id.from(_N, "Entity", "Attributes"),
            type = "map",
            name = "Attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StatisticSet = schema.new({
    id = id.from(_N, "StatisticSet"),
    type = "structure",
    members = {
        SampleCount = schema.new({
            id = id.from(_N, "StatisticSet", "SampleCount"),
            type = "double",
            name = "SampleCount",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sum = schema.new({
            id = id.from(_N, "StatisticSet", "Sum"),
            type = "double",
            name = "Sum",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Minimum = schema.new({
            id = id.from(_N, "StatisticSet", "Minimum"),
            type = "double",
            name = "Minimum",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Maximum = schema.new({
            id = id.from(_N, "StatisticSet", "Maximum"),
            type = "double",
            name = "Maximum",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetricDatum = schema.new({
    id = id.from(_N, "MetricDatum"),
    type = "structure",
    members = {
        MetricName = schema.new({
            id = id.from(_N, "MetricDatum", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Dimensions = schema.new({
            id = id.from(_N, "MetricDatum", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        Timestamp = schema.new({
            id = id.from(_N, "MetricDatum", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
        Value = schema.new({
            id = id.from(_N, "MetricDatum", "Value"),
            type = "double",
            name = "Value",
            target_id = prelude.Double.id,
        }),
        StatisticValues = schema.new({
            id = id.from(_N, "MetricDatum", "StatisticValues"),
            type = "structure",
            name = "StatisticValues",
            target_id = id.from(_N, "StatisticSet"),
            target = M.StatisticSet,
        }),
        Values = schema.new({
            id = id.from(_N, "MetricDatum", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        Counts = schema.new({
            id = id.from(_N, "MetricDatum", "Counts"),
            type = "list",
            name = "Counts",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        Unit = schema.new({
            id = id.from(_N, "MetricDatum", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        StorageResolution = schema.new({
            id = id.from(_N, "MetricDatum", "StorageResolution"),
            type = "integer",
            name = "StorageResolution",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EntityMetricData = schema.new({
    id = id.from(_N, "EntityMetricData"),
    type = "structure",
    members = {
        Entity = schema.new({
            id = id.from(_N, "EntityMetricData", "Entity"),
            type = "structure",
            name = "Entity",
            target_id = id.from(_N, "Entity"),
            target = M.Entity,
        }),
        MetricData = schema.new({
            id = id.from(_N, "EntityMetricData", "MetricData"),
            type = "list",
            name = "MetricData",
            target_id = prelude.Document.id,
            list_member = M.MetricDatum,
        }),
    },
})

M.GetAlarmMuteRuleInput = schema.new({
    id = id.from(_N, "GetAlarmMuteRuleInput"),
    type = "structure",
    members = {
        AlarmMuteRuleName = schema.new({
            id = id.from(_N, "GetAlarmMuteRuleInput", "AlarmMuteRuleName"),
            type = "string",
            name = "AlarmMuteRuleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MuteTargets = schema.new({
    id = id.from(_N, "MuteTargets"),
    type = "structure",
    members = {
        AlarmNames = schema.new({
            id = id.from(_N, "MuteTargets", "AlarmNames"),
            type = "list",
            name = "AlarmNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Schedule = schema.new({
    id = id.from(_N, "Schedule"),
    type = "structure",
    members = {
        Expression = schema.new({
            id = id.from(_N, "Schedule", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "Schedule", "Duration"),
            type = "string",
            name = "Duration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Timezone = schema.new({
            id = id.from(_N, "Schedule", "Timezone"),
            type = "string",
            name = "Timezone",
            target_id = prelude.String.id,
        }),
    },
})

M.Rule = schema.new({
    id = id.from(_N, "Rule"),
    type = "structure",
    members = {
        Schedule = schema.new({
            id = id.from(_N, "Rule", "Schedule"),
            type = "structure",
            name = "Schedule",
            target_id = id.from(_N, "Schedule"),
            target = M.Schedule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAlarmMuteRuleOutput = schema.new({
    id = id.from(_N, "GetAlarmMuteRuleOutput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetAlarmMuteRuleOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        AlarmMuteRuleArn = schema.new({
            id = id.from(_N, "GetAlarmMuteRuleOutput", "AlarmMuteRuleArn"),
            type = "string",
            name = "AlarmMuteRuleArn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetAlarmMuteRuleOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Rule = schema.new({
            id = id.from(_N, "GetAlarmMuteRuleOutput", "Rule"),
            type = "structure",
            name = "Rule",
            target_id = id.from(_N, "Rule"),
            target = M.Rule,
        }),
        MuteTargets = schema.new({
            id = id.from(_N, "GetAlarmMuteRuleOutput", "MuteTargets"),
            type = "structure",
            name = "MuteTargets",
            target_id = id.from(_N, "MuteTargets"),
            target = M.MuteTargets,
        }),
        StartDate = schema.new({
            id = id.from(_N, "GetAlarmMuteRuleOutput", "StartDate"),
            type = "timestamp",
            name = "StartDate",
            target_id = prelude.Timestamp.id,
        }),
        ExpireDate = schema.new({
            id = id.from(_N, "GetAlarmMuteRuleOutput", "ExpireDate"),
            type = "timestamp",
            name = "ExpireDate",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetAlarmMuteRuleOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "GetAlarmMuteRuleOutput", "LastUpdatedTimestamp"),
            type = "timestamp",
            name = "LastUpdatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        MuteType = schema.new({
            id = id.from(_N, "GetAlarmMuteRuleOutput", "MuteType"),
            type = "string",
            name = "MuteType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDashboardInput = schema.new({
    id = id.from(_N, "GetDashboardInput"),
    type = "structure",
    members = {
        DashboardName = schema.new({
            id = id.from(_N, "GetDashboardInput", "DashboardName"),
            type = "string",
            name = "DashboardName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDashboardOutput = schema.new({
    id = id.from(_N, "GetDashboardOutput"),
    type = "structure",
    members = {
        DashboardArn = schema.new({
            id = id.from(_N, "GetDashboardOutput", "DashboardArn"),
            type = "string",
            name = "DashboardArn",
            target_id = prelude.String.id,
        }),
        DashboardBody = schema.new({
            id = id.from(_N, "GetDashboardOutput", "DashboardBody"),
            type = "string",
            name = "DashboardBody",
            target_id = prelude.String.id,
        }),
        DashboardName = schema.new({
            id = id.from(_N, "GetDashboardOutput", "DashboardName"),
            type = "string",
            name = "DashboardName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInsightRuleReportInput = schema.new({
    id = id.from(_N, "GetInsightRuleReportInput"),
    type = "structure",
    members = {
        RuleName = schema.new({
            id = id.from(_N, "GetInsightRuleReportInput", "RuleName"),
            type = "string",
            name = "RuleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "GetInsightRuleReportInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "GetInsightRuleReportInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Period = schema.new({
            id = id.from(_N, "GetInsightRuleReportInput", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxContributorCount = schema.new({
            id = id.from(_N, "GetInsightRuleReportInput", "MaxContributorCount"),
            type = "integer",
            name = "MaxContributorCount",
            target_id = prelude.Integer.id,
        }),
        Metrics = schema.new({
            id = id.from(_N, "GetInsightRuleReportInput", "Metrics"),
            type = "list",
            name = "Metrics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OrderBy = schema.new({
            id = id.from(_N, "GetInsightRuleReportInput", "OrderBy"),
            type = "string",
            name = "OrderBy",
            target_id = prelude.String.id,
        }),
    },
})

M.InsightRuleContributorDatapoint = schema.new({
    id = id.from(_N, "InsightRuleContributorDatapoint"),
    type = "structure",
    members = {
        Timestamp = schema.new({
            id = id.from(_N, "InsightRuleContributorDatapoint", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApproximateValue = schema.new({
            id = id.from(_N, "InsightRuleContributorDatapoint", "ApproximateValue"),
            type = "double",
            name = "ApproximateValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InsightRuleContributor = schema.new({
    id = id.from(_N, "InsightRuleContributor"),
    type = "structure",
    members = {
        Keys = schema.new({
            id = id.from(_N, "InsightRuleContributor", "Keys"),
            type = "list",
            name = "Keys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApproximateAggregateValue = schema.new({
            id = id.from(_N, "InsightRuleContributor", "ApproximateAggregateValue"),
            type = "double",
            name = "ApproximateAggregateValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Datapoints = schema.new({
            id = id.from(_N, "InsightRuleContributor", "Datapoints"),
            type = "list",
            name = "Datapoints",
            target_id = prelude.Document.id,
            list_member = M.InsightRuleContributorDatapoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InsightRuleMetricDatapoint = schema.new({
    id = id.from(_N, "InsightRuleMetricDatapoint"),
    type = "structure",
    members = {
        Timestamp = schema.new({
            id = id.from(_N, "InsightRuleMetricDatapoint", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UniqueContributors = schema.new({
            id = id.from(_N, "InsightRuleMetricDatapoint", "UniqueContributors"),
            type = "double",
            name = "UniqueContributors",
            target_id = prelude.Double.id,
        }),
        MaxContributorValue = schema.new({
            id = id.from(_N, "InsightRuleMetricDatapoint", "MaxContributorValue"),
            type = "double",
            name = "MaxContributorValue",
            target_id = prelude.Double.id,
        }),
        SampleCount = schema.new({
            id = id.from(_N, "InsightRuleMetricDatapoint", "SampleCount"),
            type = "double",
            name = "SampleCount",
            target_id = prelude.Double.id,
        }),
        Average = schema.new({
            id = id.from(_N, "InsightRuleMetricDatapoint", "Average"),
            type = "double",
            name = "Average",
            target_id = prelude.Double.id,
        }),
        Sum = schema.new({
            id = id.from(_N, "InsightRuleMetricDatapoint", "Sum"),
            type = "double",
            name = "Sum",
            target_id = prelude.Double.id,
        }),
        Minimum = schema.new({
            id = id.from(_N, "InsightRuleMetricDatapoint", "Minimum"),
            type = "double",
            name = "Minimum",
            target_id = prelude.Double.id,
        }),
        Maximum = schema.new({
            id = id.from(_N, "InsightRuleMetricDatapoint", "Maximum"),
            type = "double",
            name = "Maximum",
            target_id = prelude.Double.id,
        }),
    },
})

M.GetInsightRuleReportOutput = schema.new({
    id = id.from(_N, "GetInsightRuleReportOutput"),
    type = "structure",
    members = {
        KeyLabels = schema.new({
            id = id.from(_N, "GetInsightRuleReportOutput", "KeyLabels"),
            type = "list",
            name = "KeyLabels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AggregationStatistic = schema.new({
            id = id.from(_N, "GetInsightRuleReportOutput", "AggregationStatistic"),
            type = "string",
            name = "AggregationStatistic",
            target_id = prelude.String.id,
        }),
        AggregateValue = schema.new({
            id = id.from(_N, "GetInsightRuleReportOutput", "AggregateValue"),
            type = "double",
            name = "AggregateValue",
            target_id = prelude.Double.id,
        }),
        ApproximateUniqueCount = schema.new({
            id = id.from(_N, "GetInsightRuleReportOutput", "ApproximateUniqueCount"),
            type = "long",
            name = "ApproximateUniqueCount",
            target_id = prelude.Long.id,
        }),
        Contributors = schema.new({
            id = id.from(_N, "GetInsightRuleReportOutput", "Contributors"),
            type = "list",
            name = "Contributors",
            target_id = prelude.Document.id,
            list_member = M.InsightRuleContributor,
        }),
        MetricDatapoints = schema.new({
            id = id.from(_N, "GetInsightRuleReportOutput", "MetricDatapoints"),
            type = "list",
            name = "MetricDatapoints",
            target_id = prelude.Document.id,
            list_member = M.InsightRuleMetricDatapoint,
        }),
    },
})

M.LabelOptions = schema.new({
    id = id.from(_N, "LabelOptions"),
    type = "structure",
    members = {
        Timezone = schema.new({
            id = id.from(_N, "LabelOptions", "Timezone"),
            type = "string",
            name = "Timezone",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMetricDataInput = schema.new({
    id = id.from(_N, "GetMetricDataInput"),
    type = "structure",
    members = {
        MetricDataQueries = schema.new({
            id = id.from(_N, "GetMetricDataInput", "MetricDataQueries"),
            type = "list",
            name = "MetricDataQueries",
            target_id = prelude.Document.id,
            list_member = M.MetricDataQuery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "GetMetricDataInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "GetMetricDataInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetMetricDataInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ScanBy = schema.new({
            id = id.from(_N, "GetMetricDataInput", "ScanBy"),
            type = "string",
            name = "ScanBy",
            target_id = prelude.String.id,
        }),
        MaxDatapoints = schema.new({
            id = id.from(_N, "GetMetricDataInput", "MaxDatapoints"),
            type = "integer",
            name = "MaxDatapoints",
            target_id = prelude.Integer.id,
        }),
        LabelOptions = schema.new({
            id = id.from(_N, "GetMetricDataInput", "LabelOptions"),
            type = "structure",
            name = "LabelOptions",
            target_id = id.from(_N, "LabelOptions"),
            target = M.LabelOptions,
        }),
    },
})

M.MessageData = schema.new({
    id = id.from(_N, "MessageData"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "MessageData", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "MessageData", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.MetricDataResult = schema.new({
    id = id.from(_N, "MetricDataResult"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "MetricDataResult", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Label = schema.new({
            id = id.from(_N, "MetricDataResult", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
        Timestamps = schema.new({
            id = id.from(_N, "MetricDataResult", "Timestamps"),
            type = "list",
            name = "Timestamps",
            target_id = prelude.Document.id,
            list_member = prelude.Timestamp,
        }),
        Values = schema.new({
            id = id.from(_N, "MetricDataResult", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        StatusCode = schema.new({
            id = id.from(_N, "MetricDataResult", "StatusCode"),
            type = "string",
            name = "StatusCode",
            target_id = prelude.String.id,
        }),
        Messages = schema.new({
            id = id.from(_N, "MetricDataResult", "Messages"),
            type = "list",
            name = "Messages",
            target_id = prelude.Document.id,
            list_member = M.MessageData,
        }),
    },
})

M.GetMetricDataOutput = schema.new({
    id = id.from(_N, "GetMetricDataOutput"),
    type = "structure",
    members = {
        MetricDataResults = schema.new({
            id = id.from(_N, "GetMetricDataOutput", "MetricDataResults"),
            type = "list",
            name = "MetricDataResults",
            target_id = prelude.Document.id,
            list_member = M.MetricDataResult,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetMetricDataOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Messages = schema.new({
            id = id.from(_N, "GetMetricDataOutput", "Messages"),
            type = "list",
            name = "Messages",
            target_id = prelude.Document.id,
            list_member = M.MessageData,
        }),
    },
})

M.GetMetricStatisticsInput = schema.new({
    id = id.from(_N, "GetMetricStatisticsInput"),
    type = "structure",
    members = {
        Namespace = schema.new({
            id = id.from(_N, "GetMetricStatisticsInput", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricName = schema.new({
            id = id.from(_N, "GetMetricStatisticsInput", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Dimensions = schema.new({
            id = id.from(_N, "GetMetricStatisticsInput", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        StartTime = schema.new({
            id = id.from(_N, "GetMetricStatisticsInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "GetMetricStatisticsInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Period = schema.new({
            id = id.from(_N, "GetMetricStatisticsInput", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Statistics = schema.new({
            id = id.from(_N, "GetMetricStatisticsInput", "Statistics"),
            type = "list",
            name = "Statistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ExtendedStatistics = schema.new({
            id = id.from(_N, "GetMetricStatisticsInput", "ExtendedStatistics"),
            type = "list",
            name = "ExtendedStatistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Unit = schema.new({
            id = id.from(_N, "GetMetricStatisticsInput", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMetricStatisticsOutput = schema.new({
    id = id.from(_N, "GetMetricStatisticsOutput"),
    type = "structure",
    members = {
        Label = schema.new({
            id = id.from(_N, "GetMetricStatisticsOutput", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
        Datapoints = schema.new({
            id = id.from(_N, "GetMetricStatisticsOutput", "Datapoints"),
            type = "list",
            name = "Datapoints",
            target_id = prelude.Document.id,
            list_member = M.Datapoint,
        }),
    },
})

M.GetMetricStreamInput = schema.new({
    id = id.from(_N, "GetMetricStreamInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetMetricStreamInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetricStreamFilter = schema.new({
    id = id.from(_N, "MetricStreamFilter"),
    type = "structure",
    members = {
        Namespace = schema.new({
            id = id.from(_N, "MetricStreamFilter", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        MetricNames = schema.new({
            id = id.from(_N, "MetricStreamFilter", "MetricNames"),
            type = "list",
            name = "MetricNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.MetricStreamStatisticsMetric = schema.new({
    id = id.from(_N, "MetricStreamStatisticsMetric"),
    type = "structure",
    members = {
        Namespace = schema.new({
            id = id.from(_N, "MetricStreamStatisticsMetric", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricName = schema.new({
            id = id.from(_N, "MetricStreamStatisticsMetric", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetricStreamStatisticsConfiguration = schema.new({
    id = id.from(_N, "MetricStreamStatisticsConfiguration"),
    type = "structure",
    members = {
        IncludeMetrics = schema.new({
            id = id.from(_N, "MetricStreamStatisticsConfiguration", "IncludeMetrics"),
            type = "list",
            name = "IncludeMetrics",
            target_id = prelude.Document.id,
            list_member = M.MetricStreamStatisticsMetric,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AdditionalStatistics = schema.new({
            id = id.from(_N, "MetricStreamStatisticsConfiguration", "AdditionalStatistics"),
            type = "list",
            name = "AdditionalStatistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMetricStreamOutput = schema.new({
    id = id.from(_N, "GetMetricStreamOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        IncludeFilters = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "IncludeFilters"),
            type = "list",
            name = "IncludeFilters",
            target_id = prelude.Document.id,
            list_member = M.MetricStreamFilter,
        }),
        ExcludeFilters = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "ExcludeFilters"),
            type = "list",
            name = "ExcludeFilters",
            target_id = prelude.Document.id,
            list_member = M.MetricStreamFilter,
        }),
        FirehoseArn = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "FirehoseArn"),
            type = "string",
            name = "FirehoseArn",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        CreationDate = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdateDate = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "LastUpdateDate"),
            type = "timestamp",
            name = "LastUpdateDate",
            target_id = prelude.Timestamp.id,
        }),
        OutputFormat = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "OutputFormat"),
            type = "string",
            name = "OutputFormat",
            target_id = prelude.String.id,
        }),
        StatisticsConfigurations = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "StatisticsConfigurations"),
            type = "list",
            name = "StatisticsConfigurations",
            target_id = prelude.Document.id,
            list_member = M.MetricStreamStatisticsConfiguration,
        }),
        IncludeLinkedAccountsMetrics = schema.new({
            id = id.from(_N, "GetMetricStreamOutput", "IncludeLinkedAccountsMetrics"),
            type = "boolean",
            name = "IncludeLinkedAccountsMetrics",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetMetricWidgetImageInput = schema.new({
    id = id.from(_N, "GetMetricWidgetImageInput"),
    type = "structure",
    members = {
        MetricWidget = schema.new({
            id = id.from(_N, "GetMetricWidgetImageInput", "MetricWidget"),
            type = "string",
            name = "MetricWidget",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputFormat = schema.new({
            id = id.from(_N, "GetMetricWidgetImageInput", "OutputFormat"),
            type = "string",
            name = "OutputFormat",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMetricWidgetImageOutput = schema.new({
    id = id.from(_N, "GetMetricWidgetImageOutput"),
    type = "structure",
    members = {
        MetricWidgetImage = schema.new({
            id = id.from(_N, "GetMetricWidgetImageOutput", "MetricWidgetImage"),
            type = "blob",
            name = "MetricWidgetImage",
            target_id = prelude.Blob.id,
        }),
    },
})

M.GetOTelEnrichmentInput = schema.new({
    id = id.from(_N, "GetOTelEnrichmentInput"),
    type = "structure",
})

M.GetOTelEnrichmentOutput = schema.new({
    id = id.from(_N, "GetOTelEnrichmentOutput"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "GetOTelEnrichmentOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAlarmMuteRulesInput = schema.new({
    id = id.from(_N, "ListAlarmMuteRulesInput"),
    type = "structure",
    members = {
        AlarmName = schema.new({
            id = id.from(_N, "ListAlarmMuteRulesInput", "AlarmName"),
            type = "string",
            name = "AlarmName",
            target_id = prelude.String.id,
        }),
        Statuses = schema.new({
            id = id.from(_N, "ListAlarmMuteRulesInput", "Statuses"),
            type = "list",
            name = "Statuses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "ListAlarmMuteRulesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAlarmMuteRulesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAlarmMuteRulesOutput = schema.new({
    id = id.from(_N, "ListAlarmMuteRulesOutput"),
    type = "structure",
    members = {
        AlarmMuteRuleSummaries = schema.new({
            id = id.from(_N, "ListAlarmMuteRulesOutput", "AlarmMuteRuleSummaries"),
            type = "list",
            name = "AlarmMuteRuleSummaries",
            target_id = prelude.Document.id,
            list_member = M.AlarmMuteRuleSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAlarmMuteRulesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDashboardsInput = schema.new({
    id = id.from(_N, "ListDashboardsInput"),
    type = "structure",
    members = {
        DashboardNamePrefix = schema.new({
            id = id.from(_N, "ListDashboardsInput", "DashboardNamePrefix"),
            type = "string",
            name = "DashboardNamePrefix",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDashboardsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDashboardsOutput = schema.new({
    id = id.from(_N, "ListDashboardsOutput"),
    type = "structure",
    members = {
        DashboardEntries = schema.new({
            id = id.from(_N, "ListDashboardsOutput", "DashboardEntries"),
            type = "list",
            name = "DashboardEntries",
            target_id = prelude.Document.id,
            list_member = M.DashboardEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDashboardsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListManagedInsightRulesInput = schema.new({
    id = id.from(_N, "ListManagedInsightRulesInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListManagedInsightRulesInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListManagedInsightRulesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListManagedInsightRulesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ManagedRuleState = schema.new({
    id = id.from(_N, "ManagedRuleState"),
    type = "structure",
    members = {
        RuleName = schema.new({
            id = id.from(_N, "ManagedRuleState", "RuleName"),
            type = "string",
            name = "RuleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        State = schema.new({
            id = id.from(_N, "ManagedRuleState", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ManagedRuleDescription = schema.new({
    id = id.from(_N, "ManagedRuleDescription"),
    type = "structure",
    members = {
        TemplateName = schema.new({
            id = id.from(_N, "ManagedRuleDescription", "TemplateName"),
            type = "string",
            name = "TemplateName",
            target_id = prelude.String.id,
        }),
        ResourceARN = schema.new({
            id = id.from(_N, "ManagedRuleDescription", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
        RuleState = schema.new({
            id = id.from(_N, "ManagedRuleDescription", "RuleState"),
            type = "structure",
            name = "RuleState",
            target_id = id.from(_N, "ManagedRuleState"),
            target = M.ManagedRuleState,
        }),
    },
})

M.ListManagedInsightRulesOutput = schema.new({
    id = id.from(_N, "ListManagedInsightRulesOutput"),
    type = "structure",
    members = {
        ManagedRules = schema.new({
            id = id.from(_N, "ListManagedInsightRulesOutput", "ManagedRules"),
            type = "list",
            name = "ManagedRules",
            target_id = prelude.Document.id,
            list_member = M.ManagedRuleDescription,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListManagedInsightRulesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMetricsInput = schema.new({
    id = id.from(_N, "ListMetricsInput"),
    type = "structure",
    members = {
        Namespace = schema.new({
            id = id.from(_N, "ListMetricsInput", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "ListMetricsInput", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "ListMetricsInput", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.DimensionFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMetricsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        RecentlyActive = schema.new({
            id = id.from(_N, "ListMetricsInput", "RecentlyActive"),
            type = "string",
            name = "RecentlyActive",
            target_id = prelude.String.id,
        }),
        IncludeLinkedAccounts = schema.new({
            id = id.from(_N, "ListMetricsInput", "IncludeLinkedAccounts"),
            type = "boolean",
            name = "IncludeLinkedAccounts",
            target_id = prelude.Boolean.id,
        }),
        OwningAccount = schema.new({
            id = id.from(_N, "ListMetricsInput", "OwningAccount"),
            type = "string",
            name = "OwningAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMetricsOutput = schema.new({
    id = id.from(_N, "ListMetricsOutput"),
    type = "structure",
    members = {
        Metrics = schema.new({
            id = id.from(_N, "ListMetricsOutput", "Metrics"),
            type = "list",
            name = "Metrics",
            target_id = prelude.Document.id,
            list_member = M.Metric,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMetricsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        OwningAccounts = schema.new({
            id = id.from(_N, "ListMetricsOutput", "OwningAccounts"),
            type = "list",
            name = "OwningAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListMetricStreamsInput = schema.new({
    id = id.from(_N, "ListMetricStreamsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMetricStreamsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMetricStreamsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.MetricStreamEntry = schema.new({
    id = id.from(_N, "MetricStreamEntry"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "MetricStreamEntry", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationDate = schema.new({
            id = id.from(_N, "MetricStreamEntry", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdateDate = schema.new({
            id = id.from(_N, "MetricStreamEntry", "LastUpdateDate"),
            type = "timestamp",
            name = "LastUpdateDate",
            target_id = prelude.Timestamp.id,
        }),
        Name = schema.new({
            id = id.from(_N, "MetricStreamEntry", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        FirehoseArn = schema.new({
            id = id.from(_N, "MetricStreamEntry", "FirehoseArn"),
            type = "string",
            name = "FirehoseArn",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "MetricStreamEntry", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        OutputFormat = schema.new({
            id = id.from(_N, "MetricStreamEntry", "OutputFormat"),
            type = "string",
            name = "OutputFormat",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMetricStreamsOutput = schema.new({
    id = id.from(_N, "ListMetricStreamsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMetricStreamsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Entries = schema.new({
            id = id.from(_N, "ListMetricStreamsOutput", "Entries"),
            type = "list",
            name = "Entries",
            target_id = prelude.Document.id,
            list_member = M.MetricStreamEntry,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.LimitExceededFault = schema.new({
    id = id.from(_N, "LimitExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutAlarmMuteRuleInput = schema.new({
    id = id.from(_N, "PutAlarmMuteRuleInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PutAlarmMuteRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "PutAlarmMuteRuleInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Rule = schema.new({
            id = id.from(_N, "PutAlarmMuteRuleInput", "Rule"),
            type = "structure",
            name = "Rule",
            target_id = id.from(_N, "Rule"),
            target = M.Rule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MuteTargets = schema.new({
            id = id.from(_N, "PutAlarmMuteRuleInput", "MuteTargets"),
            type = "structure",
            name = "MuteTargets",
            target_id = id.from(_N, "MuteTargets"),
            target = M.MuteTargets,
        }),
        Tags = schema.new({
            id = id.from(_N, "PutAlarmMuteRuleInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        StartDate = schema.new({
            id = id.from(_N, "PutAlarmMuteRuleInput", "StartDate"),
            type = "timestamp",
            name = "StartDate",
            target_id = prelude.Timestamp.id,
        }),
        ExpireDate = schema.new({
            id = id.from(_N, "PutAlarmMuteRuleInput", "ExpireDate"),
            type = "timestamp",
            name = "ExpireDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.PutAlarmMuteRuleOutput = schema.new({
    id = id.from(_N, "PutAlarmMuteRuleOutput"),
    type = "structure",
})

M.PutAnomalyDetectorInput = schema.new({
    id = id.from(_N, "PutAnomalyDetectorInput"),
    type = "structure",
    members = {
        Namespace = schema.new({
            id = id.from(_N, "PutAnomalyDetectorInput", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "PutAnomalyDetectorInput", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "PutAnomalyDetectorInput", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        Stat = schema.new({
            id = id.from(_N, "PutAnomalyDetectorInput", "Stat"),
            type = "string",
            name = "Stat",
            target_id = prelude.String.id,
        }),
        Configuration = schema.new({
            id = id.from(_N, "PutAnomalyDetectorInput", "Configuration"),
            type = "structure",
            name = "Configuration",
            target_id = id.from(_N, "AnomalyDetectorConfiguration"),
            target = M.AnomalyDetectorConfiguration,
        }),
        MetricCharacteristics = schema.new({
            id = id.from(_N, "PutAnomalyDetectorInput", "MetricCharacteristics"),
            type = "structure",
            name = "MetricCharacteristics",
            target_id = id.from(_N, "MetricCharacteristics"),
            target = M.MetricCharacteristics,
        }),
        SingleMetricAnomalyDetector = schema.new({
            id = id.from(_N, "PutAnomalyDetectorInput", "SingleMetricAnomalyDetector"),
            type = "structure",
            name = "SingleMetricAnomalyDetector",
            target_id = id.from(_N, "SingleMetricAnomalyDetector"),
            target = M.SingleMetricAnomalyDetector,
        }),
        MetricMathAnomalyDetector = schema.new({
            id = id.from(_N, "PutAnomalyDetectorInput", "MetricMathAnomalyDetector"),
            type = "structure",
            name = "MetricMathAnomalyDetector",
            target_id = id.from(_N, "MetricMathAnomalyDetector"),
            target = M.MetricMathAnomalyDetector,
        }),
    },
})

M.PutAnomalyDetectorOutput = schema.new({
    id = id.from(_N, "PutAnomalyDetectorOutput"),
    type = "structure",
})

M.PutCompositeAlarmInput = schema.new({
    id = id.from(_N, "PutCompositeAlarmInput"),
    type = "structure",
    members = {
        ActionsEnabled = schema.new({
            id = id.from(_N, "PutCompositeAlarmInput", "ActionsEnabled"),
            type = "boolean",
            name = "ActionsEnabled",
            target_id = prelude.Boolean.id,
        }),
        AlarmActions = schema.new({
            id = id.from(_N, "PutCompositeAlarmInput", "AlarmActions"),
            type = "list",
            name = "AlarmActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AlarmDescription = schema.new({
            id = id.from(_N, "PutCompositeAlarmInput", "AlarmDescription"),
            type = "string",
            name = "AlarmDescription",
            target_id = prelude.String.id,
        }),
        AlarmName = schema.new({
            id = id.from(_N, "PutCompositeAlarmInput", "AlarmName"),
            type = "string",
            name = "AlarmName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AlarmRule = schema.new({
            id = id.from(_N, "PutCompositeAlarmInput", "AlarmRule"),
            type = "string",
            name = "AlarmRule",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InsufficientDataActions = schema.new({
            id = id.from(_N, "PutCompositeAlarmInput", "InsufficientDataActions"),
            type = "list",
            name = "InsufficientDataActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OKActions = schema.new({
            id = id.from(_N, "PutCompositeAlarmInput", "OKActions"),
            type = "list",
            name = "OKActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "PutCompositeAlarmInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ActionsSuppressor = schema.new({
            id = id.from(_N, "PutCompositeAlarmInput", "ActionsSuppressor"),
            type = "string",
            name = "ActionsSuppressor",
            target_id = prelude.String.id,
        }),
        ActionsSuppressorWaitPeriod = schema.new({
            id = id.from(_N, "PutCompositeAlarmInput", "ActionsSuppressorWaitPeriod"),
            type = "integer",
            name = "ActionsSuppressorWaitPeriod",
            target_id = prelude.Integer.id,
        }),
        ActionsSuppressorExtensionPeriod = schema.new({
            id = id.from(_N, "PutCompositeAlarmInput", "ActionsSuppressorExtensionPeriod"),
            type = "integer",
            name = "ActionsSuppressorExtensionPeriod",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PutCompositeAlarmOutput = schema.new({
    id = id.from(_N, "PutCompositeAlarmOutput"),
    type = "structure",
})

M.PutDashboardInput = schema.new({
    id = id.from(_N, "PutDashboardInput"),
    type = "structure",
    members = {
        DashboardName = schema.new({
            id = id.from(_N, "PutDashboardInput", "DashboardName"),
            type = "string",
            name = "DashboardName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DashboardBody = schema.new({
            id = id.from(_N, "PutDashboardInput", "DashboardBody"),
            type = "string",
            name = "DashboardBody",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "PutDashboardInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutDashboardOutput = schema.new({
    id = id.from(_N, "PutDashboardOutput"),
    type = "structure",
    members = {
        DashboardValidationMessages = schema.new({
            id = id.from(_N, "PutDashboardOutput", "DashboardValidationMessages"),
            type = "list",
            name = "DashboardValidationMessages",
            target_id = prelude.Document.id,
            list_member = M.DashboardValidationMessage,
        }),
    },
})

M.PutInsightRuleInput = schema.new({
    id = id.from(_N, "PutInsightRuleInput"),
    type = "structure",
    members = {
        RuleName = schema.new({
            id = id.from(_N, "PutInsightRuleInput", "RuleName"),
            type = "string",
            name = "RuleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RuleState = schema.new({
            id = id.from(_N, "PutInsightRuleInput", "RuleState"),
            type = "string",
            name = "RuleState",
            target_id = prelude.String.id,
        }),
        RuleDefinition = schema.new({
            id = id.from(_N, "PutInsightRuleInput", "RuleDefinition"),
            type = "string",
            name = "RuleDefinition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "PutInsightRuleInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ApplyOnTransformedLogs = schema.new({
            id = id.from(_N, "PutInsightRuleInput", "ApplyOnTransformedLogs"),
            type = "boolean",
            name = "ApplyOnTransformedLogs",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.PutInsightRuleOutput = schema.new({
    id = id.from(_N, "PutInsightRuleOutput"),
    type = "structure",
})

M.ManagedRule = schema.new({
    id = id.from(_N, "ManagedRule"),
    type = "structure",
    members = {
        TemplateName = schema.new({
            id = id.from(_N, "ManagedRule", "TemplateName"),
            type = "string",
            name = "TemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceARN = schema.new({
            id = id.from(_N, "ManagedRule", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "ManagedRule", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutManagedInsightRulesInput = schema.new({
    id = id.from(_N, "PutManagedInsightRulesInput"),
    type = "structure",
    members = {
        ManagedRules = schema.new({
            id = id.from(_N, "PutManagedInsightRulesInput", "ManagedRules"),
            type = "list",
            name = "ManagedRules",
            target_id = prelude.Document.id,
            list_member = M.ManagedRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutManagedInsightRulesOutput = schema.new({
    id = id.from(_N, "PutManagedInsightRulesOutput"),
    type = "structure",
    members = {
        Failures = schema.new({
            id = id.from(_N, "PutManagedInsightRulesOutput", "Failures"),
            type = "list",
            name = "Failures",
            target_id = prelude.Document.id,
            list_member = M.PartialFailure,
        }),
    },
})

M.PutMetricAlarmInput = schema.new({
    id = id.from(_N, "PutMetricAlarmInput"),
    type = "structure",
    members = {
        AlarmName = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "AlarmName"),
            type = "string",
            name = "AlarmName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AlarmDescription = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "AlarmDescription"),
            type = "string",
            name = "AlarmDescription",
            target_id = prelude.String.id,
        }),
        ActionsEnabled = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "ActionsEnabled"),
            type = "boolean",
            name = "ActionsEnabled",
            target_id = prelude.Boolean.id,
        }),
        OKActions = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "OKActions"),
            type = "list",
            name = "OKActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AlarmActions = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "AlarmActions"),
            type = "list",
            name = "AlarmActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InsufficientDataActions = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "InsufficientDataActions"),
            type = "list",
            name = "InsufficientDataActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MetricName = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        Statistic = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "Statistic"),
            type = "string",
            name = "Statistic",
            target_id = prelude.String.id,
        }),
        ExtendedStatistic = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "ExtendedStatistic"),
            type = "string",
            name = "ExtendedStatistic",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        Period = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
        }),
        Unit = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        EvaluationPeriods = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "EvaluationPeriods"),
            type = "integer",
            name = "EvaluationPeriods",
            target_id = prelude.Integer.id,
        }),
        DatapointsToAlarm = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "DatapointsToAlarm"),
            type = "integer",
            name = "DatapointsToAlarm",
            target_id = prelude.Integer.id,
        }),
        Threshold = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "Threshold"),
            type = "double",
            name = "Threshold",
            target_id = prelude.Double.id,
        }),
        ComparisonOperator = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "ComparisonOperator"),
            type = "string",
            name = "ComparisonOperator",
            target_id = prelude.String.id,
        }),
        TreatMissingData = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "TreatMissingData"),
            type = "string",
            name = "TreatMissingData",
            target_id = prelude.String.id,
        }),
        EvaluateLowSampleCountPercentile = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "EvaluateLowSampleCountPercentile"),
            type = "string",
            name = "EvaluateLowSampleCountPercentile",
            target_id = prelude.String.id,
        }),
        Metrics = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "Metrics"),
            type = "list",
            name = "Metrics",
            target_id = prelude.Document.id,
            list_member = M.MetricDataQuery,
        }),
        Tags = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ThresholdMetricId = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "ThresholdMetricId"),
            type = "string",
            name = "ThresholdMetricId",
            target_id = prelude.String.id,
        }),
        EvaluationCriteria = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "EvaluationCriteria"),
            type = "union",
            name = "EvaluationCriteria",
            target_id = id.from(_N, "EvaluationCriteria"),
            target = M.EvaluationCriteria,
        }),
        EvaluationInterval = schema.new({
            id = id.from(_N, "PutMetricAlarmInput", "EvaluationInterval"),
            type = "integer",
            name = "EvaluationInterval",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PutMetricAlarmOutput = schema.new({
    id = id.from(_N, "PutMetricAlarmOutput"),
    type = "structure",
})

M.PutMetricDataInput = schema.new({
    id = id.from(_N, "PutMetricDataInput"),
    type = "structure",
    members = {
        Namespace = schema.new({
            id = id.from(_N, "PutMetricDataInput", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricData = schema.new({
            id = id.from(_N, "PutMetricDataInput", "MetricData"),
            type = "list",
            name = "MetricData",
            target_id = prelude.Document.id,
            list_member = M.MetricDatum,
        }),
        EntityMetricData = schema.new({
            id = id.from(_N, "PutMetricDataInput", "EntityMetricData"),
            type = "list",
            name = "EntityMetricData",
            target_id = prelude.Document.id,
            list_member = M.EntityMetricData,
        }),
        StrictEntityValidation = schema.new({
            id = id.from(_N, "PutMetricDataInput", "StrictEntityValidation"),
            type = "boolean",
            name = "StrictEntityValidation",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.PutMetricDataOutput = schema.new({
    id = id.from(_N, "PutMetricDataOutput"),
    type = "structure",
})

M.PutMetricStreamInput = schema.new({
    id = id.from(_N, "PutMetricStreamInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PutMetricStreamInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IncludeFilters = schema.new({
            id = id.from(_N, "PutMetricStreamInput", "IncludeFilters"),
            type = "list",
            name = "IncludeFilters",
            target_id = prelude.Document.id,
            list_member = M.MetricStreamFilter,
        }),
        ExcludeFilters = schema.new({
            id = id.from(_N, "PutMetricStreamInput", "ExcludeFilters"),
            type = "list",
            name = "ExcludeFilters",
            target_id = prelude.Document.id,
            list_member = M.MetricStreamFilter,
        }),
        FirehoseArn = schema.new({
            id = id.from(_N, "PutMetricStreamInput", "FirehoseArn"),
            type = "string",
            name = "FirehoseArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleArn = schema.new({
            id = id.from(_N, "PutMetricStreamInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputFormat = schema.new({
            id = id.from(_N, "PutMetricStreamInput", "OutputFormat"),
            type = "string",
            name = "OutputFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "PutMetricStreamInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        StatisticsConfigurations = schema.new({
            id = id.from(_N, "PutMetricStreamInput", "StatisticsConfigurations"),
            type = "list",
            name = "StatisticsConfigurations",
            target_id = prelude.Document.id,
            list_member = M.MetricStreamStatisticsConfiguration,
        }),
        IncludeLinkedAccountsMetrics = schema.new({
            id = id.from(_N, "PutMetricStreamInput", "IncludeLinkedAccountsMetrics"),
            type = "boolean",
            name = "IncludeLinkedAccountsMetrics",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.PutMetricStreamOutput = schema.new({
    id = id.from(_N, "PutMetricStreamOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "PutMetricStreamOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidFormatFault = schema.new({
    id = id.from(_N, "InvalidFormatFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidFormatFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SetAlarmStateInput = schema.new({
    id = id.from(_N, "SetAlarmStateInput"),
    type = "structure",
    members = {
        AlarmName = schema.new({
            id = id.from(_N, "SetAlarmStateInput", "AlarmName"),
            type = "string",
            name = "AlarmName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StateValue = schema.new({
            id = id.from(_N, "SetAlarmStateInput", "StateValue"),
            type = "string",
            name = "StateValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StateReason = schema.new({
            id = id.from(_N, "SetAlarmStateInput", "StateReason"),
            type = "string",
            name = "StateReason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StateReasonData = schema.new({
            id = id.from(_N, "SetAlarmStateInput", "StateReasonData"),
            type = "string",
            name = "StateReasonData",
            target_id = prelude.String.id,
        }),
    },
})

M.SetAlarmStateOutput = schema.new({
    id = id.from(_N, "SetAlarmStateOutput"),
    type = "structure",
})

M.StartMetricStreamsInput = schema.new({
    id = id.from(_N, "StartMetricStreamsInput"),
    type = "structure",
    members = {
        Names = schema.new({
            id = id.from(_N, "StartMetricStreamsInput", "Names"),
            type = "list",
            name = "Names",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartMetricStreamsOutput = schema.new({
    id = id.from(_N, "StartMetricStreamsOutput"),
    type = "structure",
})

M.StartOTelEnrichmentInput = schema.new({
    id = id.from(_N, "StartOTelEnrichmentInput"),
    type = "structure",
})

M.StartOTelEnrichmentOutput = schema.new({
    id = id.from(_N, "StartOTelEnrichmentOutput"),
    type = "structure",
})

M.StopMetricStreamsInput = schema.new({
    id = id.from(_N, "StopMetricStreamsInput"),
    type = "structure",
    members = {
        Names = schema.new({
            id = id.from(_N, "StopMetricStreamsInput", "Names"),
            type = "list",
            name = "Names",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopMetricStreamsOutput = schema.new({
    id = id.from(_N, "StopMetricStreamsOutput"),
    type = "structure",
})

M.StopOTelEnrichmentInput = schema.new({
    id = id.from(_N, "StopOTelEnrichmentInput"),
    type = "structure",
})

M.StopOTelEnrichmentOutput = schema.new({
    id = id.from(_N, "StopOTelEnrichmentOutput"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
