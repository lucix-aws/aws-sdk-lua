

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.codeguruprofiler"

local M = {}

M.FindingsReportSummaries = schema.new({ type = "list", list_member = M.FindingsReportSummary })

M.TagsMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeys = schema.new({ type = "list", list_member = prelude.String })

M.ProfilingGroupNames = schema.new({ type = "list", list_member = prelude.String })

M.ProfilingGroupDescriptions = schema.new({ type = "list", list_member = M.ProfilingGroupDescription })

M.Channels = schema.new({ type = "list", list_member = M.Channel })

M.FrameMetrics = schema.new({ type = "list", list_member = M.FrameMetric })

M.ListOfTimestamps = schema.new({ type = "list", list_member = M.TimestampStructure })

M.UnprocessedEndTimeMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ListOfTimestamps })

M.FrameMetricData = schema.new({ type = "list", list_member = M.FrameMetricDatum })

M.Metadata = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.Recommendations = schema.new({ type = "list", list_member = M.Recommendation })

M.Anomalies = schema.new({ type = "list", list_member = M.Anomaly })

M.ProfileTimes = schema.new({ type = "list", list_member = M.ProfileTime })

M.Principals = schema.new({ type = "list", list_member = prelude.String })

M.AgentParameters = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.EventPublishers = schema.new({ type = "list", list_member = prelude.String })

M.ThreadStates = schema.new({ type = "list", list_member = prelude.String })

M.FrameMetricValues = schema.new({ type = "list", list_member = prelude.Double })

M.Matches = schema.new({ type = "list", list_member = M.Match })

M.AnomalyInstances = schema.new({ type = "list", list_member = M.AnomalyInstance })

M.TargetFrames = schema.new({ type = "list", list_member = M.TargetFrame })

M.Strings = schema.new({ type = "list", list_member = prelude.String })

M.TargetFrame = schema.new({ type = "list", list_member = prelude.String })

