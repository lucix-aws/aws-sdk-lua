

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.xray"

local M = {}

M.TraceIdList = schema.new({ type = "list", list_member = prelude.String })

M.TraceList = schema.new({ type = "list", list_member = M.Trace })

M.UnprocessedTraceIdList = schema.new({ type = "list", list_member = prelude.String })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.GroupSummaryList = schema.new({ type = "list", list_member = M.GroupSummary })

M.IndexingRuleList = schema.new({ type = "list", list_member = M.IndexingRule })

M.InsightEventList = schema.new({ type = "list", list_member = M.InsightEvent })

M.InsightImpactGraphServiceList = schema.new({ type = "list", list_member = M.InsightImpactGraphService })

M.InsightStateList = schema.new({ type = "list", list_member = prelude.String })

M.InsightSummaryList = schema.new({ type = "list", list_member = M.InsightSummary })

M.RetrievedServicesList = schema.new({ type = "list", list_member = M.RetrievedService })

M.SamplingRuleRecordList = schema.new({ type = "list", list_member = M.SamplingRuleRecord })

M.SamplingStatisticSummaryList = schema.new({ type = "list", list_member = M.SamplingStatisticSummary })

M.SamplingStatisticsDocumentList = schema.new({ type = "list", list_member = M.SamplingStatisticsDocument })

M.SamplingBoostStatisticsDocumentList = schema.new({ type = "list", list_member = M.SamplingBoostStatisticsDocument })

M.SamplingTargetDocumentList = schema.new({ type = "list", list_member = M.SamplingTargetDocument })

M.UnprocessedStatisticsList = schema.new({ type = "list", list_member = M.UnprocessedStatistics })

M.ServiceList = schema.new({ type = "list", list_member = M.Service })

M.TimeSeriesServiceStatisticsList = schema.new({ type = "list", list_member = M.TimeSeriesServiceStatistics })

M.TraceSummaryList = schema.new({ type = "list", list_member = M.TraceSummary })

M.ResourcePolicyList = schema.new({ type = "list", list_member = M.ResourcePolicy })

M.TraceSpanList = schema.new({ type = "list", list_member = M.RetrievedTrace })

M.TelemetryRecordList = schema.new({ type = "list", list_member = M.TelemetryRecord })

M.TraceSegmentDocumentList = schema.new({ type = "list", list_member = prelude.String })

M.UnprocessedTraceSegmentList = schema.new({ type = "list", list_member = M.UnprocessedTraceSegment })