M.Channel = schema.new({
   id = id.from(_N, "Channel"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "Channel", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      uri = schema.new({
         id = id.from(_N, "Channel", "uri"),
         type = "string",
         name = "uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      eventPublishers = schema.new({
         id = id.from(_N, "Channel", "eventPublishers"),
         type = "list",
         name = "eventPublishers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AddNotificationChannelsInput = schema.new({
   id = id.from(_N, "AddNotificationChannelsRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "AddNotificationChannelsInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      channels = schema.new({
         id = id.from(_N, "AddNotificationChannelsInput", "channels"),
         type = "list",
         name = "channels",
         target_id = prelude.Document.id,
         list_member = M.Channel,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NotificationConfiguration = schema.new({
   id = id.from(_N, "NotificationConfiguration"),
   type = "structure",
   members = {
      channels = schema.new({
         id = id.from(_N, "NotificationConfiguration", "channels"),
         type = "list",
         name = "channels",
         target_id = prelude.Document.id,
         list_member = M.Channel,
      }),
   },
})

M.AddNotificationChannelsOutput = schema.new({
   id = id.from(_N, "AddNotificationChannelsResponse"),
   type = "structure",
   members = {
      notificationConfiguration = schema.new({
         id = id.from(_N, "AddNotificationChannelsOutput", "notificationConfiguration"),
         type = "structure",
         name = "notificationConfiguration",
         target_id = id.from(_N, "NotificationConfiguration"),
         target = M.NotificationConfiguration,
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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InternalServerException = schema.new({
   id = id.from(_N, "InternalServerException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InternalServerException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
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
         traits = {
            [traits.REQUIRED] = {},
         },
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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ThrottlingException = schema.new({
   id = id.from(_N, "ThrottlingException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ThrottlingException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AgentConfiguration = schema.new({
   id = id.from(_N, "AgentConfiguration"),
   type = "structure",
   members = {
      shouldProfile = schema.new({
         id = id.from(_N, "AgentConfiguration", "shouldProfile"),
         type = "boolean",
         name = "shouldProfile",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      periodInSeconds = schema.new({
         id = id.from(_N, "AgentConfiguration", "periodInSeconds"),
         type = "integer",
         name = "periodInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      agentParameters = schema.new({
         id = id.from(_N, "AgentConfiguration", "agentParameters"),
         type = "map",
         name = "agentParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AgentOrchestrationConfig = schema.new({
   id = id.from(_N, "AgentOrchestrationConfig"),
   type = "structure",
   members = {
      profilingEnabled = schema.new({
         id = id.from(_N, "AgentOrchestrationConfig", "profilingEnabled"),
         type = "boolean",
         name = "profilingEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AggregatedProfileTime = schema.new({
   id = id.from(_N, "AggregatedProfileTime"),
   type = "structure",
   members = {
      start = schema.new({
         id = id.from(_N, "AggregatedProfileTime", "start"),
         type = "timestamp",
         name = "start",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      period = schema.new({
         id = id.from(_N, "AggregatedProfileTime", "period"),
         type = "string",
         name = "period",
         target_id = prelude.String.id,
      }),
   },
})

M.UserFeedback = schema.new({
   id = id.from(_N, "UserFeedback"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "UserFeedback", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnomalyInstance = schema.new({
   id = id.from(_N, "AnomalyInstance"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "AnomalyInstance", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "AnomalyInstance", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "AnomalyInstance", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      userFeedback = schema.new({
         id = id.from(_N, "AnomalyInstance", "userFeedback"),
         type = "structure",
         name = "userFeedback",
         target_id = id.from(_N, "UserFeedback"),
         target = M.UserFeedback,
      }),
   },
})

M.Metric = schema.new({
   id = id.from(_N, "Metric"),
   type = "structure",
   members = {
      frameName = schema.new({
         id = id.from(_N, "Metric", "frameName"),
         type = "string",
         name = "frameName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "Metric", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      threadStates = schema.new({
         id = id.from(_N, "Metric", "threadStates"),
         type = "list",
         name = "threadStates",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Anomaly = schema.new({
   id = id.from(_N, "Anomaly"),
   type = "structure",
   members = {
      metric = schema.new({
         id = id.from(_N, "Anomaly", "metric"),
         type = "structure",
         name = "metric",
         target_id = id.from(_N, "Metric"),
         target = M.Metric,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reason = schema.new({
         id = id.from(_N, "Anomaly", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      instances = schema.new({
         id = id.from(_N, "Anomaly", "instances"),
         type = "list",
         name = "instances",
         target_id = prelude.Document.id,
         list_member = M.AnomalyInstance,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FrameMetric = schema.new({
   id = id.from(_N, "FrameMetric"),
   type = "structure",
   members = {
      frameName = schema.new({
         id = id.from(_N, "FrameMetric", "frameName"),
         type = "string",
         name = "frameName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "FrameMetric", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      threadStates = schema.new({
         id = id.from(_N, "FrameMetric", "threadStates"),
         type = "list",
         name = "threadStates",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchGetFrameMetricDataInput = schema.new({
   id = id.from(_N, "BatchGetFrameMetricDataRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "startTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "startTime" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "endTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "endTime" },
         },
      }),
      period = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataInput", "period"),
         type = "string",
         name = "period",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "period" },
         },
      }),
      targetResolution = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataInput", "targetResolution"),
         type = "string",
         name = "targetResolution",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "targetResolution" },
         },
      }),
      frameMetrics = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataInput", "frameMetrics"),
         type = "list",
         name = "frameMetrics",
         target_id = prelude.Document.id,
         list_member = M.FrameMetric,
      }),
   },
})

M.TimestampStructure = schema.new({
   id = id.from(_N, "TimestampStructure"),
   type = "structure",
   members = {
      value = schema.new({
         id = id.from(_N, "TimestampStructure", "value"),
         type = "timestamp",
         name = "value",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FrameMetricDatum = schema.new({
   id = id.from(_N, "FrameMetricDatum"),
   type = "structure",
   members = {
      frameMetric = schema.new({
         id = id.from(_N, "FrameMetricDatum", "frameMetric"),
         type = "structure",
         name = "frameMetric",
         target_id = id.from(_N, "FrameMetric"),
         target = M.FrameMetric,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "FrameMetricDatum", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.Double,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchGetFrameMetricDataOutput = schema.new({
   id = id.from(_N, "BatchGetFrameMetricDataResponse"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataOutput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataOutput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resolution = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataOutput", "resolution"),
         type = "string",
         name = "resolution",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endTimes = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataOutput", "endTimes"),
         type = "list",
         name = "endTimes",
         target_id = prelude.Document.id,
         list_member = M.TimestampStructure,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      unprocessedEndTimes = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataOutput", "unprocessedEndTimes"),
         type = "map",
         name = "unprocessedEndTimes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = M.TimestampStructure }),
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      frameMetricData = schema.new({
         id = id.from(_N, "BatchGetFrameMetricDataOutput", "frameMetricData"),
         type = "list",
         name = "frameMetricData",
         target_id = prelude.Document.id,
         list_member = M.FrameMetricDatum,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetFindingsReportAccountSummaryInput = schema.new({
   id = id.from(_N, "GetFindingsReportAccountSummaryRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "GetFindingsReportAccountSummaryInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "GetFindingsReportAccountSummaryInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      dailyReportsOnly = schema.new({
         id = id.from(_N, "GetFindingsReportAccountSummaryInput", "dailyReportsOnly"),
         type = "boolean",
         name = "dailyReportsOnly",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "dailyReportsOnly" },
         },
      }),
   },
})

M.FindingsReportSummary = schema.new({
   id = id.from(_N, "FindingsReportSummary"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "FindingsReportSummary", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      profilingGroupName = schema.new({
         id = id.from(_N, "FindingsReportSummary", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
      }),
      profileStartTime = schema.new({
         id = id.from(_N, "FindingsReportSummary", "profileStartTime"),
         type = "timestamp",
         name = "profileStartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      profileEndTime = schema.new({
         id = id.from(_N, "FindingsReportSummary", "profileEndTime"),
         type = "timestamp",
         name = "profileEndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      totalNumberOfFindings = schema.new({
         id = id.from(_N, "FindingsReportSummary", "totalNumberOfFindings"),
         type = "integer",
         name = "totalNumberOfFindings",
         target_id = prelude.Integer.id,
      }),
   },
})

M.GetFindingsReportAccountSummaryOutput = schema.new({
   id = id.from(_N, "GetFindingsReportAccountSummaryResponse"),
   type = "structure",
   members = {
      reportSummaries = schema.new({
         id = id.from(_N, "GetFindingsReportAccountSummaryOutput", "reportSummaries"),
         type = "list",
         name = "reportSummaries",
         target_id = prelude.Document.id,
         list_member = M.FindingsReportSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetFindingsReportAccountSummaryOutput", "nextToken"),
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

M.ConfigureAgentInput = schema.new({
   id = id.from(_N, "ConfigureAgentRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "ConfigureAgentInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      fleetInstanceId = schema.new({
         id = id.from(_N, "ConfigureAgentInput", "fleetInstanceId"),
         type = "string",
         name = "fleetInstanceId",
         target_id = prelude.String.id,
      }),
      metadata = schema.new({
         id = id.from(_N, "ConfigureAgentInput", "metadata"),
         type = "map",
         name = "metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ConfigureAgentOutput = schema.new({
   id = id.from(_N, "ConfigureAgentResponse"),
   type = "structure",
   members = {
      configuration = schema.new({
         id = id.from(_N, "ConfigureAgentOutput", "configuration"),
         type = "structure",
         name = "configuration",
         target_id = id.from(_N, "AgentConfiguration"),
         target = M.AgentConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.CreateProfilingGroupInput = schema.new({
   id = id.from(_N, "CreateProfilingGroupRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "CreateProfilingGroupInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      computePlatform = schema.new({
         id = id.from(_N, "CreateProfilingGroupInput", "computePlatform"),
         type = "string",
         name = "computePlatform",
         target_id = prelude.String.id,
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateProfilingGroupInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      agentOrchestrationConfig = schema.new({
         id = id.from(_N, "CreateProfilingGroupInput", "agentOrchestrationConfig"),
         type = "structure",
         name = "agentOrchestrationConfig",
         target_id = id.from(_N, "AgentOrchestrationConfig"),
         target = M.AgentOrchestrationConfig,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateProfilingGroupInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ProfilingStatus = schema.new({
   id = id.from(_N, "ProfilingStatus"),
   type = "structure",
   members = {
      latestAgentProfileReportedAt = schema.new({
         id = id.from(_N, "ProfilingStatus", "latestAgentProfileReportedAt"),
         type = "timestamp",
         name = "latestAgentProfileReportedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      latestAggregatedProfile = schema.new({
         id = id.from(_N, "ProfilingStatus", "latestAggregatedProfile"),
         type = "structure",
         name = "latestAggregatedProfile",
         target_id = id.from(_N, "AggregatedProfileTime"),
         target = M.AggregatedProfileTime,
      }),
      latestAgentOrchestratedAt = schema.new({
         id = id.from(_N, "ProfilingStatus", "latestAgentOrchestratedAt"),
         type = "timestamp",
         name = "latestAgentOrchestratedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.ProfilingGroupDescription = schema.new({
   id = id.from(_N, "ProfilingGroupDescription"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ProfilingGroupDescription", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      agentOrchestrationConfig = schema.new({
         id = id.from(_N, "ProfilingGroupDescription", "agentOrchestrationConfig"),
         type = "structure",
         name = "agentOrchestrationConfig",
         target_id = id.from(_N, "AgentOrchestrationConfig"),
         target = M.AgentOrchestrationConfig,
      }),
      arn = schema.new({
         id = id.from(_N, "ProfilingGroupDescription", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "ProfilingGroupDescription", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      updatedAt = schema.new({
         id = id.from(_N, "ProfilingGroupDescription", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      profilingStatus = schema.new({
         id = id.from(_N, "ProfilingGroupDescription", "profilingStatus"),
         type = "structure",
         name = "profilingStatus",
         target_id = id.from(_N, "ProfilingStatus"),
         target = M.ProfilingStatus,
      }),
      computePlatform = schema.new({
         id = id.from(_N, "ProfilingGroupDescription", "computePlatform"),
         type = "string",
         name = "computePlatform",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "ProfilingGroupDescription", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateProfilingGroupOutput = schema.new({
   id = id.from(_N, "CreateProfilingGroupResponse"),
   type = "structure",
   members = {
      profilingGroup = schema.new({
         id = id.from(_N, "CreateProfilingGroupOutput", "profilingGroup"),
         type = "structure",
         name = "profilingGroup",
         target_id = id.from(_N, "ProfilingGroupDescription"),
         target = M.ProfilingGroupDescription,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteProfilingGroupInput = schema.new({
   id = id.from(_N, "DeleteProfilingGroupRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "DeleteProfilingGroupInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteProfilingGroupOutput = schema.new({
   id = id.from(_N, "DeleteProfilingGroupResponse"),
   type = "structure",
})

M.DescribeProfilingGroupInput = schema.new({
   id = id.from(_N, "DescribeProfilingGroupRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "DescribeProfilingGroupInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeProfilingGroupOutput = schema.new({
   id = id.from(_N, "DescribeProfilingGroupResponse"),
   type = "structure",
   members = {
      profilingGroup = schema.new({
         id = id.from(_N, "DescribeProfilingGroupOutput", "profilingGroup"),
         type = "structure",
         name = "profilingGroup",
         target_id = id.from(_N, "ProfilingGroupDescription"),
         target = M.ProfilingGroupDescription,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetNotificationConfigurationInput = schema.new({
   id = id.from(_N, "GetNotificationConfigurationRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "GetNotificationConfigurationInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetNotificationConfigurationOutput = schema.new({
   id = id.from(_N, "GetNotificationConfigurationResponse"),
   type = "structure",
   members = {
      notificationConfiguration = schema.new({
         id = id.from(_N, "GetNotificationConfigurationOutput", "notificationConfiguration"),
         type = "structure",
         name = "notificationConfiguration",
         target_id = id.from(_N, "NotificationConfiguration"),
         target = M.NotificationConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetPolicyInput = schema.new({
   id = id.from(_N, "GetPolicyRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "GetPolicyInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetPolicyOutput = schema.new({
   id = id.from(_N, "GetPolicyResponse"),
   type = "structure",
   members = {
      policy = schema.new({
         id = id.from(_N, "GetPolicyOutput", "policy"),
         type = "string",
         name = "policy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      revisionId = schema.new({
         id = id.from(_N, "GetPolicyOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetProfileInput = schema.new({
   id = id.from(_N, "GetProfileRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "GetProfileInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "GetProfileInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "startTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "startTime" },
         },
      }),
      period = schema.new({
         id = id.from(_N, "GetProfileInput", "period"),
         type = "string",
         name = "period",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "period" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "GetProfileInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "endTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "endTime" },
         },
      }),
      maxDepth = schema.new({
         id = id.from(_N, "GetProfileInput", "maxDepth"),
         type = "integer",
         name = "maxDepth",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxDepth" },
         },
      }),
      accept = schema.new({
         id = id.from(_N, "GetProfileInput", "accept"),
         type = "string",
         name = "accept",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Accept" },
         },
      }),
   },
})

M.GetProfileOutput = schema.new({
   id = id.from(_N, "GetProfileResponse"),
   type = "structure",
   members = {
      profile = schema.new({
         id = id.from(_N, "GetProfileOutput", "profile"),
         type = "blob",
         name = "profile",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      contentType = schema.new({
         id = id.from(_N, "GetProfileOutput", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
      contentEncoding = schema.new({
         id = id.from(_N, "GetProfileOutput", "contentEncoding"),
         type = "string",
         name = "contentEncoding",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Encoding" },
         },
      }),
   },
})

M.GetRecommendationsInput = schema.new({
   id = id.from(_N, "GetRecommendationsRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "GetRecommendationsInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "GetRecommendationsInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "startTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "startTime" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "GetRecommendationsInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "endTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "endTime" },
         },
      }),
      locale = schema.new({
         id = id.from(_N, "GetRecommendationsInput", "locale"),
         type = "string",
         name = "locale",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "locale" },
         },
      }),
   },
})

M.Pattern = schema.new({
   id = id.from(_N, "Pattern"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "Pattern", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "Pattern", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "Pattern", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      resolutionSteps = schema.new({
         id = id.from(_N, "Pattern", "resolutionSteps"),
         type = "string",
         name = "resolutionSteps",
         target_id = prelude.String.id,
      }),
      targetFrames = schema.new({
         id = id.from(_N, "Pattern", "targetFrames"),
         type = "list",
         name = "targetFrames",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "list", list_member = prelude.String }),
      }),
      thresholdPercent = schema.new({
         id = id.from(_N, "Pattern", "thresholdPercent"),
         type = "double",
         name = "thresholdPercent",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      countersToAggregate = schema.new({
         id = id.from(_N, "Pattern", "countersToAggregate"),
         type = "list",
         name = "countersToAggregate",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.Match = schema.new({
   id = id.from(_N, "Match"),
   type = "structure",
   members = {
      targetFramesIndex = schema.new({
         id = id.from(_N, "Match", "targetFramesIndex"),
         type = "integer",
         name = "targetFramesIndex",
         target_id = prelude.Integer.id,
      }),
      frameAddress = schema.new({
         id = id.from(_N, "Match", "frameAddress"),
         type = "string",
         name = "frameAddress",
         target_id = prelude.String.id,
      }),
      thresholdBreachValue = schema.new({
         id = id.from(_N, "Match", "thresholdBreachValue"),
         type = "double",
         name = "thresholdBreachValue",
         target_id = prelude.Double.id,
      }),
   },
})

M.Recommendation = schema.new({
   id = id.from(_N, "Recommendation"),
   type = "structure",
   members = {
      allMatchesCount = schema.new({
         id = id.from(_N, "Recommendation", "allMatchesCount"),
         type = "integer",
         name = "allMatchesCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allMatchesSum = schema.new({
         id = id.from(_N, "Recommendation", "allMatchesSum"),
         type = "double",
         name = "allMatchesSum",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      pattern = schema.new({
         id = id.from(_N, "Recommendation", "pattern"),
         type = "structure",
         name = "pattern",
         target_id = id.from(_N, "Pattern"),
         target = M.Pattern,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      topMatches = schema.new({
         id = id.from(_N, "Recommendation", "topMatches"),
         type = "list",
         name = "topMatches",
         target_id = prelude.Document.id,
         list_member = M.Match,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "Recommendation", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "Recommendation", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetRecommendationsOutput = schema.new({
   id = id.from(_N, "GetRecommendationsResponse"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "GetRecommendationsOutput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      profileStartTime = schema.new({
         id = id.from(_N, "GetRecommendationsOutput", "profileStartTime"),
         type = "timestamp",
         name = "profileStartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      profileEndTime = schema.new({
         id = id.from(_N, "GetRecommendationsOutput", "profileEndTime"),
         type = "timestamp",
         name = "profileEndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      recommendations = schema.new({
         id = id.from(_N, "GetRecommendationsOutput", "recommendations"),
         type = "list",
         name = "recommendations",
         target_id = prelude.Document.id,
         list_member = M.Recommendation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      anomalies = schema.new({
         id = id.from(_N, "GetRecommendationsOutput", "anomalies"),
         type = "list",
         name = "anomalies",
         target_id = prelude.Document.id,
         list_member = M.Anomaly,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListFindingsReportsInput = schema.new({
   id = id.from(_N, "ListFindingsReportsRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "ListFindingsReportsInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "ListFindingsReportsInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "startTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "startTime" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ListFindingsReportsInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "endTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "endTime" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFindingsReportsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListFindingsReportsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      dailyReportsOnly = schema.new({
         id = id.from(_N, "ListFindingsReportsInput", "dailyReportsOnly"),
         type = "boolean",
         name = "dailyReportsOnly",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "dailyReportsOnly" },
         },
      }),
   },
})

M.ListFindingsReportsOutput = schema.new({
   id = id.from(_N, "ListFindingsReportsResponse"),
   type = "structure",
   members = {
      findingsReportSummaries = schema.new({
         id = id.from(_N, "ListFindingsReportsOutput", "findingsReportSummaries"),
         type = "list",
         name = "findingsReportSummaries",
         target_id = prelude.Document.id,
         list_member = M.FindingsReportSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFindingsReportsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProfileTimesInput = schema.new({
   id = id.from(_N, "ListProfileTimesRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "ListProfileTimesInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "ListProfileTimesInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "startTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "startTime" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ListProfileTimesInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "endTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "endTime" },
         },
      }),
      period = schema.new({
         id = id.from(_N, "ListProfileTimesInput", "period"),
         type = "string",
         name = "period",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "period" },
         },
      }),
      orderBy = schema.new({
         id = id.from(_N, "ListProfileTimesInput", "orderBy"),
         type = "string",
         name = "orderBy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "orderBy" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListProfileTimesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListProfileTimesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ProfileTime = schema.new({
   id = id.from(_N, "ProfileTime"),
   type = "structure",
   members = {
      start = schema.new({
         id = id.from(_N, "ProfileTime", "start"),
         type = "timestamp",
         name = "start",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.ListProfileTimesOutput = schema.new({
   id = id.from(_N, "ListProfileTimesResponse"),
   type = "structure",
   members = {
      profileTimes = schema.new({
         id = id.from(_N, "ListProfileTimesOutput", "profileTimes"),
         type = "list",
         name = "profileTimes",
         target_id = prelude.Document.id,
         list_member = M.ProfileTime,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListProfileTimesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProfilingGroupsInput = schema.new({
   id = id.from(_N, "ListProfilingGroupsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListProfilingGroupsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListProfilingGroupsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      includeDescription = schema.new({
         id = id.from(_N, "ListProfilingGroupsInput", "includeDescription"),
         type = "boolean",
         name = "includeDescription",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "includeDescription" },
         },
      }),
   },
})

M.ListProfilingGroupsOutput = schema.new({
   id = id.from(_N, "ListProfilingGroupsResponse"),
   type = "structure",
   members = {
      profilingGroupNames = schema.new({
         id = id.from(_N, "ListProfilingGroupsOutput", "profilingGroupNames"),
         type = "list",
         name = "profilingGroupNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      profilingGroups = schema.new({
         id = id.from(_N, "ListProfilingGroupsOutput", "profilingGroups"),
         type = "list",
         name = "profilingGroups",
         target_id = prelude.Document.id,
         list_member = M.ProfilingGroupDescription,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListProfilingGroupsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PostAgentProfileInput = schema.new({
   id = id.from(_N, "PostAgentProfileRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "PostAgentProfileInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      agentProfile = schema.new({
         id = id.from(_N, "PostAgentProfileInput", "agentProfile"),
         type = "blob",
         name = "agentProfile",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      profileToken = schema.new({
         id = id.from(_N, "PostAgentProfileInput", "profileToken"),
         type = "string",
         name = "profileToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "profileToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      contentType = schema.new({
         id = id.from(_N, "PostAgentProfileInput", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
   },
})

M.PostAgentProfileOutput = schema.new({
   id = id.from(_N, "PostAgentProfileResponse"),
   type = "structure",
})

M.PutPermissionInput = schema.new({
   id = id.from(_N, "PutPermissionRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "PutPermissionInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      actionGroup = schema.new({
         id = id.from(_N, "PutPermissionInput", "actionGroup"),
         type = "string",
         name = "actionGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      principals = schema.new({
         id = id.from(_N, "PutPermissionInput", "principals"),
         type = "list",
         name = "principals",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      revisionId = schema.new({
         id = id.from(_N, "PutPermissionInput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
   },
})

M.PutPermissionOutput = schema.new({
   id = id.from(_N, "PutPermissionResponse"),
   type = "structure",
   members = {
      policy = schema.new({
         id = id.from(_N, "PutPermissionOutput", "policy"),
         type = "string",
         name = "policy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      revisionId = schema.new({
         id = id.from(_N, "PutPermissionOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RemoveNotificationChannelInput = schema.new({
   id = id.from(_N, "RemoveNotificationChannelRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "RemoveNotificationChannelInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      channelId = schema.new({
         id = id.from(_N, "RemoveNotificationChannelInput", "channelId"),
         type = "string",
         name = "channelId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RemoveNotificationChannelOutput = schema.new({
   id = id.from(_N, "RemoveNotificationChannelResponse"),
   type = "structure",
   members = {
      notificationConfiguration = schema.new({
         id = id.from(_N, "RemoveNotificationChannelOutput", "notificationConfiguration"),
         type = "structure",
         name = "notificationConfiguration",
         target_id = id.from(_N, "NotificationConfiguration"),
         target = M.NotificationConfiguration,
      }),
   },
})

M.RemovePermissionInput = schema.new({
   id = id.from(_N, "RemovePermissionRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "RemovePermissionInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      actionGroup = schema.new({
         id = id.from(_N, "RemovePermissionInput", "actionGroup"),
         type = "string",
         name = "actionGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      revisionId = schema.new({
         id = id.from(_N, "RemovePermissionInput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "revisionId" },
         },
      }),
   },
})

M.RemovePermissionOutput = schema.new({
   id = id.from(_N, "RemovePermissionResponse"),
   type = "structure",
   members = {
      policy = schema.new({
         id = id.from(_N, "RemovePermissionOutput", "policy"),
         type = "string",
         name = "policy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      revisionId = schema.new({
         id = id.from(_N, "RemovePermissionOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SubmitFeedbackInput = schema.new({
   id = id.from(_N, "SubmitFeedbackRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "SubmitFeedbackInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      anomalyInstanceId = schema.new({
         id = id.from(_N, "SubmitFeedbackInput", "anomalyInstanceId"),
         type = "string",
         name = "anomalyInstanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "SubmitFeedbackInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      comment = schema.new({
         id = id.from(_N, "SubmitFeedbackInput", "comment"),
         type = "string",
         name = "comment",
         target_id = prelude.String.id,
      }),
   },
})

M.SubmitFeedbackOutput = schema.new({
   id = id.from(_N, "SubmitFeedbackResponse"),
   type = "structure",
})

M.UpdateProfilingGroupInput = schema.new({
   id = id.from(_N, "UpdateProfilingGroupRequest"),
   type = "structure",
   members = {
      profilingGroupName = schema.new({
         id = id.from(_N, "UpdateProfilingGroupInput", "profilingGroupName"),
         type = "string",
         name = "profilingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      agentOrchestrationConfig = schema.new({
         id = id.from(_N, "UpdateProfilingGroupInput", "agentOrchestrationConfig"),
         type = "structure",
         name = "agentOrchestrationConfig",
         target_id = id.from(_N, "AgentOrchestrationConfig"),
         target = M.AgentOrchestrationConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateProfilingGroupOutput = schema.new({
   id = id.from(_N, "UpdateProfilingGroupResponse"),
   type = "structure",
   members = {
      profilingGroup = schema.new({
         id = id.from(_N, "UpdateProfilingGroupOutput", "profilingGroup"),
         type = "structure",
         name = "profilingGroup",
         target_id = id.from(_N, "ProfilingGroupDescription"),
         target = M.ProfilingGroupDescription,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
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
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "tagKeys" },
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
})


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

M.Service = schema.service({
   id = id.from("com.amazonaws.codeguruprofiler", "CodeGuruProfiler"),
   version = "2019-07-18",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddNotificationChannels = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "AddNotificationChannels"),
   input = M.AddNotificationChannelsInput,
   output = M.AddNotificationChannelsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/profilingGroups/{profilingGroupName}/notificationConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetFrameMetricData = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "BatchGetFrameMetricData"),
   input = M.BatchGetFrameMetricDataInput,
   output = M.BatchGetFrameMetricDataOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/profilingGroups/{profilingGroupName}/frames/-/metrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ConfigureAgent = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "ConfigureAgent"),
   input = M.ConfigureAgentInput,
   output = M.ConfigureAgentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/profilingGroups/{profilingGroupName}/configureAgent" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateProfilingGroup = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "CreateProfilingGroup"),
   input = M.CreateProfilingGroupInput,
   output = M.CreateProfilingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/profilingGroups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteProfilingGroup = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "DeleteProfilingGroup"),
   input = M.DeleteProfilingGroupInput,
   output = M.DeleteProfilingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/profilingGroups/{profilingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeProfilingGroup = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "DescribeProfilingGroup"),
   input = M.DescribeProfilingGroupInput,
   output = M.DescribeProfilingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profilingGroups/{profilingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetFindingsReportAccountSummary = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "GetFindingsReportAccountSummary"),
   input = M.GetFindingsReportAccountSummaryInput,
   output = M.GetFindingsReportAccountSummaryOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/internal/findingsReports" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetNotificationConfiguration = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "GetNotificationConfiguration"),
   input = M.GetNotificationConfigurationInput,
   output = M.GetNotificationConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profilingGroups/{profilingGroupName}/notificationConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPolicy = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "GetPolicy"),
   input = M.GetPolicyInput,
   output = M.GetPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profilingGroups/{profilingGroupName}/policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetProfile = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "GetProfile"),
   input = M.GetProfileInput,
   output = M.GetProfileOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profilingGroups/{profilingGroupName}/profile" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRecommendations = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "GetRecommendations"),
   input = M.GetRecommendationsInput,
   output = M.GetRecommendationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/internal/profilingGroups/{profilingGroupName}/recommendations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListFindingsReports = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "ListFindingsReports"),
   input = M.ListFindingsReportsInput,
   output = M.ListFindingsReportsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/internal/profilingGroups/{profilingGroupName}/findingsReports" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProfileTimes = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "ListProfileTimes"),
   input = M.ListProfileTimesInput,
   output = M.ListProfileTimesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profilingGroups/{profilingGroupName}/profileTimes" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProfilingGroups = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "ListProfilingGroups"),
   input = M.ListProfilingGroupsInput,
   output = M.ListProfilingGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profilingGroups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PostAgentProfile = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "PostAgentProfile"),
   input = M.PostAgentProfileInput,
   output = M.PostAgentProfileOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/profilingGroups/{profilingGroupName}/agentProfile" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutPermission = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "PutPermission"),
   input = M.PutPermissionInput,
   output = M.PutPermissionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/profilingGroups/{profilingGroupName}/policy/{actionGroup}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveNotificationChannel = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "RemoveNotificationChannel"),
   input = M.RemoveNotificationChannelInput,
   output = M.RemoveNotificationChannelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/profilingGroups/{profilingGroupName}/notificationConfiguration/{channelId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemovePermission = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "RemovePermission"),
   input = M.RemovePermissionInput,
   output = M.RemovePermissionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/profilingGroups/{profilingGroupName}/policy/{actionGroup}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SubmitFeedback = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "SubmitFeedback"),
   input = M.SubmitFeedbackInput,
   output = M.SubmitFeedbackOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/internal/profilingGroups/{profilingGroupName}/anomalies/{anomalyInstanceId}/feedback" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateProfilingGroup = schema.operation({
   id = id.from("com.amazonaws.codeguruprofiler", "UpdateProfilingGroup"),
   input = M.UpdateProfilingGroupInput,
   output = M.UpdateProfilingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/profilingGroups/{profilingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