M.TraceIdListForRetrieval = schema.new({ type = "list", list_member = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.AttributeMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.InsightCategoryList = schema.new({ type = "list", list_member = prelude.String })

M.AnomalousServiceList = schema.new({ type = "list", list_member = M.AnomalousService })

M.SegmentList = schema.new({ type = "list", list_member = M.Segment })

M.ServiceNames = schema.new({ type = "list", list_member = prelude.String })

M.InsightImpactGraphEdgeList = schema.new({ type = "list", list_member = M.InsightImpactGraphEdge })

M.LinksList = schema.new({ type = "list", list_member = M.GraphLink })

M.EdgeList = schema.new({ type = "list", list_member = M.Edge })

M.Histogram = schema.new({ type = "list", list_member = M.HistogramEntry })

M.Annotations = schema.new({ type = "map", map_key = prelude.String, map_value = M.ValuesWithServiceIds })

M.TraceUsers = schema.new({ type = "list", list_member = M.TraceUser })

M.ServiceIds = schema.new({ type = "list", list_member = M.ServiceId })

M.TraceResourceARNs = schema.new({ type = "list", list_member = M.ResourceARNDetail })

M.TraceInstanceIds = schema.new({ type = "list", list_member = M.InstanceIdDetail })

M.TraceAvailabilityZones = schema.new({ type = "list", list_member = M.AvailabilityZoneDetail })

M.FaultRootCauses = schema.new({ type = "list", list_member = M.FaultRootCause })

M.ErrorRootCauses = schema.new({ type = "list", list_member = M.ErrorRootCause })

M.ResponseTimeRootCauses = schema.new({ type = "list", list_member = M.ResponseTimeRootCause })

M.SpanList = schema.new({ type = "list", list_member = M.Span })

M.ValuesWithServiceIds = schema.new({ type = "list", list_member = M.ValueWithServiceIds })

M.AliasList = schema.new({ type = "list", list_member = M.Alias })

M.FaultRootCauseServices = schema.new({ type = "list", list_member = M.FaultRootCauseService })

M.ErrorRootCauseServices = schema.new({ type = "list", list_member = M.ErrorRootCauseService })

M.ResponseTimeRootCauseServices = schema.new({ type = "list", list_member = M.ResponseTimeRootCauseService })

M.AliasNames = schema.new({ type = "list", list_member = prelude.String })

M.FaultRootCauseEntityPath = schema.new({ type = "list", list_member = M.FaultRootCauseEntity })

M.ErrorRootCauseEntityPath = schema.new({ type = "list", list_member = M.ErrorRootCauseEntity })

M.ResponseTimeRootCauseEntityPath = schema.new({ type = "list", list_member = M.ResponseTimeRootCauseEntity })

M.RootCauseExceptions = schema.new({ type = "list", list_member = M.RootCauseException })

M.Alias = schema.new({
   id = id.from(_N, "Alias"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Alias", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Names = schema.new({
         id = id.from(_N, "Alias", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Type = schema.new({
         id = id.from(_N, "Alias", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
   },
})

M.AnnotationValue = schema.new({
   id = id.from(_N, "AnnotationValue"),
   type = "union",
   members = {
      NumberValue = schema.new({
         id = id.from(_N, "AnnotationValue", "NumberValue"),
         type = "double",
         name = "NumberValue",
         target_id = prelude.Double.id,
      }),
      BooleanValue = schema.new({
         id = id.from(_N, "AnnotationValue", "BooleanValue"),
         type = "boolean",
         name = "BooleanValue",
         target_id = prelude.Boolean.id,
      }),
      StringValue = schema.new({
         id = id.from(_N, "AnnotationValue", "StringValue"),
         type = "string",
         name = "StringValue",
         target_id = prelude.String.id,
      }),
   },
})

M.ServiceId = schema.new({
   id = id.from(_N, "ServiceId"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ServiceId", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Names = schema.new({
         id = id.from(_N, "ServiceId", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AccountId = schema.new({
         id = id.from(_N, "ServiceId", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "ServiceId", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
   },
})

M.ValueWithServiceIds = schema.new({
   id = id.from(_N, "ValueWithServiceIds"),
   type = "structure",
   members = {
      AnnotationValue = schema.new({
         id = id.from(_N, "ValueWithServiceIds", "AnnotationValue"),
         type = "union",
         name = "AnnotationValue",
         target_id = id.from(_N, "AnnotationValue"),
         target = M.AnnotationValue,
      }),
      ServiceIds = schema.new({
         id = id.from(_N, "ValueWithServiceIds", "ServiceIds"),
         type = "list",
         name = "ServiceIds",
         target_id = prelude.Document.id,
         list_member = M.ServiceId,
      }),
   },
})

M.AnomalousService = schema.new({
   id = id.from(_N, "AnomalousService"),
   type = "structure",
   members = {
      ServiceId = schema.new({
         id = id.from(_N, "AnomalousService", "ServiceId"),
         type = "structure",
         name = "ServiceId",
         target_id = id.from(_N, "ServiceId"),
         target = M.ServiceId,
      }),
   },
})

M.AvailabilityZoneDetail = schema.new({
   id = id.from(_N, "AvailabilityZoneDetail"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "AvailabilityZoneDetail", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchGetTracesInput = schema.new({
   id = id.from(_N, "BatchGetTracesRequest"),
   type = "structure",
   members = {
      TraceIds = schema.new({
         id = id.from(_N, "BatchGetTracesInput", "TraceIds"),
         type = "list",
         name = "TraceIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "BatchGetTracesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.Segment = schema.new({
   id = id.from(_N, "Segment"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "Segment", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Document = schema.new({
         id = id.from(_N, "Segment", "Document"),
         type = "string",
         name = "Document",
         target_id = prelude.String.id,
      }),
   },
})

M.Trace = schema.new({
   id = id.from(_N, "Trace"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "Trace", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Duration = schema.new({
         id = id.from(_N, "Trace", "Duration"),
         type = "double",
         name = "Duration",
         target_id = prelude.Double.id,
      }),
      LimitExceeded = schema.new({
         id = id.from(_N, "Trace", "LimitExceeded"),
         type = "boolean",
         name = "LimitExceeded",
         target_id = prelude.Boolean.id,
      }),
      Segments = schema.new({
         id = id.from(_N, "Trace", "Segments"),
         type = "list",
         name = "Segments",
         target_id = prelude.Document.id,
         list_member = M.Segment,
      }),
   },
})

M.BatchGetTracesOutput = schema.new({
   id = id.from(_N, "BatchGetTracesResult"),
   type = "structure",
   members = {
      Traces = schema.new({
         id = id.from(_N, "BatchGetTracesOutput", "Traces"),
         type = "list",
         name = "Traces",
         target_id = prelude.Document.id,
         list_member = M.Trace,
      }),
      UnprocessedTraceIds = schema.new({
         id = id.from(_N, "BatchGetTracesOutput", "UnprocessedTraceIds"),
         type = "list",
         name = "UnprocessedTraceIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "BatchGetTracesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidRequestException = schema.new({
   id = id.from(_N, "InvalidRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidRequestException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ThrottledException = schema.new({
   id = id.from(_N, "ThrottledException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ThrottledException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.CancelTraceRetrievalInput = schema.new({
   id = id.from(_N, "CancelTraceRetrievalRequest"),
   type = "structure",
   members = {
      RetrievalToken = schema.new({
         id = id.from(_N, "CancelTraceRetrievalInput", "RetrievalToken"),
         type = "string",
         name = "RetrievalToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CancelTraceRetrievalOutput = schema.new({
   id = id.from(_N, "CancelTraceRetrievalResult"),
   type = "structure",
})

M.ResourceNotFoundException = schema.new({
   id = id.from(_N, "ResourceNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      ResourceName = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
      }),
   },
})

M.InsightsConfiguration = schema.new({
   id = id.from(_N, "InsightsConfiguration"),
   type = "structure",
   members = {
      InsightsEnabled = schema.new({
         id = id.from(_N, "InsightsConfiguration", "InsightsEnabled"),
         type = "boolean",
         name = "InsightsEnabled",
         target_id = prelude.Boolean.id,
      }),
      NotificationsEnabled = schema.new({
         id = id.from(_N, "InsightsConfiguration", "NotificationsEnabled"),
         type = "boolean",
         name = "NotificationsEnabled",
         target_id = prelude.Boolean.id,
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

M.CreateGroupInput = schema.new({
   id = id.from(_N, "CreateGroupRequest"),
   type = "structure",
   members = {
      GroupName = schema.new({
         id = id.from(_N, "CreateGroupInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FilterExpression = schema.new({
         id = id.from(_N, "CreateGroupInput", "FilterExpression"),
         type = "string",
         name = "FilterExpression",
         target_id = prelude.String.id,
      }),
      InsightsConfiguration = schema.new({
         id = id.from(_N, "CreateGroupInput", "InsightsConfiguration"),
         type = "structure",
         name = "InsightsConfiguration",
         target_id = id.from(_N, "InsightsConfiguration"),
         target = M.InsightsConfiguration,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateGroupInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.Group = schema.new({
   id = id.from(_N, "Group"),
   type = "structure",
   members = {
      GroupName = schema.new({
         id = id.from(_N, "Group", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      GroupARN = schema.new({
         id = id.from(_N, "Group", "GroupARN"),
         type = "string",
         name = "GroupARN",
         target_id = prelude.String.id,
      }),
      FilterExpression = schema.new({
         id = id.from(_N, "Group", "FilterExpression"),
         type = "string",
         name = "FilterExpression",
         target_id = prelude.String.id,
      }),
      InsightsConfiguration = schema.new({
         id = id.from(_N, "Group", "InsightsConfiguration"),
         type = "structure",
         name = "InsightsConfiguration",
         target_id = id.from(_N, "InsightsConfiguration"),
         target = M.InsightsConfiguration,
      }),
   },
})

M.CreateGroupOutput = schema.new({
   id = id.from(_N, "CreateGroupResult"),
   type = "structure",
   members = {
      Group = schema.new({
         id = id.from(_N, "CreateGroupOutput", "Group"),
         type = "structure",
         name = "Group",
         target_id = id.from(_N, "Group"),
         target = M.Group,
      }),
   },
})

M.SamplingRateBoost = schema.new({
   id = id.from(_N, "SamplingRateBoost"),
   type = "structure",
   members = {
      MaxRate = schema.new({
         id = id.from(_N, "SamplingRateBoost", "MaxRate"),
         type = "double",
         name = "MaxRate",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      CooldownWindowMinutes = schema.new({
         id = id.from(_N, "SamplingRateBoost", "CooldownWindowMinutes"),
         type = "integer",
         name = "CooldownWindowMinutes",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.SamplingRule = schema.new({
   id = id.from(_N, "SamplingRule"),
   type = "structure",
   members = {
      RuleName = schema.new({
         id = id.from(_N, "SamplingRule", "RuleName"),
         type = "string",
         name = "RuleName",
         target_id = prelude.String.id,
      }),
      RuleARN = schema.new({
         id = id.from(_N, "SamplingRule", "RuleARN"),
         type = "string",
         name = "RuleARN",
         target_id = prelude.String.id,
      }),
      ResourceARN = schema.new({
         id = id.from(_N, "SamplingRule", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Priority = schema.new({
         id = id.from(_N, "SamplingRule", "Priority"),
         type = "integer",
         name = "Priority",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FixedRate = schema.new({
         id = id.from(_N, "SamplingRule", "FixedRate"),
         type = "double",
         name = "FixedRate",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      ReservoirSize = schema.new({
         id = id.from(_N, "SamplingRule", "ReservoirSize"),
         type = "integer",
         name = "ReservoirSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      ServiceName = schema.new({
         id = id.from(_N, "SamplingRule", "ServiceName"),
         type = "string",
         name = "ServiceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ServiceType = schema.new({
         id = id.from(_N, "SamplingRule", "ServiceType"),
         type = "string",
         name = "ServiceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Host = schema.new({
         id = id.from(_N, "SamplingRule", "Host"),
         type = "string",
         name = "Host",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      HTTPMethod = schema.new({
         id = id.from(_N, "SamplingRule", "HTTPMethod"),
         type = "string",
         name = "HTTPMethod",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      URLPath = schema.new({
         id = id.from(_N, "SamplingRule", "URLPath"),
         type = "string",
         name = "URLPath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "SamplingRule", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Attributes = schema.new({
         id = id.from(_N, "SamplingRule", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      SamplingRateBoost = schema.new({
         id = id.from(_N, "SamplingRule", "SamplingRateBoost"),
         type = "structure",
         name = "SamplingRateBoost",
         target_id = id.from(_N, "SamplingRateBoost"),
         target = M.SamplingRateBoost,
      }),
   },
})

M.CreateSamplingRuleInput = schema.new({
   id = id.from(_N, "CreateSamplingRuleRequest"),
   type = "structure",
   members = {
      SamplingRule = schema.new({
         id = id.from(_N, "CreateSamplingRuleInput", "SamplingRule"),
         type = "structure",
         name = "SamplingRule",
         target_id = id.from(_N, "SamplingRule"),
         target = M.SamplingRule,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateSamplingRuleInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.SamplingRuleRecord = schema.new({
   id = id.from(_N, "SamplingRuleRecord"),
   type = "structure",
   members = {
      SamplingRule = schema.new({
         id = id.from(_N, "SamplingRuleRecord", "SamplingRule"),
         type = "structure",
         name = "SamplingRule",
         target_id = id.from(_N, "SamplingRule"),
         target = M.SamplingRule,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "SamplingRuleRecord", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ModifiedAt = schema.new({
         id = id.from(_N, "SamplingRuleRecord", "ModifiedAt"),
         type = "timestamp",
         name = "ModifiedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateSamplingRuleOutput = schema.new({
   id = id.from(_N, "CreateSamplingRuleResult"),
   type = "structure",
   members = {
      SamplingRuleRecord = schema.new({
         id = id.from(_N, "CreateSamplingRuleOutput", "SamplingRuleRecord"),
         type = "structure",
         name = "SamplingRuleRecord",
         target_id = id.from(_N, "SamplingRuleRecord"),
         target = M.SamplingRuleRecord,
      }),
   },
})

M.RuleLimitExceededException = schema.new({
   id = id.from(_N, "RuleLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "RuleLimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteGroupInput = schema.new({
   id = id.from(_N, "DeleteGroupRequest"),
   type = "structure",
   members = {
      GroupName = schema.new({
         id = id.from(_N, "DeleteGroupInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      GroupARN = schema.new({
         id = id.from(_N, "DeleteGroupInput", "GroupARN"),
         type = "string",
         name = "GroupARN",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteGroupOutput = schema.new({
   id = id.from(_N, "DeleteGroupResult"),
   type = "structure",
})

M.DeleteResourcePolicyInput = schema.new({
   id = id.from(_N, "DeleteResourcePolicyRequest"),
   type = "structure",
   members = {
      PolicyName = schema.new({
         id = id.from(_N, "DeleteResourcePolicyInput", "PolicyName"),
         type = "string",
         name = "PolicyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PolicyRevisionId = schema.new({
         id = id.from(_N, "DeleteResourcePolicyInput", "PolicyRevisionId"),
         type = "string",
         name = "PolicyRevisionId",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteResourcePolicyOutput = schema.new({
   id = id.from(_N, "DeleteResourcePolicyResult"),
   type = "structure",
})

M.InvalidPolicyRevisionIdException = schema.new({
   id = id.from(_N, "InvalidPolicyRevisionIdException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidPolicyRevisionIdException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteSamplingRuleInput = schema.new({
   id = id.from(_N, "DeleteSamplingRuleRequest"),
   type = "structure",
   members = {
      RuleName = schema.new({
         id = id.from(_N, "DeleteSamplingRuleInput", "RuleName"),
         type = "string",
         name = "RuleName",
         target_id = prelude.String.id,
      }),
      RuleARN = schema.new({
         id = id.from(_N, "DeleteSamplingRuleInput", "RuleARN"),
         type = "string",
         name = "RuleARN",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteSamplingRuleOutput = schema.new({
   id = id.from(_N, "DeleteSamplingRuleResult"),
   type = "structure",
   members = {
      SamplingRuleRecord = schema.new({
         id = id.from(_N, "DeleteSamplingRuleOutput", "SamplingRuleRecord"),
         type = "structure",
         name = "SamplingRuleRecord",
         target_id = id.from(_N, "SamplingRuleRecord"),
         target = M.SamplingRuleRecord,
      }),
   },
})

M.GetEncryptionConfigInput = schema.new({
   id = id.from(_N, "GetEncryptionConfigRequest"),
   type = "structure",
})

M.EncryptionConfig = schema.new({
   id = id.from(_N, "EncryptionConfig"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "EncryptionConfig", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "EncryptionConfig", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "EncryptionConfig", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
   },
})

M.GetEncryptionConfigOutput = schema.new({
   id = id.from(_N, "GetEncryptionConfigResult"),
   type = "structure",
   members = {
      EncryptionConfig = schema.new({
         id = id.from(_N, "GetEncryptionConfigOutput", "EncryptionConfig"),
         type = "structure",
         name = "EncryptionConfig",
         target_id = id.from(_N, "EncryptionConfig"),
         target = M.EncryptionConfig,
      }),
   },
})

M.GetGroupInput = schema.new({
   id = id.from(_N, "GetGroupRequest"),
   type = "structure",
   members = {
      GroupName = schema.new({
         id = id.from(_N, "GetGroupInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      GroupARN = schema.new({
         id = id.from(_N, "GetGroupInput", "GroupARN"),
         type = "string",
         name = "GroupARN",
         target_id = prelude.String.id,
      }),
   },
})

M.GetGroupOutput = schema.new({
   id = id.from(_N, "GetGroupResult"),
   type = "structure",
   members = {
      Group = schema.new({
         id = id.from(_N, "GetGroupOutput", "Group"),
         type = "structure",
         name = "Group",
         target_id = id.from(_N, "Group"),
         target = M.Group,
      }),
   },
})

M.GetGroupsInput = schema.new({
   id = id.from(_N, "GetGroupsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "GetGroupsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GroupSummary = schema.new({
   id = id.from(_N, "GroupSummary"),
   type = "structure",
   members = {
      GroupName = schema.new({
         id = id.from(_N, "GroupSummary", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      GroupARN = schema.new({
         id = id.from(_N, "GroupSummary", "GroupARN"),
         type = "string",
         name = "GroupARN",
         target_id = prelude.String.id,
      }),
      FilterExpression = schema.new({
         id = id.from(_N, "GroupSummary", "FilterExpression"),
         type = "string",
         name = "FilterExpression",
         target_id = prelude.String.id,
      }),
      InsightsConfiguration = schema.new({
         id = id.from(_N, "GroupSummary", "InsightsConfiguration"),
         type = "structure",
         name = "InsightsConfiguration",
         target_id = id.from(_N, "InsightsConfiguration"),
         target = M.InsightsConfiguration,
      }),
   },
})

M.GetGroupsOutput = schema.new({
   id = id.from(_N, "GetGroupsResult"),
   type = "structure",
   members = {
      Groups = schema.new({
         id = id.from(_N, "GetGroupsOutput", "Groups"),
         type = "list",
         name = "Groups",
         target_id = prelude.Document.id,
         list_member = M.GroupSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetGroupsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetIndexingRulesInput = schema.new({
   id = id.from(_N, "GetIndexingRulesRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "GetIndexingRulesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ProbabilisticRuleValue = schema.new({
   id = id.from(_N, "ProbabilisticRuleValue"),
   type = "structure",
   members = {
      DesiredSamplingPercentage = schema.new({
         id = id.from(_N, "ProbabilisticRuleValue", "DesiredSamplingPercentage"),
         type = "double",
         name = "DesiredSamplingPercentage",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ActualSamplingPercentage = schema.new({
         id = id.from(_N, "ProbabilisticRuleValue", "ActualSamplingPercentage"),
         type = "double",
         name = "ActualSamplingPercentage",
         target_id = prelude.Double.id,
      }),
   },
})

M.IndexingRuleValue = schema.new({
   id = id.from(_N, "IndexingRuleValue"),
   type = "union",
   members = {
      Probabilistic = schema.new({
         id = id.from(_N, "IndexingRuleValue", "Probabilistic"),
         type = "structure",
         name = "Probabilistic",
         target_id = id.from(_N, "ProbabilisticRuleValue"),
         target = M.ProbabilisticRuleValue,
      }),
   },
})

M.IndexingRule = schema.new({
   id = id.from(_N, "IndexingRule"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "IndexingRule", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ModifiedAt = schema.new({
         id = id.from(_N, "IndexingRule", "ModifiedAt"),
         type = "timestamp",
         name = "ModifiedAt",
         target_id = prelude.Timestamp.id,
      }),
      Rule = schema.new({
         id = id.from(_N, "IndexingRule", "Rule"),
         type = "union",
         name = "Rule",
         target_id = id.from(_N, "IndexingRuleValue"),
         target = M.IndexingRuleValue,
      }),
   },
})

M.GetIndexingRulesOutput = schema.new({
   id = id.from(_N, "GetIndexingRulesResult"),
   type = "structure",
   members = {
      IndexingRules = schema.new({
         id = id.from(_N, "GetIndexingRulesOutput", "IndexingRules"),
         type = "list",
         name = "IndexingRules",
         target_id = prelude.Document.id,
         list_member = M.IndexingRule,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetIndexingRulesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetInsightInput = schema.new({
   id = id.from(_N, "GetInsightRequest"),
   type = "structure",
   members = {
      InsightId = schema.new({
         id = id.from(_N, "GetInsightInput", "InsightId"),
         type = "string",
         name = "InsightId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RequestImpactStatistics = schema.new({
   id = id.from(_N, "RequestImpactStatistics"),
   type = "structure",
   members = {
      FaultCount = schema.new({
         id = id.from(_N, "RequestImpactStatistics", "FaultCount"),
         type = "long",
         name = "FaultCount",
         target_id = prelude.Long.id,
      }),
      OkCount = schema.new({
         id = id.from(_N, "RequestImpactStatistics", "OkCount"),
         type = "long",
         name = "OkCount",
         target_id = prelude.Long.id,
      }),
      TotalCount = schema.new({
         id = id.from(_N, "RequestImpactStatistics", "TotalCount"),
         type = "long",
         name = "TotalCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.Insight = schema.new({
   id = id.from(_N, "Insight"),
   type = "structure",
   members = {
      InsightId = schema.new({
         id = id.from(_N, "Insight", "InsightId"),
         type = "string",
         name = "InsightId",
         target_id = prelude.String.id,
      }),
      GroupARN = schema.new({
         id = id.from(_N, "Insight", "GroupARN"),
         type = "string",
         name = "GroupARN",
         target_id = prelude.String.id,
      }),
      GroupName = schema.new({
         id = id.from(_N, "Insight", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      RootCauseServiceId = schema.new({
         id = id.from(_N, "Insight", "RootCauseServiceId"),
         type = "structure",
         name = "RootCauseServiceId",
         target_id = id.from(_N, "ServiceId"),
         target = M.ServiceId,
      }),
      Categories = schema.new({
         id = id.from(_N, "Insight", "Categories"),
         type = "list",
         name = "Categories",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      State = schema.new({
         id = id.from(_N, "Insight", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "Insight", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "Insight", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      Summary = schema.new({
         id = id.from(_N, "Insight", "Summary"),
         type = "string",
         name = "Summary",
         target_id = prelude.String.id,
      }),
      ClientRequestImpactStatistics = schema.new({
         id = id.from(_N, "Insight", "ClientRequestImpactStatistics"),
         type = "structure",
         name = "ClientRequestImpactStatistics",
         target_id = id.from(_N, "RequestImpactStatistics"),
         target = M.RequestImpactStatistics,
      }),
      RootCauseServiceRequestImpactStatistics = schema.new({
         id = id.from(_N, "Insight", "RootCauseServiceRequestImpactStatistics"),
         type = "structure",
         name = "RootCauseServiceRequestImpactStatistics",
         target_id = id.from(_N, "RequestImpactStatistics"),
         target = M.RequestImpactStatistics,
      }),
      TopAnomalousServices = schema.new({
         id = id.from(_N, "Insight", "TopAnomalousServices"),
         type = "list",
         name = "TopAnomalousServices",
         target_id = prelude.Document.id,
         list_member = M.AnomalousService,
      }),
   },
})

M.GetInsightOutput = schema.new({
   id = id.from(_N, "GetInsightResult"),
   type = "structure",
   members = {
      Insight = schema.new({
         id = id.from(_N, "GetInsightOutput", "Insight"),
         type = "structure",
         name = "Insight",
         target_id = id.from(_N, "Insight"),
         target = M.Insight,
      }),
   },
})

M.GetInsightEventsInput = schema.new({
   id = id.from(_N, "GetInsightEventsRequest"),
   type = "structure",
   members = {
      InsightId = schema.new({
         id = id.from(_N, "GetInsightEventsInput", "InsightId"),
         type = "string",
         name = "InsightId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "GetInsightEventsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetInsightEventsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.InsightEvent = schema.new({
   id = id.from(_N, "InsightEvent"),
   type = "structure",
   members = {
      Summary = schema.new({
         id = id.from(_N, "InsightEvent", "Summary"),
         type = "string",
         name = "Summary",
         target_id = prelude.String.id,
      }),
      EventTime = schema.new({
         id = id.from(_N, "InsightEvent", "EventTime"),
         type = "timestamp",
         name = "EventTime",
         target_id = prelude.Timestamp.id,
      }),
      ClientRequestImpactStatistics = schema.new({
         id = id.from(_N, "InsightEvent", "ClientRequestImpactStatistics"),
         type = "structure",
         name = "ClientRequestImpactStatistics",
         target_id = id.from(_N, "RequestImpactStatistics"),
         target = M.RequestImpactStatistics,
      }),
      RootCauseServiceRequestImpactStatistics = schema.new({
         id = id.from(_N, "InsightEvent", "RootCauseServiceRequestImpactStatistics"),
         type = "structure",
         name = "RootCauseServiceRequestImpactStatistics",
         target_id = id.from(_N, "RequestImpactStatistics"),
         target = M.RequestImpactStatistics,
      }),
      TopAnomalousServices = schema.new({
         id = id.from(_N, "InsightEvent", "TopAnomalousServices"),
         type = "list",
         name = "TopAnomalousServices",
         target_id = prelude.Document.id,
         list_member = M.AnomalousService,
      }),
   },
})

M.GetInsightEventsOutput = schema.new({
   id = id.from(_N, "GetInsightEventsResult"),
   type = "structure",
   members = {
      InsightEvents = schema.new({
         id = id.from(_N, "GetInsightEventsOutput", "InsightEvents"),
         type = "list",
         name = "InsightEvents",
         target_id = prelude.Document.id,
         list_member = M.InsightEvent,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetInsightEventsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetInsightImpactGraphInput = schema.new({
   id = id.from(_N, "GetInsightImpactGraphRequest"),
   type = "structure",
   members = {
      InsightId = schema.new({
         id = id.from(_N, "GetInsightImpactGraphInput", "InsightId"),
         type = "string",
         name = "InsightId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "GetInsightImpactGraphInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "GetInsightImpactGraphInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetInsightImpactGraphInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.InsightImpactGraphEdge = schema.new({
   id = id.from(_N, "InsightImpactGraphEdge"),
   type = "structure",
   members = {
      ReferenceId = schema.new({
         id = id.from(_N, "InsightImpactGraphEdge", "ReferenceId"),
         type = "integer",
         name = "ReferenceId",
         target_id = prelude.Integer.id,
      }),
   },
})

M.InsightImpactGraphService = schema.new({
   id = id.from(_N, "InsightImpactGraphService"),
   type = "structure",
   members = {
      ReferenceId = schema.new({
         id = id.from(_N, "InsightImpactGraphService", "ReferenceId"),
         type = "integer",
         name = "ReferenceId",
         target_id = prelude.Integer.id,
      }),
      Type = schema.new({
         id = id.from(_N, "InsightImpactGraphService", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "InsightImpactGraphService", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Names = schema.new({
         id = id.from(_N, "InsightImpactGraphService", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AccountId = schema.new({
         id = id.from(_N, "InsightImpactGraphService", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      Edges = schema.new({
         id = id.from(_N, "InsightImpactGraphService", "Edges"),
         type = "list",
         name = "Edges",
         target_id = prelude.Document.id,
         list_member = M.InsightImpactGraphEdge,
      }),
   },
})

M.GetInsightImpactGraphOutput = schema.new({
   id = id.from(_N, "GetInsightImpactGraphResult"),
   type = "structure",
   members = {
      InsightId = schema.new({
         id = id.from(_N, "GetInsightImpactGraphOutput", "InsightId"),
         type = "string",
         name = "InsightId",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "GetInsightImpactGraphOutput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "GetInsightImpactGraphOutput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      ServiceGraphStartTime = schema.new({
         id = id.from(_N, "GetInsightImpactGraphOutput", "ServiceGraphStartTime"),
         type = "timestamp",
         name = "ServiceGraphStartTime",
         target_id = prelude.Timestamp.id,
      }),
      ServiceGraphEndTime = schema.new({
         id = id.from(_N, "GetInsightImpactGraphOutput", "ServiceGraphEndTime"),
         type = "timestamp",
         name = "ServiceGraphEndTime",
         target_id = prelude.Timestamp.id,
      }),
      Services = schema.new({
         id = id.from(_N, "GetInsightImpactGraphOutput", "Services"),
         type = "list",
         name = "Services",
         target_id = prelude.Document.id,
         list_member = M.InsightImpactGraphService,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetInsightImpactGraphOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetInsightSummariesInput = schema.new({
   id = id.from(_N, "GetInsightSummariesRequest"),
   type = "structure",
   members = {
      States = schema.new({
         id = id.from(_N, "GetInsightSummariesInput", "States"),
         type = "list",
         name = "States",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      GroupARN = schema.new({
         id = id.from(_N, "GetInsightSummariesInput", "GroupARN"),
         type = "string",
         name = "GroupARN",
         target_id = prelude.String.id,
      }),
      GroupName = schema.new({
         id = id.from(_N, "GetInsightSummariesInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "GetInsightSummariesInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "GetInsightSummariesInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "GetInsightSummariesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetInsightSummariesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.InsightSummary = schema.new({
   id = id.from(_N, "InsightSummary"),
   type = "structure",
   members = {
      InsightId = schema.new({
         id = id.from(_N, "InsightSummary", "InsightId"),
         type = "string",
         name = "InsightId",
         target_id = prelude.String.id,
      }),
      GroupARN = schema.new({
         id = id.from(_N, "InsightSummary", "GroupARN"),
         type = "string",
         name = "GroupARN",
         target_id = prelude.String.id,
      }),
      GroupName = schema.new({
         id = id.from(_N, "InsightSummary", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      RootCauseServiceId = schema.new({
         id = id.from(_N, "InsightSummary", "RootCauseServiceId"),
         type = "structure",
         name = "RootCauseServiceId",
         target_id = id.from(_N, "ServiceId"),
         target = M.ServiceId,
      }),
      Categories = schema.new({
         id = id.from(_N, "InsightSummary", "Categories"),
         type = "list",
         name = "Categories",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      State = schema.new({
         id = id.from(_N, "InsightSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "InsightSummary", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "InsightSummary", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      Summary = schema.new({
         id = id.from(_N, "InsightSummary", "Summary"),
         type = "string",
         name = "Summary",
         target_id = prelude.String.id,
      }),
      ClientRequestImpactStatistics = schema.new({
         id = id.from(_N, "InsightSummary", "ClientRequestImpactStatistics"),
         type = "structure",
         name = "ClientRequestImpactStatistics",
         target_id = id.from(_N, "RequestImpactStatistics"),
         target = M.RequestImpactStatistics,
      }),
      RootCauseServiceRequestImpactStatistics = schema.new({
         id = id.from(_N, "InsightSummary", "RootCauseServiceRequestImpactStatistics"),
         type = "structure",
         name = "RootCauseServiceRequestImpactStatistics",
         target_id = id.from(_N, "RequestImpactStatistics"),
         target = M.RequestImpactStatistics,
      }),
      TopAnomalousServices = schema.new({
         id = id.from(_N, "InsightSummary", "TopAnomalousServices"),
         type = "list",
         name = "TopAnomalousServices",
         target_id = prelude.Document.id,
         list_member = M.AnomalousService,
      }),
      LastUpdateTime = schema.new({
         id = id.from(_N, "InsightSummary", "LastUpdateTime"),
         type = "timestamp",
         name = "LastUpdateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetInsightSummariesOutput = schema.new({
   id = id.from(_N, "GetInsightSummariesResult"),
   type = "structure",
   members = {
      InsightSummaries = schema.new({
         id = id.from(_N, "GetInsightSummariesOutput", "InsightSummaries"),
         type = "list",
         name = "InsightSummaries",
         target_id = prelude.Document.id,
         list_member = M.InsightSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetInsightSummariesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetRetrievedTracesGraphInput = schema.new({
   id = id.from(_N, "GetRetrievedTracesGraphRequest"),
   type = "structure",
   members = {
      RetrievalToken = schema.new({
         id = id.from(_N, "GetRetrievedTracesGraphInput", "RetrievalToken"),
         type = "string",
         name = "RetrievalToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetRetrievedTracesGraphInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GraphLink = schema.new({
   id = id.from(_N, "GraphLink"),
   type = "structure",
   members = {
      ReferenceType = schema.new({
         id = id.from(_N, "GraphLink", "ReferenceType"),
         type = "string",
         name = "ReferenceType",
         target_id = prelude.String.id,
      }),
      SourceTraceId = schema.new({
         id = id.from(_N, "GraphLink", "SourceTraceId"),
         type = "string",
         name = "SourceTraceId",
         target_id = prelude.String.id,
      }),
      DestinationTraceIds = schema.new({
         id = id.from(_N, "GraphLink", "DestinationTraceIds"),
         type = "list",
         name = "DestinationTraceIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.HistogramEntry = schema.new({
   id = id.from(_N, "HistogramEntry"),
   type = "structure",
   members = {
      Value = schema.new({
         id = id.from(_N, "HistogramEntry", "Value"),
         type = "double",
         name = "Value",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      Count = schema.new({
         id = id.from(_N, "HistogramEntry", "Count"),
         type = "integer",
         name = "Count",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.ErrorStatistics = schema.new({
   id = id.from(_N, "ErrorStatistics"),
   type = "structure",
   members = {
      ThrottleCount = schema.new({
         id = id.from(_N, "ErrorStatistics", "ThrottleCount"),
         type = "long",
         name = "ThrottleCount",
         target_id = prelude.Long.id,
      }),
      OtherCount = schema.new({
         id = id.from(_N, "ErrorStatistics", "OtherCount"),
         type = "long",
         name = "OtherCount",
         target_id = prelude.Long.id,
      }),
      TotalCount = schema.new({
         id = id.from(_N, "ErrorStatistics", "TotalCount"),
         type = "long",
         name = "TotalCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.FaultStatistics = schema.new({
   id = id.from(_N, "FaultStatistics"),
   type = "structure",
   members = {
      OtherCount = schema.new({
         id = id.from(_N, "FaultStatistics", "OtherCount"),
         type = "long",
         name = "OtherCount",
         target_id = prelude.Long.id,
      }),
      TotalCount = schema.new({
         id = id.from(_N, "FaultStatistics", "TotalCount"),
         type = "long",
         name = "TotalCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.EdgeStatistics = schema.new({
   id = id.from(_N, "EdgeStatistics"),
   type = "structure",
   members = {
      OkCount = schema.new({
         id = id.from(_N, "EdgeStatistics", "OkCount"),
         type = "long",
         name = "OkCount",
         target_id = prelude.Long.id,
      }),
      ErrorStatistics = schema.new({
         id = id.from(_N, "EdgeStatistics", "ErrorStatistics"),
         type = "structure",
         name = "ErrorStatistics",
         target_id = id.from(_N, "ErrorStatistics"),
         target = M.ErrorStatistics,
      }),
      FaultStatistics = schema.new({
         id = id.from(_N, "EdgeStatistics", "FaultStatistics"),
         type = "structure",
         name = "FaultStatistics",
         target_id = id.from(_N, "FaultStatistics"),
         target = M.FaultStatistics,
      }),
      TotalCount = schema.new({
         id = id.from(_N, "EdgeStatistics", "TotalCount"),
         type = "long",
         name = "TotalCount",
         target_id = prelude.Long.id,
      }),
      TotalResponseTime = schema.new({
         id = id.from(_N, "EdgeStatistics", "TotalResponseTime"),
         type = "double",
         name = "TotalResponseTime",
         target_id = prelude.Double.id,
      }),
   },
})

M.Edge = schema.new({
   id = id.from(_N, "Edge"),
   type = "structure",
   members = {
      ReferenceId = schema.new({
         id = id.from(_N, "Edge", "ReferenceId"),
         type = "integer",
         name = "ReferenceId",
         target_id = prelude.Integer.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "Edge", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "Edge", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      SummaryStatistics = schema.new({
         id = id.from(_N, "Edge", "SummaryStatistics"),
         type = "structure",
         name = "SummaryStatistics",
         target_id = id.from(_N, "EdgeStatistics"),
         target = M.EdgeStatistics,
      }),
      ResponseTimeHistogram = schema.new({
         id = id.from(_N, "Edge", "ResponseTimeHistogram"),
         type = "list",
         name = "ResponseTimeHistogram",
         target_id = prelude.Document.id,
         list_member = M.HistogramEntry,
      }),
      Aliases = schema.new({
         id = id.from(_N, "Edge", "Aliases"),
         type = "list",
         name = "Aliases",
         target_id = prelude.Document.id,
         list_member = M.Alias,
      }),
      EdgeType = schema.new({
         id = id.from(_N, "Edge", "EdgeType"),
         type = "string",
         name = "EdgeType",
         target_id = prelude.String.id,
      }),
      ReceivedEventAgeHistogram = schema.new({
         id = id.from(_N, "Edge", "ReceivedEventAgeHistogram"),
         type = "list",
         name = "ReceivedEventAgeHistogram",
         target_id = prelude.Document.id,
         list_member = M.HistogramEntry,
      }),
   },
})

M.ServiceStatistics = schema.new({
   id = id.from(_N, "ServiceStatistics"),
   type = "structure",
   members = {
      OkCount = schema.new({
         id = id.from(_N, "ServiceStatistics", "OkCount"),
         type = "long",
         name = "OkCount",
         target_id = prelude.Long.id,
      }),
      ErrorStatistics = schema.new({
         id = id.from(_N, "ServiceStatistics", "ErrorStatistics"),
         type = "structure",
         name = "ErrorStatistics",
         target_id = id.from(_N, "ErrorStatistics"),
         target = M.ErrorStatistics,
      }),
      FaultStatistics = schema.new({
         id = id.from(_N, "ServiceStatistics", "FaultStatistics"),
         type = "structure",
         name = "FaultStatistics",
         target_id = id.from(_N, "FaultStatistics"),
         target = M.FaultStatistics,
      }),
      TotalCount = schema.new({
         id = id.from(_N, "ServiceStatistics", "TotalCount"),
         type = "long",
         name = "TotalCount",
         target_id = prelude.Long.id,
      }),
      TotalResponseTime = schema.new({
         id = id.from(_N, "ServiceStatistics", "TotalResponseTime"),
         type = "double",
         name = "TotalResponseTime",
         target_id = prelude.Double.id,
      }),
   },
})

M.Service = schema.new({
   id = id.from(_N, "Service"),
   type = "structure",
   members = {
      ReferenceId = schema.new({
         id = id.from(_N, "Service", "ReferenceId"),
         type = "integer",
         name = "ReferenceId",
         target_id = prelude.Integer.id,
      }),
      Name = schema.new({
         id = id.from(_N, "Service", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Names = schema.new({
         id = id.from(_N, "Service", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Root = schema.new({
         id = id.from(_N, "Service", "Root"),
         type = "boolean",
         name = "Root",
         target_id = prelude.Boolean.id,
      }),
      AccountId = schema.new({
         id = id.from(_N, "Service", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "Service", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "Service", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "Service", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "Service", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      Edges = schema.new({
         id = id.from(_N, "Service", "Edges"),
         type = "list",
         name = "Edges",
         target_id = prelude.Document.id,
         list_member = M.Edge,
      }),
      SummaryStatistics = schema.new({
         id = id.from(_N, "Service", "SummaryStatistics"),
         type = "structure",
         name = "SummaryStatistics",
         target_id = id.from(_N, "ServiceStatistics"),
         target = M.ServiceStatistics,
      }),
      DurationHistogram = schema.new({
         id = id.from(_N, "Service", "DurationHistogram"),
         type = "list",
         name = "DurationHistogram",
         target_id = prelude.Document.id,
         list_member = M.HistogramEntry,
      }),
      ResponseTimeHistogram = schema.new({
         id = id.from(_N, "Service", "ResponseTimeHistogram"),
         type = "list",
         name = "ResponseTimeHistogram",
         target_id = prelude.Document.id,
         list_member = M.HistogramEntry,
      }),
   },
})

M.RetrievedService = schema.new({
   id = id.from(_N, "RetrievedService"),
   type = "structure",
   members = {
      Service = schema.new({
         id = id.from(_N, "RetrievedService", "Service"),
         type = "structure",
         name = "Service",
         target_id = id.from(_N, "Service"),
         target = M.Service,
      }),
      Links = schema.new({
         id = id.from(_N, "RetrievedService", "Links"),
         type = "list",
         name = "Links",
         target_id = prelude.Document.id,
         list_member = M.GraphLink,
      }),
   },
})

M.GetRetrievedTracesGraphOutput = schema.new({
   id = id.from(_N, "GetRetrievedTracesGraphResult"),
   type = "structure",
   members = {
      RetrievalStatus = schema.new({
         id = id.from(_N, "GetRetrievedTracesGraphOutput", "RetrievalStatus"),
         type = "string",
         name = "RetrievalStatus",
         target_id = prelude.String.id,
      }),
      Services = schema.new({
         id = id.from(_N, "GetRetrievedTracesGraphOutput", "Services"),
         type = "list",
         name = "Services",
         target_id = prelude.Document.id,
         list_member = M.RetrievedService,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetRetrievedTracesGraphOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetSamplingRulesInput = schema.new({
   id = id.from(_N, "GetSamplingRulesRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "GetSamplingRulesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetSamplingRulesOutput = schema.new({
   id = id.from(_N, "GetSamplingRulesResult"),
   type = "structure",
   members = {
      SamplingRuleRecords = schema.new({
         id = id.from(_N, "GetSamplingRulesOutput", "SamplingRuleRecords"),
         type = "list",
         name = "SamplingRuleRecords",
         target_id = prelude.Document.id,
         list_member = M.SamplingRuleRecord,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetSamplingRulesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetSamplingStatisticSummariesInput = schema.new({
   id = id.from(_N, "GetSamplingStatisticSummariesRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "GetSamplingStatisticSummariesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SamplingStatisticSummary = schema.new({
   id = id.from(_N, "SamplingStatisticSummary"),
   type = "structure",
   members = {
      RuleName = schema.new({
         id = id.from(_N, "SamplingStatisticSummary", "RuleName"),
         type = "string",
         name = "RuleName",
         target_id = prelude.String.id,
      }),
      Timestamp = schema.new({
         id = id.from(_N, "SamplingStatisticSummary", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
      }),
      RequestCount = schema.new({
         id = id.from(_N, "SamplingStatisticSummary", "RequestCount"),
         type = "integer",
         name = "RequestCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      BorrowCount = schema.new({
         id = id.from(_N, "SamplingStatisticSummary", "BorrowCount"),
         type = "integer",
         name = "BorrowCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      SampledCount = schema.new({
         id = id.from(_N, "SamplingStatisticSummary", "SampledCount"),
         type = "integer",
         name = "SampledCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetSamplingStatisticSummariesOutput = schema.new({
   id = id.from(_N, "GetSamplingStatisticSummariesResult"),
   type = "structure",
   members = {
      SamplingStatisticSummaries = schema.new({
         id = id.from(_N, "GetSamplingStatisticSummariesOutput", "SamplingStatisticSummaries"),
         type = "list",
         name = "SamplingStatisticSummaries",
         target_id = prelude.Document.id,
         list_member = M.SamplingStatisticSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetSamplingStatisticSummariesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SamplingBoostStatisticsDocument = schema.new({
   id = id.from(_N, "SamplingBoostStatisticsDocument"),
   type = "structure",
   members = {
      RuleName = schema.new({
         id = id.from(_N, "SamplingBoostStatisticsDocument", "RuleName"),
         type = "string",
         name = "RuleName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ServiceName = schema.new({
         id = id.from(_N, "SamplingBoostStatisticsDocument", "ServiceName"),
         type = "string",
         name = "ServiceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Timestamp = schema.new({
         id = id.from(_N, "SamplingBoostStatisticsDocument", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AnomalyCount = schema.new({
         id = id.from(_N, "SamplingBoostStatisticsDocument", "AnomalyCount"),
         type = "integer",
         name = "AnomalyCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      TotalCount = schema.new({
         id = id.from(_N, "SamplingBoostStatisticsDocument", "TotalCount"),
         type = "integer",
         name = "TotalCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      SampledAnomalyCount = schema.new({
         id = id.from(_N, "SamplingBoostStatisticsDocument", "SampledAnomalyCount"),
         type = "integer",
         name = "SampledAnomalyCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.SamplingStatisticsDocument = schema.new({
   id = id.from(_N, "SamplingStatisticsDocument"),
   type = "structure",
   members = {
      RuleName = schema.new({
         id = id.from(_N, "SamplingStatisticsDocument", "RuleName"),
         type = "string",
         name = "RuleName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientID = schema.new({
         id = id.from(_N, "SamplingStatisticsDocument", "ClientID"),
         type = "string",
         name = "ClientID",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Timestamp = schema.new({
         id = id.from(_N, "SamplingStatisticsDocument", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RequestCount = schema.new({
         id = id.from(_N, "SamplingStatisticsDocument", "RequestCount"),
         type = "integer",
         name = "RequestCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      SampledCount = schema.new({
         id = id.from(_N, "SamplingStatisticsDocument", "SampledCount"),
         type = "integer",
         name = "SampledCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      BorrowCount = schema.new({
         id = id.from(_N, "SamplingStatisticsDocument", "BorrowCount"),
         type = "integer",
         name = "BorrowCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetSamplingTargetsInput = schema.new({
   id = id.from(_N, "GetSamplingTargetsRequest"),
   type = "structure",
   members = {
      SamplingStatisticsDocuments = schema.new({
         id = id.from(_N, "GetSamplingTargetsInput", "SamplingStatisticsDocuments"),
         type = "list",
         name = "SamplingStatisticsDocuments",
         target_id = prelude.Document.id,
         list_member = M.SamplingStatisticsDocument,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SamplingBoostStatisticsDocuments = schema.new({
         id = id.from(_N, "GetSamplingTargetsInput", "SamplingBoostStatisticsDocuments"),
         type = "list",
         name = "SamplingBoostStatisticsDocuments",
         target_id = prelude.Document.id,
         list_member = M.SamplingBoostStatisticsDocument,
      }),
   },
})

M.SamplingBoost = schema.new({
   id = id.from(_N, "SamplingBoost"),
   type = "structure",
   members = {
      BoostRate = schema.new({
         id = id.from(_N, "SamplingBoost", "BoostRate"),
         type = "double",
         name = "BoostRate",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      BoostRateTTL = schema.new({
         id = id.from(_N, "SamplingBoost", "BoostRateTTL"),
         type = "timestamp",
         name = "BoostRateTTL",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SamplingTargetDocument = schema.new({
   id = id.from(_N, "SamplingTargetDocument"),
   type = "structure",
   members = {
      RuleName = schema.new({
         id = id.from(_N, "SamplingTargetDocument", "RuleName"),
         type = "string",
         name = "RuleName",
         target_id = prelude.String.id,
      }),
      FixedRate = schema.new({
         id = id.from(_N, "SamplingTargetDocument", "FixedRate"),
         type = "double",
         name = "FixedRate",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      ReservoirQuota = schema.new({
         id = id.from(_N, "SamplingTargetDocument", "ReservoirQuota"),
         type = "integer",
         name = "ReservoirQuota",
         target_id = prelude.Integer.id,
      }),
      ReservoirQuotaTTL = schema.new({
         id = id.from(_N, "SamplingTargetDocument", "ReservoirQuotaTTL"),
         type = "timestamp",
         name = "ReservoirQuotaTTL",
         target_id = prelude.Timestamp.id,
      }),
      Interval = schema.new({
         id = id.from(_N, "SamplingTargetDocument", "Interval"),
         type = "integer",
         name = "Interval",
         target_id = prelude.Integer.id,
      }),
      SamplingBoost = schema.new({
         id = id.from(_N, "SamplingTargetDocument", "SamplingBoost"),
         type = "structure",
         name = "SamplingBoost",
         target_id = id.from(_N, "SamplingBoost"),
         target = M.SamplingBoost,
      }),
   },
})

M.UnprocessedStatistics = schema.new({
   id = id.from(_N, "UnprocessedStatistics"),
   type = "structure",
   members = {
      RuleName = schema.new({
         id = id.from(_N, "UnprocessedStatistics", "RuleName"),
         type = "string",
         name = "RuleName",
         target_id = prelude.String.id,
      }),
      ErrorCode = schema.new({
         id = id.from(_N, "UnprocessedStatistics", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "UnprocessedStatistics", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.GetSamplingTargetsOutput = schema.new({
   id = id.from(_N, "GetSamplingTargetsResult"),
   type = "structure",
   members = {
      SamplingTargetDocuments = schema.new({
         id = id.from(_N, "GetSamplingTargetsOutput", "SamplingTargetDocuments"),
         type = "list",
         name = "SamplingTargetDocuments",
         target_id = prelude.Document.id,
         list_member = M.SamplingTargetDocument,
      }),
      LastRuleModification = schema.new({
         id = id.from(_N, "GetSamplingTargetsOutput", "LastRuleModification"),
         type = "timestamp",
         name = "LastRuleModification",
         target_id = prelude.Timestamp.id,
      }),
      UnprocessedStatistics = schema.new({
         id = id.from(_N, "GetSamplingTargetsOutput", "UnprocessedStatistics"),
         type = "list",
         name = "UnprocessedStatistics",
         target_id = prelude.Document.id,
         list_member = M.UnprocessedStatistics,
      }),
      UnprocessedBoostStatistics = schema.new({
         id = id.from(_N, "GetSamplingTargetsOutput", "UnprocessedBoostStatistics"),
         type = "list",
         name = "UnprocessedBoostStatistics",
         target_id = prelude.Document.id,
         list_member = M.UnprocessedStatistics,
      }),
   },
})

M.GetServiceGraphInput = schema.new({
   id = id.from(_N, "GetServiceGraphRequest"),
   type = "structure",
   members = {
      StartTime = schema.new({
         id = id.from(_N, "GetServiceGraphInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "GetServiceGraphInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GroupName = schema.new({
         id = id.from(_N, "GetServiceGraphInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      GroupARN = schema.new({
         id = id.from(_N, "GetServiceGraphInput", "GroupARN"),
         type = "string",
         name = "GroupARN",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetServiceGraphInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetServiceGraphOutput = schema.new({
   id = id.from(_N, "GetServiceGraphResult"),
   type = "structure",
   members = {
      StartTime = schema.new({
         id = id.from(_N, "GetServiceGraphOutput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "GetServiceGraphOutput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      Services = schema.new({
         id = id.from(_N, "GetServiceGraphOutput", "Services"),
         type = "list",
         name = "Services",
         target_id = prelude.Document.id,
         list_member = M.Service,
      }),
      ContainsOldGroupVersions = schema.new({
         id = id.from(_N, "GetServiceGraphOutput", "ContainsOldGroupVersions"),
         type = "boolean",
         name = "ContainsOldGroupVersions",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetServiceGraphOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetTimeSeriesServiceStatisticsInput = schema.new({
   id = id.from(_N, "GetTimeSeriesServiceStatisticsRequest"),
   type = "structure",
   members = {
      StartTime = schema.new({
         id = id.from(_N, "GetTimeSeriesServiceStatisticsInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "GetTimeSeriesServiceStatisticsInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GroupName = schema.new({
         id = id.from(_N, "GetTimeSeriesServiceStatisticsInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      GroupARN = schema.new({
         id = id.from(_N, "GetTimeSeriesServiceStatisticsInput", "GroupARN"),
         type = "string",
         name = "GroupARN",
         target_id = prelude.String.id,
      }),
      EntitySelectorExpression = schema.new({
         id = id.from(_N, "GetTimeSeriesServiceStatisticsInput", "EntitySelectorExpression"),
         type = "string",
         name = "EntitySelectorExpression",
         target_id = prelude.String.id,
      }),
      Period = schema.new({
         id = id.from(_N, "GetTimeSeriesServiceStatisticsInput", "Period"),
         type = "integer",
         name = "Period",
         target_id = prelude.Integer.id,
      }),
      ForecastStatistics = schema.new({
         id = id.from(_N, "GetTimeSeriesServiceStatisticsInput", "ForecastStatistics"),
         type = "boolean",
         name = "ForecastStatistics",
         target_id = prelude.Boolean.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetTimeSeriesServiceStatisticsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ForecastStatistics = schema.new({
   id = id.from(_N, "ForecastStatistics"),
   type = "structure",
   members = {
      FaultCountHigh = schema.new({
         id = id.from(_N, "ForecastStatistics", "FaultCountHigh"),
         type = "long",
         name = "FaultCountHigh",
         target_id = prelude.Long.id,
      }),
      FaultCountLow = schema.new({
         id = id.from(_N, "ForecastStatistics", "FaultCountLow"),
         type = "long",
         name = "FaultCountLow",
         target_id = prelude.Long.id,
      }),
   },
})

M.TimeSeriesServiceStatistics = schema.new({
   id = id.from(_N, "TimeSeriesServiceStatistics"),
   type = "structure",
   members = {
      Timestamp = schema.new({
         id = id.from(_N, "TimeSeriesServiceStatistics", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
      }),
      EdgeSummaryStatistics = schema.new({
         id = id.from(_N, "TimeSeriesServiceStatistics", "EdgeSummaryStatistics"),
         type = "structure",
         name = "EdgeSummaryStatistics",
         target_id = id.from(_N, "EdgeStatistics"),
         target = M.EdgeStatistics,
      }),
      ServiceSummaryStatistics = schema.new({
         id = id.from(_N, "TimeSeriesServiceStatistics", "ServiceSummaryStatistics"),
         type = "structure",
         name = "ServiceSummaryStatistics",
         target_id = id.from(_N, "ServiceStatistics"),
         target = M.ServiceStatistics,
      }),
      ServiceForecastStatistics = schema.new({
         id = id.from(_N, "TimeSeriesServiceStatistics", "ServiceForecastStatistics"),
         type = "structure",
         name = "ServiceForecastStatistics",
         target_id = id.from(_N, "ForecastStatistics"),
         target = M.ForecastStatistics,
      }),
      ResponseTimeHistogram = schema.new({
         id = id.from(_N, "TimeSeriesServiceStatistics", "ResponseTimeHistogram"),
         type = "list",
         name = "ResponseTimeHistogram",
         target_id = prelude.Document.id,
         list_member = M.HistogramEntry,
      }),
   },
})

M.GetTimeSeriesServiceStatisticsOutput = schema.new({
   id = id.from(_N, "GetTimeSeriesServiceStatisticsResult"),
   type = "structure",
   members = {
      TimeSeriesServiceStatistics = schema.new({
         id = id.from(_N, "GetTimeSeriesServiceStatisticsOutput", "TimeSeriesServiceStatistics"),
         type = "list",
         name = "TimeSeriesServiceStatistics",
         target_id = prelude.Document.id,
         list_member = M.TimeSeriesServiceStatistics,
      }),
      ContainsOldGroupVersions = schema.new({
         id = id.from(_N, "GetTimeSeriesServiceStatisticsOutput", "ContainsOldGroupVersions"),
         type = "boolean",
         name = "ContainsOldGroupVersions",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetTimeSeriesServiceStatisticsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetTraceGraphInput = schema.new({
   id = id.from(_N, "GetTraceGraphRequest"),
   type = "structure",
   members = {
      TraceIds = schema.new({
         id = id.from(_N, "GetTraceGraphInput", "TraceIds"),
         type = "list",
         name = "TraceIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetTraceGraphInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetTraceGraphOutput = schema.new({
   id = id.from(_N, "GetTraceGraphResult"),
   type = "structure",
   members = {
      Services = schema.new({
         id = id.from(_N, "GetTraceGraphOutput", "Services"),
         type = "list",
         name = "Services",
         target_id = prelude.Document.id,
         list_member = M.Service,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetTraceGraphOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetTraceSegmentDestinationInput = schema.new({
   id = id.from(_N, "GetTraceSegmentDestinationRequest"),
   type = "structure",
})

M.GetTraceSegmentDestinationOutput = schema.new({
   id = id.from(_N, "GetTraceSegmentDestinationResult"),
   type = "structure",
   members = {
      Destination = schema.new({
         id = id.from(_N, "GetTraceSegmentDestinationOutput", "Destination"),
         type = "string",
         name = "Destination",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "GetTraceSegmentDestinationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.SamplingStrategy = schema.new({
   id = id.from(_N, "SamplingStrategy"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "SamplingStrategy", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Value = schema.new({
         id = id.from(_N, "SamplingStrategy", "Value"),
         type = "double",
         name = "Value",
         target_id = prelude.Double.id,
      }),
   },
})

M.GetTraceSummariesInput = schema.new({
   id = id.from(_N, "GetTraceSummariesRequest"),
   type = "structure",
   members = {
      StartTime = schema.new({
         id = id.from(_N, "GetTraceSummariesInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "GetTraceSummariesInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TimeRangeType = schema.new({
         id = id.from(_N, "GetTraceSummariesInput", "TimeRangeType"),
         type = "string",
         name = "TimeRangeType",
         target_id = prelude.String.id,
      }),
      Sampling = schema.new({
         id = id.from(_N, "GetTraceSummariesInput", "Sampling"),
         type = "boolean",
         name = "Sampling",
         target_id = prelude.Boolean.id,
      }),
      SamplingStrategy = schema.new({
         id = id.from(_N, "GetTraceSummariesInput", "SamplingStrategy"),
         type = "structure",
         name = "SamplingStrategy",
         target_id = id.from(_N, "SamplingStrategy"),
         target = M.SamplingStrategy,
      }),
      FilterExpression = schema.new({
         id = id.from(_N, "GetTraceSummariesInput", "FilterExpression"),
         type = "string",
         name = "FilterExpression",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetTraceSummariesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.RootCauseException = schema.new({
   id = id.from(_N, "RootCauseException"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "RootCauseException", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "RootCauseException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ErrorRootCauseEntity = schema.new({
   id = id.from(_N, "ErrorRootCauseEntity"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ErrorRootCauseEntity", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Exceptions = schema.new({
         id = id.from(_N, "ErrorRootCauseEntity", "Exceptions"),
         type = "list",
         name = "Exceptions",
         target_id = prelude.Document.id,
         list_member = M.RootCauseException,
      }),
      Remote = schema.new({
         id = id.from(_N, "ErrorRootCauseEntity", "Remote"),
         type = "boolean",
         name = "Remote",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ErrorRootCauseService = schema.new({
   id = id.from(_N, "ErrorRootCauseService"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ErrorRootCauseService", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Names = schema.new({
         id = id.from(_N, "ErrorRootCauseService", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Type = schema.new({
         id = id.from(_N, "ErrorRootCauseService", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      AccountId = schema.new({
         id = id.from(_N, "ErrorRootCauseService", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      EntityPath = schema.new({
         id = id.from(_N, "ErrorRootCauseService", "EntityPath"),
         type = "list",
         name = "EntityPath",
         target_id = prelude.Document.id,
         list_member = M.ErrorRootCauseEntity,
      }),
      Inferred = schema.new({
         id = id.from(_N, "ErrorRootCauseService", "Inferred"),
         type = "boolean",
         name = "Inferred",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ErrorRootCause = schema.new({
   id = id.from(_N, "ErrorRootCause"),
   type = "structure",
   members = {
      Services = schema.new({
         id = id.from(_N, "ErrorRootCause", "Services"),
         type = "list",
         name = "Services",
         target_id = prelude.Document.id,
         list_member = M.ErrorRootCauseService,
      }),
      ClientImpacting = schema.new({
         id = id.from(_N, "ErrorRootCause", "ClientImpacting"),
         type = "boolean",
         name = "ClientImpacting",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.FaultRootCauseEntity = schema.new({
   id = id.from(_N, "FaultRootCauseEntity"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "FaultRootCauseEntity", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Exceptions = schema.new({
         id = id.from(_N, "FaultRootCauseEntity", "Exceptions"),
         type = "list",
         name = "Exceptions",
         target_id = prelude.Document.id,
         list_member = M.RootCauseException,
      }),
      Remote = schema.new({
         id = id.from(_N, "FaultRootCauseEntity", "Remote"),
         type = "boolean",
         name = "Remote",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.FaultRootCauseService = schema.new({
   id = id.from(_N, "FaultRootCauseService"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "FaultRootCauseService", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Names = schema.new({
         id = id.from(_N, "FaultRootCauseService", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Type = schema.new({
         id = id.from(_N, "FaultRootCauseService", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      AccountId = schema.new({
         id = id.from(_N, "FaultRootCauseService", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      EntityPath = schema.new({
         id = id.from(_N, "FaultRootCauseService", "EntityPath"),
         type = "list",
         name = "EntityPath",
         target_id = prelude.Document.id,
         list_member = M.FaultRootCauseEntity,
      }),
      Inferred = schema.new({
         id = id.from(_N, "FaultRootCauseService", "Inferred"),
         type = "boolean",
         name = "Inferred",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.FaultRootCause = schema.new({
   id = id.from(_N, "FaultRootCause"),
   type = "structure",
   members = {
      Services = schema.new({
         id = id.from(_N, "FaultRootCause", "Services"),
         type = "list",
         name = "Services",
         target_id = prelude.Document.id,
         list_member = M.FaultRootCauseService,
      }),
      ClientImpacting = schema.new({
         id = id.from(_N, "FaultRootCause", "ClientImpacting"),
         type = "boolean",
         name = "ClientImpacting",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.Http = schema.new({
   id = id.from(_N, "Http"),
   type = "structure",
   members = {
      HttpURL = schema.new({
         id = id.from(_N, "Http", "HttpURL"),
         type = "string",
         name = "HttpURL",
         target_id = prelude.String.id,
      }),
      HttpStatus = schema.new({
         id = id.from(_N, "Http", "HttpStatus"),
         type = "integer",
         name = "HttpStatus",
         target_id = prelude.Integer.id,
      }),
      HttpMethod = schema.new({
         id = id.from(_N, "Http", "HttpMethod"),
         type = "string",
         name = "HttpMethod",
         target_id = prelude.String.id,
      }),
      UserAgent = schema.new({
         id = id.from(_N, "Http", "UserAgent"),
         type = "string",
         name = "UserAgent",
         target_id = prelude.String.id,
      }),
      ClientIp = schema.new({
         id = id.from(_N, "Http", "ClientIp"),
         type = "string",
         name = "ClientIp",
         target_id = prelude.String.id,
      }),
   },
})

M.InstanceIdDetail = schema.new({
   id = id.from(_N, "InstanceIdDetail"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "InstanceIdDetail", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
   },
})

M.ResourceARNDetail = schema.new({
   id = id.from(_N, "ResourceARNDetail"),
   type = "structure",
   members = {
      ARN = schema.new({
         id = id.from(_N, "ResourceARNDetail", "ARN"),
         type = "string",
         name = "ARN",
         target_id = prelude.String.id,
      }),
   },
})

M.ResponseTimeRootCauseEntity = schema.new({
   id = id.from(_N, "ResponseTimeRootCauseEntity"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ResponseTimeRootCauseEntity", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Coverage = schema.new({
         id = id.from(_N, "ResponseTimeRootCauseEntity", "Coverage"),
         type = "double",
         name = "Coverage",
         target_id = prelude.Double.id,
      }),
      Remote = schema.new({
         id = id.from(_N, "ResponseTimeRootCauseEntity", "Remote"),
         type = "boolean",
         name = "Remote",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ResponseTimeRootCauseService = schema.new({
   id = id.from(_N, "ResponseTimeRootCauseService"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ResponseTimeRootCauseService", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Names = schema.new({
         id = id.from(_N, "ResponseTimeRootCauseService", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Type = schema.new({
         id = id.from(_N, "ResponseTimeRootCauseService", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      AccountId = schema.new({
         id = id.from(_N, "ResponseTimeRootCauseService", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      EntityPath = schema.new({
         id = id.from(_N, "ResponseTimeRootCauseService", "EntityPath"),
         type = "list",
         name = "EntityPath",
         target_id = prelude.Document.id,
         list_member = M.ResponseTimeRootCauseEntity,
      }),
      Inferred = schema.new({
         id = id.from(_N, "ResponseTimeRootCauseService", "Inferred"),
         type = "boolean",
         name = "Inferred",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ResponseTimeRootCause = schema.new({
   id = id.from(_N, "ResponseTimeRootCause"),
   type = "structure",
   members = {
      Services = schema.new({
         id = id.from(_N, "ResponseTimeRootCause", "Services"),
         type = "list",
         name = "Services",
         target_id = prelude.Document.id,
         list_member = M.ResponseTimeRootCauseService,
      }),
      ClientImpacting = schema.new({
         id = id.from(_N, "ResponseTimeRootCause", "ClientImpacting"),
         type = "boolean",
         name = "ClientImpacting",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.TraceUser = schema.new({
   id = id.from(_N, "TraceUser"),
   type = "structure",
   members = {
      UserName = schema.new({
         id = id.from(_N, "TraceUser", "UserName"),
         type = "string",
         name = "UserName",
         target_id = prelude.String.id,
      }),
      ServiceIds = schema.new({
         id = id.from(_N, "TraceUser", "ServiceIds"),
         type = "list",
         name = "ServiceIds",
         target_id = prelude.Document.id,
         list_member = M.ServiceId,
      }),
   },
})

M.TraceSummary = schema.new({
   id = id.from(_N, "TraceSummary"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "TraceSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "TraceSummary", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      Duration = schema.new({
         id = id.from(_N, "TraceSummary", "Duration"),
         type = "double",
         name = "Duration",
         target_id = prelude.Double.id,
      }),
      ResponseTime = schema.new({
         id = id.from(_N, "TraceSummary", "ResponseTime"),
         type = "double",
         name = "ResponseTime",
         target_id = prelude.Double.id,
      }),
      HasFault = schema.new({
         id = id.from(_N, "TraceSummary", "HasFault"),
         type = "boolean",
         name = "HasFault",
         target_id = prelude.Boolean.id,
      }),
      HasError = schema.new({
         id = id.from(_N, "TraceSummary", "HasError"),
         type = "boolean",
         name = "HasError",
         target_id = prelude.Boolean.id,
      }),
      HasThrottle = schema.new({
         id = id.from(_N, "TraceSummary", "HasThrottle"),
         type = "boolean",
         name = "HasThrottle",
         target_id = prelude.Boolean.id,
      }),
      IsPartial = schema.new({
         id = id.from(_N, "TraceSummary", "IsPartial"),
         type = "boolean",
         name = "IsPartial",
         target_id = prelude.Boolean.id,
      }),
      Http = schema.new({
         id = id.from(_N, "TraceSummary", "Http"),
         type = "structure",
         name = "Http",
         target_id = id.from(_N, "Http"),
         target = M.Http,
      }),
      Annotations = schema.new({
         id = id.from(_N, "TraceSummary", "Annotations"),
         type = "map",
         name = "Annotations",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = M.ValueWithServiceIds }),
      }),
      Users = schema.new({
         id = id.from(_N, "TraceSummary", "Users"),
         type = "list",
         name = "Users",
         target_id = prelude.Document.id,
         list_member = M.TraceUser,
      }),
      ServiceIds = schema.new({
         id = id.from(_N, "TraceSummary", "ServiceIds"),
         type = "list",
         name = "ServiceIds",
         target_id = prelude.Document.id,
         list_member = M.ServiceId,
      }),
      ResourceARNs = schema.new({
         id = id.from(_N, "TraceSummary", "ResourceARNs"),
         type = "list",
         name = "ResourceARNs",
         target_id = prelude.Document.id,
         list_member = M.ResourceARNDetail,
      }),
      InstanceIds = schema.new({
         id = id.from(_N, "TraceSummary", "InstanceIds"),
         type = "list",
         name = "InstanceIds",
         target_id = prelude.Document.id,
         list_member = M.InstanceIdDetail,
      }),
      AvailabilityZones = schema.new({
         id = id.from(_N, "TraceSummary", "AvailabilityZones"),
         type = "list",
         name = "AvailabilityZones",
         target_id = prelude.Document.id,
         list_member = M.AvailabilityZoneDetail,
      }),
      EntryPoint = schema.new({
         id = id.from(_N, "TraceSummary", "EntryPoint"),
         type = "structure",
         name = "EntryPoint",
         target_id = id.from(_N, "ServiceId"),
         target = M.ServiceId,
      }),
      FaultRootCauses = schema.new({
         id = id.from(_N, "TraceSummary", "FaultRootCauses"),
         type = "list",
         name = "FaultRootCauses",
         target_id = prelude.Document.id,
         list_member = M.FaultRootCause,
      }),
      ErrorRootCauses = schema.new({
         id = id.from(_N, "TraceSummary", "ErrorRootCauses"),
         type = "list",
         name = "ErrorRootCauses",
         target_id = prelude.Document.id,
         list_member = M.ErrorRootCause,
      }),
      ResponseTimeRootCauses = schema.new({
         id = id.from(_N, "TraceSummary", "ResponseTimeRootCauses"),
         type = "list",
         name = "ResponseTimeRootCauses",
         target_id = prelude.Document.id,
         list_member = M.ResponseTimeRootCause,
      }),
      Revision = schema.new({
         id = id.from(_N, "TraceSummary", "Revision"),
         type = "integer",
         name = "Revision",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      MatchedEventTime = schema.new({
         id = id.from(_N, "TraceSummary", "MatchedEventTime"),
         type = "timestamp",
         name = "MatchedEventTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetTraceSummariesOutput = schema.new({
   id = id.from(_N, "GetTraceSummariesResult"),
   type = "structure",
   members = {
      TraceSummaries = schema.new({
         id = id.from(_N, "GetTraceSummariesOutput", "TraceSummaries"),
         type = "list",
         name = "TraceSummaries",
         target_id = prelude.Document.id,
         list_member = M.TraceSummary,
      }),
      ApproximateTime = schema.new({
         id = id.from(_N, "GetTraceSummariesOutput", "ApproximateTime"),
         type = "timestamp",
         name = "ApproximateTime",
         target_id = prelude.Timestamp.id,
      }),
      TracesProcessedCount = schema.new({
         id = id.from(_N, "GetTraceSummariesOutput", "TracesProcessedCount"),
         type = "long",
         name = "TracesProcessedCount",
         target_id = prelude.Long.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetTraceSummariesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListResourcePoliciesInput = schema.new({
   id = id.from(_N, "ListResourcePoliciesRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListResourcePoliciesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ResourcePolicy = schema.new({
   id = id.from(_N, "ResourcePolicy"),
   type = "structure",
   members = {
      PolicyName = schema.new({
         id = id.from(_N, "ResourcePolicy", "PolicyName"),
         type = "string",
         name = "PolicyName",
         target_id = prelude.String.id,
      }),
      PolicyDocument = schema.new({
         id = id.from(_N, "ResourcePolicy", "PolicyDocument"),
         type = "string",
         name = "PolicyDocument",
         target_id = prelude.String.id,
      }),
      PolicyRevisionId = schema.new({
         id = id.from(_N, "ResourcePolicy", "PolicyRevisionId"),
         type = "string",
         name = "PolicyRevisionId",
         target_id = prelude.String.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "ResourcePolicy", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListResourcePoliciesOutput = schema.new({
   id = id.from(_N, "ListResourcePoliciesResult"),
   type = "structure",
   members = {
      ResourcePolicies = schema.new({
         id = id.from(_N, "ListResourcePoliciesOutput", "ResourcePolicies"),
         type = "list",
         name = "ResourcePolicies",
         target_id = prelude.Document.id,
         list_member = M.ResourcePolicy,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListResourcePoliciesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRetrievedTracesInput = schema.new({
   id = id.from(_N, "ListRetrievedTracesRequest"),
   type = "structure",
   members = {
      RetrievalToken = schema.new({
         id = id.from(_N, "ListRetrievedTracesInput", "RetrievalToken"),
         type = "string",
         name = "RetrievalToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TraceFormat = schema.new({
         id = id.from(_N, "ListRetrievedTracesInput", "TraceFormat"),
         type = "string",
         name = "TraceFormat",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRetrievedTracesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.Span = schema.new({
   id = id.from(_N, "Span"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "Span", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Document = schema.new({
         id = id.from(_N, "Span", "Document"),
         type = "string",
         name = "Document",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrievedTrace = schema.new({
   id = id.from(_N, "RetrievedTrace"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "RetrievedTrace", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Duration = schema.new({
         id = id.from(_N, "RetrievedTrace", "Duration"),
         type = "double",
         name = "Duration",
         target_id = prelude.Double.id,
      }),
      Spans = schema.new({
         id = id.from(_N, "RetrievedTrace", "Spans"),
         type = "list",
         name = "Spans",
         target_id = prelude.Document.id,
         list_member = M.Span,
      }),
   },
})

M.ListRetrievedTracesOutput = schema.new({
   id = id.from(_N, "ListRetrievedTracesResult"),
   type = "structure",
   members = {
      RetrievalStatus = schema.new({
         id = id.from(_N, "ListRetrievedTracesOutput", "RetrievalStatus"),
         type = "string",
         name = "RetrievalStatus",
         target_id = prelude.String.id,
      }),
      TraceFormat = schema.new({
         id = id.from(_N, "ListRetrievedTracesOutput", "TraceFormat"),
         type = "string",
         name = "TraceFormat",
         target_id = prelude.String.id,
      }),
      Traces = schema.new({
         id = id.from(_N, "ListRetrievedTracesOutput", "Traces"),
         type = "list",
         name = "Traces",
         target_id = prelude.Document.id,
         list_member = M.RetrievedTrace,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRetrievedTracesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceRequest"),
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
      NextToken = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResponse"),
   type = "structure",
   members = {
      Tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PutEncryptionConfigInput = schema.new({
   id = id.from(_N, "PutEncryptionConfigRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "PutEncryptionConfigInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "PutEncryptionConfigInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutEncryptionConfigOutput = schema.new({
   id = id.from(_N, "PutEncryptionConfigResult"),
   type = "structure",
   members = {
      EncryptionConfig = schema.new({
         id = id.from(_N, "PutEncryptionConfigOutput", "EncryptionConfig"),
         type = "structure",
         name = "EncryptionConfig",
         target_id = id.from(_N, "EncryptionConfig"),
         target = M.EncryptionConfig,
      }),
   },
})

M.LockoutPreventionException = schema.new({
   id = id.from(_N, "LockoutPreventionException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "LockoutPreventionException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.MalformedPolicyDocumentException = schema.new({
   id = id.from(_N, "MalformedPolicyDocumentException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "MalformedPolicyDocumentException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.PolicyCountLimitExceededException = schema.new({
   id = id.from(_N, "PolicyCountLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "PolicyCountLimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.PolicySizeLimitExceededException = schema.new({
   id = id.from(_N, "PolicySizeLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "PolicySizeLimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.PutResourcePolicyInput = schema.new({
   id = id.from(_N, "PutResourcePolicyRequest"),
   type = "structure",
   members = {
      PolicyName = schema.new({
         id = id.from(_N, "PutResourcePolicyInput", "PolicyName"),
         type = "string",
         name = "PolicyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PolicyDocument = schema.new({
         id = id.from(_N, "PutResourcePolicyInput", "PolicyDocument"),
         type = "string",
         name = "PolicyDocument",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PolicyRevisionId = schema.new({
         id = id.from(_N, "PutResourcePolicyInput", "PolicyRevisionId"),
         type = "string",
         name = "PolicyRevisionId",
         target_id = prelude.String.id,
      }),
      BypassPolicyLockoutCheck = schema.new({
         id = id.from(_N, "PutResourcePolicyInput", "BypassPolicyLockoutCheck"),
         type = "boolean",
         name = "BypassPolicyLockoutCheck",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.PutResourcePolicyOutput = schema.new({
   id = id.from(_N, "PutResourcePolicyResult"),
   type = "structure",
   members = {
      ResourcePolicy = schema.new({
         id = id.from(_N, "PutResourcePolicyOutput", "ResourcePolicy"),
         type = "structure",
         name = "ResourcePolicy",
         target_id = id.from(_N, "ResourcePolicy"),
         target = M.ResourcePolicy,
      }),
   },
})

M.BackendConnectionErrors = schema.new({
   id = id.from(_N, "BackendConnectionErrors"),
   type = "structure",
   members = {
      TimeoutCount = schema.new({
         id = id.from(_N, "BackendConnectionErrors", "TimeoutCount"),
         type = "integer",
         name = "TimeoutCount",
         target_id = prelude.Integer.id,
      }),
      ConnectionRefusedCount = schema.new({
         id = id.from(_N, "BackendConnectionErrors", "ConnectionRefusedCount"),
         type = "integer",
         name = "ConnectionRefusedCount",
         target_id = prelude.Integer.id,
      }),
      HTTPCode4XXCount = schema.new({
         id = id.from(_N, "BackendConnectionErrors", "HTTPCode4XXCount"),
         type = "integer",
         name = "HTTPCode4XXCount",
         target_id = prelude.Integer.id,
      }),
      HTTPCode5XXCount = schema.new({
         id = id.from(_N, "BackendConnectionErrors", "HTTPCode5XXCount"),
         type = "integer",
         name = "HTTPCode5XXCount",
         target_id = prelude.Integer.id,
      }),
      UnknownHostCount = schema.new({
         id = id.from(_N, "BackendConnectionErrors", "UnknownHostCount"),
         type = "integer",
         name = "UnknownHostCount",
         target_id = prelude.Integer.id,
      }),
      OtherCount = schema.new({
         id = id.from(_N, "BackendConnectionErrors", "OtherCount"),
         type = "integer",
         name = "OtherCount",
         target_id = prelude.Integer.id,
      }),
   },
})

M.TelemetryRecord = schema.new({
   id = id.from(_N, "TelemetryRecord"),
   type = "structure",
   members = {
      Timestamp = schema.new({
         id = id.from(_N, "TelemetryRecord", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SegmentsReceivedCount = schema.new({
         id = id.from(_N, "TelemetryRecord", "SegmentsReceivedCount"),
         type = "integer",
         name = "SegmentsReceivedCount",
         target_id = prelude.Integer.id,
      }),
      SegmentsSentCount = schema.new({
         id = id.from(_N, "TelemetryRecord", "SegmentsSentCount"),
         type = "integer",
         name = "SegmentsSentCount",
         target_id = prelude.Integer.id,
      }),
      SegmentsSpilloverCount = schema.new({
         id = id.from(_N, "TelemetryRecord", "SegmentsSpilloverCount"),
         type = "integer",
         name = "SegmentsSpilloverCount",
         target_id = prelude.Integer.id,
      }),
      SegmentsRejectedCount = schema.new({
         id = id.from(_N, "TelemetryRecord", "SegmentsRejectedCount"),
         type = "integer",
         name = "SegmentsRejectedCount",
         target_id = prelude.Integer.id,
      }),
      BackendConnectionErrors = schema.new({
         id = id.from(_N, "TelemetryRecord", "BackendConnectionErrors"),
         type = "structure",
         name = "BackendConnectionErrors",
         target_id = id.from(_N, "BackendConnectionErrors"),
         target = M.BackendConnectionErrors,
      }),
   },
})

M.PutTelemetryRecordsInput = schema.new({
   id = id.from(_N, "PutTelemetryRecordsRequest"),
   type = "structure",
   members = {
      TelemetryRecords = schema.new({
         id = id.from(_N, "PutTelemetryRecordsInput", "TelemetryRecords"),
         type = "list",
         name = "TelemetryRecords",
         target_id = prelude.Document.id,
         list_member = M.TelemetryRecord,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EC2InstanceId = schema.new({
         id = id.from(_N, "PutTelemetryRecordsInput", "EC2InstanceId"),
         type = "string",
         name = "EC2InstanceId",
         target_id = prelude.String.id,
      }),
      Hostname = schema.new({
         id = id.from(_N, "PutTelemetryRecordsInput", "Hostname"),
         type = "string",
         name = "Hostname",
         target_id = prelude.String.id,
      }),
      ResourceARN = schema.new({
         id = id.from(_N, "PutTelemetryRecordsInput", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
         target_id = prelude.String.id,
      }),
   },
})

M.PutTelemetryRecordsOutput = schema.new({
   id = id.from(_N, "PutTelemetryRecordsResult"),
   type = "structure",
})

M.PutTraceSegmentsInput = schema.new({
   id = id.from(_N, "PutTraceSegmentsRequest"),
   type = "structure",
   members = {
      TraceSegmentDocuments = schema.new({
         id = id.from(_N, "PutTraceSegmentsInput", "TraceSegmentDocuments"),
         type = "list",
         name = "TraceSegmentDocuments",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UnprocessedTraceSegment = schema.new({
   id = id.from(_N, "UnprocessedTraceSegment"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "UnprocessedTraceSegment", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      ErrorCode = schema.new({
         id = id.from(_N, "UnprocessedTraceSegment", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "UnprocessedTraceSegment", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.PutTraceSegmentsOutput = schema.new({
   id = id.from(_N, "PutTraceSegmentsResult"),
   type = "structure",
   members = {
      UnprocessedTraceSegments = schema.new({
         id = id.from(_N, "PutTraceSegmentsOutput", "UnprocessedTraceSegments"),
         type = "list",
         name = "UnprocessedTraceSegments",
         target_id = prelude.Document.id,
         list_member = M.UnprocessedTraceSegment,
      }),
   },
})

M.StartTraceRetrievalInput = schema.new({
   id = id.from(_N, "StartTraceRetrievalRequest"),
   type = "structure",
   members = {
      TraceIds = schema.new({
         id = id.from(_N, "StartTraceRetrievalInput", "TraceIds"),
         type = "list",
         name = "TraceIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "StartTraceRetrievalInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "StartTraceRetrievalInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartTraceRetrievalOutput = schema.new({
   id = id.from(_N, "StartTraceRetrievalResult"),
   type = "structure",
   members = {
      RetrievalToken = schema.new({
         id = id.from(_N, "StartTraceRetrievalOutput", "RetrievalToken"),
         type = "string",
         name = "RetrievalToken",
         target_id = prelude.String.id,
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
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
   id = id.from(_N, "TagResourceResponse"),
   type = "structure",
})

M.TooManyTagsException = schema.new({
   id = id.from(_N, "TooManyTagsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "TooManyTagsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      ResourceName = schema.new({
         id = id.from(_N, "TooManyTagsException", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
      }),
   },
})

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceRequest"),
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
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
})

M.UpdateGroupInput = schema.new({
   id = id.from(_N, "UpdateGroupRequest"),
   type = "structure",
   members = {
      GroupName = schema.new({
         id = id.from(_N, "UpdateGroupInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      GroupARN = schema.new({
         id = id.from(_N, "UpdateGroupInput", "GroupARN"),
         type = "string",
         name = "GroupARN",
         target_id = prelude.String.id,
      }),
      FilterExpression = schema.new({
         id = id.from(_N, "UpdateGroupInput", "FilterExpression"),
         type = "string",
         name = "FilterExpression",
         target_id = prelude.String.id,
      }),
      InsightsConfiguration = schema.new({
         id = id.from(_N, "UpdateGroupInput", "InsightsConfiguration"),
         type = "structure",
         name = "InsightsConfiguration",
         target_id = id.from(_N, "InsightsConfiguration"),
         target = M.InsightsConfiguration,
      }),
   },
})

M.UpdateGroupOutput = schema.new({
   id = id.from(_N, "UpdateGroupResult"),
   type = "structure",
   members = {
      Group = schema.new({
         id = id.from(_N, "UpdateGroupOutput", "Group"),
         type = "structure",
         name = "Group",
         target_id = id.from(_N, "Group"),
         target = M.Group,
      }),
   },
})

M.ProbabilisticRuleValueUpdate = schema.new({
   id = id.from(_N, "ProbabilisticRuleValueUpdate"),
   type = "structure",
   members = {
      DesiredSamplingPercentage = schema.new({
         id = id.from(_N, "ProbabilisticRuleValueUpdate", "DesiredSamplingPercentage"),
         type = "double",
         name = "DesiredSamplingPercentage",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IndexingRuleValueUpdate = schema.new({
   id = id.from(_N, "IndexingRuleValueUpdate"),
   type = "union",
   members = {
      Probabilistic = schema.new({
         id = id.from(_N, "IndexingRuleValueUpdate", "Probabilistic"),
         type = "structure",
         name = "Probabilistic",
         target_id = id.from(_N, "ProbabilisticRuleValueUpdate"),
         target = M.ProbabilisticRuleValueUpdate,
      }),
   },
})

M.UpdateIndexingRuleInput = schema.new({
   id = id.from(_N, "UpdateIndexingRuleRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "UpdateIndexingRuleInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Rule = schema.new({
         id = id.from(_N, "UpdateIndexingRuleInput", "Rule"),
         type = "union",
         name = "Rule",
         target_id = id.from(_N, "IndexingRuleValueUpdate"),
         target = M.IndexingRuleValueUpdate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateIndexingRuleOutput = schema.new({
   id = id.from(_N, "UpdateIndexingRuleResult"),
   type = "structure",
   members = {
      IndexingRule = schema.new({
         id = id.from(_N, "UpdateIndexingRuleOutput", "IndexingRule"),
         type = "structure",
         name = "IndexingRule",
         target_id = id.from(_N, "IndexingRule"),
         target = M.IndexingRule,
      }),
   },
})

M.SamplingRuleUpdate = schema.new({
   id = id.from(_N, "SamplingRuleUpdate"),
   type = "structure",
   members = {
      RuleName = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "RuleName"),
         type = "string",
         name = "RuleName",
         target_id = prelude.String.id,
      }),
      RuleARN = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "RuleARN"),
         type = "string",
         name = "RuleARN",
         target_id = prelude.String.id,
      }),
      ResourceARN = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
         target_id = prelude.String.id,
      }),
      Priority = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "Priority"),
         type = "integer",
         name = "Priority",
         target_id = prelude.Integer.id,
      }),
      FixedRate = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "FixedRate"),
         type = "double",
         name = "FixedRate",
         target_id = prelude.Double.id,
      }),
      ReservoirSize = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "ReservoirSize"),
         type = "integer",
         name = "ReservoirSize",
         target_id = prelude.Integer.id,
      }),
      Host = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "Host"),
         type = "string",
         name = "Host",
         target_id = prelude.String.id,
      }),
      ServiceName = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "ServiceName"),
         type = "string",
         name = "ServiceName",
         target_id = prelude.String.id,
      }),
      ServiceType = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "ServiceType"),
         type = "string",
         name = "ServiceType",
         target_id = prelude.String.id,
      }),
      HTTPMethod = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "HTTPMethod"),
         type = "string",
         name = "HTTPMethod",
         target_id = prelude.String.id,
      }),
      URLPath = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "URLPath"),
         type = "string",
         name = "URLPath",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      SamplingRateBoost = schema.new({
         id = id.from(_N, "SamplingRuleUpdate", "SamplingRateBoost"),
         type = "structure",
         name = "SamplingRateBoost",
         target_id = id.from(_N, "SamplingRateBoost"),
         target = M.SamplingRateBoost,
      }),
   },
})

M.UpdateSamplingRuleInput = schema.new({
   id = id.from(_N, "UpdateSamplingRuleRequest"),
   type = "structure",
   members = {
      SamplingRuleUpdate = schema.new({
         id = id.from(_N, "UpdateSamplingRuleInput", "SamplingRuleUpdate"),
         type = "structure",
         name = "SamplingRuleUpdate",
         target_id = id.from(_N, "SamplingRuleUpdate"),
         target = M.SamplingRuleUpdate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateSamplingRuleOutput = schema.new({
   id = id.from(_N, "UpdateSamplingRuleResult"),
   type = "structure",
   members = {
      SamplingRuleRecord = schema.new({
         id = id.from(_N, "UpdateSamplingRuleOutput", "SamplingRuleRecord"),
         type = "structure",
         name = "SamplingRuleRecord",
         target_id = id.from(_N, "SamplingRuleRecord"),
         target = M.SamplingRuleRecord,
      }),
   },
})

M.UpdateTraceSegmentDestinationInput = schema.new({
   id = id.from(_N, "UpdateTraceSegmentDestinationRequest"),
   type = "structure",
   members = {
      Destination = schema.new({
         id = id.from(_N, "UpdateTraceSegmentDestinationInput", "Destination"),
         type = "string",
         name = "Destination",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateTraceSegmentDestinationOutput = schema.new({
   id = id.from(_N, "UpdateTraceSegmentDestinationResult"),
   type = "structure",
   members = {
      Destination = schema.new({
         id = id.from(_N, "UpdateTraceSegmentDestinationOutput", "Destination"),
         type = "string",
         name = "Destination",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateTraceSegmentDestinationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
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
   id = id.from("com.amazonaws.xray", "AWSXRay"),
   version = "2016-04-12",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetTraces = schema.operation({
   id = id.from("com.amazonaws.xray", "BatchGetTraces"),
   input = M.BatchGetTracesInput,
   output = M.BatchGetTracesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/Traces" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelTraceRetrieval = schema.operation({
   id = id.from("com.amazonaws.xray", "CancelTraceRetrieval"),
   input = M.CancelTraceRetrievalInput,
   output = M.CancelTraceRetrievalOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/CancelTraceRetrieval" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateGroup = schema.operation({
   id = id.from("com.amazonaws.xray", "CreateGroup"),
   input = M.CreateGroupInput,
   output = M.CreateGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/CreateGroup" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSamplingRule = schema.operation({
   id = id.from("com.amazonaws.xray", "CreateSamplingRule"),
   input = M.CreateSamplingRuleInput,
   output = M.CreateSamplingRuleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/CreateSamplingRule" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteGroup = schema.operation({
   id = id.from("com.amazonaws.xray", "DeleteGroup"),
   input = M.DeleteGroupInput,
   output = M.DeleteGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/DeleteGroup" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.xray", "DeleteResourcePolicy"),
   input = M.DeleteResourcePolicyInput,
   output = M.DeleteResourcePolicyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/DeleteResourcePolicy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSamplingRule = schema.operation({
   id = id.from("com.amazonaws.xray", "DeleteSamplingRule"),
   input = M.DeleteSamplingRuleInput,
   output = M.DeleteSamplingRuleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/DeleteSamplingRule" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEncryptionConfig = schema.operation({
   id = id.from("com.amazonaws.xray", "GetEncryptionConfig"),
   input = M.GetEncryptionConfigInput,
   output = M.GetEncryptionConfigOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/EncryptionConfig" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetGroup = schema.operation({
   id = id.from("com.amazonaws.xray", "GetGroup"),
   input = M.GetGroupInput,
   output = M.GetGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetGroup" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetGroups = schema.operation({
   id = id.from("com.amazonaws.xray", "GetGroups"),
   input = M.GetGroupsInput,
   output = M.GetGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/Groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetIndexingRules = schema.operation({
   id = id.from("com.amazonaws.xray", "GetIndexingRules"),
   input = M.GetIndexingRulesInput,
   output = M.GetIndexingRulesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetIndexingRules" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetInsight = schema.operation({
   id = id.from("com.amazonaws.xray", "GetInsight"),
   input = M.GetInsightInput,
   output = M.GetInsightOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/Insight" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetInsightEvents = schema.operation({
   id = id.from("com.amazonaws.xray", "GetInsightEvents"),
   input = M.GetInsightEventsInput,
   output = M.GetInsightEventsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/InsightEvents" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetInsightImpactGraph = schema.operation({
   id = id.from("com.amazonaws.xray", "GetInsightImpactGraph"),
   input = M.GetInsightImpactGraphInput,
   output = M.GetInsightImpactGraphOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/InsightImpactGraph" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetInsightSummaries = schema.operation({
   id = id.from("com.amazonaws.xray", "GetInsightSummaries"),
   input = M.GetInsightSummariesInput,
   output = M.GetInsightSummariesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/InsightSummaries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRetrievedTracesGraph = schema.operation({
   id = id.from("com.amazonaws.xray", "GetRetrievedTracesGraph"),
   input = M.GetRetrievedTracesGraphInput,
   output = M.GetRetrievedTracesGraphOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetRetrievedTracesGraph" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSamplingRules = schema.operation({
   id = id.from("com.amazonaws.xray", "GetSamplingRules"),
   input = M.GetSamplingRulesInput,
   output = M.GetSamplingRulesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetSamplingRules" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSamplingStatisticSummaries = schema.operation({
   id = id.from("com.amazonaws.xray", "GetSamplingStatisticSummaries"),
   input = M.GetSamplingStatisticSummariesInput,
   output = M.GetSamplingStatisticSummariesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/SamplingStatisticSummaries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSamplingTargets = schema.operation({
   id = id.from("com.amazonaws.xray", "GetSamplingTargets"),
   input = M.GetSamplingTargetsInput,
   output = M.GetSamplingTargetsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/SamplingTargets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetServiceGraph = schema.operation({
   id = id.from("com.amazonaws.xray", "GetServiceGraph"),
   input = M.GetServiceGraphInput,
   output = M.GetServiceGraphOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ServiceGraph" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTimeSeriesServiceStatistics = schema.operation({
   id = id.from("com.amazonaws.xray", "GetTimeSeriesServiceStatistics"),
   input = M.GetTimeSeriesServiceStatisticsInput,
   output = M.GetTimeSeriesServiceStatisticsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/TimeSeriesServiceStatistics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTraceGraph = schema.operation({
   id = id.from("com.amazonaws.xray", "GetTraceGraph"),
   input = M.GetTraceGraphInput,
   output = M.GetTraceGraphOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/TraceGraph" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTraceSegmentDestination = schema.operation({
   id = id.from("com.amazonaws.xray", "GetTraceSegmentDestination"),
   input = M.GetTraceSegmentDestinationInput,
   output = M.GetTraceSegmentDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetTraceSegmentDestination" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTraceSummaries = schema.operation({
   id = id.from("com.amazonaws.xray", "GetTraceSummaries"),
   input = M.GetTraceSummariesInput,
   output = M.GetTraceSummariesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/TraceSummaries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListResourcePolicies = schema.operation({
   id = id.from("com.amazonaws.xray", "ListResourcePolicies"),
   input = M.ListResourcePoliciesInput,
   output = M.ListResourcePoliciesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ListResourcePolicies" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRetrievedTraces = schema.operation({
   id = id.from("com.amazonaws.xray", "ListRetrievedTraces"),
   input = M.ListRetrievedTracesInput,
   output = M.ListRetrievedTracesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ListRetrievedTraces" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.xray", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ListTagsForResource" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutEncryptionConfig = schema.operation({
   id = id.from("com.amazonaws.xray", "PutEncryptionConfig"),
   input = M.PutEncryptionConfigInput,
   output = M.PutEncryptionConfigOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/PutEncryptionConfig" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.xray", "PutResourcePolicy"),
   input = M.PutResourcePolicyInput,
   output = M.PutResourcePolicyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/PutResourcePolicy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutTelemetryRecords = schema.operation({
   id = id.from("com.amazonaws.xray", "PutTelemetryRecords"),
   input = M.PutTelemetryRecordsInput,
   output = M.PutTelemetryRecordsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/TelemetryRecords" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutTraceSegments = schema.operation({
   id = id.from("com.amazonaws.xray", "PutTraceSegments"),
   input = M.PutTraceSegmentsInput,
   output = M.PutTraceSegmentsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/TraceSegments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartTraceRetrieval = schema.operation({
   id = id.from("com.amazonaws.xray", "StartTraceRetrieval"),
   input = M.StartTraceRetrievalInput,
   output = M.StartTraceRetrievalOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/StartTraceRetrieval" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.xray", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/TagResource" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.xray", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/UntagResource" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateGroup = schema.operation({
   id = id.from("com.amazonaws.xray", "UpdateGroup"),
   input = M.UpdateGroupInput,
   output = M.UpdateGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/UpdateGroup" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateIndexingRule = schema.operation({
   id = id.from("com.amazonaws.xray", "UpdateIndexingRule"),
   input = M.UpdateIndexingRuleInput,
   output = M.UpdateIndexingRuleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/UpdateIndexingRule" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSamplingRule = schema.operation({
   id = id.from("com.amazonaws.xray", "UpdateSamplingRule"),
   input = M.UpdateSamplingRuleInput,
   output = M.UpdateSamplingRuleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/UpdateSamplingRule" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateTraceSegmentDestination = schema.operation({
   id = id.from("com.amazonaws.xray", "UpdateTraceSegmentDestination"),
   input = M.UpdateTraceSegmentDestinationInput,
   output = M.UpdateTraceSegmentDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/UpdateTraceSegmentDestination" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
