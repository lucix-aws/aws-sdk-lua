

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.pinpoint"

local M = {}

M.ListOf__string = schema.new({ type = "list", list_member = prelude.String })

M.MapOf__string = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ListOfWriteTreatmentResource = schema.new({ type = "list", list_member = M.WriteTreatmentResource })

M.ListOfTreatmentResource = schema.new({ type = "list", list_member = M.TreatmentResource })

M.ListOfMessageHeader = schema.new({ type = "list", list_member = M.MessageHeader })

M.ListOfInAppMessageContent = schema.new({ type = "list", list_member = M.InAppMessageContent })

M.MapOfActivity = schema.new({ type = "map", map_key = prelude.String, map_value = M.Activity })

M.ListOf__TimezoneEstimationMethodsElement = schema.new({ type = "list", list_member = prelude.String })

M.MapOfListOf__string = schema.new({ type = "map", map_key = prelude.String, map_value = M.ListOf__string })

M.MapOf__double = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Double })

M.ListOfEndpointResponse = schema.new({ type = "list", list_member = M.EndpointResponse })

M.ListOfApplicationResponse = schema.new({ type = "list", list_member = M.ApplicationResponse })

M.ListOfActivityResponse = schema.new({ type = "list", list_member = M.ActivityResponse })

M.ListOfCampaignResponse = schema.new({ type = "list", list_member = M.CampaignResponse })

M.MapOfChannelResponse = schema.new({ type = "map", map_key = prelude.String, map_value = M.ChannelResponse })

M.ListOfExportJobResponse = schema.new({ type = "list", list_member = M.ExportJobResponse })

M.ListOfImportJobResponse = schema.new({ type = "list", list_member = M.ImportJobResponse })

M.ListOfInAppMessageCampaign = schema.new({ type = "list", list_member = M.InAppMessageCampaign })

M.ListOfJourneyRunResponse = schema.new({ type = "list", list_member = M.JourneyRunResponse })

M.ListOfRecommenderConfigurationResponse = schema.new({ type = "list", list_member = M.RecommenderConfigurationResponse })

M.ListOfSegmentResponse = schema.new({ type = "list", list_member = M.SegmentResponse })

M.ListOfJourneyResponse = schema.new({ type = "list", list_member = M.JourneyResponse })

M.ListOfTemplateResponse = schema.new({ type = "list", list_member = M.TemplateResponse })

M.ListOfTemplateVersionResponse = schema.new({ type = "list", list_member = M.TemplateVersionResponse })

M.MapOfEventsBatch = schema.new({ type = "map", map_key = prelude.String, map_value = M.EventsBatch })

M.MapOfItemResponse = schema.new({ type = "map", map_key = prelude.String, map_value = M.ItemResponse })

M.MapOfAddressConfiguration = schema.new({ type = "map", map_key = prelude.String, map_value = M.AddressConfiguration })

M.MapOfEndpointSendConfiguration = schema.new({ type = "map", map_key = prelude.String, map_value = M.EndpointSendConfiguration })

M.MapOfEndpointMessageResult = schema.new({ type = "map", map_key = prelude.String, map_value = M.EndpointMessageResult })

M.MapOfMessageResult = schema.new({ type = "map", map_key = prelude.String, map_value = M.MessageResult })

M.MapOfMapOfEndpointMessageResult = schema.new({ type = "map", map_key = prelude.String, map_value = M.MapOfEndpointMessageResult })

M.ListOfEndpointBatchItem = schema.new({ type = "list", list_member = M.EndpointBatchItem })

M.ListOf__EndpointTypesElement = schema.new({ type = "list", list_member = prelude.String })

M.MapOfListOfOpenHoursRules = schema.new({ type = "map", map_key = prelude.String, map_value = M.ListOfOpenHoursRules })

M.ListOfClosedDaysRules = schema.new({ type = "list", list_member = M.ClosedDaysRule })

M.MapOfAttributeDimension = schema.new({ type = "map", map_key = prelude.String, map_value = M.AttributeDimension })

M.MapOfMetricDimension = schema.new({ type = "map", map_key = prelude.String, map_value = M.MetricDimension })

M.ListOfSegmentGroup = schema.new({ type = "list", list_member = M.SegmentGroup })

M.MapOf__integer = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Integer })

M.ListOfResultRow = schema.new({ type = "list", list_member = M.ResultRow })

M.ListOfOpenHoursRules = schema.new({ type = "list", list_member = M.OpenHoursRule })

M.MapOfEvent = schema.new({ type = "map", map_key = prelude.String, map_value = M.Event })

M.MapOfEventItemResponse = schema.new({ type = "map", map_key = prelude.String, map_value = M.EventItemResponse })

M.ListOfMultiConditionalBranch = schema.new({ type = "list", list_member = M.MultiConditionalBranch })

M.ListOfRandomSplitEntry = schema.new({ type = "list", list_member = M.RandomSplitEntry })

M.ListOfSegmentDimensions = schema.new({ type = "list", list_member = M.SegmentDimensions })

M.ListOfSegmentReference = schema.new({ type = "list", list_member = M.SegmentReference })

M.ListOfResultRowValue = schema.new({ type = "list", list_member = M.ResultRowValue })

M.ListOfSimpleCondition = schema.new({ type = "list", list_member = M.SimpleCondition })

M.ActivityResponse = schema.new({
   id = id.from(_N, "ActivityResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ActivityResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CampaignId = schema.new({
         id = id.from(_N, "ActivityResponse", "CampaignId"),
         type = "string",
         name = "CampaignId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      End = schema.new({
         id = id.from(_N, "ActivityResponse", "End"),
         type = "string",
         name = "End",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "ActivityResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Result = schema.new({
         id = id.from(_N, "ActivityResponse", "Result"),
         type = "string",
         name = "Result",
         target_id = prelude.String.id,
      }),
      ScheduledStart = schema.new({
         id = id.from(_N, "ActivityResponse", "ScheduledStart"),
         type = "string",
         name = "ScheduledStart",
         target_id = prelude.String.id,
      }),
      Start = schema.new({
         id = id.from(_N, "ActivityResponse", "Start"),
         type = "string",
         name = "Start",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "ActivityResponse", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      SuccessfulEndpointCount = schema.new({
         id = id.from(_N, "ActivityResponse", "SuccessfulEndpointCount"),
         type = "integer",
         name = "SuccessfulEndpointCount",
         target_id = prelude.Integer.id,
      }),
      TimezonesCompletedCount = schema.new({
         id = id.from(_N, "ActivityResponse", "TimezonesCompletedCount"),
         type = "integer",
         name = "TimezonesCompletedCount",
         target_id = prelude.Integer.id,
      }),
      TimezonesTotalCount = schema.new({
         id = id.from(_N, "ActivityResponse", "TimezonesTotalCount"),
         type = "integer",
         name = "TimezonesTotalCount",
         target_id = prelude.Integer.id,
      }),
      TotalEndpointCount = schema.new({
         id = id.from(_N, "ActivityResponse", "TotalEndpointCount"),
         type = "integer",
         name = "TotalEndpointCount",
         target_id = prelude.Integer.id,
      }),
      TreatmentId = schema.new({
         id = id.from(_N, "ActivityResponse", "TreatmentId"),
         type = "string",
         name = "TreatmentId",
         target_id = prelude.String.id,
      }),
      ExecutionMetrics = schema.new({
         id = id.from(_N, "ActivityResponse", "ExecutionMetrics"),
         type = "map",
         name = "ExecutionMetrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ActivitiesResponse = schema.new({
   id = id.from(_N, "ActivitiesResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "ActivitiesResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.ActivityResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ActivitiesResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.AttributeDimension = schema.new({
   id = id.from(_N, "AttributeDimension"),
   type = "structure",
   members = {
      AttributeType = schema.new({
         id = id.from(_N, "AttributeDimension", "AttributeType"),
         type = "string",
         name = "AttributeType",
         target_id = prelude.String.id,
      }),
      Values = schema.new({
         id = id.from(_N, "AttributeDimension", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SetDimension = schema.new({
   id = id.from(_N, "SetDimension"),
   type = "structure",
   members = {
      DimensionType = schema.new({
         id = id.from(_N, "SetDimension", "DimensionType"),
         type = "string",
         name = "DimensionType",
         target_id = prelude.String.id,
      }),
      Values = schema.new({
         id = id.from(_N, "SetDimension", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MetricDimension = schema.new({
   id = id.from(_N, "MetricDimension"),
   type = "structure",
   members = {
      ComparisonOperator = schema.new({
         id = id.from(_N, "MetricDimension", "ComparisonOperator"),
         type = "string",
         name = "ComparisonOperator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "MetricDimension", "Value"),
         type = "double",
         name = "Value",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EventDimensions = schema.new({
   id = id.from(_N, "EventDimensions"),
   type = "structure",
   members = {
      Attributes = schema.new({
         id = id.from(_N, "EventDimensions", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AttributeDimension,
      }),
      EventType = schema.new({
         id = id.from(_N, "EventDimensions", "EventType"),
         type = "structure",
         name = "EventType",
         target_id = id.from(_N, "SetDimension"),
         target = M.SetDimension,
      }),
      Metrics = schema.new({
         id = id.from(_N, "EventDimensions", "Metrics"),
         type = "map",
         name = "Metrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.MetricDimension,
      }),
   },
})

M.EventCondition = schema.new({
   id = id.from(_N, "EventCondition"),
   type = "structure",
   members = {
      Dimensions = schema.new({
         id = id.from(_N, "EventCondition", "Dimensions"),
         type = "structure",
         name = "Dimensions",
         target_id = id.from(_N, "EventDimensions"),
         target = M.EventDimensions,
      }),
      MessageActivity = schema.new({
         id = id.from(_N, "EventCondition", "MessageActivity"),
         type = "string",
         name = "MessageActivity",
         target_id = prelude.String.id,
      }),
   },
})

M.SegmentCondition = schema.new({
   id = id.from(_N, "SegmentCondition"),
   type = "structure",
   members = {
      SegmentId = schema.new({
         id = id.from(_N, "SegmentCondition", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RecencyDimension = schema.new({
   id = id.from(_N, "RecencyDimension"),
   type = "structure",
   members = {
      Duration = schema.new({
         id = id.from(_N, "RecencyDimension", "Duration"),
         type = "string",
         name = "Duration",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecencyType = schema.new({
         id = id.from(_N, "RecencyDimension", "RecencyType"),
         type = "string",
         name = "RecencyType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SegmentBehaviors = schema.new({
   id = id.from(_N, "SegmentBehaviors"),
   type = "structure",
   members = {
      Recency = schema.new({
         id = id.from(_N, "SegmentBehaviors", "Recency"),
         type = "structure",
         name = "Recency",
         target_id = id.from(_N, "RecencyDimension"),
         target = M.RecencyDimension,
      }),
   },
})

M.SegmentDemographics = schema.new({
   id = id.from(_N, "SegmentDemographics"),
   type = "structure",
   members = {
      AppVersion = schema.new({
         id = id.from(_N, "SegmentDemographics", "AppVersion"),
         type = "structure",
         name = "AppVersion",
         target_id = id.from(_N, "SetDimension"),
         target = M.SetDimension,
      }),
      Channel = schema.new({
         id = id.from(_N, "SegmentDemographics", "Channel"),
         type = "structure",
         name = "Channel",
         target_id = id.from(_N, "SetDimension"),
         target = M.SetDimension,
      }),
      DeviceType = schema.new({
         id = id.from(_N, "SegmentDemographics", "DeviceType"),
         type = "structure",
         name = "DeviceType",
         target_id = id.from(_N, "SetDimension"),
         target = M.SetDimension,
      }),
      Make = schema.new({
         id = id.from(_N, "SegmentDemographics", "Make"),
         type = "structure",
         name = "Make",
         target_id = id.from(_N, "SetDimension"),
         target = M.SetDimension,
      }),
      Model = schema.new({
         id = id.from(_N, "SegmentDemographics", "Model"),
         type = "structure",
         name = "Model",
         target_id = id.from(_N, "SetDimension"),
         target = M.SetDimension,
      }),
      Platform = schema.new({
         id = id.from(_N, "SegmentDemographics", "Platform"),
         type = "structure",
         name = "Platform",
         target_id = id.from(_N, "SetDimension"),
         target = M.SetDimension,
      }),
   },
})

M.GPSCoordinates = schema.new({
   id = id.from(_N, "GPSCoordinates"),
   type = "structure",
   members = {
      Latitude = schema.new({
         id = id.from(_N, "GPSCoordinates", "Latitude"),
         type = "double",
         name = "Latitude",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Longitude = schema.new({
         id = id.from(_N, "GPSCoordinates", "Longitude"),
         type = "double",
         name = "Longitude",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GPSPointDimension = schema.new({
   id = id.from(_N, "GPSPointDimension"),
   type = "structure",
   members = {
      Coordinates = schema.new({
         id = id.from(_N, "GPSPointDimension", "Coordinates"),
         type = "structure",
         name = "Coordinates",
         target_id = id.from(_N, "GPSCoordinates"),
         target = M.GPSCoordinates,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RangeInKilometers = schema.new({
         id = id.from(_N, "GPSPointDimension", "RangeInKilometers"),
         type = "double",
         name = "RangeInKilometers",
         target_id = prelude.Double.id,
      }),
   },
})

M.SegmentLocation = schema.new({
   id = id.from(_N, "SegmentLocation"),
   type = "structure",
   members = {
      Country = schema.new({
         id = id.from(_N, "SegmentLocation", "Country"),
         type = "structure",
         name = "Country",
         target_id = id.from(_N, "SetDimension"),
         target = M.SetDimension,
      }),
      GPSPoint = schema.new({
         id = id.from(_N, "SegmentLocation", "GPSPoint"),
         type = "structure",
         name = "GPSPoint",
         target_id = id.from(_N, "GPSPointDimension"),
         target = M.GPSPointDimension,
      }),
   },
})

M.SegmentDimensions = schema.new({
   id = id.from(_N, "SegmentDimensions"),
   type = "structure",
   members = {
      Attributes = schema.new({
         id = id.from(_N, "SegmentDimensions", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AttributeDimension,
      }),
      Behavior = schema.new({
         id = id.from(_N, "SegmentDimensions", "Behavior"),
         type = "structure",
         name = "Behavior",
         target_id = id.from(_N, "SegmentBehaviors"),
         target = M.SegmentBehaviors,
      }),
      Demographic = schema.new({
         id = id.from(_N, "SegmentDimensions", "Demographic"),
         type = "structure",
         name = "Demographic",
         target_id = id.from(_N, "SegmentDemographics"),
         target = M.SegmentDemographics,
      }),
      Location = schema.new({
         id = id.from(_N, "SegmentDimensions", "Location"),
         type = "structure",
         name = "Location",
         target_id = id.from(_N, "SegmentLocation"),
         target = M.SegmentLocation,
      }),
      Metrics = schema.new({
         id = id.from(_N, "SegmentDimensions", "Metrics"),
         type = "map",
         name = "Metrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.MetricDimension,
      }),
      UserAttributes = schema.new({
         id = id.from(_N, "SegmentDimensions", "UserAttributes"),
         type = "map",
         name = "UserAttributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AttributeDimension,
      }),
   },
})

M.SimpleCondition = schema.new({
   id = id.from(_N, "SimpleCondition"),
   type = "structure",
   members = {
      EventCondition = schema.new({
         id = id.from(_N, "SimpleCondition", "EventCondition"),
         type = "structure",
         name = "EventCondition",
         target_id = id.from(_N, "EventCondition"),
         target = M.EventCondition,
      }),
      SegmentCondition = schema.new({
         id = id.from(_N, "SimpleCondition", "SegmentCondition"),
         type = "structure",
         name = "SegmentCondition",
         target_id = id.from(_N, "SegmentCondition"),
         target = M.SegmentCondition,
      }),
      SegmentDimensions = schema.new({
         id = id.from(_N, "SimpleCondition", "SegmentDimensions"),
         type = "structure",
         name = "SegmentDimensions",
         target_id = id.from(_N, "SegmentDimensions"),
         target = M.SegmentDimensions,
         traits = {
            [traits.JSON_NAME] = { name = "segmentDimensions" },
         },
      }),
   },
})

M.Condition = schema.new({
   id = id.from(_N, "Condition"),
   type = "structure",
   members = {
      Conditions = schema.new({
         id = id.from(_N, "Condition", "Conditions"),
         type = "list",
         name = "Conditions",
         target_id = prelude.Document.id,
         list_member = M.SimpleCondition,
      }),
      Operator = schema.new({
         id = id.from(_N, "Condition", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
      }),
   },
})

M.WaitTime = schema.new({
   id = id.from(_N, "WaitTime"),
   type = "structure",
   members = {
      WaitFor = schema.new({
         id = id.from(_N, "WaitTime", "WaitFor"),
         type = "string",
         name = "WaitFor",
         target_id = prelude.String.id,
      }),
      WaitUntil = schema.new({
         id = id.from(_N, "WaitTime", "WaitUntil"),
         type = "string",
         name = "WaitUntil",
         target_id = prelude.String.id,
      }),
   },
})

M.ConditionalSplitActivity = schema.new({
   id = id.from(_N, "ConditionalSplitActivity"),
   type = "structure",
   members = {
      Condition = schema.new({
         id = id.from(_N, "ConditionalSplitActivity", "Condition"),
         type = "structure",
         name = "Condition",
         target_id = id.from(_N, "Condition"),
         target = M.Condition,
      }),
      EvaluationWaitTime = schema.new({
         id = id.from(_N, "ConditionalSplitActivity", "EvaluationWaitTime"),
         type = "structure",
         name = "EvaluationWaitTime",
         target_id = id.from(_N, "WaitTime"),
         target = M.WaitTime,
      }),
      FalseActivity = schema.new({
         id = id.from(_N, "ConditionalSplitActivity", "FalseActivity"),
         type = "string",
         name = "FalseActivity",
         target_id = prelude.String.id,
      }),
      TrueActivity = schema.new({
         id = id.from(_N, "ConditionalSplitActivity", "TrueActivity"),
         type = "string",
         name = "TrueActivity",
         target_id = prelude.String.id,
      }),
   },
})

M.ContactCenterActivity = schema.new({
   id = id.from(_N, "ContactCenterActivity"),
   type = "structure",
   members = {
      NextActivity = schema.new({
         id = id.from(_N, "ContactCenterActivity", "NextActivity"),
         type = "string",
         name = "NextActivity",
         target_id = prelude.String.id,
      }),
   },
})

M.JourneyCustomMessage = schema.new({
   id = id.from(_N, "JourneyCustomMessage"),
   type = "structure",
   members = {
      Data = schema.new({
         id = id.from(_N, "JourneyCustomMessage", "Data"),
         type = "string",
         name = "Data",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomMessageActivity = schema.new({
   id = id.from(_N, "CustomMessageActivity"),
   type = "structure",
   members = {
      DeliveryUri = schema.new({
         id = id.from(_N, "CustomMessageActivity", "DeliveryUri"),
         type = "string",
         name = "DeliveryUri",
         target_id = prelude.String.id,
      }),
      EndpointTypes = schema.new({
         id = id.from(_N, "CustomMessageActivity", "EndpointTypes"),
         type = "list",
         name = "EndpointTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      MessageConfig = schema.new({
         id = id.from(_N, "CustomMessageActivity", "MessageConfig"),
         type = "structure",
         name = "MessageConfig",
         target_id = id.from(_N, "JourneyCustomMessage"),
         target = M.JourneyCustomMessage,
      }),
      NextActivity = schema.new({
         id = id.from(_N, "CustomMessageActivity", "NextActivity"),
         type = "string",
         name = "NextActivity",
         target_id = prelude.String.id,
      }),
      TemplateName = schema.new({
         id = id.from(_N, "CustomMessageActivity", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
      }),
      TemplateVersion = schema.new({
         id = id.from(_N, "CustomMessageActivity", "TemplateVersion"),
         type = "string",
         name = "TemplateVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.JourneyEmailMessage = schema.new({
   id = id.from(_N, "JourneyEmailMessage"),
   type = "structure",
   members = {
      FromAddress = schema.new({
         id = id.from(_N, "JourneyEmailMessage", "FromAddress"),
         type = "string",
         name = "FromAddress",
         target_id = prelude.String.id,
      }),
   },
})

M.EmailMessageActivity = schema.new({
   id = id.from(_N, "EmailMessageActivity"),
   type = "structure",
   members = {
      MessageConfig = schema.new({
         id = id.from(_N, "EmailMessageActivity", "MessageConfig"),
         type = "structure",
         name = "MessageConfig",
         target_id = id.from(_N, "JourneyEmailMessage"),
         target = M.JourneyEmailMessage,
      }),
      NextActivity = schema.new({
         id = id.from(_N, "EmailMessageActivity", "NextActivity"),
         type = "string",
         name = "NextActivity",
         target_id = prelude.String.id,
      }),
      TemplateName = schema.new({
         id = id.from(_N, "EmailMessageActivity", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
      }),
      TemplateVersion = schema.new({
         id = id.from(_N, "EmailMessageActivity", "TemplateVersion"),
         type = "string",
         name = "TemplateVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.HoldoutActivity = schema.new({
   id = id.from(_N, "HoldoutActivity"),
   type = "structure",
   members = {
      NextActivity = schema.new({
         id = id.from(_N, "HoldoutActivity", "NextActivity"),
         type = "string",
         name = "NextActivity",
         target_id = prelude.String.id,
      }),
      Percentage = schema.new({
         id = id.from(_N, "HoldoutActivity", "Percentage"),
         type = "integer",
         name = "Percentage",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MultiConditionalBranch = schema.new({
   id = id.from(_N, "MultiConditionalBranch"),
   type = "structure",
   members = {
      Condition = schema.new({
         id = id.from(_N, "MultiConditionalBranch", "Condition"),
         type = "structure",
         name = "Condition",
         target_id = id.from(_N, "SimpleCondition"),
         target = M.SimpleCondition,
      }),
      NextActivity = schema.new({
         id = id.from(_N, "MultiConditionalBranch", "NextActivity"),
         type = "string",
         name = "NextActivity",
         target_id = prelude.String.id,
      }),
   },
})

M.MultiConditionalSplitActivity = schema.new({
   id = id.from(_N, "MultiConditionalSplitActivity"),
   type = "structure",
   members = {
      Branches = schema.new({
         id = id.from(_N, "MultiConditionalSplitActivity", "Branches"),
         type = "list",
         name = "Branches",
         target_id = prelude.Document.id,
         list_member = M.MultiConditionalBranch,
      }),
      DefaultActivity = schema.new({
         id = id.from(_N, "MultiConditionalSplitActivity", "DefaultActivity"),
         type = "string",
         name = "DefaultActivity",
         target_id = prelude.String.id,
      }),
      EvaluationWaitTime = schema.new({
         id = id.from(_N, "MultiConditionalSplitActivity", "EvaluationWaitTime"),
         type = "structure",
         name = "EvaluationWaitTime",
         target_id = id.from(_N, "WaitTime"),
         target = M.WaitTime,
      }),
   },
})

M.JourneyPushMessage = schema.new({
   id = id.from(_N, "JourneyPushMessage"),
   type = "structure",
   members = {
      TimeToLive = schema.new({
         id = id.from(_N, "JourneyPushMessage", "TimeToLive"),
         type = "string",
         name = "TimeToLive",
         target_id = prelude.String.id,
      }),
   },
})

M.PushMessageActivity = schema.new({
   id = id.from(_N, "PushMessageActivity"),
   type = "structure",
   members = {
      MessageConfig = schema.new({
         id = id.from(_N, "PushMessageActivity", "MessageConfig"),
         type = "structure",
         name = "MessageConfig",
         target_id = id.from(_N, "JourneyPushMessage"),
         target = M.JourneyPushMessage,
      }),
      NextActivity = schema.new({
         id = id.from(_N, "PushMessageActivity", "NextActivity"),
         type = "string",
         name = "NextActivity",
         target_id = prelude.String.id,
      }),
      TemplateName = schema.new({
         id = id.from(_N, "PushMessageActivity", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
      }),
      TemplateVersion = schema.new({
         id = id.from(_N, "PushMessageActivity", "TemplateVersion"),
         type = "string",
         name = "TemplateVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.RandomSplitEntry = schema.new({
   id = id.from(_N, "RandomSplitEntry"),
   type = "structure",
   members = {
      NextActivity = schema.new({
         id = id.from(_N, "RandomSplitEntry", "NextActivity"),
         type = "string",
         name = "NextActivity",
         target_id = prelude.String.id,
      }),
      Percentage = schema.new({
         id = id.from(_N, "RandomSplitEntry", "Percentage"),
         type = "integer",
         name = "Percentage",
         target_id = prelude.Integer.id,
      }),
   },
})

M.RandomSplitActivity = schema.new({
   id = id.from(_N, "RandomSplitActivity"),
   type = "structure",
   members = {
      Branches = schema.new({
         id = id.from(_N, "RandomSplitActivity", "Branches"),
         type = "list",
         name = "Branches",
         target_id = prelude.Document.id,
         list_member = M.RandomSplitEntry,
      }),
   },
})

M.JourneySMSMessage = schema.new({
   id = id.from(_N, "JourneySMSMessage"),
   type = "structure",
   members = {
      MessageType = schema.new({
         id = id.from(_N, "JourneySMSMessage", "MessageType"),
         type = "string",
         name = "MessageType",
         target_id = prelude.String.id,
      }),
      OriginationNumber = schema.new({
         id = id.from(_N, "JourneySMSMessage", "OriginationNumber"),
         type = "string",
         name = "OriginationNumber",
         target_id = prelude.String.id,
      }),
      SenderId = schema.new({
         id = id.from(_N, "JourneySMSMessage", "SenderId"),
         type = "string",
         name = "SenderId",
         target_id = prelude.String.id,
      }),
      EntityId = schema.new({
         id = id.from(_N, "JourneySMSMessage", "EntityId"),
         type = "string",
         name = "EntityId",
         target_id = prelude.String.id,
      }),
      TemplateId = schema.new({
         id = id.from(_N, "JourneySMSMessage", "TemplateId"),
         type = "string",
         name = "TemplateId",
         target_id = prelude.String.id,
      }),
   },
})

M.SMSMessageActivity = schema.new({
   id = id.from(_N, "SMSMessageActivity"),
   type = "structure",
   members = {
      MessageConfig = schema.new({
         id = id.from(_N, "SMSMessageActivity", "MessageConfig"),
         type = "structure",
         name = "MessageConfig",
         target_id = id.from(_N, "JourneySMSMessage"),
         target = M.JourneySMSMessage,
      }),
      NextActivity = schema.new({
         id = id.from(_N, "SMSMessageActivity", "NextActivity"),
         type = "string",
         name = "NextActivity",
         target_id = prelude.String.id,
      }),
      TemplateName = schema.new({
         id = id.from(_N, "SMSMessageActivity", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
      }),
      TemplateVersion = schema.new({
         id = id.from(_N, "SMSMessageActivity", "TemplateVersion"),
         type = "string",
         name = "TemplateVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.WaitActivity = schema.new({
   id = id.from(_N, "WaitActivity"),
   type = "structure",
   members = {
      NextActivity = schema.new({
         id = id.from(_N, "WaitActivity", "NextActivity"),
         type = "string",
         name = "NextActivity",
         target_id = prelude.String.id,
      }),
      WaitTime = schema.new({
         id = id.from(_N, "WaitActivity", "WaitTime"),
         type = "structure",
         name = "WaitTime",
         target_id = id.from(_N, "WaitTime"),
         target = M.WaitTime,
      }),
   },
})

M.Activity = schema.new({
   id = id.from(_N, "Activity"),
   type = "structure",
   members = {
      CUSTOM = schema.new({
         id = id.from(_N, "Activity", "CUSTOM"),
         type = "structure",
         name = "CUSTOM",
         target_id = id.from(_N, "CustomMessageActivity"),
         target = M.CustomMessageActivity,
      }),
      ConditionalSplit = schema.new({
         id = id.from(_N, "Activity", "ConditionalSplit"),
         type = "structure",
         name = "ConditionalSplit",
         target_id = id.from(_N, "ConditionalSplitActivity"),
         target = M.ConditionalSplitActivity,
      }),
      Description = schema.new({
         id = id.from(_N, "Activity", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EMAIL = schema.new({
         id = id.from(_N, "Activity", "EMAIL"),
         type = "structure",
         name = "EMAIL",
         target_id = id.from(_N, "EmailMessageActivity"),
         target = M.EmailMessageActivity,
      }),
      Holdout = schema.new({
         id = id.from(_N, "Activity", "Holdout"),
         type = "structure",
         name = "Holdout",
         target_id = id.from(_N, "HoldoutActivity"),
         target = M.HoldoutActivity,
      }),
      MultiCondition = schema.new({
         id = id.from(_N, "Activity", "MultiCondition"),
         type = "structure",
         name = "MultiCondition",
         target_id = id.from(_N, "MultiConditionalSplitActivity"),
         target = M.MultiConditionalSplitActivity,
      }),
      PUSH = schema.new({
         id = id.from(_N, "Activity", "PUSH"),
         type = "structure",
         name = "PUSH",
         target_id = id.from(_N, "PushMessageActivity"),
         target = M.PushMessageActivity,
      }),
      RandomSplit = schema.new({
         id = id.from(_N, "Activity", "RandomSplit"),
         type = "structure",
         name = "RandomSplit",
         target_id = id.from(_N, "RandomSplitActivity"),
         target = M.RandomSplitActivity,
      }),
      SMS = schema.new({
         id = id.from(_N, "Activity", "SMS"),
         type = "structure",
         name = "SMS",
         target_id = id.from(_N, "SMSMessageActivity"),
         target = M.SMSMessageActivity,
      }),
      Wait = schema.new({
         id = id.from(_N, "Activity", "Wait"),
         type = "structure",
         name = "Wait",
         target_id = id.from(_N, "WaitActivity"),
         target = M.WaitActivity,
      }),
      ContactCenter = schema.new({
         id = id.from(_N, "Activity", "ContactCenter"),
         type = "structure",
         name = "ContactCenter",
         target_id = id.from(_N, "ContactCenterActivity"),
         target = M.ContactCenterActivity,
      }),
   },
})

M.AddressConfiguration = schema.new({
   id = id.from(_N, "AddressConfiguration"),
   type = "structure",
   members = {
      BodyOverride = schema.new({
         id = id.from(_N, "AddressConfiguration", "BodyOverride"),
         type = "string",
         name = "BodyOverride",
         target_id = prelude.String.id,
      }),
      ChannelType = schema.new({
         id = id.from(_N, "AddressConfiguration", "ChannelType"),
         type = "string",
         name = "ChannelType",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "AddressConfiguration", "Context"),
         type = "map",
         name = "Context",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      RawContent = schema.new({
         id = id.from(_N, "AddressConfiguration", "RawContent"),
         type = "string",
         name = "RawContent",
         target_id = prelude.String.id,
      }),
      Substitutions = schema.new({
         id = id.from(_N, "AddressConfiguration", "Substitutions"),
         type = "map",
         name = "Substitutions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      TitleOverride = schema.new({
         id = id.from(_N, "AddressConfiguration", "TitleOverride"),
         type = "string",
         name = "TitleOverride",
         target_id = prelude.String.id,
      }),
   },
})

M.ADMChannelRequest = schema.new({
   id = id.from(_N, "ADMChannelRequest"),
   type = "structure",
   members = {
      ClientId = schema.new({
         id = id.from(_N, "ADMChannelRequest", "ClientId"),
         type = "string",
         name = "ClientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientSecret = schema.new({
         id = id.from(_N, "ADMChannelRequest", "ClientSecret"),
         type = "string",
         name = "ClientSecret",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Enabled = schema.new({
         id = id.from(_N, "ADMChannelRequest", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ADMChannelResponse = schema.new({
   id = id.from(_N, "ADMChannelResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ADMChannelResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "ADMChannelResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "ADMChannelResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      HasCredential = schema.new({
         id = id.from(_N, "ADMChannelResponse", "HasCredential"),
         type = "boolean",
         name = "HasCredential",
         target_id = prelude.Boolean.id,
      }),
      Id = schema.new({
         id = id.from(_N, "ADMChannelResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      IsArchived = schema.new({
         id = id.from(_N, "ADMChannelResponse", "IsArchived"),
         type = "boolean",
         name = "IsArchived",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedBy = schema.new({
         id = id.from(_N, "ADMChannelResponse", "LastModifiedBy"),
         type = "string",
         name = "LastModifiedBy",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "ADMChannelResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "ADMChannelResponse", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "ADMChannelResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ADMMessage = schema.new({
   id = id.from(_N, "ADMMessage"),
   type = "structure",
   members = {
      Action = schema.new({
         id = id.from(_N, "ADMMessage", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      Body = schema.new({
         id = id.from(_N, "ADMMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      ConsolidationKey = schema.new({
         id = id.from(_N, "ADMMessage", "ConsolidationKey"),
         type = "string",
         name = "ConsolidationKey",
         target_id = prelude.String.id,
      }),
      Data = schema.new({
         id = id.from(_N, "ADMMessage", "Data"),
         type = "map",
         name = "Data",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ExpiresAfter = schema.new({
         id = id.from(_N, "ADMMessage", "ExpiresAfter"),
         type = "string",
         name = "ExpiresAfter",
         target_id = prelude.String.id,
      }),
      IconReference = schema.new({
         id = id.from(_N, "ADMMessage", "IconReference"),
         type = "string",
         name = "IconReference",
         target_id = prelude.String.id,
      }),
      ImageIconUrl = schema.new({
         id = id.from(_N, "ADMMessage", "ImageIconUrl"),
         type = "string",
         name = "ImageIconUrl",
         target_id = prelude.String.id,
      }),
      ImageUrl = schema.new({
         id = id.from(_N, "ADMMessage", "ImageUrl"),
         type = "string",
         name = "ImageUrl",
         target_id = prelude.String.id,
      }),
      MD5 = schema.new({
         id = id.from(_N, "ADMMessage", "MD5"),
         type = "string",
         name = "MD5",
         target_id = prelude.String.id,
      }),
      RawContent = schema.new({
         id = id.from(_N, "ADMMessage", "RawContent"),
         type = "string",
         name = "RawContent",
         target_id = prelude.String.id,
      }),
      SilentPush = schema.new({
         id = id.from(_N, "ADMMessage", "SilentPush"),
         type = "boolean",
         name = "SilentPush",
         target_id = prelude.Boolean.id,
      }),
      SmallImageIconUrl = schema.new({
         id = id.from(_N, "ADMMessage", "SmallImageIconUrl"),
         type = "string",
         name = "SmallImageIconUrl",
         target_id = prelude.String.id,
      }),
      Sound = schema.new({
         id = id.from(_N, "ADMMessage", "Sound"),
         type = "string",
         name = "Sound",
         target_id = prelude.String.id,
      }),
      Substitutions = schema.new({
         id = id.from(_N, "ADMMessage", "Substitutions"),
         type = "map",
         name = "Substitutions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      Title = schema.new({
         id = id.from(_N, "ADMMessage", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Url = schema.new({
         id = id.from(_N, "ADMMessage", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
   },
})

M.AndroidPushNotificationTemplate = schema.new({
   id = id.from(_N, "AndroidPushNotificationTemplate"),
   type = "structure",
   members = {
      Action = schema.new({
         id = id.from(_N, "AndroidPushNotificationTemplate", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      Body = schema.new({
         id = id.from(_N, "AndroidPushNotificationTemplate", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      ImageIconUrl = schema.new({
         id = id.from(_N, "AndroidPushNotificationTemplate", "ImageIconUrl"),
         type = "string",
         name = "ImageIconUrl",
         target_id = prelude.String.id,
      }),
      ImageUrl = schema.new({
         id = id.from(_N, "AndroidPushNotificationTemplate", "ImageUrl"),
         type = "string",
         name = "ImageUrl",
         target_id = prelude.String.id,
      }),
      RawContent = schema.new({
         id = id.from(_N, "AndroidPushNotificationTemplate", "RawContent"),
         type = "string",
         name = "RawContent",
         target_id = prelude.String.id,
      }),
      SmallImageIconUrl = schema.new({
         id = id.from(_N, "AndroidPushNotificationTemplate", "SmallImageIconUrl"),
         type = "string",
         name = "SmallImageIconUrl",
         target_id = prelude.String.id,
      }),
      Sound = schema.new({
         id = id.from(_N, "AndroidPushNotificationTemplate", "Sound"),
         type = "string",
         name = "Sound",
         target_id = prelude.String.id,
      }),
      Title = schema.new({
         id = id.from(_N, "AndroidPushNotificationTemplate", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Url = schema.new({
         id = id.from(_N, "AndroidPushNotificationTemplate", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
   },
})

M.APNSChannelRequest = schema.new({
   id = id.from(_N, "APNSChannelRequest"),
   type = "structure",
   members = {
      BundleId = schema.new({
         id = id.from(_N, "APNSChannelRequest", "BundleId"),
         type = "string",
         name = "BundleId",
         target_id = prelude.String.id,
      }),
      Certificate = schema.new({
         id = id.from(_N, "APNSChannelRequest", "Certificate"),
         type = "string",
         name = "Certificate",
         target_id = prelude.String.id,
      }),
      DefaultAuthenticationMethod = schema.new({
         id = id.from(_N, "APNSChannelRequest", "DefaultAuthenticationMethod"),
         type = "string",
         name = "DefaultAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "APNSChannelRequest", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      PrivateKey = schema.new({
         id = id.from(_N, "APNSChannelRequest", "PrivateKey"),
         type = "string",
         name = "PrivateKey",
         target_id = prelude.String.id,
      }),
      TeamId = schema.new({
         id = id.from(_N, "APNSChannelRequest", "TeamId"),
         type = "string",
         name = "TeamId",
         target_id = prelude.String.id,
      }),
      TokenKey = schema.new({
         id = id.from(_N, "APNSChannelRequest", "TokenKey"),
         type = "string",
         name = "TokenKey",
         target_id = prelude.String.id,
      }),
      TokenKeyId = schema.new({
         id = id.from(_N, "APNSChannelRequest", "TokenKeyId"),
         type = "string",
         name = "TokenKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.APNSChannelResponse = schema.new({
   id = id.from(_N, "APNSChannelResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "APNSChannelResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "APNSChannelResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      DefaultAuthenticationMethod = schema.new({
         id = id.from(_N, "APNSChannelResponse", "DefaultAuthenticationMethod"),
         type = "string",
         name = "DefaultAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "APNSChannelResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      HasCredential = schema.new({
         id = id.from(_N, "APNSChannelResponse", "HasCredential"),
         type = "boolean",
         name = "HasCredential",
         target_id = prelude.Boolean.id,
      }),
      HasTokenKey = schema.new({
         id = id.from(_N, "APNSChannelResponse", "HasTokenKey"),
         type = "boolean",
         name = "HasTokenKey",
         target_id = prelude.Boolean.id,
      }),
      Id = schema.new({
         id = id.from(_N, "APNSChannelResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      IsArchived = schema.new({
         id = id.from(_N, "APNSChannelResponse", "IsArchived"),
         type = "boolean",
         name = "IsArchived",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedBy = schema.new({
         id = id.from(_N, "APNSChannelResponse", "LastModifiedBy"),
         type = "string",
         name = "LastModifiedBy",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "APNSChannelResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "APNSChannelResponse", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "APNSChannelResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.APNSMessage = schema.new({
   id = id.from(_N, "APNSMessage"),
   type = "structure",
   members = {
      APNSPushType = schema.new({
         id = id.from(_N, "APNSMessage", "APNSPushType"),
         type = "string",
         name = "APNSPushType",
         target_id = prelude.String.id,
      }),
      Action = schema.new({
         id = id.from(_N, "APNSMessage", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      Badge = schema.new({
         id = id.from(_N, "APNSMessage", "Badge"),
         type = "integer",
         name = "Badge",
         target_id = prelude.Integer.id,
      }),
      Body = schema.new({
         id = id.from(_N, "APNSMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      Category = schema.new({
         id = id.from(_N, "APNSMessage", "Category"),
         type = "string",
         name = "Category",
         target_id = prelude.String.id,
      }),
      CollapseId = schema.new({
         id = id.from(_N, "APNSMessage", "CollapseId"),
         type = "string",
         name = "CollapseId",
         target_id = prelude.String.id,
      }),
      Data = schema.new({
         id = id.from(_N, "APNSMessage", "Data"),
         type = "map",
         name = "Data",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      MediaUrl = schema.new({
         id = id.from(_N, "APNSMessage", "MediaUrl"),
         type = "string",
         name = "MediaUrl",
         target_id = prelude.String.id,
      }),
      PreferredAuthenticationMethod = schema.new({
         id = id.from(_N, "APNSMessage", "PreferredAuthenticationMethod"),
         type = "string",
         name = "PreferredAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Priority = schema.new({
         id = id.from(_N, "APNSMessage", "Priority"),
         type = "string",
         name = "Priority",
         target_id = prelude.String.id,
      }),
      RawContent = schema.new({
         id = id.from(_N, "APNSMessage", "RawContent"),
         type = "string",
         name = "RawContent",
         target_id = prelude.String.id,
      }),
      SilentPush = schema.new({
         id = id.from(_N, "APNSMessage", "SilentPush"),
         type = "boolean",
         name = "SilentPush",
         target_id = prelude.Boolean.id,
      }),
      Sound = schema.new({
         id = id.from(_N, "APNSMessage", "Sound"),
         type = "string",
         name = "Sound",
         target_id = prelude.String.id,
      }),
      Substitutions = schema.new({
         id = id.from(_N, "APNSMessage", "Substitutions"),
         type = "map",
         name = "Substitutions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      ThreadId = schema.new({
         id = id.from(_N, "APNSMessage", "ThreadId"),
         type = "string",
         name = "ThreadId",
         target_id = prelude.String.id,
      }),
      TimeToLive = schema.new({
         id = id.from(_N, "APNSMessage", "TimeToLive"),
         type = "integer",
         name = "TimeToLive",
         target_id = prelude.Integer.id,
      }),
      Title = schema.new({
         id = id.from(_N, "APNSMessage", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Url = schema.new({
         id = id.from(_N, "APNSMessage", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
   },
})

M.APNSPushNotificationTemplate = schema.new({
   id = id.from(_N, "APNSPushNotificationTemplate"),
   type = "structure",
   members = {
      Action = schema.new({
         id = id.from(_N, "APNSPushNotificationTemplate", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      Body = schema.new({
         id = id.from(_N, "APNSPushNotificationTemplate", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      MediaUrl = schema.new({
         id = id.from(_N, "APNSPushNotificationTemplate", "MediaUrl"),
         type = "string",
         name = "MediaUrl",
         target_id = prelude.String.id,
      }),
      RawContent = schema.new({
         id = id.from(_N, "APNSPushNotificationTemplate", "RawContent"),
         type = "string",
         name = "RawContent",
         target_id = prelude.String.id,
      }),
      Sound = schema.new({
         id = id.from(_N, "APNSPushNotificationTemplate", "Sound"),
         type = "string",
         name = "Sound",
         target_id = prelude.String.id,
      }),
      Title = schema.new({
         id = id.from(_N, "APNSPushNotificationTemplate", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Url = schema.new({
         id = id.from(_N, "APNSPushNotificationTemplate", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
   },
})

M.APNSSandboxChannelRequest = schema.new({
   id = id.from(_N, "APNSSandboxChannelRequest"),
   type = "structure",
   members = {
      BundleId = schema.new({
         id = id.from(_N, "APNSSandboxChannelRequest", "BundleId"),
         type = "string",
         name = "BundleId",
         target_id = prelude.String.id,
      }),
      Certificate = schema.new({
         id = id.from(_N, "APNSSandboxChannelRequest", "Certificate"),
         type = "string",
         name = "Certificate",
         target_id = prelude.String.id,
      }),
      DefaultAuthenticationMethod = schema.new({
         id = id.from(_N, "APNSSandboxChannelRequest", "DefaultAuthenticationMethod"),
         type = "string",
         name = "DefaultAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "APNSSandboxChannelRequest", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      PrivateKey = schema.new({
         id = id.from(_N, "APNSSandboxChannelRequest", "PrivateKey"),
         type = "string",
         name = "PrivateKey",
         target_id = prelude.String.id,
      }),
      TeamId = schema.new({
         id = id.from(_N, "APNSSandboxChannelRequest", "TeamId"),
         type = "string",
         name = "TeamId",
         target_id = prelude.String.id,
      }),
      TokenKey = schema.new({
         id = id.from(_N, "APNSSandboxChannelRequest", "TokenKey"),
         type = "string",
         name = "TokenKey",
         target_id = prelude.String.id,
      }),
      TokenKeyId = schema.new({
         id = id.from(_N, "APNSSandboxChannelRequest", "TokenKeyId"),
         type = "string",
         name = "TokenKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.APNSSandboxChannelResponse = schema.new({
   id = id.from(_N, "APNSSandboxChannelResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      DefaultAuthenticationMethod = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "DefaultAuthenticationMethod"),
         type = "string",
         name = "DefaultAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      HasCredential = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "HasCredential"),
         type = "boolean",
         name = "HasCredential",
         target_id = prelude.Boolean.id,
      }),
      HasTokenKey = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "HasTokenKey"),
         type = "boolean",
         name = "HasTokenKey",
         target_id = prelude.Boolean.id,
      }),
      Id = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      IsArchived = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "IsArchived"),
         type = "boolean",
         name = "IsArchived",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedBy = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "LastModifiedBy"),
         type = "string",
         name = "LastModifiedBy",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "APNSSandboxChannelResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.APNSVoipChannelRequest = schema.new({
   id = id.from(_N, "APNSVoipChannelRequest"),
   type = "structure",
   members = {
      BundleId = schema.new({
         id = id.from(_N, "APNSVoipChannelRequest", "BundleId"),
         type = "string",
         name = "BundleId",
         target_id = prelude.String.id,
      }),
      Certificate = schema.new({
         id = id.from(_N, "APNSVoipChannelRequest", "Certificate"),
         type = "string",
         name = "Certificate",
         target_id = prelude.String.id,
      }),
      DefaultAuthenticationMethod = schema.new({
         id = id.from(_N, "APNSVoipChannelRequest", "DefaultAuthenticationMethod"),
         type = "string",
         name = "DefaultAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "APNSVoipChannelRequest", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      PrivateKey = schema.new({
         id = id.from(_N, "APNSVoipChannelRequest", "PrivateKey"),
         type = "string",
         name = "PrivateKey",
         target_id = prelude.String.id,
      }),
      TeamId = schema.new({
         id = id.from(_N, "APNSVoipChannelRequest", "TeamId"),
         type = "string",
         name = "TeamId",
         target_id = prelude.String.id,
      }),
      TokenKey = schema.new({
         id = id.from(_N, "APNSVoipChannelRequest", "TokenKey"),
         type = "string",
         name = "TokenKey",
         target_id = prelude.String.id,
      }),
      TokenKeyId = schema.new({
         id = id.from(_N, "APNSVoipChannelRequest", "TokenKeyId"),
         type = "string",
         name = "TokenKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.APNSVoipChannelResponse = schema.new({
   id = id.from(_N, "APNSVoipChannelResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      DefaultAuthenticationMethod = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "DefaultAuthenticationMethod"),
         type = "string",
         name = "DefaultAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      HasCredential = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "HasCredential"),
         type = "boolean",
         name = "HasCredential",
         target_id = prelude.Boolean.id,
      }),
      HasTokenKey = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "HasTokenKey"),
         type = "boolean",
         name = "HasTokenKey",
         target_id = prelude.Boolean.id,
      }),
      Id = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      IsArchived = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "IsArchived"),
         type = "boolean",
         name = "IsArchived",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedBy = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "LastModifiedBy"),
         type = "string",
         name = "LastModifiedBy",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "APNSVoipChannelResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.APNSVoipSandboxChannelRequest = schema.new({
   id = id.from(_N, "APNSVoipSandboxChannelRequest"),
   type = "structure",
   members = {
      BundleId = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelRequest", "BundleId"),
         type = "string",
         name = "BundleId",
         target_id = prelude.String.id,
      }),
      Certificate = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelRequest", "Certificate"),
         type = "string",
         name = "Certificate",
         target_id = prelude.String.id,
      }),
      DefaultAuthenticationMethod = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelRequest", "DefaultAuthenticationMethod"),
         type = "string",
         name = "DefaultAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelRequest", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      PrivateKey = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelRequest", "PrivateKey"),
         type = "string",
         name = "PrivateKey",
         target_id = prelude.String.id,
      }),
      TeamId = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelRequest", "TeamId"),
         type = "string",
         name = "TeamId",
         target_id = prelude.String.id,
      }),
      TokenKey = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelRequest", "TokenKey"),
         type = "string",
         name = "TokenKey",
         target_id = prelude.String.id,
      }),
      TokenKeyId = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelRequest", "TokenKeyId"),
         type = "string",
         name = "TokenKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.APNSVoipSandboxChannelResponse = schema.new({
   id = id.from(_N, "APNSVoipSandboxChannelResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      DefaultAuthenticationMethod = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "DefaultAuthenticationMethod"),
         type = "string",
         name = "DefaultAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      HasCredential = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "HasCredential"),
         type = "boolean",
         name = "HasCredential",
         target_id = prelude.Boolean.id,
      }),
      HasTokenKey = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "HasTokenKey"),
         type = "boolean",
         name = "HasTokenKey",
         target_id = prelude.Boolean.id,
      }),
      Id = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      IsArchived = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "IsArchived"),
         type = "boolean",
         name = "IsArchived",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedBy = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "LastModifiedBy"),
         type = "string",
         name = "LastModifiedBy",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "APNSVoipSandboxChannelResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ResultRowValue = schema.new({
   id = id.from(_N, "ResultRowValue"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "ResultRowValue", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Type = schema.new({
         id = id.from(_N, "ResultRowValue", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "ResultRowValue", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResultRow = schema.new({
   id = id.from(_N, "ResultRow"),
   type = "structure",
   members = {
      GroupedBys = schema.new({
         id = id.from(_N, "ResultRow", "GroupedBys"),
         type = "list",
         name = "GroupedBys",
         target_id = prelude.Document.id,
         list_member = M.ResultRowValue,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "ResultRow", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = M.ResultRowValue,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BaseKpiResult = schema.new({
   id = id.from(_N, "BaseKpiResult"),
   type = "structure",
   members = {
      Rows = schema.new({
         id = id.from(_N, "BaseKpiResult", "Rows"),
         type = "list",
         name = "Rows",
         target_id = prelude.Document.id,
         list_member = M.ResultRow,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ApplicationDateRangeKpiResponse = schema.new({
   id = id.from(_N, "ApplicationDateRangeKpiResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ApplicationDateRangeKpiResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "ApplicationDateRangeKpiResponse", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KpiName = schema.new({
         id = id.from(_N, "ApplicationDateRangeKpiResponse", "KpiName"),
         type = "string",
         name = "KpiName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KpiResult = schema.new({
         id = id.from(_N, "ApplicationDateRangeKpiResponse", "KpiResult"),
         type = "structure",
         name = "KpiResult",
         target_id = id.from(_N, "BaseKpiResult"),
         target = M.BaseKpiResult,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ApplicationDateRangeKpiResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "ApplicationDateRangeKpiResponse", "StartTime"),
         type = "timestamp",
         name = "StartTime",
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

M.ApplicationResponse = schema.new({
   id = id.from(_N, "ApplicationResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "ApplicationResponse", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "ApplicationResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "ApplicationResponse", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "ApplicationResponse", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      CreationDate = schema.new({
         id = id.from(_N, "ApplicationResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
   },
})

M.JourneyTimeframeCap = schema.new({
   id = id.from(_N, "JourneyTimeframeCap"),
   type = "structure",
   members = {
      Cap = schema.new({
         id = id.from(_N, "JourneyTimeframeCap", "Cap"),
         type = "integer",
         name = "Cap",
         target_id = prelude.Integer.id,
      }),
      Days = schema.new({
         id = id.from(_N, "JourneyTimeframeCap", "Days"),
         type = "integer",
         name = "Days",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ApplicationSettingsJourneyLimits = schema.new({
   id = id.from(_N, "ApplicationSettingsJourneyLimits"),
   type = "structure",
   members = {
      DailyCap = schema.new({
         id = id.from(_N, "ApplicationSettingsJourneyLimits", "DailyCap"),
         type = "integer",
         name = "DailyCap",
         target_id = prelude.Integer.id,
      }),
      TimeframeCap = schema.new({
         id = id.from(_N, "ApplicationSettingsJourneyLimits", "TimeframeCap"),
         type = "structure",
         name = "TimeframeCap",
         target_id = id.from(_N, "JourneyTimeframeCap"),
         target = M.JourneyTimeframeCap,
      }),
      TotalCap = schema.new({
         id = id.from(_N, "ApplicationSettingsJourneyLimits", "TotalCap"),
         type = "integer",
         name = "TotalCap",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CampaignHook = schema.new({
   id = id.from(_N, "CampaignHook"),
   type = "structure",
   members = {
      LambdaFunctionName = schema.new({
         id = id.from(_N, "CampaignHook", "LambdaFunctionName"),
         type = "string",
         name = "LambdaFunctionName",
         target_id = prelude.String.id,
      }),
      Mode = schema.new({
         id = id.from(_N, "CampaignHook", "Mode"),
         type = "string",
         name = "Mode",
         target_id = prelude.String.id,
      }),
      WebUrl = schema.new({
         id = id.from(_N, "CampaignHook", "WebUrl"),
         type = "string",
         name = "WebUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.CampaignLimits = schema.new({
   id = id.from(_N, "CampaignLimits"),
   type = "structure",
   members = {
      Daily = schema.new({
         id = id.from(_N, "CampaignLimits", "Daily"),
         type = "integer",
         name = "Daily",
         target_id = prelude.Integer.id,
      }),
      MaximumDuration = schema.new({
         id = id.from(_N, "CampaignLimits", "MaximumDuration"),
         type = "integer",
         name = "MaximumDuration",
         target_id = prelude.Integer.id,
      }),
      MessagesPerSecond = schema.new({
         id = id.from(_N, "CampaignLimits", "MessagesPerSecond"),
         type = "integer",
         name = "MessagesPerSecond",
         target_id = prelude.Integer.id,
      }),
      Total = schema.new({
         id = id.from(_N, "CampaignLimits", "Total"),
         type = "integer",
         name = "Total",
         target_id = prelude.Integer.id,
      }),
      Session = schema.new({
         id = id.from(_N, "CampaignLimits", "Session"),
         type = "integer",
         name = "Session",
         target_id = prelude.Integer.id,
      }),
   },
})

M.QuietTime = schema.new({
   id = id.from(_N, "QuietTime"),
   type = "structure",
   members = {
      End = schema.new({
         id = id.from(_N, "QuietTime", "End"),
         type = "string",
         name = "End",
         target_id = prelude.String.id,
      }),
      Start = schema.new({
         id = id.from(_N, "QuietTime", "Start"),
         type = "string",
         name = "Start",
         target_id = prelude.String.id,
      }),
   },
})

M.ApplicationSettingsResource = schema.new({
   id = id.from(_N, "ApplicationSettingsResource"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ApplicationSettingsResource", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CampaignHook = schema.new({
         id = id.from(_N, "ApplicationSettingsResource", "CampaignHook"),
         type = "structure",
         name = "CampaignHook",
         target_id = id.from(_N, "CampaignHook"),
         target = M.CampaignHook,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "ApplicationSettingsResource", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Limits = schema.new({
         id = id.from(_N, "ApplicationSettingsResource", "Limits"),
         type = "structure",
         name = "Limits",
         target_id = id.from(_N, "CampaignLimits"),
         target = M.CampaignLimits,
      }),
      QuietTime = schema.new({
         id = id.from(_N, "ApplicationSettingsResource", "QuietTime"),
         type = "structure",
         name = "QuietTime",
         target_id = id.from(_N, "QuietTime"),
         target = M.QuietTime,
      }),
      JourneyLimits = schema.new({
         id = id.from(_N, "ApplicationSettingsResource", "JourneyLimits"),
         type = "structure",
         name = "JourneyLimits",
         target_id = id.from(_N, "ApplicationSettingsJourneyLimits"),
         target = M.ApplicationSettingsJourneyLimits,
      }),
   },
})

M.ApplicationsResponse = schema.new({
   id = id.from(_N, "ApplicationsResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "ApplicationsResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.ApplicationResponse,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ApplicationsResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.AttributesResource = schema.new({
   id = id.from(_N, "AttributesResource"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "AttributesResource", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AttributeType = schema.new({
         id = id.from(_N, "AttributesResource", "AttributeType"),
         type = "string",
         name = "AttributeType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Attributes = schema.new({
         id = id.from(_N, "AttributesResource", "Attributes"),
         type = "list",
         name = "Attributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.BadRequestException = schema.new({
   id = id.from(_N, "BadRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "BadRequestException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      RequestID = schema.new({
         id = id.from(_N, "BadRequestException", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.BaiduChannelRequest = schema.new({
   id = id.from(_N, "BaiduChannelRequest"),
   type = "structure",
   members = {
      ApiKey = schema.new({
         id = id.from(_N, "BaiduChannelRequest", "ApiKey"),
         type = "string",
         name = "ApiKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Enabled = schema.new({
         id = id.from(_N, "BaiduChannelRequest", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      SecretKey = schema.new({
         id = id.from(_N, "BaiduChannelRequest", "SecretKey"),
         type = "string",
         name = "SecretKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BaiduChannelResponse = schema.new({
   id = id.from(_N, "BaiduChannelResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "BaiduChannelResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "BaiduChannelResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Credential = schema.new({
         id = id.from(_N, "BaiduChannelResponse", "Credential"),
         type = "string",
         name = "Credential",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Enabled = schema.new({
         id = id.from(_N, "BaiduChannelResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      HasCredential = schema.new({
         id = id.from(_N, "BaiduChannelResponse", "HasCredential"),
         type = "boolean",
         name = "HasCredential",
         target_id = prelude.Boolean.id,
      }),
      Id = schema.new({
         id = id.from(_N, "BaiduChannelResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      IsArchived = schema.new({
         id = id.from(_N, "BaiduChannelResponse", "IsArchived"),
         type = "boolean",
         name = "IsArchived",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedBy = schema.new({
         id = id.from(_N, "BaiduChannelResponse", "LastModifiedBy"),
         type = "string",
         name = "LastModifiedBy",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "BaiduChannelResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "BaiduChannelResponse", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "BaiduChannelResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.BaiduMessage = schema.new({
   id = id.from(_N, "BaiduMessage"),
   type = "structure",
   members = {
      Action = schema.new({
         id = id.from(_N, "BaiduMessage", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      Body = schema.new({
         id = id.from(_N, "BaiduMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      Data = schema.new({
         id = id.from(_N, "BaiduMessage", "Data"),
         type = "map",
         name = "Data",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      IconReference = schema.new({
         id = id.from(_N, "BaiduMessage", "IconReference"),
         type = "string",
         name = "IconReference",
         target_id = prelude.String.id,
      }),
      ImageIconUrl = schema.new({
         id = id.from(_N, "BaiduMessage", "ImageIconUrl"),
         type = "string",
         name = "ImageIconUrl",
         target_id = prelude.String.id,
      }),
      ImageUrl = schema.new({
         id = id.from(_N, "BaiduMessage", "ImageUrl"),
         type = "string",
         name = "ImageUrl",
         target_id = prelude.String.id,
      }),
      RawContent = schema.new({
         id = id.from(_N, "BaiduMessage", "RawContent"),
         type = "string",
         name = "RawContent",
         target_id = prelude.String.id,
      }),
      SilentPush = schema.new({
         id = id.from(_N, "BaiduMessage", "SilentPush"),
         type = "boolean",
         name = "SilentPush",
         target_id = prelude.Boolean.id,
      }),
      SmallImageIconUrl = schema.new({
         id = id.from(_N, "BaiduMessage", "SmallImageIconUrl"),
         type = "string",
         name = "SmallImageIconUrl",
         target_id = prelude.String.id,
      }),
      Sound = schema.new({
         id = id.from(_N, "BaiduMessage", "Sound"),
         type = "string",
         name = "Sound",
         target_id = prelude.String.id,
      }),
      Substitutions = schema.new({
         id = id.from(_N, "BaiduMessage", "Substitutions"),
         type = "map",
         name = "Substitutions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      TimeToLive = schema.new({
         id = id.from(_N, "BaiduMessage", "TimeToLive"),
         type = "integer",
         name = "TimeToLive",
         target_id = prelude.Integer.id,
      }),
      Title = schema.new({
         id = id.from(_N, "BaiduMessage", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Url = schema.new({
         id = id.from(_N, "BaiduMessage", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
   },
})

M.CampaignCustomMessage = schema.new({
   id = id.from(_N, "CampaignCustomMessage"),
   type = "structure",
   members = {
      Data = schema.new({
         id = id.from(_N, "CampaignCustomMessage", "Data"),
         type = "string",
         name = "Data",
         target_id = prelude.String.id,
      }),
   },
})

M.CampaignDateRangeKpiResponse = schema.new({
   id = id.from(_N, "CampaignDateRangeKpiResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CampaignDateRangeKpiResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CampaignId = schema.new({
         id = id.from(_N, "CampaignDateRangeKpiResponse", "CampaignId"),
         type = "string",
         name = "CampaignId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "CampaignDateRangeKpiResponse", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KpiName = schema.new({
         id = id.from(_N, "CampaignDateRangeKpiResponse", "KpiName"),
         type = "string",
         name = "KpiName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KpiResult = schema.new({
         id = id.from(_N, "CampaignDateRangeKpiResponse", "KpiResult"),
         type = "structure",
         name = "KpiResult",
         target_id = id.from(_N, "BaseKpiResult"),
         target = M.BaseKpiResult,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "CampaignDateRangeKpiResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "CampaignDateRangeKpiResponse", "StartTime"),
         type = "timestamp",
         name = "StartTime",
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

M.MessageHeader = schema.new({
   id = id.from(_N, "MessageHeader"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "MessageHeader", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Value = schema.new({
         id = id.from(_N, "MessageHeader", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
      }),
   },
})

M.CampaignEmailMessage = schema.new({
   id = id.from(_N, "CampaignEmailMessage"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "CampaignEmailMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      FromAddress = schema.new({
         id = id.from(_N, "CampaignEmailMessage", "FromAddress"),
         type = "string",
         name = "FromAddress",
         target_id = prelude.String.id,
      }),
      Headers = schema.new({
         id = id.from(_N, "CampaignEmailMessage", "Headers"),
         type = "list",
         name = "Headers",
         target_id = prelude.Document.id,
         list_member = M.MessageHeader,
      }),
      HtmlBody = schema.new({
         id = id.from(_N, "CampaignEmailMessage", "HtmlBody"),
         type = "string",
         name = "HtmlBody",
         target_id = prelude.String.id,
      }),
      Title = schema.new({
         id = id.from(_N, "CampaignEmailMessage", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
   },
})

M.CampaignEventFilter = schema.new({
   id = id.from(_N, "CampaignEventFilter"),
   type = "structure",
   members = {
      Dimensions = schema.new({
         id = id.from(_N, "CampaignEventFilter", "Dimensions"),
         type = "structure",
         name = "Dimensions",
         target_id = id.from(_N, "EventDimensions"),
         target = M.EventDimensions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FilterType = schema.new({
         id = id.from(_N, "CampaignEventFilter", "FilterType"),
         type = "string",
         name = "FilterType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InAppMessageBodyConfig = schema.new({
   id = id.from(_N, "InAppMessageBodyConfig"),
   type = "structure",
   members = {
      Alignment = schema.new({
         id = id.from(_N, "InAppMessageBodyConfig", "Alignment"),
         type = "string",
         name = "Alignment",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Body = schema.new({
         id = id.from(_N, "InAppMessageBodyConfig", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TextColor = schema.new({
         id = id.from(_N, "InAppMessageBodyConfig", "TextColor"),
         type = "string",
         name = "TextColor",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InAppMessageHeaderConfig = schema.new({
   id = id.from(_N, "InAppMessageHeaderConfig"),
   type = "structure",
   members = {
      Alignment = schema.new({
         id = id.from(_N, "InAppMessageHeaderConfig", "Alignment"),
         type = "string",
         name = "Alignment",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Header = schema.new({
         id = id.from(_N, "InAppMessageHeaderConfig", "Header"),
         type = "string",
         name = "Header",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TextColor = schema.new({
         id = id.from(_N, "InAppMessageHeaderConfig", "TextColor"),
         type = "string",
         name = "TextColor",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.OverrideButtonConfiguration = schema.new({
   id = id.from(_N, "OverrideButtonConfiguration"),
   type = "structure",
   members = {
      ButtonAction = schema.new({
         id = id.from(_N, "OverrideButtonConfiguration", "ButtonAction"),
         type = "string",
         name = "ButtonAction",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Link = schema.new({
         id = id.from(_N, "OverrideButtonConfiguration", "Link"),
         type = "string",
         name = "Link",
         target_id = prelude.String.id,
      }),
   },
})

M.DefaultButtonConfiguration = schema.new({
   id = id.from(_N, "DefaultButtonConfiguration"),
   type = "structure",
   members = {
      BackgroundColor = schema.new({
         id = id.from(_N, "DefaultButtonConfiguration", "BackgroundColor"),
         type = "string",
         name = "BackgroundColor",
         target_id = prelude.String.id,
      }),
      BorderRadius = schema.new({
         id = id.from(_N, "DefaultButtonConfiguration", "BorderRadius"),
         type = "integer",
         name = "BorderRadius",
         target_id = prelude.Integer.id,
      }),
      ButtonAction = schema.new({
         id = id.from(_N, "DefaultButtonConfiguration", "ButtonAction"),
         type = "string",
         name = "ButtonAction",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Link = schema.new({
         id = id.from(_N, "DefaultButtonConfiguration", "Link"),
         type = "string",
         name = "Link",
         target_id = prelude.String.id,
      }),
      Text = schema.new({
         id = id.from(_N, "DefaultButtonConfiguration", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TextColor = schema.new({
         id = id.from(_N, "DefaultButtonConfiguration", "TextColor"),
         type = "string",
         name = "TextColor",
         target_id = prelude.String.id,
      }),
   },
})

M.InAppMessageButton = schema.new({
   id = id.from(_N, "InAppMessageButton"),
   type = "structure",
   members = {
      Android = schema.new({
         id = id.from(_N, "InAppMessageButton", "Android"),
         type = "structure",
         name = "Android",
         target_id = id.from(_N, "OverrideButtonConfiguration"),
         target = M.OverrideButtonConfiguration,
      }),
      DefaultConfig = schema.new({
         id = id.from(_N, "InAppMessageButton", "DefaultConfig"),
         type = "structure",
         name = "DefaultConfig",
         target_id = id.from(_N, "DefaultButtonConfiguration"),
         target = M.DefaultButtonConfiguration,
      }),
      IOS = schema.new({
         id = id.from(_N, "InAppMessageButton", "IOS"),
         type = "structure",
         name = "IOS",
         target_id = id.from(_N, "OverrideButtonConfiguration"),
         target = M.OverrideButtonConfiguration,
      }),
      Web = schema.new({
         id = id.from(_N, "InAppMessageButton", "Web"),
         type = "structure",
         name = "Web",
         target_id = id.from(_N, "OverrideButtonConfiguration"),
         target = M.OverrideButtonConfiguration,
      }),
   },
})

M.InAppMessageContent = schema.new({
   id = id.from(_N, "InAppMessageContent"),
   type = "structure",
   members = {
      BackgroundColor = schema.new({
         id = id.from(_N, "InAppMessageContent", "BackgroundColor"),
         type = "string",
         name = "BackgroundColor",
         target_id = prelude.String.id,
      }),
      BodyConfig = schema.new({
         id = id.from(_N, "InAppMessageContent", "BodyConfig"),
         type = "structure",
         name = "BodyConfig",
         target_id = id.from(_N, "InAppMessageBodyConfig"),
         target = M.InAppMessageBodyConfig,
      }),
      HeaderConfig = schema.new({
         id = id.from(_N, "InAppMessageContent", "HeaderConfig"),
         type = "structure",
         name = "HeaderConfig",
         target_id = id.from(_N, "InAppMessageHeaderConfig"),
         target = M.InAppMessageHeaderConfig,
      }),
      ImageUrl = schema.new({
         id = id.from(_N, "InAppMessageContent", "ImageUrl"),
         type = "string",
         name = "ImageUrl",
         target_id = prelude.String.id,
      }),
      PrimaryBtn = schema.new({
         id = id.from(_N, "InAppMessageContent", "PrimaryBtn"),
         type = "structure",
         name = "PrimaryBtn",
         target_id = id.from(_N, "InAppMessageButton"),
         target = M.InAppMessageButton,
      }),
      SecondaryBtn = schema.new({
         id = id.from(_N, "InAppMessageContent", "SecondaryBtn"),
         type = "structure",
         name = "SecondaryBtn",
         target_id = id.from(_N, "InAppMessageButton"),
         target = M.InAppMessageButton,
      }),
   },
})

M.CampaignInAppMessage = schema.new({
   id = id.from(_N, "CampaignInAppMessage"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "CampaignInAppMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      Content = schema.new({
         id = id.from(_N, "CampaignInAppMessage", "Content"),
         type = "list",
         name = "Content",
         target_id = prelude.Document.id,
         list_member = M.InAppMessageContent,
      }),
      CustomConfig = schema.new({
         id = id.from(_N, "CampaignInAppMessage", "CustomConfig"),
         type = "map",
         name = "CustomConfig",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Layout = schema.new({
         id = id.from(_N, "CampaignInAppMessage", "Layout"),
         type = "string",
         name = "Layout",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomDeliveryConfiguration = schema.new({
   id = id.from(_N, "CustomDeliveryConfiguration"),
   type = "structure",
   members = {
      DeliveryUri = schema.new({
         id = id.from(_N, "CustomDeliveryConfiguration", "DeliveryUri"),
         type = "string",
         name = "DeliveryUri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointTypes = schema.new({
         id = id.from(_N, "CustomDeliveryConfiguration", "EndpointTypes"),
         type = "list",
         name = "EndpointTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.Message = schema.new({
   id = id.from(_N, "Message"),
   type = "structure",
   members = {
      Action = schema.new({
         id = id.from(_N, "Message", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      Body = schema.new({
         id = id.from(_N, "Message", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      ImageIconUrl = schema.new({
         id = id.from(_N, "Message", "ImageIconUrl"),
         type = "string",
         name = "ImageIconUrl",
         target_id = prelude.String.id,
      }),
      ImageSmallIconUrl = schema.new({
         id = id.from(_N, "Message", "ImageSmallIconUrl"),
         type = "string",
         name = "ImageSmallIconUrl",
         target_id = prelude.String.id,
      }),
      ImageUrl = schema.new({
         id = id.from(_N, "Message", "ImageUrl"),
         type = "string",
         name = "ImageUrl",
         target_id = prelude.String.id,
      }),
      JsonBody = schema.new({
         id = id.from(_N, "Message", "JsonBody"),
         type = "string",
         name = "JsonBody",
         target_id = prelude.String.id,
      }),
      MediaUrl = schema.new({
         id = id.from(_N, "Message", "MediaUrl"),
         type = "string",
         name = "MediaUrl",
         target_id = prelude.String.id,
      }),
      RawContent = schema.new({
         id = id.from(_N, "Message", "RawContent"),
         type = "string",
         name = "RawContent",
         target_id = prelude.String.id,
      }),
      SilentPush = schema.new({
         id = id.from(_N, "Message", "SilentPush"),
         type = "boolean",
         name = "SilentPush",
         target_id = prelude.Boolean.id,
      }),
      TimeToLive = schema.new({
         id = id.from(_N, "Message", "TimeToLive"),
         type = "integer",
         name = "TimeToLive",
         target_id = prelude.Integer.id,
      }),
      Title = schema.new({
         id = id.from(_N, "Message", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Url = schema.new({
         id = id.from(_N, "Message", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
   },
})

M.CampaignSmsMessage = schema.new({
   id = id.from(_N, "CampaignSmsMessage"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "CampaignSmsMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      MessageType = schema.new({
         id = id.from(_N, "CampaignSmsMessage", "MessageType"),
         type = "string",
         name = "MessageType",
         target_id = prelude.String.id,
      }),
      OriginationNumber = schema.new({
         id = id.from(_N, "CampaignSmsMessage", "OriginationNumber"),
         type = "string",
         name = "OriginationNumber",
         target_id = prelude.String.id,
      }),
      SenderId = schema.new({
         id = id.from(_N, "CampaignSmsMessage", "SenderId"),
         type = "string",
         name = "SenderId",
         target_id = prelude.String.id,
      }),
      EntityId = schema.new({
         id = id.from(_N, "CampaignSmsMessage", "EntityId"),
         type = "string",
         name = "EntityId",
         target_id = prelude.String.id,
      }),
      TemplateId = schema.new({
         id = id.from(_N, "CampaignSmsMessage", "TemplateId"),
         type = "string",
         name = "TemplateId",
         target_id = prelude.String.id,
      }),
   },
})

M.MessageConfiguration = schema.new({
   id = id.from(_N, "MessageConfiguration"),
   type = "structure",
   members = {
      ADMMessage = schema.new({
         id = id.from(_N, "MessageConfiguration", "ADMMessage"),
         type = "structure",
         name = "ADMMessage",
         target_id = id.from(_N, "Message"),
         target = M.Message,
      }),
      APNSMessage = schema.new({
         id = id.from(_N, "MessageConfiguration", "APNSMessage"),
         type = "structure",
         name = "APNSMessage",
         target_id = id.from(_N, "Message"),
         target = M.Message,
      }),
      BaiduMessage = schema.new({
         id = id.from(_N, "MessageConfiguration", "BaiduMessage"),
         type = "structure",
         name = "BaiduMessage",
         target_id = id.from(_N, "Message"),
         target = M.Message,
      }),
      CustomMessage = schema.new({
         id = id.from(_N, "MessageConfiguration", "CustomMessage"),
         type = "structure",
         name = "CustomMessage",
         target_id = id.from(_N, "CampaignCustomMessage"),
         target = M.CampaignCustomMessage,
      }),
      DefaultMessage = schema.new({
         id = id.from(_N, "MessageConfiguration", "DefaultMessage"),
         type = "structure",
         name = "DefaultMessage",
         target_id = id.from(_N, "Message"),
         target = M.Message,
      }),
      EmailMessage = schema.new({
         id = id.from(_N, "MessageConfiguration", "EmailMessage"),
         type = "structure",
         name = "EmailMessage",
         target_id = id.from(_N, "CampaignEmailMessage"),
         target = M.CampaignEmailMessage,
      }),
      GCMMessage = schema.new({
         id = id.from(_N, "MessageConfiguration", "GCMMessage"),
         type = "structure",
         name = "GCMMessage",
         target_id = id.from(_N, "Message"),
         target = M.Message,
      }),
      SMSMessage = schema.new({
         id = id.from(_N, "MessageConfiguration", "SMSMessage"),
         type = "structure",
         name = "SMSMessage",
         target_id = id.from(_N, "CampaignSmsMessage"),
         target = M.CampaignSmsMessage,
      }),
      InAppMessage = schema.new({
         id = id.from(_N, "MessageConfiguration", "InAppMessage"),
         type = "structure",
         name = "InAppMessage",
         target_id = id.from(_N, "CampaignInAppMessage"),
         target = M.CampaignInAppMessage,
      }),
   },
})

M.Schedule = schema.new({
   id = id.from(_N, "Schedule"),
   type = "structure",
   members = {
      EndTime = schema.new({
         id = id.from(_N, "Schedule", "EndTime"),
         type = "string",
         name = "EndTime",
         target_id = prelude.String.id,
      }),
      EventFilter = schema.new({
         id = id.from(_N, "Schedule", "EventFilter"),
         type = "structure",
         name = "EventFilter",
         target_id = id.from(_N, "CampaignEventFilter"),
         target = M.CampaignEventFilter,
      }),
      Frequency = schema.new({
         id = id.from(_N, "Schedule", "Frequency"),
         type = "string",
         name = "Frequency",
         target_id = prelude.String.id,
      }),
      IsLocalTime = schema.new({
         id = id.from(_N, "Schedule", "IsLocalTime"),
         type = "boolean",
         name = "IsLocalTime",
         target_id = prelude.Boolean.id,
      }),
      QuietTime = schema.new({
         id = id.from(_N, "Schedule", "QuietTime"),
         type = "structure",
         name = "QuietTime",
         target_id = id.from(_N, "QuietTime"),
         target = M.QuietTime,
      }),
      StartTime = schema.new({
         id = id.from(_N, "Schedule", "StartTime"),
         type = "string",
         name = "StartTime",
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

M.CampaignState = schema.new({
   id = id.from(_N, "CampaignState"),
   type = "structure",
   members = {
      CampaignStatus = schema.new({
         id = id.from(_N, "CampaignState", "CampaignStatus"),
         type = "string",
         name = "CampaignStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.Template = schema.new({
   id = id.from(_N, "Template"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Template", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Version = schema.new({
         id = id.from(_N, "Template", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
      }),
   },
})

M.TemplateConfiguration = schema.new({
   id = id.from(_N, "TemplateConfiguration"),
   type = "structure",
   members = {
      EmailTemplate = schema.new({
         id = id.from(_N, "TemplateConfiguration", "EmailTemplate"),
         type = "structure",
         name = "EmailTemplate",
         target_id = id.from(_N, "Template"),
         target = M.Template,
      }),
      PushTemplate = schema.new({
         id = id.from(_N, "TemplateConfiguration", "PushTemplate"),
         type = "structure",
         name = "PushTemplate",
         target_id = id.from(_N, "Template"),
         target = M.Template,
      }),
      SMSTemplate = schema.new({
         id = id.from(_N, "TemplateConfiguration", "SMSTemplate"),
         type = "structure",
         name = "SMSTemplate",
         target_id = id.from(_N, "Template"),
         target = M.Template,
      }),
      VoiceTemplate = schema.new({
         id = id.from(_N, "TemplateConfiguration", "VoiceTemplate"),
         type = "structure",
         name = "VoiceTemplate",
         target_id = id.from(_N, "Template"),
         target = M.Template,
      }),
      InAppTemplate = schema.new({
         id = id.from(_N, "TemplateConfiguration", "InAppTemplate"),
         type = "structure",
         name = "InAppTemplate",
         target_id = id.from(_N, "Template"),
         target = M.Template,
      }),
   },
})

M.TreatmentResource = schema.new({
   id = id.from(_N, "TreatmentResource"),
   type = "structure",
   members = {
      CustomDeliveryConfiguration = schema.new({
         id = id.from(_N, "TreatmentResource", "CustomDeliveryConfiguration"),
         type = "structure",
         name = "CustomDeliveryConfiguration",
         target_id = id.from(_N, "CustomDeliveryConfiguration"),
         target = M.CustomDeliveryConfiguration,
      }),
      Id = schema.new({
         id = id.from(_N, "TreatmentResource", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MessageConfiguration = schema.new({
         id = id.from(_N, "TreatmentResource", "MessageConfiguration"),
         type = "structure",
         name = "MessageConfiguration",
         target_id = id.from(_N, "MessageConfiguration"),
         target = M.MessageConfiguration,
      }),
      Schedule = schema.new({
         id = id.from(_N, "TreatmentResource", "Schedule"),
         type = "structure",
         name = "Schedule",
         target_id = id.from(_N, "Schedule"),
         target = M.Schedule,
      }),
      SizePercent = schema.new({
         id = id.from(_N, "TreatmentResource", "SizePercent"),
         type = "integer",
         name = "SizePercent",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      State = schema.new({
         id = id.from(_N, "TreatmentResource", "State"),
         type = "structure",
         name = "State",
         target_id = id.from(_N, "CampaignState"),
         target = M.CampaignState,
      }),
      TemplateConfiguration = schema.new({
         id = id.from(_N, "TreatmentResource", "TemplateConfiguration"),
         type = "structure",
         name = "TemplateConfiguration",
         target_id = id.from(_N, "TemplateConfiguration"),
         target = M.TemplateConfiguration,
      }),
      TreatmentDescription = schema.new({
         id = id.from(_N, "TreatmentResource", "TreatmentDescription"),
         type = "string",
         name = "TreatmentDescription",
         target_id = prelude.String.id,
      }),
      TreatmentName = schema.new({
         id = id.from(_N, "TreatmentResource", "TreatmentName"),
         type = "string",
         name = "TreatmentName",
         target_id = prelude.String.id,
      }),
   },
})

M.CampaignResponse = schema.new({
   id = id.from(_N, "CampaignResponse"),
   type = "structure",
   members = {
      AdditionalTreatments = schema.new({
         id = id.from(_N, "CampaignResponse", "AdditionalTreatments"),
         type = "list",
         name = "AdditionalTreatments",
         target_id = prelude.Document.id,
         list_member = M.TreatmentResource,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "CampaignResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "CampaignResponse", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreationDate = schema.new({
         id = id.from(_N, "CampaignResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CustomDeliveryConfiguration = schema.new({
         id = id.from(_N, "CampaignResponse", "CustomDeliveryConfiguration"),
         type = "structure",
         name = "CustomDeliveryConfiguration",
         target_id = id.from(_N, "CustomDeliveryConfiguration"),
         target = M.CustomDeliveryConfiguration,
      }),
      DefaultState = schema.new({
         id = id.from(_N, "CampaignResponse", "DefaultState"),
         type = "structure",
         name = "DefaultState",
         target_id = id.from(_N, "CampaignState"),
         target = M.CampaignState,
      }),
      Description = schema.new({
         id = id.from(_N, "CampaignResponse", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      HoldoutPercent = schema.new({
         id = id.from(_N, "CampaignResponse", "HoldoutPercent"),
         type = "integer",
         name = "HoldoutPercent",
         target_id = prelude.Integer.id,
      }),
      Hook = schema.new({
         id = id.from(_N, "CampaignResponse", "Hook"),
         type = "structure",
         name = "Hook",
         target_id = id.from(_N, "CampaignHook"),
         target = M.CampaignHook,
      }),
      Id = schema.new({
         id = id.from(_N, "CampaignResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IsPaused = schema.new({
         id = id.from(_N, "CampaignResponse", "IsPaused"),
         type = "boolean",
         name = "IsPaused",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "CampaignResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Limits = schema.new({
         id = id.from(_N, "CampaignResponse", "Limits"),
         type = "structure",
         name = "Limits",
         target_id = id.from(_N, "CampaignLimits"),
         target = M.CampaignLimits,
      }),
      MessageConfiguration = schema.new({
         id = id.from(_N, "CampaignResponse", "MessageConfiguration"),
         type = "structure",
         name = "MessageConfiguration",
         target_id = id.from(_N, "MessageConfiguration"),
         target = M.MessageConfiguration,
      }),
      Name = schema.new({
         id = id.from(_N, "CampaignResponse", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Schedule = schema.new({
         id = id.from(_N, "CampaignResponse", "Schedule"),
         type = "structure",
         name = "Schedule",
         target_id = id.from(_N, "Schedule"),
         target = M.Schedule,
      }),
      SegmentId = schema.new({
         id = id.from(_N, "CampaignResponse", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SegmentVersion = schema.new({
         id = id.from(_N, "CampaignResponse", "SegmentVersion"),
         type = "integer",
         name = "SegmentVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      State = schema.new({
         id = id.from(_N, "CampaignResponse", "State"),
         type = "structure",
         name = "State",
         target_id = id.from(_N, "CampaignState"),
         target = M.CampaignState,
      }),
      tags = schema.new({
         id = id.from(_N, "CampaignResponse", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateConfiguration = schema.new({
         id = id.from(_N, "CampaignResponse", "TemplateConfiguration"),
         type = "structure",
         name = "TemplateConfiguration",
         target_id = id.from(_N, "TemplateConfiguration"),
         target = M.TemplateConfiguration,
      }),
      TreatmentDescription = schema.new({
         id = id.from(_N, "CampaignResponse", "TreatmentDescription"),
         type = "string",
         name = "TreatmentDescription",
         target_id = prelude.String.id,
      }),
      TreatmentName = schema.new({
         id = id.from(_N, "CampaignResponse", "TreatmentName"),
         type = "string",
         name = "TreatmentName",
         target_id = prelude.String.id,
      }),
      Version = schema.new({
         id = id.from(_N, "CampaignResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
      Priority = schema.new({
         id = id.from(_N, "CampaignResponse", "Priority"),
         type = "integer",
         name = "Priority",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CampaignsResponse = schema.new({
   id = id.from(_N, "CampaignsResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "CampaignsResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.CampaignResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "CampaignsResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ChannelResponse = schema.new({
   id = id.from(_N, "ChannelResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ChannelResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "ChannelResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "ChannelResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      HasCredential = schema.new({
         id = id.from(_N, "ChannelResponse", "HasCredential"),
         type = "boolean",
         name = "HasCredential",
         target_id = prelude.Boolean.id,
      }),
      Id = schema.new({
         id = id.from(_N, "ChannelResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      IsArchived = schema.new({
         id = id.from(_N, "ChannelResponse", "IsArchived"),
         type = "boolean",
         name = "IsArchived",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedBy = schema.new({
         id = id.from(_N, "ChannelResponse", "LastModifiedBy"),
         type = "string",
         name = "LastModifiedBy",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "ChannelResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Version = schema.new({
         id = id.from(_N, "ChannelResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ChannelsResponse = schema.new({
   id = id.from(_N, "ChannelsResponse"),
   type = "structure",
   members = {
      Channels = schema.new({
         id = id.from(_N, "ChannelsResponse", "Channels"),
         type = "map",
         name = "Channels",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ClosedDaysRule = schema.new({
   id = id.from(_N, "ClosedDaysRule"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ClosedDaysRule", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      StartDateTime = schema.new({
         id = id.from(_N, "ClosedDaysRule", "StartDateTime"),
         type = "string",
         name = "StartDateTime",
         target_id = prelude.String.id,
      }),
      EndDateTime = schema.new({
         id = id.from(_N, "ClosedDaysRule", "EndDateTime"),
         type = "string",
         name = "EndDateTime",
         target_id = prelude.String.id,
      }),
   },
})

M.ClosedDays = schema.new({
   id = id.from(_N, "ClosedDays"),
   type = "structure",
   members = {
      EMAIL = schema.new({
         id = id.from(_N, "ClosedDays", "EMAIL"),
         type = "list",
         name = "EMAIL",
         target_id = prelude.Document.id,
         list_member = M.ClosedDaysRule,
      }),
      SMS = schema.new({
         id = id.from(_N, "ClosedDays", "SMS"),
         type = "list",
         name = "SMS",
         target_id = prelude.Document.id,
         list_member = M.ClosedDaysRule,
      }),
      PUSH = schema.new({
         id = id.from(_N, "ClosedDays", "PUSH"),
         type = "list",
         name = "PUSH",
         target_id = prelude.Document.id,
         list_member = M.ClosedDaysRule,
      }),
      VOICE = schema.new({
         id = id.from(_N, "ClosedDays", "VOICE"),
         type = "list",
         name = "VOICE",
         target_id = prelude.Document.id,
         list_member = M.ClosedDaysRule,
      }),
      CUSTOM = schema.new({
         id = id.from(_N, "ClosedDays", "CUSTOM"),
         type = "list",
         name = "CUSTOM",
         target_id = prelude.Document.id,
         list_member = M.ClosedDaysRule,
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
      RequestID = schema.new({
         id = id.from(_N, "ConflictException", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateApplicationRequest = schema.new({
   id = id.from(_N, "CreateApplicationRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateApplicationRequest", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateApplicationRequest", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
   },
})

M.CreateAppInput = schema.new({
   id = id.from(_N, "CreateAppRequest"),
   type = "structure",
   members = {
      CreateApplicationRequest = schema.new({
         id = id.from(_N, "CreateAppInput", "CreateApplicationRequest"),
         type = "structure",
         name = "CreateApplicationRequest",
         target_id = id.from(_N, "CreateApplicationRequest"),
         target = M.CreateApplicationRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.CreateAppOutput = schema.new({
   id = id.from(_N, "CreateAppResponse"),
   type = "structure",
   members = {
      ApplicationResponse = schema.new({
         id = id.from(_N, "CreateAppOutput", "ApplicationResponse"),
         type = "structure",
         name = "ApplicationResponse",
         target_id = id.from(_N, "ApplicationResponse"),
         target = M.ApplicationResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.ForbiddenException = schema.new({
   id = id.from(_N, "ForbiddenException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ForbiddenException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      RequestID = schema.new({
         id = id.from(_N, "ForbiddenException", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.InternalServerErrorException = schema.new({
   id = id.from(_N, "InternalServerErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalServerErrorException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      RequestID = schema.new({
         id = id.from(_N, "InternalServerErrorException", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.MethodNotAllowedException = schema.new({
   id = id.from(_N, "MethodNotAllowedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "MethodNotAllowedException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      RequestID = schema.new({
         id = id.from(_N, "MethodNotAllowedException", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.NotFoundException = schema.new({
   id = id.from(_N, "NotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "NotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      RequestID = schema.new({
         id = id.from(_N, "NotFoundException", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.PayloadTooLargeException = schema.new({
   id = id.from(_N, "PayloadTooLargeException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "PayloadTooLargeException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      RequestID = schema.new({
         id = id.from(_N, "PayloadTooLargeException", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.TooManyRequestsException = schema.new({
   id = id.from(_N, "TooManyRequestsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "TooManyRequestsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      RequestID = schema.new({
         id = id.from(_N, "TooManyRequestsException", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.WriteTreatmentResource = schema.new({
   id = id.from(_N, "WriteTreatmentResource"),
   type = "structure",
   members = {
      CustomDeliveryConfiguration = schema.new({
         id = id.from(_N, "WriteTreatmentResource", "CustomDeliveryConfiguration"),
         type = "structure",
         name = "CustomDeliveryConfiguration",
         target_id = id.from(_N, "CustomDeliveryConfiguration"),
         target = M.CustomDeliveryConfiguration,
      }),
      MessageConfiguration = schema.new({
         id = id.from(_N, "WriteTreatmentResource", "MessageConfiguration"),
         type = "structure",
         name = "MessageConfiguration",
         target_id = id.from(_N, "MessageConfiguration"),
         target = M.MessageConfiguration,
      }),
      Schedule = schema.new({
         id = id.from(_N, "WriteTreatmentResource", "Schedule"),
         type = "structure",
         name = "Schedule",
         target_id = id.from(_N, "Schedule"),
         target = M.Schedule,
      }),
      SizePercent = schema.new({
         id = id.from(_N, "WriteTreatmentResource", "SizePercent"),
         type = "integer",
         name = "SizePercent",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateConfiguration = schema.new({
         id = id.from(_N, "WriteTreatmentResource", "TemplateConfiguration"),
         type = "structure",
         name = "TemplateConfiguration",
         target_id = id.from(_N, "TemplateConfiguration"),
         target = M.TemplateConfiguration,
      }),
      TreatmentDescription = schema.new({
         id = id.from(_N, "WriteTreatmentResource", "TreatmentDescription"),
         type = "string",
         name = "TreatmentDescription",
         target_id = prelude.String.id,
      }),
      TreatmentName = schema.new({
         id = id.from(_N, "WriteTreatmentResource", "TreatmentName"),
         type = "string",
         name = "TreatmentName",
         target_id = prelude.String.id,
      }),
   },
})

M.WriteCampaignRequest = schema.new({
   id = id.from(_N, "WriteCampaignRequest"),
   type = "structure",
   members = {
      AdditionalTreatments = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "AdditionalTreatments"),
         type = "list",
         name = "AdditionalTreatments",
         target_id = prelude.Document.id,
         list_member = M.WriteTreatmentResource,
      }),
      CustomDeliveryConfiguration = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "CustomDeliveryConfiguration"),
         type = "structure",
         name = "CustomDeliveryConfiguration",
         target_id = id.from(_N, "CustomDeliveryConfiguration"),
         target = M.CustomDeliveryConfiguration,
      }),
      Description = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      HoldoutPercent = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "HoldoutPercent"),
         type = "integer",
         name = "HoldoutPercent",
         target_id = prelude.Integer.id,
      }),
      Hook = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "Hook"),
         type = "structure",
         name = "Hook",
         target_id = id.from(_N, "CampaignHook"),
         target = M.CampaignHook,
      }),
      IsPaused = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "IsPaused"),
         type = "boolean",
         name = "IsPaused",
         target_id = prelude.Boolean.id,
      }),
      Limits = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "Limits"),
         type = "structure",
         name = "Limits",
         target_id = id.from(_N, "CampaignLimits"),
         target = M.CampaignLimits,
      }),
      MessageConfiguration = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "MessageConfiguration"),
         type = "structure",
         name = "MessageConfiguration",
         target_id = id.from(_N, "MessageConfiguration"),
         target = M.MessageConfiguration,
      }),
      Name = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Schedule = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "Schedule"),
         type = "structure",
         name = "Schedule",
         target_id = id.from(_N, "Schedule"),
         target = M.Schedule,
      }),
      SegmentId = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
      }),
      SegmentVersion = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "SegmentVersion"),
         type = "integer",
         name = "SegmentVersion",
         target_id = prelude.Integer.id,
      }),
      tags = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateConfiguration = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "TemplateConfiguration"),
         type = "structure",
         name = "TemplateConfiguration",
         target_id = id.from(_N, "TemplateConfiguration"),
         target = M.TemplateConfiguration,
      }),
      TreatmentDescription = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "TreatmentDescription"),
         type = "string",
         name = "TreatmentDescription",
         target_id = prelude.String.id,
      }),
      TreatmentName = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "TreatmentName"),
         type = "string",
         name = "TreatmentName",
         target_id = prelude.String.id,
      }),
      Priority = schema.new({
         id = id.from(_N, "WriteCampaignRequest", "Priority"),
         type = "integer",
         name = "Priority",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateCampaignInput = schema.new({
   id = id.from(_N, "CreateCampaignRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateCampaignInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      WriteCampaignRequest = schema.new({
         id = id.from(_N, "CreateCampaignInput", "WriteCampaignRequest"),
         type = "structure",
         name = "WriteCampaignRequest",
         target_id = id.from(_N, "WriteCampaignRequest"),
         target = M.WriteCampaignRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.CreateCampaignOutput = schema.new({
   id = id.from(_N, "CreateCampaignResponse"),
   type = "structure",
   members = {
      CampaignResponse = schema.new({
         id = id.from(_N, "CreateCampaignOutput", "CampaignResponse"),
         type = "structure",
         name = "CampaignResponse",
         target_id = id.from(_N, "CampaignResponse"),
         target = M.CampaignResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.EmailTemplateRequest = schema.new({
   id = id.from(_N, "EmailTemplateRequest"),
   type = "structure",
   members = {
      DefaultSubstitutions = schema.new({
         id = id.from(_N, "EmailTemplateRequest", "DefaultSubstitutions"),
         type = "string",
         name = "DefaultSubstitutions",
         target_id = prelude.String.id,
      }),
      HtmlPart = schema.new({
         id = id.from(_N, "EmailTemplateRequest", "HtmlPart"),
         type = "string",
         name = "HtmlPart",
         target_id = prelude.String.id,
      }),
      RecommenderId = schema.new({
         id = id.from(_N, "EmailTemplateRequest", "RecommenderId"),
         type = "string",
         name = "RecommenderId",
         target_id = prelude.String.id,
      }),
      Subject = schema.new({
         id = id.from(_N, "EmailTemplateRequest", "Subject"),
         type = "string",
         name = "Subject",
         target_id = prelude.String.id,
      }),
      Headers = schema.new({
         id = id.from(_N, "EmailTemplateRequest", "Headers"),
         type = "list",
         name = "Headers",
         target_id = prelude.Document.id,
         list_member = M.MessageHeader,
      }),
      tags = schema.new({
         id = id.from(_N, "EmailTemplateRequest", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "EmailTemplateRequest", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
      TextPart = schema.new({
         id = id.from(_N, "EmailTemplateRequest", "TextPart"),
         type = "string",
         name = "TextPart",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateEmailTemplateInput = schema.new({
   id = id.from(_N, "CreateEmailTemplateRequest"),
   type = "structure",
   members = {
      EmailTemplateRequest = schema.new({
         id = id.from(_N, "CreateEmailTemplateInput", "EmailTemplateRequest"),
         type = "structure",
         name = "EmailTemplateRequest",
         target_id = id.from(_N, "EmailTemplateRequest"),
         target = M.EmailTemplateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      TemplateName = schema.new({
         id = id.from(_N, "CreateEmailTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CreateTemplateMessageBody = schema.new({
   id = id.from(_N, "CreateTemplateMessageBody"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "CreateTemplateMessageBody", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "CreateTemplateMessageBody", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      RequestID = schema.new({
         id = id.from(_N, "CreateTemplateMessageBody", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateEmailTemplateOutput = schema.new({
   id = id.from(_N, "CreateEmailTemplateResponse"),
   type = "structure",
   members = {
      CreateTemplateMessageBody = schema.new({
         id = id.from(_N, "CreateEmailTemplateOutput", "CreateTemplateMessageBody"),
         type = "structure",
         name = "CreateTemplateMessageBody",
         target_id = id.from(_N, "CreateTemplateMessageBody"),
         target = M.CreateTemplateMessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.ExportJobRequest = schema.new({
   id = id.from(_N, "ExportJobRequest"),
   type = "structure",
   members = {
      RoleArn = schema.new({
         id = id.from(_N, "ExportJobRequest", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3UrlPrefix = schema.new({
         id = id.from(_N, "ExportJobRequest", "S3UrlPrefix"),
         type = "string",
         name = "S3UrlPrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SegmentId = schema.new({
         id = id.from(_N, "ExportJobRequest", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
      }),
      SegmentVersion = schema.new({
         id = id.from(_N, "ExportJobRequest", "SegmentVersion"),
         type = "integer",
         name = "SegmentVersion",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateExportJobInput = schema.new({
   id = id.from(_N, "CreateExportJobRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateExportJobInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExportJobRequest = schema.new({
         id = id.from(_N, "CreateExportJobInput", "ExportJobRequest"),
         type = "structure",
         name = "ExportJobRequest",
         target_id = id.from(_N, "ExportJobRequest"),
         target = M.ExportJobRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.ExportJobResource = schema.new({
   id = id.from(_N, "ExportJobResource"),
   type = "structure",
   members = {
      RoleArn = schema.new({
         id = id.from(_N, "ExportJobResource", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3UrlPrefix = schema.new({
         id = id.from(_N, "ExportJobResource", "S3UrlPrefix"),
         type = "string",
         name = "S3UrlPrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SegmentId = schema.new({
         id = id.from(_N, "ExportJobResource", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
      }),
      SegmentVersion = schema.new({
         id = id.from(_N, "ExportJobResource", "SegmentVersion"),
         type = "integer",
         name = "SegmentVersion",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ExportJobResponse = schema.new({
   id = id.from(_N, "ExportJobResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ExportJobResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CompletedPieces = schema.new({
         id = id.from(_N, "ExportJobResponse", "CompletedPieces"),
         type = "integer",
         name = "CompletedPieces",
         target_id = prelude.Integer.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "ExportJobResponse", "CompletionDate"),
         type = "string",
         name = "CompletionDate",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "ExportJobResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Definition = schema.new({
         id = id.from(_N, "ExportJobResponse", "Definition"),
         type = "structure",
         name = "Definition",
         target_id = id.from(_N, "ExportJobResource"),
         target = M.ExportJobResource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FailedPieces = schema.new({
         id = id.from(_N, "ExportJobResponse", "FailedPieces"),
         type = "integer",
         name = "FailedPieces",
         target_id = prelude.Integer.id,
      }),
      Failures = schema.new({
         id = id.from(_N, "ExportJobResponse", "Failures"),
         type = "list",
         name = "Failures",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Id = schema.new({
         id = id.from(_N, "ExportJobResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobStatus = schema.new({
         id = id.from(_N, "ExportJobResponse", "JobStatus"),
         type = "string",
         name = "JobStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TotalFailures = schema.new({
         id = id.from(_N, "ExportJobResponse", "TotalFailures"),
         type = "integer",
         name = "TotalFailures",
         target_id = prelude.Integer.id,
      }),
      TotalPieces = schema.new({
         id = id.from(_N, "ExportJobResponse", "TotalPieces"),
         type = "integer",
         name = "TotalPieces",
         target_id = prelude.Integer.id,
      }),
      TotalProcessed = schema.new({
         id = id.from(_N, "ExportJobResponse", "TotalProcessed"),
         type = "integer",
         name = "TotalProcessed",
         target_id = prelude.Integer.id,
      }),
      Type = schema.new({
         id = id.from(_N, "ExportJobResponse", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateExportJobOutput = schema.new({
   id = id.from(_N, "CreateExportJobResponse"),
   type = "structure",
   members = {
      ExportJobResponse = schema.new({
         id = id.from(_N, "CreateExportJobOutput", "ExportJobResponse"),
         type = "structure",
         name = "ExportJobResponse",
         target_id = id.from(_N, "ExportJobResponse"),
         target = M.ExportJobResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.ImportJobRequest = schema.new({
   id = id.from(_N, "ImportJobRequest"),
   type = "structure",
   members = {
      DefineSegment = schema.new({
         id = id.from(_N, "ImportJobRequest", "DefineSegment"),
         type = "boolean",
         name = "DefineSegment",
         target_id = prelude.Boolean.id,
      }),
      ExternalId = schema.new({
         id = id.from(_N, "ImportJobRequest", "ExternalId"),
         type = "string",
         name = "ExternalId",
         target_id = prelude.String.id,
      }),
      Format = schema.new({
         id = id.from(_N, "ImportJobRequest", "Format"),
         type = "string",
         name = "Format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RegisterEndpoints = schema.new({
         id = id.from(_N, "ImportJobRequest", "RegisterEndpoints"),
         type = "boolean",
         name = "RegisterEndpoints",
         target_id = prelude.Boolean.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "ImportJobRequest", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3Url = schema.new({
         id = id.from(_N, "ImportJobRequest", "S3Url"),
         type = "string",
         name = "S3Url",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SegmentId = schema.new({
         id = id.from(_N, "ImportJobRequest", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
      }),
      SegmentName = schema.new({
         id = id.from(_N, "ImportJobRequest", "SegmentName"),
         type = "string",
         name = "SegmentName",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateImportJobInput = schema.new({
   id = id.from(_N, "CreateImportJobRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateImportJobInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ImportJobRequest = schema.new({
         id = id.from(_N, "CreateImportJobInput", "ImportJobRequest"),
         type = "structure",
         name = "ImportJobRequest",
         target_id = id.from(_N, "ImportJobRequest"),
         target = M.ImportJobRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.ImportJobResource = schema.new({
   id = id.from(_N, "ImportJobResource"),
   type = "structure",
   members = {
      DefineSegment = schema.new({
         id = id.from(_N, "ImportJobResource", "DefineSegment"),
         type = "boolean",
         name = "DefineSegment",
         target_id = prelude.Boolean.id,
      }),
      ExternalId = schema.new({
         id = id.from(_N, "ImportJobResource", "ExternalId"),
         type = "string",
         name = "ExternalId",
         target_id = prelude.String.id,
      }),
      Format = schema.new({
         id = id.from(_N, "ImportJobResource", "Format"),
         type = "string",
         name = "Format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RegisterEndpoints = schema.new({
         id = id.from(_N, "ImportJobResource", "RegisterEndpoints"),
         type = "boolean",
         name = "RegisterEndpoints",
         target_id = prelude.Boolean.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "ImportJobResource", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3Url = schema.new({
         id = id.from(_N, "ImportJobResource", "S3Url"),
         type = "string",
         name = "S3Url",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SegmentId = schema.new({
         id = id.from(_N, "ImportJobResource", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
      }),
      SegmentName = schema.new({
         id = id.from(_N, "ImportJobResource", "SegmentName"),
         type = "string",
         name = "SegmentName",
         target_id = prelude.String.id,
      }),
   },
})

M.ImportJobResponse = schema.new({
   id = id.from(_N, "ImportJobResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ImportJobResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CompletedPieces = schema.new({
         id = id.from(_N, "ImportJobResponse", "CompletedPieces"),
         type = "integer",
         name = "CompletedPieces",
         target_id = prelude.Integer.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "ImportJobResponse", "CompletionDate"),
         type = "string",
         name = "CompletionDate",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "ImportJobResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Definition = schema.new({
         id = id.from(_N, "ImportJobResponse", "Definition"),
         type = "structure",
         name = "Definition",
         target_id = id.from(_N, "ImportJobResource"),
         target = M.ImportJobResource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FailedPieces = schema.new({
         id = id.from(_N, "ImportJobResponse", "FailedPieces"),
         type = "integer",
         name = "FailedPieces",
         target_id = prelude.Integer.id,
      }),
      Failures = schema.new({
         id = id.from(_N, "ImportJobResponse", "Failures"),
         type = "list",
         name = "Failures",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Id = schema.new({
         id = id.from(_N, "ImportJobResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobStatus = schema.new({
         id = id.from(_N, "ImportJobResponse", "JobStatus"),
         type = "string",
         name = "JobStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TotalFailures = schema.new({
         id = id.from(_N, "ImportJobResponse", "TotalFailures"),
         type = "integer",
         name = "TotalFailures",
         target_id = prelude.Integer.id,
      }),
      TotalPieces = schema.new({
         id = id.from(_N, "ImportJobResponse", "TotalPieces"),
         type = "integer",
         name = "TotalPieces",
         target_id = prelude.Integer.id,
      }),
      TotalProcessed = schema.new({
         id = id.from(_N, "ImportJobResponse", "TotalProcessed"),
         type = "integer",
         name = "TotalProcessed",
         target_id = prelude.Integer.id,
      }),
      Type = schema.new({
         id = id.from(_N, "ImportJobResponse", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateImportJobOutput = schema.new({
   id = id.from(_N, "CreateImportJobResponse"),
   type = "structure",
   members = {
      ImportJobResponse = schema.new({
         id = id.from(_N, "CreateImportJobOutput", "ImportJobResponse"),
         type = "structure",
         name = "ImportJobResponse",
         target_id = id.from(_N, "ImportJobResponse"),
         target = M.ImportJobResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.InAppTemplateRequest = schema.new({
   id = id.from(_N, "InAppTemplateRequest"),
   type = "structure",
   members = {
      Content = schema.new({
         id = id.from(_N, "InAppTemplateRequest", "Content"),
         type = "list",
         name = "Content",
         target_id = prelude.Document.id,
         list_member = M.InAppMessageContent,
      }),
      CustomConfig = schema.new({
         id = id.from(_N, "InAppTemplateRequest", "CustomConfig"),
         type = "map",
         name = "CustomConfig",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Layout = schema.new({
         id = id.from(_N, "InAppTemplateRequest", "Layout"),
         type = "string",
         name = "Layout",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "InAppTemplateRequest", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "InAppTemplateRequest", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateInAppTemplateInput = schema.new({
   id = id.from(_N, "CreateInAppTemplateRequest"),
   type = "structure",
   members = {
      InAppTemplateRequest = schema.new({
         id = id.from(_N, "CreateInAppTemplateInput", "InAppTemplateRequest"),
         type = "structure",
         name = "InAppTemplateRequest",
         target_id = id.from(_N, "InAppTemplateRequest"),
         target = M.InAppTemplateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      TemplateName = schema.new({
         id = id.from(_N, "CreateInAppTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TemplateCreateMessageBody = schema.new({
   id = id.from(_N, "TemplateCreateMessageBody"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "TemplateCreateMessageBody", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "TemplateCreateMessageBody", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      RequestID = schema.new({
         id = id.from(_N, "TemplateCreateMessageBody", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateInAppTemplateOutput = schema.new({
   id = id.from(_N, "CreateInAppTemplateResponse"),
   type = "structure",
   members = {
      TemplateCreateMessageBody = schema.new({
         id = id.from(_N, "CreateInAppTemplateOutput", "TemplateCreateMessageBody"),
         type = "structure",
         name = "TemplateCreateMessageBody",
         target_id = id.from(_N, "TemplateCreateMessageBody"),
         target = M.TemplateCreateMessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.JourneyChannelSettings = schema.new({
   id = id.from(_N, "JourneyChannelSettings"),
   type = "structure",
   members = {
      ConnectCampaignArn = schema.new({
         id = id.from(_N, "JourneyChannelSettings", "ConnectCampaignArn"),
         type = "string",
         name = "ConnectCampaignArn",
         target_id = prelude.String.id,
      }),
      ConnectCampaignExecutionRoleArn = schema.new({
         id = id.from(_N, "JourneyChannelSettings", "ConnectCampaignExecutionRoleArn"),
         type = "string",
         name = "ConnectCampaignExecutionRoleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.JourneyLimits = schema.new({
   id = id.from(_N, "JourneyLimits"),
   type = "structure",
   members = {
      DailyCap = schema.new({
         id = id.from(_N, "JourneyLimits", "DailyCap"),
         type = "integer",
         name = "DailyCap",
         target_id = prelude.Integer.id,
      }),
      EndpointReentryCap = schema.new({
         id = id.from(_N, "JourneyLimits", "EndpointReentryCap"),
         type = "integer",
         name = "EndpointReentryCap",
         target_id = prelude.Integer.id,
      }),
      MessagesPerSecond = schema.new({
         id = id.from(_N, "JourneyLimits", "MessagesPerSecond"),
         type = "integer",
         name = "MessagesPerSecond",
         target_id = prelude.Integer.id,
      }),
      EndpointReentryInterval = schema.new({
         id = id.from(_N, "JourneyLimits", "EndpointReentryInterval"),
         type = "string",
         name = "EndpointReentryInterval",
         target_id = prelude.String.id,
      }),
      TimeframeCap = schema.new({
         id = id.from(_N, "JourneyLimits", "TimeframeCap"),
         type = "structure",
         name = "TimeframeCap",
         target_id = id.from(_N, "JourneyTimeframeCap"),
         target = M.JourneyTimeframeCap,
      }),
      TotalCap = schema.new({
         id = id.from(_N, "JourneyLimits", "TotalCap"),
         type = "integer",
         name = "TotalCap",
         target_id = prelude.Integer.id,
      }),
   },
})

M.OpenHoursRule = schema.new({
   id = id.from(_N, "OpenHoursRule"),
   type = "structure",
   members = {
      StartTime = schema.new({
         id = id.from(_N, "OpenHoursRule", "StartTime"),
         type = "string",
         name = "StartTime",
         target_id = prelude.String.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "OpenHoursRule", "EndTime"),
         type = "string",
         name = "EndTime",
         target_id = prelude.String.id,
      }),
   },
})

M.OpenHours = schema.new({
   id = id.from(_N, "OpenHours"),
   type = "structure",
   members = {
      EMAIL = schema.new({
         id = id.from(_N, "OpenHours", "EMAIL"),
         type = "map",
         name = "EMAIL",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = M.OpenHoursRule }),
      }),
      SMS = schema.new({
         id = id.from(_N, "OpenHours", "SMS"),
         type = "map",
         name = "SMS",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = M.OpenHoursRule }),
      }),
      PUSH = schema.new({
         id = id.from(_N, "OpenHours", "PUSH"),
         type = "map",
         name = "PUSH",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = M.OpenHoursRule }),
      }),
      VOICE = schema.new({
         id = id.from(_N, "OpenHours", "VOICE"),
         type = "map",
         name = "VOICE",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = M.OpenHoursRule }),
      }),
      CUSTOM = schema.new({
         id = id.from(_N, "OpenHours", "CUSTOM"),
         type = "map",
         name = "CUSTOM",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = M.OpenHoursRule }),
      }),
   },
})

M.JourneySchedule = schema.new({
   id = id.from(_N, "JourneySchedule"),
   type = "structure",
   members = {
      EndTime = schema.new({
         id = id.from(_N, "JourneySchedule", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "JourneySchedule", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      Timezone = schema.new({
         id = id.from(_N, "JourneySchedule", "Timezone"),
         type = "string",
         name = "Timezone",
         target_id = prelude.String.id,
      }),
   },
})

M.EventFilter = schema.new({
   id = id.from(_N, "EventFilter"),
   type = "structure",
   members = {
      Dimensions = schema.new({
         id = id.from(_N, "EventFilter", "Dimensions"),
         type = "structure",
         name = "Dimensions",
         target_id = id.from(_N, "EventDimensions"),
         target = M.EventDimensions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FilterType = schema.new({
         id = id.from(_N, "EventFilter", "FilterType"),
         type = "string",
         name = "FilterType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EventStartCondition = schema.new({
   id = id.from(_N, "EventStartCondition"),
   type = "structure",
   members = {
      EventFilter = schema.new({
         id = id.from(_N, "EventStartCondition", "EventFilter"),
         type = "structure",
         name = "EventFilter",
         target_id = id.from(_N, "EventFilter"),
         target = M.EventFilter,
      }),
      SegmentId = schema.new({
         id = id.from(_N, "EventStartCondition", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartCondition = schema.new({
   id = id.from(_N, "StartCondition"),
   type = "structure",
   members = {
      Description = schema.new({
         id = id.from(_N, "StartCondition", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EventStartCondition = schema.new({
         id = id.from(_N, "StartCondition", "EventStartCondition"),
         type = "structure",
         name = "EventStartCondition",
         target_id = id.from(_N, "EventStartCondition"),
         target = M.EventStartCondition,
      }),
      SegmentStartCondition = schema.new({
         id = id.from(_N, "StartCondition", "SegmentStartCondition"),
         type = "structure",
         name = "SegmentStartCondition",
         target_id = id.from(_N, "SegmentCondition"),
         target = M.SegmentCondition,
      }),
   },
})

M.WriteJourneyRequest = schema.new({
   id = id.from(_N, "WriteJourneyRequest"),
   type = "structure",
   members = {
      Activities = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "Activities"),
         type = "map",
         name = "Activities",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.Activity,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Limits = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "Limits"),
         type = "structure",
         name = "Limits",
         target_id = id.from(_N, "JourneyLimits"),
         target = M.JourneyLimits,
      }),
      LocalTime = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "LocalTime"),
         type = "boolean",
         name = "LocalTime",
         target_id = prelude.Boolean.id,
      }),
      Name = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      QuietTime = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "QuietTime"),
         type = "structure",
         name = "QuietTime",
         target_id = id.from(_N, "QuietTime"),
         target = M.QuietTime,
      }),
      RefreshFrequency = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "RefreshFrequency"),
         type = "string",
         name = "RefreshFrequency",
         target_id = prelude.String.id,
      }),
      Schedule = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "Schedule"),
         type = "structure",
         name = "Schedule",
         target_id = id.from(_N, "JourneySchedule"),
         target = M.JourneySchedule,
      }),
      StartActivity = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "StartActivity"),
         type = "string",
         name = "StartActivity",
         target_id = prelude.String.id,
      }),
      StartCondition = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "StartCondition"),
         type = "structure",
         name = "StartCondition",
         target_id = id.from(_N, "StartCondition"),
         target = M.StartCondition,
      }),
      State = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      WaitForQuietTime = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "WaitForQuietTime"),
         type = "boolean",
         name = "WaitForQuietTime",
         target_id = prelude.Boolean.id,
      }),
      RefreshOnSegmentUpdate = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "RefreshOnSegmentUpdate"),
         type = "boolean",
         name = "RefreshOnSegmentUpdate",
         target_id = prelude.Boolean.id,
      }),
      JourneyChannelSettings = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "JourneyChannelSettings"),
         type = "structure",
         name = "JourneyChannelSettings",
         target_id = id.from(_N, "JourneyChannelSettings"),
         target = M.JourneyChannelSettings,
      }),
      SendingSchedule = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "SendingSchedule"),
         type = "boolean",
         name = "SendingSchedule",
         target_id = prelude.Boolean.id,
      }),
      OpenHours = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "OpenHours"),
         type = "structure",
         name = "OpenHours",
         target_id = id.from(_N, "OpenHours"),
         target = M.OpenHours,
      }),
      ClosedDays = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "ClosedDays"),
         type = "structure",
         name = "ClosedDays",
         target_id = id.from(_N, "ClosedDays"),
         target = M.ClosedDays,
      }),
      TimezoneEstimationMethods = schema.new({
         id = id.from(_N, "WriteJourneyRequest", "TimezoneEstimationMethods"),
         type = "list",
         name = "TimezoneEstimationMethods",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreateJourneyInput = schema.new({
   id = id.from(_N, "CreateJourneyRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateJourneyInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      WriteJourneyRequest = schema.new({
         id = id.from(_N, "CreateJourneyInput", "WriteJourneyRequest"),
         type = "structure",
         name = "WriteJourneyRequest",
         target_id = id.from(_N, "WriteJourneyRequest"),
         target = M.WriteJourneyRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.JourneyResponse = schema.new({
   id = id.from(_N, "JourneyResponse"),
   type = "structure",
   members = {
      Activities = schema.new({
         id = id.from(_N, "JourneyResponse", "Activities"),
         type = "map",
         name = "Activities",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.Activity,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "JourneyResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreationDate = schema.new({
         id = id.from(_N, "JourneyResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "JourneyResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "JourneyResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Limits = schema.new({
         id = id.from(_N, "JourneyResponse", "Limits"),
         type = "structure",
         name = "Limits",
         target_id = id.from(_N, "JourneyLimits"),
         target = M.JourneyLimits,
      }),
      LocalTime = schema.new({
         id = id.from(_N, "JourneyResponse", "LocalTime"),
         type = "boolean",
         name = "LocalTime",
         target_id = prelude.Boolean.id,
      }),
      Name = schema.new({
         id = id.from(_N, "JourneyResponse", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      QuietTime = schema.new({
         id = id.from(_N, "JourneyResponse", "QuietTime"),
         type = "structure",
         name = "QuietTime",
         target_id = id.from(_N, "QuietTime"),
         target = M.QuietTime,
      }),
      RefreshFrequency = schema.new({
         id = id.from(_N, "JourneyResponse", "RefreshFrequency"),
         type = "string",
         name = "RefreshFrequency",
         target_id = prelude.String.id,
      }),
      Schedule = schema.new({
         id = id.from(_N, "JourneyResponse", "Schedule"),
         type = "structure",
         name = "Schedule",
         target_id = id.from(_N, "JourneySchedule"),
         target = M.JourneySchedule,
      }),
      StartActivity = schema.new({
         id = id.from(_N, "JourneyResponse", "StartActivity"),
         type = "string",
         name = "StartActivity",
         target_id = prelude.String.id,
      }),
      StartCondition = schema.new({
         id = id.from(_N, "JourneyResponse", "StartCondition"),
         type = "structure",
         name = "StartCondition",
         target_id = id.from(_N, "StartCondition"),
         target = M.StartCondition,
      }),
      State = schema.new({
         id = id.from(_N, "JourneyResponse", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "JourneyResponse", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      WaitForQuietTime = schema.new({
         id = id.from(_N, "JourneyResponse", "WaitForQuietTime"),
         type = "boolean",
         name = "WaitForQuietTime",
         target_id = prelude.Boolean.id,
      }),
      RefreshOnSegmentUpdate = schema.new({
         id = id.from(_N, "JourneyResponse", "RefreshOnSegmentUpdate"),
         type = "boolean",
         name = "RefreshOnSegmentUpdate",
         target_id = prelude.Boolean.id,
      }),
      JourneyChannelSettings = schema.new({
         id = id.from(_N, "JourneyResponse", "JourneyChannelSettings"),
         type = "structure",
         name = "JourneyChannelSettings",
         target_id = id.from(_N, "JourneyChannelSettings"),
         target = M.JourneyChannelSettings,
      }),
      SendingSchedule = schema.new({
         id = id.from(_N, "JourneyResponse", "SendingSchedule"),
         type = "boolean",
         name = "SendingSchedule",
         target_id = prelude.Boolean.id,
      }),
      OpenHours = schema.new({
         id = id.from(_N, "JourneyResponse", "OpenHours"),
         type = "structure",
         name = "OpenHours",
         target_id = id.from(_N, "OpenHours"),
         target = M.OpenHours,
      }),
      ClosedDays = schema.new({
         id = id.from(_N, "JourneyResponse", "ClosedDays"),
         type = "structure",
         name = "ClosedDays",
         target_id = id.from(_N, "ClosedDays"),
         target = M.ClosedDays,
      }),
      TimezoneEstimationMethods = schema.new({
         id = id.from(_N, "JourneyResponse", "TimezoneEstimationMethods"),
         type = "list",
         name = "TimezoneEstimationMethods",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreateJourneyOutput = schema.new({
   id = id.from(_N, "CreateJourneyResponse"),
   type = "structure",
   members = {
      JourneyResponse = schema.new({
         id = id.from(_N, "CreateJourneyOutput", "JourneyResponse"),
         type = "structure",
         name = "JourneyResponse",
         target_id = id.from(_N, "JourneyResponse"),
         target = M.JourneyResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DefaultPushNotificationTemplate = schema.new({
   id = id.from(_N, "DefaultPushNotificationTemplate"),
   type = "structure",
   members = {
      Action = schema.new({
         id = id.from(_N, "DefaultPushNotificationTemplate", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      Body = schema.new({
         id = id.from(_N, "DefaultPushNotificationTemplate", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      Sound = schema.new({
         id = id.from(_N, "DefaultPushNotificationTemplate", "Sound"),
         type = "string",
         name = "Sound",
         target_id = prelude.String.id,
      }),
      Title = schema.new({
         id = id.from(_N, "DefaultPushNotificationTemplate", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Url = schema.new({
         id = id.from(_N, "DefaultPushNotificationTemplate", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
   },
})

M.PushNotificationTemplateRequest = schema.new({
   id = id.from(_N, "PushNotificationTemplateRequest"),
   type = "structure",
   members = {
      ADM = schema.new({
         id = id.from(_N, "PushNotificationTemplateRequest", "ADM"),
         type = "structure",
         name = "ADM",
         target_id = id.from(_N, "AndroidPushNotificationTemplate"),
         target = M.AndroidPushNotificationTemplate,
      }),
      APNS = schema.new({
         id = id.from(_N, "PushNotificationTemplateRequest", "APNS"),
         type = "structure",
         name = "APNS",
         target_id = id.from(_N, "APNSPushNotificationTemplate"),
         target = M.APNSPushNotificationTemplate,
      }),
      Baidu = schema.new({
         id = id.from(_N, "PushNotificationTemplateRequest", "Baidu"),
         type = "structure",
         name = "Baidu",
         target_id = id.from(_N, "AndroidPushNotificationTemplate"),
         target = M.AndroidPushNotificationTemplate,
      }),
      Default = schema.new({
         id = id.from(_N, "PushNotificationTemplateRequest", "Default"),
         type = "structure",
         name = "Default",
         target_id = id.from(_N, "DefaultPushNotificationTemplate"),
         target = M.DefaultPushNotificationTemplate,
      }),
      DefaultSubstitutions = schema.new({
         id = id.from(_N, "PushNotificationTemplateRequest", "DefaultSubstitutions"),
         type = "string",
         name = "DefaultSubstitutions",
         target_id = prelude.String.id,
      }),
      GCM = schema.new({
         id = id.from(_N, "PushNotificationTemplateRequest", "GCM"),
         type = "structure",
         name = "GCM",
         target_id = id.from(_N, "AndroidPushNotificationTemplate"),
         target = M.AndroidPushNotificationTemplate,
      }),
      RecommenderId = schema.new({
         id = id.from(_N, "PushNotificationTemplateRequest", "RecommenderId"),
         type = "string",
         name = "RecommenderId",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "PushNotificationTemplateRequest", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "PushNotificationTemplateRequest", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePushTemplateInput = schema.new({
   id = id.from(_N, "CreatePushTemplateRequest"),
   type = "structure",
   members = {
      PushNotificationTemplateRequest = schema.new({
         id = id.from(_N, "CreatePushTemplateInput", "PushNotificationTemplateRequest"),
         type = "structure",
         name = "PushNotificationTemplateRequest",
         target_id = id.from(_N, "PushNotificationTemplateRequest"),
         target = M.PushNotificationTemplateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      TemplateName = schema.new({
         id = id.from(_N, "CreatePushTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CreatePushTemplateOutput = schema.new({
   id = id.from(_N, "CreatePushTemplateResponse"),
   type = "structure",
   members = {
      CreateTemplateMessageBody = schema.new({
         id = id.from(_N, "CreatePushTemplateOutput", "CreateTemplateMessageBody"),
         type = "structure",
         name = "CreateTemplateMessageBody",
         target_id = id.from(_N, "CreateTemplateMessageBody"),
         target = M.CreateTemplateMessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.CreateRecommenderConfigurationShape = schema.new({
   id = id.from(_N, "CreateRecommenderConfigurationShape"),
   type = "structure",
   members = {
      Attributes = schema.new({
         id = id.from(_N, "CreateRecommenderConfigurationShape", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateRecommenderConfigurationShape", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "CreateRecommenderConfigurationShape", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      RecommendationProviderIdType = schema.new({
         id = id.from(_N, "CreateRecommenderConfigurationShape", "RecommendationProviderIdType"),
         type = "string",
         name = "RecommendationProviderIdType",
         target_id = prelude.String.id,
      }),
      RecommendationProviderRoleArn = schema.new({
         id = id.from(_N, "CreateRecommenderConfigurationShape", "RecommendationProviderRoleArn"),
         type = "string",
         name = "RecommendationProviderRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecommendationProviderUri = schema.new({
         id = id.from(_N, "CreateRecommenderConfigurationShape", "RecommendationProviderUri"),
         type = "string",
         name = "RecommendationProviderUri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecommendationTransformerUri = schema.new({
         id = id.from(_N, "CreateRecommenderConfigurationShape", "RecommendationTransformerUri"),
         type = "string",
         name = "RecommendationTransformerUri",
         target_id = prelude.String.id,
      }),
      RecommendationsDisplayName = schema.new({
         id = id.from(_N, "CreateRecommenderConfigurationShape", "RecommendationsDisplayName"),
         type = "string",
         name = "RecommendationsDisplayName",
         target_id = prelude.String.id,
      }),
      RecommendationsPerMessage = schema.new({
         id = id.from(_N, "CreateRecommenderConfigurationShape", "RecommendationsPerMessage"),
         type = "integer",
         name = "RecommendationsPerMessage",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateRecommenderConfigurationInput = schema.new({
   id = id.from(_N, "CreateRecommenderConfigurationRequest"),
   type = "structure",
   members = {
      CreateRecommenderConfiguration = schema.new({
         id = id.from(_N, "CreateRecommenderConfigurationInput", "CreateRecommenderConfiguration"),
         type = "structure",
         name = "CreateRecommenderConfiguration",
         target_id = id.from(_N, "CreateRecommenderConfigurationShape"),
         target = M.CreateRecommenderConfigurationShape,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.RecommenderConfigurationResponse = schema.new({
   id = id.from(_N, "RecommenderConfigurationResponse"),
   type = "structure",
   members = {
      Attributes = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      RecommendationProviderIdType = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "RecommendationProviderIdType"),
         type = "string",
         name = "RecommendationProviderIdType",
         target_id = prelude.String.id,
      }),
      RecommendationProviderRoleArn = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "RecommendationProviderRoleArn"),
         type = "string",
         name = "RecommendationProviderRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecommendationProviderUri = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "RecommendationProviderUri"),
         type = "string",
         name = "RecommendationProviderUri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecommendationTransformerUri = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "RecommendationTransformerUri"),
         type = "string",
         name = "RecommendationTransformerUri",
         target_id = prelude.String.id,
      }),
      RecommendationsDisplayName = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "RecommendationsDisplayName"),
         type = "string",
         name = "RecommendationsDisplayName",
         target_id = prelude.String.id,
      }),
      RecommendationsPerMessage = schema.new({
         id = id.from(_N, "RecommenderConfigurationResponse", "RecommendationsPerMessage"),
         type = "integer",
         name = "RecommendationsPerMessage",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateRecommenderConfigurationOutput = schema.new({
   id = id.from(_N, "CreateRecommenderConfigurationResponse"),
   type = "structure",
   members = {
      RecommenderConfigurationResponse = schema.new({
         id = id.from(_N, "CreateRecommenderConfigurationOutput", "RecommenderConfigurationResponse"),
         type = "structure",
         name = "RecommenderConfigurationResponse",
         target_id = id.from(_N, "RecommenderConfigurationResponse"),
         target = M.RecommenderConfigurationResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SegmentReference = schema.new({
   id = id.from(_N, "SegmentReference"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "SegmentReference", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "SegmentReference", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SegmentGroup = schema.new({
   id = id.from(_N, "SegmentGroup"),
   type = "structure",
   members = {
      Dimensions = schema.new({
         id = id.from(_N, "SegmentGroup", "Dimensions"),
         type = "list",
         name = "Dimensions",
         target_id = prelude.Document.id,
         list_member = M.SegmentDimensions,
      }),
      SourceSegments = schema.new({
         id = id.from(_N, "SegmentGroup", "SourceSegments"),
         type = "list",
         name = "SourceSegments",
         target_id = prelude.Document.id,
         list_member = M.SegmentReference,
      }),
      SourceType = schema.new({
         id = id.from(_N, "SegmentGroup", "SourceType"),
         type = "string",
         name = "SourceType",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "SegmentGroup", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
   },
})

M.SegmentGroupList = schema.new({
   id = id.from(_N, "SegmentGroupList"),
   type = "structure",
   members = {
      Groups = schema.new({
         id = id.from(_N, "SegmentGroupList", "Groups"),
         type = "list",
         name = "Groups",
         target_id = prelude.Document.id,
         list_member = M.SegmentGroup,
      }),
      Include = schema.new({
         id = id.from(_N, "SegmentGroupList", "Include"),
         type = "string",
         name = "Include",
         target_id = prelude.String.id,
      }),
   },
})

M.WriteSegmentRequest = schema.new({
   id = id.from(_N, "WriteSegmentRequest"),
   type = "structure",
   members = {
      Dimensions = schema.new({
         id = id.from(_N, "WriteSegmentRequest", "Dimensions"),
         type = "structure",
         name = "Dimensions",
         target_id = id.from(_N, "SegmentDimensions"),
         target = M.SegmentDimensions,
      }),
      Name = schema.new({
         id = id.from(_N, "WriteSegmentRequest", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      SegmentGroups = schema.new({
         id = id.from(_N, "WriteSegmentRequest", "SegmentGroups"),
         type = "structure",
         name = "SegmentGroups",
         target_id = id.from(_N, "SegmentGroupList"),
         target = M.SegmentGroupList,
      }),
      tags = schema.new({
         id = id.from(_N, "WriteSegmentRequest", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
   },
})

M.CreateSegmentInput = schema.new({
   id = id.from(_N, "CreateSegmentRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateSegmentInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      WriteSegmentRequest = schema.new({
         id = id.from(_N, "CreateSegmentInput", "WriteSegmentRequest"),
         type = "structure",
         name = "WriteSegmentRequest",
         target_id = id.from(_N, "WriteSegmentRequest"),
         target = M.WriteSegmentRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SegmentImportResource = schema.new({
   id = id.from(_N, "SegmentImportResource"),
   type = "structure",
   members = {
      ChannelCounts = schema.new({
         id = id.from(_N, "SegmentImportResource", "ChannelCounts"),
         type = "map",
         name = "ChannelCounts",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Integer,
      }),
      ExternalId = schema.new({
         id = id.from(_N, "SegmentImportResource", "ExternalId"),
         type = "string",
         name = "ExternalId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Format = schema.new({
         id = id.from(_N, "SegmentImportResource", "Format"),
         type = "string",
         name = "Format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "SegmentImportResource", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3Url = schema.new({
         id = id.from(_N, "SegmentImportResource", "S3Url"),
         type = "string",
         name = "S3Url",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Size = schema.new({
         id = id.from(_N, "SegmentImportResource", "Size"),
         type = "integer",
         name = "Size",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SegmentResponse = schema.new({
   id = id.from(_N, "SegmentResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "SegmentResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "SegmentResponse", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreationDate = schema.new({
         id = id.from(_N, "SegmentResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Dimensions = schema.new({
         id = id.from(_N, "SegmentResponse", "Dimensions"),
         type = "structure",
         name = "Dimensions",
         target_id = id.from(_N, "SegmentDimensions"),
         target = M.SegmentDimensions,
      }),
      Id = schema.new({
         id = id.from(_N, "SegmentResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ImportDefinition = schema.new({
         id = id.from(_N, "SegmentResponse", "ImportDefinition"),
         type = "structure",
         name = "ImportDefinition",
         target_id = id.from(_N, "SegmentImportResource"),
         target = M.SegmentImportResource,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "SegmentResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "SegmentResponse", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      SegmentGroups = schema.new({
         id = id.from(_N, "SegmentResponse", "SegmentGroups"),
         type = "structure",
         name = "SegmentGroups",
         target_id = id.from(_N, "SegmentGroupList"),
         target = M.SegmentGroupList,
      }),
      SegmentType = schema.new({
         id = id.from(_N, "SegmentResponse", "SegmentType"),
         type = "string",
         name = "SegmentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "SegmentResponse", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      Version = schema.new({
         id = id.from(_N, "SegmentResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateSegmentOutput = schema.new({
   id = id.from(_N, "CreateSegmentResponse"),
   type = "structure",
   members = {
      SegmentResponse = schema.new({
         id = id.from(_N, "CreateSegmentOutput", "SegmentResponse"),
         type = "structure",
         name = "SegmentResponse",
         target_id = id.from(_N, "SegmentResponse"),
         target = M.SegmentResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SMSTemplateRequest = schema.new({
   id = id.from(_N, "SMSTemplateRequest"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "SMSTemplateRequest", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      DefaultSubstitutions = schema.new({
         id = id.from(_N, "SMSTemplateRequest", "DefaultSubstitutions"),
         type = "string",
         name = "DefaultSubstitutions",
         target_id = prelude.String.id,
      }),
      RecommenderId = schema.new({
         id = id.from(_N, "SMSTemplateRequest", "RecommenderId"),
         type = "string",
         name = "RecommenderId",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "SMSTemplateRequest", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "SMSTemplateRequest", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateSmsTemplateInput = schema.new({
   id = id.from(_N, "CreateSmsTemplateRequest"),
   type = "structure",
   members = {
      SMSTemplateRequest = schema.new({
         id = id.from(_N, "CreateSmsTemplateInput", "SMSTemplateRequest"),
         type = "structure",
         name = "SMSTemplateRequest",
         target_id = id.from(_N, "SMSTemplateRequest"),
         target = M.SMSTemplateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      TemplateName = schema.new({
         id = id.from(_N, "CreateSmsTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CreateSmsTemplateOutput = schema.new({
   id = id.from(_N, "CreateSmsTemplateResponse"),
   type = "structure",
   members = {
      CreateTemplateMessageBody = schema.new({
         id = id.from(_N, "CreateSmsTemplateOutput", "CreateTemplateMessageBody"),
         type = "structure",
         name = "CreateTemplateMessageBody",
         target_id = id.from(_N, "CreateTemplateMessageBody"),
         target = M.CreateTemplateMessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.VoiceTemplateRequest = schema.new({
   id = id.from(_N, "VoiceTemplateRequest"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "VoiceTemplateRequest", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      DefaultSubstitutions = schema.new({
         id = id.from(_N, "VoiceTemplateRequest", "DefaultSubstitutions"),
         type = "string",
         name = "DefaultSubstitutions",
         target_id = prelude.String.id,
      }),
      LanguageCode = schema.new({
         id = id.from(_N, "VoiceTemplateRequest", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "VoiceTemplateRequest", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "VoiceTemplateRequest", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
      VoiceId = schema.new({
         id = id.from(_N, "VoiceTemplateRequest", "VoiceId"),
         type = "string",
         name = "VoiceId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateVoiceTemplateInput = schema.new({
   id = id.from(_N, "CreateVoiceTemplateRequest"),
   type = "structure",
   members = {
      TemplateName = schema.new({
         id = id.from(_N, "CreateVoiceTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VoiceTemplateRequest = schema.new({
         id = id.from(_N, "CreateVoiceTemplateInput", "VoiceTemplateRequest"),
         type = "structure",
         name = "VoiceTemplateRequest",
         target_id = id.from(_N, "VoiceTemplateRequest"),
         target = M.VoiceTemplateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.CreateVoiceTemplateOutput = schema.new({
   id = id.from(_N, "CreateVoiceTemplateResponse"),
   type = "structure",
   members = {
      CreateTemplateMessageBody = schema.new({
         id = id.from(_N, "CreateVoiceTemplateOutput", "CreateTemplateMessageBody"),
         type = "structure",
         name = "CreateTemplateMessageBody",
         target_id = id.from(_N, "CreateTemplateMessageBody"),
         target = M.CreateTemplateMessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DefaultMessage = schema.new({
   id = id.from(_N, "DefaultMessage"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "DefaultMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      Substitutions = schema.new({
         id = id.from(_N, "DefaultMessage", "Substitutions"),
         type = "map",
         name = "Substitutions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
   },
})

M.DefaultPushNotificationMessage = schema.new({
   id = id.from(_N, "DefaultPushNotificationMessage"),
   type = "structure",
   members = {
      Action = schema.new({
         id = id.from(_N, "DefaultPushNotificationMessage", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      Body = schema.new({
         id = id.from(_N, "DefaultPushNotificationMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      Data = schema.new({
         id = id.from(_N, "DefaultPushNotificationMessage", "Data"),
         type = "map",
         name = "Data",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      SilentPush = schema.new({
         id = id.from(_N, "DefaultPushNotificationMessage", "SilentPush"),
         type = "boolean",
         name = "SilentPush",
         target_id = prelude.Boolean.id,
      }),
      Substitutions = schema.new({
         id = id.from(_N, "DefaultPushNotificationMessage", "Substitutions"),
         type = "map",
         name = "Substitutions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      Title = schema.new({
         id = id.from(_N, "DefaultPushNotificationMessage", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Url = schema.new({
         id = id.from(_N, "DefaultPushNotificationMessage", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteAdmChannelInput = schema.new({
   id = id.from(_N, "DeleteAdmChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteAdmChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteAdmChannelOutput = schema.new({
   id = id.from(_N, "DeleteAdmChannelResponse"),
   type = "structure",
   members = {
      ADMChannelResponse = schema.new({
         id = id.from(_N, "DeleteAdmChannelOutput", "ADMChannelResponse"),
         type = "structure",
         name = "ADMChannelResponse",
         target_id = id.from(_N, "ADMChannelResponse"),
         target = M.ADMChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteApnsChannelInput = schema.new({
   id = id.from(_N, "DeleteApnsChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteApnsChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteApnsChannelOutput = schema.new({
   id = id.from(_N, "DeleteApnsChannelResponse"),
   type = "structure",
   members = {
      APNSChannelResponse = schema.new({
         id = id.from(_N, "DeleteApnsChannelOutput", "APNSChannelResponse"),
         type = "structure",
         name = "APNSChannelResponse",
         target_id = id.from(_N, "APNSChannelResponse"),
         target = M.APNSChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteApnsSandboxChannelInput = schema.new({
   id = id.from(_N, "DeleteApnsSandboxChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteApnsSandboxChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteApnsSandboxChannelOutput = schema.new({
   id = id.from(_N, "DeleteApnsSandboxChannelResponse"),
   type = "structure",
   members = {
      APNSSandboxChannelResponse = schema.new({
         id = id.from(_N, "DeleteApnsSandboxChannelOutput", "APNSSandboxChannelResponse"),
         type = "structure",
         name = "APNSSandboxChannelResponse",
         target_id = id.from(_N, "APNSSandboxChannelResponse"),
         target = M.APNSSandboxChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteApnsVoipChannelInput = schema.new({
   id = id.from(_N, "DeleteApnsVoipChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteApnsVoipChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteApnsVoipChannelOutput = schema.new({
   id = id.from(_N, "DeleteApnsVoipChannelResponse"),
   type = "structure",
   members = {
      APNSVoipChannelResponse = schema.new({
         id = id.from(_N, "DeleteApnsVoipChannelOutput", "APNSVoipChannelResponse"),
         type = "structure",
         name = "APNSVoipChannelResponse",
         target_id = id.from(_N, "APNSVoipChannelResponse"),
         target = M.APNSVoipChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteApnsVoipSandboxChannelInput = schema.new({
   id = id.from(_N, "DeleteApnsVoipSandboxChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteApnsVoipSandboxChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteApnsVoipSandboxChannelOutput = schema.new({
   id = id.from(_N, "DeleteApnsVoipSandboxChannelResponse"),
   type = "structure",
   members = {
      APNSVoipSandboxChannelResponse = schema.new({
         id = id.from(_N, "DeleteApnsVoipSandboxChannelOutput", "APNSVoipSandboxChannelResponse"),
         type = "structure",
         name = "APNSVoipSandboxChannelResponse",
         target_id = id.from(_N, "APNSVoipSandboxChannelResponse"),
         target = M.APNSVoipSandboxChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteAppInput = schema.new({
   id = id.from(_N, "DeleteAppRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteAppInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteAppOutput = schema.new({
   id = id.from(_N, "DeleteAppResponse"),
   type = "structure",
   members = {
      ApplicationResponse = schema.new({
         id = id.from(_N, "DeleteAppOutput", "ApplicationResponse"),
         type = "structure",
         name = "ApplicationResponse",
         target_id = id.from(_N, "ApplicationResponse"),
         target = M.ApplicationResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteBaiduChannelInput = schema.new({
   id = id.from(_N, "DeleteBaiduChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteBaiduChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteBaiduChannelOutput = schema.new({
   id = id.from(_N, "DeleteBaiduChannelResponse"),
   type = "structure",
   members = {
      BaiduChannelResponse = schema.new({
         id = id.from(_N, "DeleteBaiduChannelOutput", "BaiduChannelResponse"),
         type = "structure",
         name = "BaiduChannelResponse",
         target_id = id.from(_N, "BaiduChannelResponse"),
         target = M.BaiduChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteCampaignInput = schema.new({
   id = id.from(_N, "DeleteCampaignRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteCampaignInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CampaignId = schema.new({
         id = id.from(_N, "DeleteCampaignInput", "CampaignId"),
         type = "string",
         name = "CampaignId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteCampaignOutput = schema.new({
   id = id.from(_N, "DeleteCampaignResponse"),
   type = "structure",
   members = {
      CampaignResponse = schema.new({
         id = id.from(_N, "DeleteCampaignOutput", "CampaignResponse"),
         type = "structure",
         name = "CampaignResponse",
         target_id = id.from(_N, "CampaignResponse"),
         target = M.CampaignResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteEmailChannelInput = schema.new({
   id = id.from(_N, "DeleteEmailChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteEmailChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.EmailChannelResponse = schema.new({
   id = id.from(_N, "EmailChannelResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "EmailChannelResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      ConfigurationSet = schema.new({
         id = id.from(_N, "EmailChannelResponse", "ConfigurationSet"),
         type = "string",
         name = "ConfigurationSet",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "EmailChannelResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "EmailChannelResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      FromAddress = schema.new({
         id = id.from(_N, "EmailChannelResponse", "FromAddress"),
         type = "string",
         name = "FromAddress",
         target_id = prelude.String.id,
      }),
      HasCredential = schema.new({
         id = id.from(_N, "EmailChannelResponse", "HasCredential"),
         type = "boolean",
         name = "HasCredential",
         target_id = prelude.Boolean.id,
      }),
      Id = schema.new({
         id = id.from(_N, "EmailChannelResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Identity = schema.new({
         id = id.from(_N, "EmailChannelResponse", "Identity"),
         type = "string",
         name = "Identity",
         target_id = prelude.String.id,
      }),
      IsArchived = schema.new({
         id = id.from(_N, "EmailChannelResponse", "IsArchived"),
         type = "boolean",
         name = "IsArchived",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedBy = schema.new({
         id = id.from(_N, "EmailChannelResponse", "LastModifiedBy"),
         type = "string",
         name = "LastModifiedBy",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "EmailChannelResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      MessagesPerSecond = schema.new({
         id = id.from(_N, "EmailChannelResponse", "MessagesPerSecond"),
         type = "integer",
         name = "MessagesPerSecond",
         target_id = prelude.Integer.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "EmailChannelResponse", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "EmailChannelResponse", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      OrchestrationSendingRoleArn = schema.new({
         id = id.from(_N, "EmailChannelResponse", "OrchestrationSendingRoleArn"),
         type = "string",
         name = "OrchestrationSendingRoleArn",
         target_id = prelude.String.id,
      }),
      Version = schema.new({
         id = id.from(_N, "EmailChannelResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DeleteEmailChannelOutput = schema.new({
   id = id.from(_N, "DeleteEmailChannelResponse"),
   type = "structure",
   members = {
      EmailChannelResponse = schema.new({
         id = id.from(_N, "DeleteEmailChannelOutput", "EmailChannelResponse"),
         type = "structure",
         name = "EmailChannelResponse",
         target_id = id.from(_N, "EmailChannelResponse"),
         target = M.EmailChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteEmailTemplateInput = schema.new({
   id = id.from(_N, "DeleteEmailTemplateRequest"),
   type = "structure",
   members = {
      TemplateName = schema.new({
         id = id.from(_N, "DeleteEmailTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "DeleteEmailTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.MessageBody = schema.new({
   id = id.from(_N, "MessageBody"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "MessageBody", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      RequestID = schema.new({
         id = id.from(_N, "MessageBody", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteEmailTemplateOutput = schema.new({
   id = id.from(_N, "DeleteEmailTemplateResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "DeleteEmailTemplateOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteEndpointInput = schema.new({
   id = id.from(_N, "DeleteEndpointRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteEndpointInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EndpointId = schema.new({
         id = id.from(_N, "DeleteEndpointInput", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.EndpointDemographic = schema.new({
   id = id.from(_N, "EndpointDemographic"),
   type = "structure",
   members = {
      AppVersion = schema.new({
         id = id.from(_N, "EndpointDemographic", "AppVersion"),
         type = "string",
         name = "AppVersion",
         target_id = prelude.String.id,
      }),
      Locale = schema.new({
         id = id.from(_N, "EndpointDemographic", "Locale"),
         type = "string",
         name = "Locale",
         target_id = prelude.String.id,
      }),
      Make = schema.new({
         id = id.from(_N, "EndpointDemographic", "Make"),
         type = "string",
         name = "Make",
         target_id = prelude.String.id,
      }),
      Model = schema.new({
         id = id.from(_N, "EndpointDemographic", "Model"),
         type = "string",
         name = "Model",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "EndpointDemographic", "ModelVersion"),
         type = "string",
         name = "ModelVersion",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "EndpointDemographic", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
      }),
      PlatformVersion = schema.new({
         id = id.from(_N, "EndpointDemographic", "PlatformVersion"),
         type = "string",
         name = "PlatformVersion",
         target_id = prelude.String.id,
      }),
      Timezone = schema.new({
         id = id.from(_N, "EndpointDemographic", "Timezone"),
         type = "string",
         name = "Timezone",
         target_id = prelude.String.id,
      }),
   },
})

M.EndpointLocation = schema.new({
   id = id.from(_N, "EndpointLocation"),
   type = "structure",
   members = {
      City = schema.new({
         id = id.from(_N, "EndpointLocation", "City"),
         type = "string",
         name = "City",
         target_id = prelude.String.id,
      }),
      Country = schema.new({
         id = id.from(_N, "EndpointLocation", "Country"),
         type = "string",
         name = "Country",
         target_id = prelude.String.id,
      }),
      Latitude = schema.new({
         id = id.from(_N, "EndpointLocation", "Latitude"),
         type = "double",
         name = "Latitude",
         target_id = prelude.Double.id,
      }),
      Longitude = schema.new({
         id = id.from(_N, "EndpointLocation", "Longitude"),
         type = "double",
         name = "Longitude",
         target_id = prelude.Double.id,
      }),
      PostalCode = schema.new({
         id = id.from(_N, "EndpointLocation", "PostalCode"),
         type = "string",
         name = "PostalCode",
         target_id = prelude.String.id,
      }),
      Region = schema.new({
         id = id.from(_N, "EndpointLocation", "Region"),
         type = "string",
         name = "Region",
         target_id = prelude.String.id,
      }),
   },
})

M.EndpointUser = schema.new({
   id = id.from(_N, "EndpointUser"),
   type = "structure",
   members = {
      UserAttributes = schema.new({
         id = id.from(_N, "EndpointUser", "UserAttributes"),
         type = "map",
         name = "UserAttributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      UserId = schema.new({
         id = id.from(_N, "EndpointUser", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
      }),
   },
})

M.EndpointResponse = schema.new({
   id = id.from(_N, "EndpointResponse"),
   type = "structure",
   members = {
      Address = schema.new({
         id = id.from(_N, "EndpointResponse", "Address"),
         type = "string",
         name = "Address",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "EndpointResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "EndpointResponse", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      ChannelType = schema.new({
         id = id.from(_N, "EndpointResponse", "ChannelType"),
         type = "string",
         name = "ChannelType",
         target_id = prelude.String.id,
      }),
      CohortId = schema.new({
         id = id.from(_N, "EndpointResponse", "CohortId"),
         type = "string",
         name = "CohortId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "EndpointResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Demographic = schema.new({
         id = id.from(_N, "EndpointResponse", "Demographic"),
         type = "structure",
         name = "Demographic",
         target_id = id.from(_N, "EndpointDemographic"),
         target = M.EndpointDemographic,
      }),
      EffectiveDate = schema.new({
         id = id.from(_N, "EndpointResponse", "EffectiveDate"),
         type = "string",
         name = "EffectiveDate",
         target_id = prelude.String.id,
      }),
      EndpointStatus = schema.new({
         id = id.from(_N, "EndpointResponse", "EndpointStatus"),
         type = "string",
         name = "EndpointStatus",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "EndpointResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Location = schema.new({
         id = id.from(_N, "EndpointResponse", "Location"),
         type = "structure",
         name = "Location",
         target_id = id.from(_N, "EndpointLocation"),
         target = M.EndpointLocation,
      }),
      Metrics = schema.new({
         id = id.from(_N, "EndpointResponse", "Metrics"),
         type = "map",
         name = "Metrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Double,
      }),
      OptOut = schema.new({
         id = id.from(_N, "EndpointResponse", "OptOut"),
         type = "string",
         name = "OptOut",
         target_id = prelude.String.id,
      }),
      RequestId = schema.new({
         id = id.from(_N, "EndpointResponse", "RequestId"),
         type = "string",
         name = "RequestId",
         target_id = prelude.String.id,
      }),
      User = schema.new({
         id = id.from(_N, "EndpointResponse", "User"),
         type = "structure",
         name = "User",
         target_id = id.from(_N, "EndpointUser"),
         target = M.EndpointUser,
      }),
   },
})

M.DeleteEndpointOutput = schema.new({
   id = id.from(_N, "DeleteEndpointResponse"),
   type = "structure",
   members = {
      EndpointResponse = schema.new({
         id = id.from(_N, "DeleteEndpointOutput", "EndpointResponse"),
         type = "structure",
         name = "EndpointResponse",
         target_id = id.from(_N, "EndpointResponse"),
         target = M.EndpointResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteEventStreamInput = schema.new({
   id = id.from(_N, "DeleteEventStreamRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteEventStreamInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.EventStream = schema.new({
   id = id.from(_N, "EventStream"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "EventStream", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationStreamArn = schema.new({
         id = id.from(_N, "EventStream", "DestinationStreamArn"),
         type = "string",
         name = "DestinationStreamArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExternalId = schema.new({
         id = id.from(_N, "EventStream", "ExternalId"),
         type = "string",
         name = "ExternalId",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "EventStream", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      LastUpdatedBy = schema.new({
         id = id.from(_N, "EventStream", "LastUpdatedBy"),
         type = "string",
         name = "LastUpdatedBy",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "EventStream", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteEventStreamOutput = schema.new({
   id = id.from(_N, "DeleteEventStreamResponse"),
   type = "structure",
   members = {
      EventStream = schema.new({
         id = id.from(_N, "DeleteEventStreamOutput", "EventStream"),
         type = "structure",
         name = "EventStream",
         target_id = id.from(_N, "EventStream"),
         target = M.EventStream,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteGcmChannelInput = schema.new({
   id = id.from(_N, "DeleteGcmChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteGcmChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GCMChannelResponse = schema.new({
   id = id.from(_N, "GCMChannelResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GCMChannelResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "GCMChannelResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Credential = schema.new({
         id = id.from(_N, "GCMChannelResponse", "Credential"),
         type = "string",
         name = "Credential",
         target_id = prelude.String.id,
      }),
      DefaultAuthenticationMethod = schema.new({
         id = id.from(_N, "GCMChannelResponse", "DefaultAuthenticationMethod"),
         type = "string",
         name = "DefaultAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "GCMChannelResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      HasCredential = schema.new({
         id = id.from(_N, "GCMChannelResponse", "HasCredential"),
         type = "boolean",
         name = "HasCredential",
         target_id = prelude.Boolean.id,
      }),
      HasFcmServiceCredentials = schema.new({
         id = id.from(_N, "GCMChannelResponse", "HasFcmServiceCredentials"),
         type = "boolean",
         name = "HasFcmServiceCredentials",
         target_id = prelude.Boolean.id,
      }),
      Id = schema.new({
         id = id.from(_N, "GCMChannelResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      IsArchived = schema.new({
         id = id.from(_N, "GCMChannelResponse", "IsArchived"),
         type = "boolean",
         name = "IsArchived",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedBy = schema.new({
         id = id.from(_N, "GCMChannelResponse", "LastModifiedBy"),
         type = "string",
         name = "LastModifiedBy",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "GCMChannelResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "GCMChannelResponse", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "GCMChannelResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DeleteGcmChannelOutput = schema.new({
   id = id.from(_N, "DeleteGcmChannelResponse"),
   type = "structure",
   members = {
      GCMChannelResponse = schema.new({
         id = id.from(_N, "DeleteGcmChannelOutput", "GCMChannelResponse"),
         type = "structure",
         name = "GCMChannelResponse",
         target_id = id.from(_N, "GCMChannelResponse"),
         target = M.GCMChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteInAppTemplateInput = schema.new({
   id = id.from(_N, "DeleteInAppTemplateRequest"),
   type = "structure",
   members = {
      TemplateName = schema.new({
         id = id.from(_N, "DeleteInAppTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "DeleteInAppTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.DeleteInAppTemplateOutput = schema.new({
   id = id.from(_N, "DeleteInAppTemplateResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "DeleteInAppTemplateOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteJourneyInput = schema.new({
   id = id.from(_N, "DeleteJourneyRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteJourneyInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "DeleteJourneyInput", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteJourneyOutput = schema.new({
   id = id.from(_N, "DeleteJourneyResponse"),
   type = "structure",
   members = {
      JourneyResponse = schema.new({
         id = id.from(_N, "DeleteJourneyOutput", "JourneyResponse"),
         type = "structure",
         name = "JourneyResponse",
         target_id = id.from(_N, "JourneyResponse"),
         target = M.JourneyResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeletePushTemplateInput = schema.new({
   id = id.from(_N, "DeletePushTemplateRequest"),
   type = "structure",
   members = {
      TemplateName = schema.new({
         id = id.from(_N, "DeletePushTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "DeletePushTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.DeletePushTemplateOutput = schema.new({
   id = id.from(_N, "DeletePushTemplateResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "DeletePushTemplateOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteRecommenderConfigurationInput = schema.new({
   id = id.from(_N, "DeleteRecommenderConfigurationRequest"),
   type = "structure",
   members = {
      RecommenderId = schema.new({
         id = id.from(_N, "DeleteRecommenderConfigurationInput", "RecommenderId"),
         type = "string",
         name = "RecommenderId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteRecommenderConfigurationOutput = schema.new({
   id = id.from(_N, "DeleteRecommenderConfigurationResponse"),
   type = "structure",
   members = {
      RecommenderConfigurationResponse = schema.new({
         id = id.from(_N, "DeleteRecommenderConfigurationOutput", "RecommenderConfigurationResponse"),
         type = "structure",
         name = "RecommenderConfigurationResponse",
         target_id = id.from(_N, "RecommenderConfigurationResponse"),
         target = M.RecommenderConfigurationResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteSegmentInput = schema.new({
   id = id.from(_N, "DeleteSegmentRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteSegmentInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SegmentId = schema.new({
         id = id.from(_N, "DeleteSegmentInput", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteSegmentOutput = schema.new({
   id = id.from(_N, "DeleteSegmentResponse"),
   type = "structure",
   members = {
      SegmentResponse = schema.new({
         id = id.from(_N, "DeleteSegmentOutput", "SegmentResponse"),
         type = "structure",
         name = "SegmentResponse",
         target_id = id.from(_N, "SegmentResponse"),
         target = M.SegmentResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteSmsChannelInput = schema.new({
   id = id.from(_N, "DeleteSmsChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteSmsChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.SMSChannelResponse = schema.new({
   id = id.from(_N, "SMSChannelResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "SMSChannelResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "SMSChannelResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "SMSChannelResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      HasCredential = schema.new({
         id = id.from(_N, "SMSChannelResponse", "HasCredential"),
         type = "boolean",
         name = "HasCredential",
         target_id = prelude.Boolean.id,
      }),
      Id = schema.new({
         id = id.from(_N, "SMSChannelResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      IsArchived = schema.new({
         id = id.from(_N, "SMSChannelResponse", "IsArchived"),
         type = "boolean",
         name = "IsArchived",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedBy = schema.new({
         id = id.from(_N, "SMSChannelResponse", "LastModifiedBy"),
         type = "string",
         name = "LastModifiedBy",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "SMSChannelResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "SMSChannelResponse", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PromotionalMessagesPerSecond = schema.new({
         id = id.from(_N, "SMSChannelResponse", "PromotionalMessagesPerSecond"),
         type = "integer",
         name = "PromotionalMessagesPerSecond",
         target_id = prelude.Integer.id,
      }),
      SenderId = schema.new({
         id = id.from(_N, "SMSChannelResponse", "SenderId"),
         type = "string",
         name = "SenderId",
         target_id = prelude.String.id,
      }),
      ShortCode = schema.new({
         id = id.from(_N, "SMSChannelResponse", "ShortCode"),
         type = "string",
         name = "ShortCode",
         target_id = prelude.String.id,
      }),
      TransactionalMessagesPerSecond = schema.new({
         id = id.from(_N, "SMSChannelResponse", "TransactionalMessagesPerSecond"),
         type = "integer",
         name = "TransactionalMessagesPerSecond",
         target_id = prelude.Integer.id,
      }),
      Version = schema.new({
         id = id.from(_N, "SMSChannelResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DeleteSmsChannelOutput = schema.new({
   id = id.from(_N, "DeleteSmsChannelResponse"),
   type = "structure",
   members = {
      SMSChannelResponse = schema.new({
         id = id.from(_N, "DeleteSmsChannelOutput", "SMSChannelResponse"),
         type = "structure",
         name = "SMSChannelResponse",
         target_id = id.from(_N, "SMSChannelResponse"),
         target = M.SMSChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteSmsTemplateInput = schema.new({
   id = id.from(_N, "DeleteSmsTemplateRequest"),
   type = "structure",
   members = {
      TemplateName = schema.new({
         id = id.from(_N, "DeleteSmsTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "DeleteSmsTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.DeleteSmsTemplateOutput = schema.new({
   id = id.from(_N, "DeleteSmsTemplateResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "DeleteSmsTemplateOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteUserEndpointsInput = schema.new({
   id = id.from(_N, "DeleteUserEndpointsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteUserEndpointsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      UserId = schema.new({
         id = id.from(_N, "DeleteUserEndpointsInput", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.EndpointsResponse = schema.new({
   id = id.from(_N, "EndpointsResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "EndpointsResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.EndpointResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteUserEndpointsOutput = schema.new({
   id = id.from(_N, "DeleteUserEndpointsResponse"),
   type = "structure",
   members = {
      EndpointsResponse = schema.new({
         id = id.from(_N, "DeleteUserEndpointsOutput", "EndpointsResponse"),
         type = "structure",
         name = "EndpointsResponse",
         target_id = id.from(_N, "EndpointsResponse"),
         target = M.EndpointsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteVoiceChannelInput = schema.new({
   id = id.from(_N, "DeleteVoiceChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteVoiceChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.VoiceChannelResponse = schema.new({
   id = id.from(_N, "VoiceChannelResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "VoiceChannelResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "VoiceChannelResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "VoiceChannelResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      HasCredential = schema.new({
         id = id.from(_N, "VoiceChannelResponse", "HasCredential"),
         type = "boolean",
         name = "HasCredential",
         target_id = prelude.Boolean.id,
      }),
      Id = schema.new({
         id = id.from(_N, "VoiceChannelResponse", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      IsArchived = schema.new({
         id = id.from(_N, "VoiceChannelResponse", "IsArchived"),
         type = "boolean",
         name = "IsArchived",
         target_id = prelude.Boolean.id,
      }),
      LastModifiedBy = schema.new({
         id = id.from(_N, "VoiceChannelResponse", "LastModifiedBy"),
         type = "string",
         name = "LastModifiedBy",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "VoiceChannelResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "VoiceChannelResponse", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "VoiceChannelResponse", "Version"),
         type = "integer",
         name = "Version",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DeleteVoiceChannelOutput = schema.new({
   id = id.from(_N, "DeleteVoiceChannelResponse"),
   type = "structure",
   members = {
      VoiceChannelResponse = schema.new({
         id = id.from(_N, "DeleteVoiceChannelOutput", "VoiceChannelResponse"),
         type = "structure",
         name = "VoiceChannelResponse",
         target_id = id.from(_N, "VoiceChannelResponse"),
         target = M.VoiceChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.DeleteVoiceTemplateInput = schema.new({
   id = id.from(_N, "DeleteVoiceTemplateRequest"),
   type = "structure",
   members = {
      TemplateName = schema.new({
         id = id.from(_N, "DeleteVoiceTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "DeleteVoiceTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.DeleteVoiceTemplateOutput = schema.new({
   id = id.from(_N, "DeleteVoiceTemplateResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "DeleteVoiceTemplateOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.RawEmail = schema.new({
   id = id.from(_N, "RawEmail"),
   type = "structure",
   members = {
      Data = schema.new({
         id = id.from(_N, "RawEmail", "Data"),
         type = "blob",
         name = "Data",
         target_id = prelude.Blob.id,
      }),
   },
})

M.SimpleEmailPart = schema.new({
   id = id.from(_N, "SimpleEmailPart"),
   type = "structure",
   members = {
      Charset = schema.new({
         id = id.from(_N, "SimpleEmailPart", "Charset"),
         type = "string",
         name = "Charset",
         target_id = prelude.String.id,
      }),
      Data = schema.new({
         id = id.from(_N, "SimpleEmailPart", "Data"),
         type = "string",
         name = "Data",
         target_id = prelude.String.id,
      }),
   },
})

M.SimpleEmail = schema.new({
   id = id.from(_N, "SimpleEmail"),
   type = "structure",
   members = {
      HtmlPart = schema.new({
         id = id.from(_N, "SimpleEmail", "HtmlPart"),
         type = "structure",
         name = "HtmlPart",
         target_id = id.from(_N, "SimpleEmailPart"),
         target = M.SimpleEmailPart,
      }),
      Subject = schema.new({
         id = id.from(_N, "SimpleEmail", "Subject"),
         type = "structure",
         name = "Subject",
         target_id = id.from(_N, "SimpleEmailPart"),
         target = M.SimpleEmailPart,
      }),
      TextPart = schema.new({
         id = id.from(_N, "SimpleEmail", "TextPart"),
         type = "structure",
         name = "TextPart",
         target_id = id.from(_N, "SimpleEmailPart"),
         target = M.SimpleEmailPart,
      }),
      Headers = schema.new({
         id = id.from(_N, "SimpleEmail", "Headers"),
         type = "list",
         name = "Headers",
         target_id = prelude.Document.id,
         list_member = M.MessageHeader,
      }),
   },
})

M.EmailMessage = schema.new({
   id = id.from(_N, "EmailMessage"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "EmailMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      FeedbackForwardingAddress = schema.new({
         id = id.from(_N, "EmailMessage", "FeedbackForwardingAddress"),
         type = "string",
         name = "FeedbackForwardingAddress",
         target_id = prelude.String.id,
      }),
      FromAddress = schema.new({
         id = id.from(_N, "EmailMessage", "FromAddress"),
         type = "string",
         name = "FromAddress",
         target_id = prelude.String.id,
      }),
      RawEmail = schema.new({
         id = id.from(_N, "EmailMessage", "RawEmail"),
         type = "structure",
         name = "RawEmail",
         target_id = id.from(_N, "RawEmail"),
         target = M.RawEmail,
      }),
      ReplyToAddresses = schema.new({
         id = id.from(_N, "EmailMessage", "ReplyToAddresses"),
         type = "list",
         name = "ReplyToAddresses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SimpleEmail = schema.new({
         id = id.from(_N, "EmailMessage", "SimpleEmail"),
         type = "structure",
         name = "SimpleEmail",
         target_id = id.from(_N, "SimpleEmail"),
         target = M.SimpleEmail,
      }),
      Substitutions = schema.new({
         id = id.from(_N, "EmailMessage", "Substitutions"),
         type = "map",
         name = "Substitutions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
   },
})

M.GCMMessage = schema.new({
   id = id.from(_N, "GCMMessage"),
   type = "structure",
   members = {
      Action = schema.new({
         id = id.from(_N, "GCMMessage", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      Body = schema.new({
         id = id.from(_N, "GCMMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      CollapseKey = schema.new({
         id = id.from(_N, "GCMMessage", "CollapseKey"),
         type = "string",
         name = "CollapseKey",
         target_id = prelude.String.id,
      }),
      Data = schema.new({
         id = id.from(_N, "GCMMessage", "Data"),
         type = "map",
         name = "Data",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      IconReference = schema.new({
         id = id.from(_N, "GCMMessage", "IconReference"),
         type = "string",
         name = "IconReference",
         target_id = prelude.String.id,
      }),
      ImageIconUrl = schema.new({
         id = id.from(_N, "GCMMessage", "ImageIconUrl"),
         type = "string",
         name = "ImageIconUrl",
         target_id = prelude.String.id,
      }),
      ImageUrl = schema.new({
         id = id.from(_N, "GCMMessage", "ImageUrl"),
         type = "string",
         name = "ImageUrl",
         target_id = prelude.String.id,
      }),
      PreferredAuthenticationMethod = schema.new({
         id = id.from(_N, "GCMMessage", "PreferredAuthenticationMethod"),
         type = "string",
         name = "PreferredAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Priority = schema.new({
         id = id.from(_N, "GCMMessage", "Priority"),
         type = "string",
         name = "Priority",
         target_id = prelude.String.id,
      }),
      RawContent = schema.new({
         id = id.from(_N, "GCMMessage", "RawContent"),
         type = "string",
         name = "RawContent",
         target_id = prelude.String.id,
      }),
      RestrictedPackageName = schema.new({
         id = id.from(_N, "GCMMessage", "RestrictedPackageName"),
         type = "string",
         name = "RestrictedPackageName",
         target_id = prelude.String.id,
      }),
      SilentPush = schema.new({
         id = id.from(_N, "GCMMessage", "SilentPush"),
         type = "boolean",
         name = "SilentPush",
         target_id = prelude.Boolean.id,
      }),
      SmallImageIconUrl = schema.new({
         id = id.from(_N, "GCMMessage", "SmallImageIconUrl"),
         type = "string",
         name = "SmallImageIconUrl",
         target_id = prelude.String.id,
      }),
      Sound = schema.new({
         id = id.from(_N, "GCMMessage", "Sound"),
         type = "string",
         name = "Sound",
         target_id = prelude.String.id,
      }),
      Substitutions = schema.new({
         id = id.from(_N, "GCMMessage", "Substitutions"),
         type = "map",
         name = "Substitutions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      TimeToLive = schema.new({
         id = id.from(_N, "GCMMessage", "TimeToLive"),
         type = "integer",
         name = "TimeToLive",
         target_id = prelude.Integer.id,
      }),
      Title = schema.new({
         id = id.from(_N, "GCMMessage", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Url = schema.new({
         id = id.from(_N, "GCMMessage", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
   },
})

M.SMSMessage = schema.new({
   id = id.from(_N, "SMSMessage"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "SMSMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      Keyword = schema.new({
         id = id.from(_N, "SMSMessage", "Keyword"),
         type = "string",
         name = "Keyword",
         target_id = prelude.String.id,
      }),
      MediaUrl = schema.new({
         id = id.from(_N, "SMSMessage", "MediaUrl"),
         type = "string",
         name = "MediaUrl",
         target_id = prelude.String.id,
      }),
      MessageType = schema.new({
         id = id.from(_N, "SMSMessage", "MessageType"),
         type = "string",
         name = "MessageType",
         target_id = prelude.String.id,
      }),
      OriginationNumber = schema.new({
         id = id.from(_N, "SMSMessage", "OriginationNumber"),
         type = "string",
         name = "OriginationNumber",
         target_id = prelude.String.id,
      }),
      SenderId = schema.new({
         id = id.from(_N, "SMSMessage", "SenderId"),
         type = "string",
         name = "SenderId",
         target_id = prelude.String.id,
      }),
      Substitutions = schema.new({
         id = id.from(_N, "SMSMessage", "Substitutions"),
         type = "map",
         name = "Substitutions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      EntityId = schema.new({
         id = id.from(_N, "SMSMessage", "EntityId"),
         type = "string",
         name = "EntityId",
         target_id = prelude.String.id,
      }),
      TemplateId = schema.new({
         id = id.from(_N, "SMSMessage", "TemplateId"),
         type = "string",
         name = "TemplateId",
         target_id = prelude.String.id,
      }),
   },
})

M.VoiceMessage = schema.new({
   id = id.from(_N, "VoiceMessage"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "VoiceMessage", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      LanguageCode = schema.new({
         id = id.from(_N, "VoiceMessage", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
      }),
      OriginationNumber = schema.new({
         id = id.from(_N, "VoiceMessage", "OriginationNumber"),
         type = "string",
         name = "OriginationNumber",
         target_id = prelude.String.id,
      }),
      Substitutions = schema.new({
         id = id.from(_N, "VoiceMessage", "Substitutions"),
         type = "map",
         name = "Substitutions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      VoiceId = schema.new({
         id = id.from(_N, "VoiceMessage", "VoiceId"),
         type = "string",
         name = "VoiceId",
         target_id = prelude.String.id,
      }),
   },
})

M.DirectMessageConfiguration = schema.new({
   id = id.from(_N, "DirectMessageConfiguration"),
   type = "structure",
   members = {
      ADMMessage = schema.new({
         id = id.from(_N, "DirectMessageConfiguration", "ADMMessage"),
         type = "structure",
         name = "ADMMessage",
         target_id = id.from(_N, "ADMMessage"),
         target = M.ADMMessage,
      }),
      APNSMessage = schema.new({
         id = id.from(_N, "DirectMessageConfiguration", "APNSMessage"),
         type = "structure",
         name = "APNSMessage",
         target_id = id.from(_N, "APNSMessage"),
         target = M.APNSMessage,
      }),
      BaiduMessage = schema.new({
         id = id.from(_N, "DirectMessageConfiguration", "BaiduMessage"),
         type = "structure",
         name = "BaiduMessage",
         target_id = id.from(_N, "BaiduMessage"),
         target = M.BaiduMessage,
      }),
      DefaultMessage = schema.new({
         id = id.from(_N, "DirectMessageConfiguration", "DefaultMessage"),
         type = "structure",
         name = "DefaultMessage",
         target_id = id.from(_N, "DefaultMessage"),
         target = M.DefaultMessage,
      }),
      DefaultPushNotificationMessage = schema.new({
         id = id.from(_N, "DirectMessageConfiguration", "DefaultPushNotificationMessage"),
         type = "structure",
         name = "DefaultPushNotificationMessage",
         target_id = id.from(_N, "DefaultPushNotificationMessage"),
         target = M.DefaultPushNotificationMessage,
      }),
      EmailMessage = schema.new({
         id = id.from(_N, "DirectMessageConfiguration", "EmailMessage"),
         type = "structure",
         name = "EmailMessage",
         target_id = id.from(_N, "EmailMessage"),
         target = M.EmailMessage,
      }),
      GCMMessage = schema.new({
         id = id.from(_N, "DirectMessageConfiguration", "GCMMessage"),
         type = "structure",
         name = "GCMMessage",
         target_id = id.from(_N, "GCMMessage"),
         target = M.GCMMessage,
      }),
      SMSMessage = schema.new({
         id = id.from(_N, "DirectMessageConfiguration", "SMSMessage"),
         type = "structure",
         name = "SMSMessage",
         target_id = id.from(_N, "SMSMessage"),
         target = M.SMSMessage,
      }),
      VoiceMessage = schema.new({
         id = id.from(_N, "DirectMessageConfiguration", "VoiceMessage"),
         type = "structure",
         name = "VoiceMessage",
         target_id = id.from(_N, "VoiceMessage"),
         target = M.VoiceMessage,
      }),
   },
})

M.EmailChannelRequest = schema.new({
   id = id.from(_N, "EmailChannelRequest"),
   type = "structure",
   members = {
      ConfigurationSet = schema.new({
         id = id.from(_N, "EmailChannelRequest", "ConfigurationSet"),
         type = "string",
         name = "ConfigurationSet",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "EmailChannelRequest", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      FromAddress = schema.new({
         id = id.from(_N, "EmailChannelRequest", "FromAddress"),
         type = "string",
         name = "FromAddress",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identity = schema.new({
         id = id.from(_N, "EmailChannelRequest", "Identity"),
         type = "string",
         name = "Identity",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "EmailChannelRequest", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      OrchestrationSendingRoleArn = schema.new({
         id = id.from(_N, "EmailChannelRequest", "OrchestrationSendingRoleArn"),
         type = "string",
         name = "OrchestrationSendingRoleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.EmailTemplateResponse = schema.new({
   id = id.from(_N, "EmailTemplateResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DefaultSubstitutions = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "DefaultSubstitutions"),
         type = "string",
         name = "DefaultSubstitutions",
         target_id = prelude.String.id,
      }),
      HtmlPart = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "HtmlPart"),
         type = "string",
         name = "HtmlPart",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecommenderId = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "RecommenderId"),
         type = "string",
         name = "RecommenderId",
         target_id = prelude.String.id,
      }),
      Subject = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "Subject"),
         type = "string",
         name = "Subject",
         target_id = prelude.String.id,
      }),
      Headers = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "Headers"),
         type = "list",
         name = "Headers",
         target_id = prelude.Document.id,
         list_member = M.MessageHeader,
      }),
      tags = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
      TemplateName = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateType = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "TemplateType"),
         type = "string",
         name = "TemplateType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TextPart = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "TextPart"),
         type = "string",
         name = "TextPart",
         target_id = prelude.String.id,
      }),
      Version = schema.new({
         id = id.from(_N, "EmailTemplateResponse", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
      }),
   },
})

M.EndpointBatchItem = schema.new({
   id = id.from(_N, "EndpointBatchItem"),
   type = "structure",
   members = {
      Address = schema.new({
         id = id.from(_N, "EndpointBatchItem", "Address"),
         type = "string",
         name = "Address",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "EndpointBatchItem", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      ChannelType = schema.new({
         id = id.from(_N, "EndpointBatchItem", "ChannelType"),
         type = "string",
         name = "ChannelType",
         target_id = prelude.String.id,
      }),
      Demographic = schema.new({
         id = id.from(_N, "EndpointBatchItem", "Demographic"),
         type = "structure",
         name = "Demographic",
         target_id = id.from(_N, "EndpointDemographic"),
         target = M.EndpointDemographic,
      }),
      EffectiveDate = schema.new({
         id = id.from(_N, "EndpointBatchItem", "EffectiveDate"),
         type = "string",
         name = "EffectiveDate",
         target_id = prelude.String.id,
      }),
      EndpointStatus = schema.new({
         id = id.from(_N, "EndpointBatchItem", "EndpointStatus"),
         type = "string",
         name = "EndpointStatus",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "EndpointBatchItem", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Location = schema.new({
         id = id.from(_N, "EndpointBatchItem", "Location"),
         type = "structure",
         name = "Location",
         target_id = id.from(_N, "EndpointLocation"),
         target = M.EndpointLocation,
      }),
      Metrics = schema.new({
         id = id.from(_N, "EndpointBatchItem", "Metrics"),
         type = "map",
         name = "Metrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Double,
      }),
      OptOut = schema.new({
         id = id.from(_N, "EndpointBatchItem", "OptOut"),
         type = "string",
         name = "OptOut",
         target_id = prelude.String.id,
      }),
      RequestId = schema.new({
         id = id.from(_N, "EndpointBatchItem", "RequestId"),
         type = "string",
         name = "RequestId",
         target_id = prelude.String.id,
      }),
      User = schema.new({
         id = id.from(_N, "EndpointBatchItem", "User"),
         type = "structure",
         name = "User",
         target_id = id.from(_N, "EndpointUser"),
         target = M.EndpointUser,
      }),
   },
})

M.EndpointBatchRequest = schema.new({
   id = id.from(_N, "EndpointBatchRequest"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "EndpointBatchRequest", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.EndpointBatchItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EndpointItemResponse = schema.new({
   id = id.from(_N, "EndpointItemResponse"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "EndpointItemResponse", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      StatusCode = schema.new({
         id = id.from(_N, "EndpointItemResponse", "StatusCode"),
         type = "integer",
         name = "StatusCode",
         target_id = prelude.Integer.id,
      }),
   },
})

M.EndpointMessageResult = schema.new({
   id = id.from(_N, "EndpointMessageResult"),
   type = "structure",
   members = {
      Address = schema.new({
         id = id.from(_N, "EndpointMessageResult", "Address"),
         type = "string",
         name = "Address",
         target_id = prelude.String.id,
      }),
      DeliveryStatus = schema.new({
         id = id.from(_N, "EndpointMessageResult", "DeliveryStatus"),
         type = "string",
         name = "DeliveryStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MessageId = schema.new({
         id = id.from(_N, "EndpointMessageResult", "MessageId"),
         type = "string",
         name = "MessageId",
         target_id = prelude.String.id,
      }),
      StatusCode = schema.new({
         id = id.from(_N, "EndpointMessageResult", "StatusCode"),
         type = "integer",
         name = "StatusCode",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "EndpointMessageResult", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      UpdatedToken = schema.new({
         id = id.from(_N, "EndpointMessageResult", "UpdatedToken"),
         type = "string",
         name = "UpdatedToken",
         target_id = prelude.String.id,
      }),
   },
})

M.EndpointRequest = schema.new({
   id = id.from(_N, "EndpointRequest"),
   type = "structure",
   members = {
      Address = schema.new({
         id = id.from(_N, "EndpointRequest", "Address"),
         type = "string",
         name = "Address",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "EndpointRequest", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      ChannelType = schema.new({
         id = id.from(_N, "EndpointRequest", "ChannelType"),
         type = "string",
         name = "ChannelType",
         target_id = prelude.String.id,
      }),
      Demographic = schema.new({
         id = id.from(_N, "EndpointRequest", "Demographic"),
         type = "structure",
         name = "Demographic",
         target_id = id.from(_N, "EndpointDemographic"),
         target = M.EndpointDemographic,
      }),
      EffectiveDate = schema.new({
         id = id.from(_N, "EndpointRequest", "EffectiveDate"),
         type = "string",
         name = "EffectiveDate",
         target_id = prelude.String.id,
      }),
      EndpointStatus = schema.new({
         id = id.from(_N, "EndpointRequest", "EndpointStatus"),
         type = "string",
         name = "EndpointStatus",
         target_id = prelude.String.id,
      }),
      Location = schema.new({
         id = id.from(_N, "EndpointRequest", "Location"),
         type = "structure",
         name = "Location",
         target_id = id.from(_N, "EndpointLocation"),
         target = M.EndpointLocation,
      }),
      Metrics = schema.new({
         id = id.from(_N, "EndpointRequest", "Metrics"),
         type = "map",
         name = "Metrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Double,
      }),
      OptOut = schema.new({
         id = id.from(_N, "EndpointRequest", "OptOut"),
         type = "string",
         name = "OptOut",
         target_id = prelude.String.id,
      }),
      RequestId = schema.new({
         id = id.from(_N, "EndpointRequest", "RequestId"),
         type = "string",
         name = "RequestId",
         target_id = prelude.String.id,
      }),
      User = schema.new({
         id = id.from(_N, "EndpointRequest", "User"),
         type = "structure",
         name = "User",
         target_id = id.from(_N, "EndpointUser"),
         target = M.EndpointUser,
      }),
   },
})

M.EndpointSendConfiguration = schema.new({
   id = id.from(_N, "EndpointSendConfiguration"),
   type = "structure",
   members = {
      BodyOverride = schema.new({
         id = id.from(_N, "EndpointSendConfiguration", "BodyOverride"),
         type = "string",
         name = "BodyOverride",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "EndpointSendConfiguration", "Context"),
         type = "map",
         name = "Context",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      RawContent = schema.new({
         id = id.from(_N, "EndpointSendConfiguration", "RawContent"),
         type = "string",
         name = "RawContent",
         target_id = prelude.String.id,
      }),
      Substitutions = schema.new({
         id = id.from(_N, "EndpointSendConfiguration", "Substitutions"),
         type = "map",
         name = "Substitutions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      TitleOverride = schema.new({
         id = id.from(_N, "EndpointSendConfiguration", "TitleOverride"),
         type = "string",
         name = "TitleOverride",
         target_id = prelude.String.id,
      }),
   },
})

M.Session = schema.new({
   id = id.from(_N, "Session"),
   type = "structure",
   members = {
      Duration = schema.new({
         id = id.from(_N, "Session", "Duration"),
         type = "integer",
         name = "Duration",
         target_id = prelude.Integer.id,
      }),
      Id = schema.new({
         id = id.from(_N, "Session", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartTimestamp = schema.new({
         id = id.from(_N, "Session", "StartTimestamp"),
         type = "string",
         name = "StartTimestamp",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StopTimestamp = schema.new({
         id = id.from(_N, "Session", "StopTimestamp"),
         type = "string",
         name = "StopTimestamp",
         target_id = prelude.String.id,
      }),
   },
})

M.Event = schema.new({
   id = id.from(_N, "Event"),
   type = "structure",
   members = {
      AppPackageName = schema.new({
         id = id.from(_N, "Event", "AppPackageName"),
         type = "string",
         name = "AppPackageName",
         target_id = prelude.String.id,
      }),
      AppTitle = schema.new({
         id = id.from(_N, "Event", "AppTitle"),
         type = "string",
         name = "AppTitle",
         target_id = prelude.String.id,
      }),
      AppVersionCode = schema.new({
         id = id.from(_N, "Event", "AppVersionCode"),
         type = "string",
         name = "AppVersionCode",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "Event", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ClientSdkVersion = schema.new({
         id = id.from(_N, "Event", "ClientSdkVersion"),
         type = "string",
         name = "ClientSdkVersion",
         target_id = prelude.String.id,
      }),
      EventType = schema.new({
         id = id.from(_N, "Event", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Metrics = schema.new({
         id = id.from(_N, "Event", "Metrics"),
         type = "map",
         name = "Metrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Double,
      }),
      SdkName = schema.new({
         id = id.from(_N, "Event", "SdkName"),
         type = "string",
         name = "SdkName",
         target_id = prelude.String.id,
      }),
      Session = schema.new({
         id = id.from(_N, "Event", "Session"),
         type = "structure",
         name = "Session",
         target_id = id.from(_N, "Session"),
         target = M.Session,
      }),
      Timestamp = schema.new({
         id = id.from(_N, "Event", "Timestamp"),
         type = "string",
         name = "Timestamp",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EventItemResponse = schema.new({
   id = id.from(_N, "EventItemResponse"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "EventItemResponse", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      StatusCode = schema.new({
         id = id.from(_N, "EventItemResponse", "StatusCode"),
         type = "integer",
         name = "StatusCode",
         target_id = prelude.Integer.id,
      }),
   },
})

M.PublicEndpoint = schema.new({
   id = id.from(_N, "PublicEndpoint"),
   type = "structure",
   members = {
      Address = schema.new({
         id = id.from(_N, "PublicEndpoint", "Address"),
         type = "string",
         name = "Address",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "PublicEndpoint", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      ChannelType = schema.new({
         id = id.from(_N, "PublicEndpoint", "ChannelType"),
         type = "string",
         name = "ChannelType",
         target_id = prelude.String.id,
      }),
      Demographic = schema.new({
         id = id.from(_N, "PublicEndpoint", "Demographic"),
         type = "structure",
         name = "Demographic",
         target_id = id.from(_N, "EndpointDemographic"),
         target = M.EndpointDemographic,
      }),
      EffectiveDate = schema.new({
         id = id.from(_N, "PublicEndpoint", "EffectiveDate"),
         type = "string",
         name = "EffectiveDate",
         target_id = prelude.String.id,
      }),
      EndpointStatus = schema.new({
         id = id.from(_N, "PublicEndpoint", "EndpointStatus"),
         type = "string",
         name = "EndpointStatus",
         target_id = prelude.String.id,
      }),
      Location = schema.new({
         id = id.from(_N, "PublicEndpoint", "Location"),
         type = "structure",
         name = "Location",
         target_id = id.from(_N, "EndpointLocation"),
         target = M.EndpointLocation,
      }),
      Metrics = schema.new({
         id = id.from(_N, "PublicEndpoint", "Metrics"),
         type = "map",
         name = "Metrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Double,
      }),
      OptOut = schema.new({
         id = id.from(_N, "PublicEndpoint", "OptOut"),
         type = "string",
         name = "OptOut",
         target_id = prelude.String.id,
      }),
      RequestId = schema.new({
         id = id.from(_N, "PublicEndpoint", "RequestId"),
         type = "string",
         name = "RequestId",
         target_id = prelude.String.id,
      }),
      User = schema.new({
         id = id.from(_N, "PublicEndpoint", "User"),
         type = "structure",
         name = "User",
         target_id = id.from(_N, "EndpointUser"),
         target = M.EndpointUser,
      }),
   },
})

M.EventsBatch = schema.new({
   id = id.from(_N, "EventsBatch"),
   type = "structure",
   members = {
      Endpoint = schema.new({
         id = id.from(_N, "EventsBatch", "Endpoint"),
         type = "structure",
         name = "Endpoint",
         target_id = id.from(_N, "PublicEndpoint"),
         target = M.PublicEndpoint,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Events = schema.new({
         id = id.from(_N, "EventsBatch", "Events"),
         type = "map",
         name = "Events",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.Event,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EventsRequest = schema.new({
   id = id.from(_N, "EventsRequest"),
   type = "structure",
   members = {
      BatchItem = schema.new({
         id = id.from(_N, "EventsRequest", "BatchItem"),
         type = "map",
         name = "BatchItem",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.EventsBatch,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ItemResponse = schema.new({
   id = id.from(_N, "ItemResponse"),
   type = "structure",
   members = {
      EndpointItemResponse = schema.new({
         id = id.from(_N, "ItemResponse", "EndpointItemResponse"),
         type = "structure",
         name = "EndpointItemResponse",
         target_id = id.from(_N, "EndpointItemResponse"),
         target = M.EndpointItemResponse,
      }),
      EventsItemResponse = schema.new({
         id = id.from(_N, "ItemResponse", "EventsItemResponse"),
         type = "map",
         name = "EventsItemResponse",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.EventItemResponse,
      }),
   },
})

M.EventsResponse = schema.new({
   id = id.from(_N, "EventsResponse"),
   type = "structure",
   members = {
      Results = schema.new({
         id = id.from(_N, "EventsResponse", "Results"),
         type = "map",
         name = "Results",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ItemResponse,
      }),
   },
})

M.ExportJobsResponse = schema.new({
   id = id.from(_N, "ExportJobsResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "ExportJobsResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.ExportJobResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ExportJobsResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GCMChannelRequest = schema.new({
   id = id.from(_N, "GCMChannelRequest"),
   type = "structure",
   members = {
      ApiKey = schema.new({
         id = id.from(_N, "GCMChannelRequest", "ApiKey"),
         type = "string",
         name = "ApiKey",
         target_id = prelude.String.id,
      }),
      DefaultAuthenticationMethod = schema.new({
         id = id.from(_N, "GCMChannelRequest", "DefaultAuthenticationMethod"),
         type = "string",
         name = "DefaultAuthenticationMethod",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "GCMChannelRequest", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      ServiceJson = schema.new({
         id = id.from(_N, "GCMChannelRequest", "ServiceJson"),
         type = "string",
         name = "ServiceJson",
         target_id = prelude.String.id,
      }),
   },
})

M.GetAdmChannelInput = schema.new({
   id = id.from(_N, "GetAdmChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetAdmChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetAdmChannelOutput = schema.new({
   id = id.from(_N, "GetAdmChannelResponse"),
   type = "structure",
   members = {
      ADMChannelResponse = schema.new({
         id = id.from(_N, "GetAdmChannelOutput", "ADMChannelResponse"),
         type = "structure",
         name = "ADMChannelResponse",
         target_id = id.from(_N, "ADMChannelResponse"),
         target = M.ADMChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetApnsChannelInput = schema.new({
   id = id.from(_N, "GetApnsChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetApnsChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetApnsChannelOutput = schema.new({
   id = id.from(_N, "GetApnsChannelResponse"),
   type = "structure",
   members = {
      APNSChannelResponse = schema.new({
         id = id.from(_N, "GetApnsChannelOutput", "APNSChannelResponse"),
         type = "structure",
         name = "APNSChannelResponse",
         target_id = id.from(_N, "APNSChannelResponse"),
         target = M.APNSChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetApnsSandboxChannelInput = schema.new({
   id = id.from(_N, "GetApnsSandboxChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetApnsSandboxChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetApnsSandboxChannelOutput = schema.new({
   id = id.from(_N, "GetApnsSandboxChannelResponse"),
   type = "structure",
   members = {
      APNSSandboxChannelResponse = schema.new({
         id = id.from(_N, "GetApnsSandboxChannelOutput", "APNSSandboxChannelResponse"),
         type = "structure",
         name = "APNSSandboxChannelResponse",
         target_id = id.from(_N, "APNSSandboxChannelResponse"),
         target = M.APNSSandboxChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetApnsVoipChannelInput = schema.new({
   id = id.from(_N, "GetApnsVoipChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetApnsVoipChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetApnsVoipChannelOutput = schema.new({
   id = id.from(_N, "GetApnsVoipChannelResponse"),
   type = "structure",
   members = {
      APNSVoipChannelResponse = schema.new({
         id = id.from(_N, "GetApnsVoipChannelOutput", "APNSVoipChannelResponse"),
         type = "structure",
         name = "APNSVoipChannelResponse",
         target_id = id.from(_N, "APNSVoipChannelResponse"),
         target = M.APNSVoipChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetApnsVoipSandboxChannelInput = schema.new({
   id = id.from(_N, "GetApnsVoipSandboxChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetApnsVoipSandboxChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetApnsVoipSandboxChannelOutput = schema.new({
   id = id.from(_N, "GetApnsVoipSandboxChannelResponse"),
   type = "structure",
   members = {
      APNSVoipSandboxChannelResponse = schema.new({
         id = id.from(_N, "GetApnsVoipSandboxChannelOutput", "APNSVoipSandboxChannelResponse"),
         type = "structure",
         name = "APNSVoipSandboxChannelResponse",
         target_id = id.from(_N, "APNSVoipSandboxChannelResponse"),
         target = M.APNSVoipSandboxChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetAppInput = schema.new({
   id = id.from(_N, "GetAppRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetAppInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetAppOutput = schema.new({
   id = id.from(_N, "GetAppResponse"),
   type = "structure",
   members = {
      ApplicationResponse = schema.new({
         id = id.from(_N, "GetAppOutput", "ApplicationResponse"),
         type = "structure",
         name = "ApplicationResponse",
         target_id = id.from(_N, "ApplicationResponse"),
         target = M.ApplicationResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetApplicationDateRangeKpiInput = schema.new({
   id = id.from(_N, "GetApplicationDateRangeKpiRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetApplicationDateRangeKpiInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "GetApplicationDateRangeKpiInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "end-time" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "end-time" },
         },
      }),
      KpiName = schema.new({
         id = id.from(_N, "GetApplicationDateRangeKpiInput", "KpiName"),
         type = "string",
         name = "KpiName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetApplicationDateRangeKpiInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetApplicationDateRangeKpiInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "GetApplicationDateRangeKpiInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "start-time" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "start-time" },
         },
      }),
   },
})

M.GetApplicationDateRangeKpiOutput = schema.new({
   id = id.from(_N, "GetApplicationDateRangeKpiResponse"),
   type = "structure",
   members = {
      ApplicationDateRangeKpiResponse = schema.new({
         id = id.from(_N, "GetApplicationDateRangeKpiOutput", "ApplicationDateRangeKpiResponse"),
         type = "structure",
         name = "ApplicationDateRangeKpiResponse",
         target_id = id.from(_N, "ApplicationDateRangeKpiResponse"),
         target = M.ApplicationDateRangeKpiResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetApplicationSettingsInput = schema.new({
   id = id.from(_N, "GetApplicationSettingsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetApplicationSettingsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetApplicationSettingsOutput = schema.new({
   id = id.from(_N, "GetApplicationSettingsResponse"),
   type = "structure",
   members = {
      ApplicationSettingsResource = schema.new({
         id = id.from(_N, "GetApplicationSettingsOutput", "ApplicationSettingsResource"),
         type = "structure",
         name = "ApplicationSettingsResource",
         target_id = id.from(_N, "ApplicationSettingsResource"),
         target = M.ApplicationSettingsResource,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetAppsInput = schema.new({
   id = id.from(_N, "GetAppsRequest"),
   type = "structure",
   members = {
      PageSize = schema.new({
         id = id.from(_N, "GetAppsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetAppsInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.GetAppsOutput = schema.new({
   id = id.from(_N, "GetAppsResponse"),
   type = "structure",
   members = {
      ApplicationsResponse = schema.new({
         id = id.from(_N, "GetAppsOutput", "ApplicationsResponse"),
         type = "structure",
         name = "ApplicationsResponse",
         target_id = id.from(_N, "ApplicationsResponse"),
         target = M.ApplicationsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBaiduChannelInput = schema.new({
   id = id.from(_N, "GetBaiduChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetBaiduChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetBaiduChannelOutput = schema.new({
   id = id.from(_N, "GetBaiduChannelResponse"),
   type = "structure",
   members = {
      BaiduChannelResponse = schema.new({
         id = id.from(_N, "GetBaiduChannelOutput", "BaiduChannelResponse"),
         type = "structure",
         name = "BaiduChannelResponse",
         target_id = id.from(_N, "BaiduChannelResponse"),
         target = M.BaiduChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetCampaignInput = schema.new({
   id = id.from(_N, "GetCampaignRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetCampaignInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CampaignId = schema.new({
         id = id.from(_N, "GetCampaignInput", "CampaignId"),
         type = "string",
         name = "CampaignId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetCampaignOutput = schema.new({
   id = id.from(_N, "GetCampaignResponse"),
   type = "structure",
   members = {
      CampaignResponse = schema.new({
         id = id.from(_N, "GetCampaignOutput", "CampaignResponse"),
         type = "structure",
         name = "CampaignResponse",
         target_id = id.from(_N, "CampaignResponse"),
         target = M.CampaignResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetCampaignActivitiesInput = schema.new({
   id = id.from(_N, "GetCampaignActivitiesRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetCampaignActivitiesInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CampaignId = schema.new({
         id = id.from(_N, "GetCampaignActivitiesInput", "CampaignId"),
         type = "string",
         name = "CampaignId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetCampaignActivitiesInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetCampaignActivitiesInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.GetCampaignActivitiesOutput = schema.new({
   id = id.from(_N, "GetCampaignActivitiesResponse"),
   type = "structure",
   members = {
      ActivitiesResponse = schema.new({
         id = id.from(_N, "GetCampaignActivitiesOutput", "ActivitiesResponse"),
         type = "structure",
         name = "ActivitiesResponse",
         target_id = id.from(_N, "ActivitiesResponse"),
         target = M.ActivitiesResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetCampaignDateRangeKpiInput = schema.new({
   id = id.from(_N, "GetCampaignDateRangeKpiRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetCampaignDateRangeKpiInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CampaignId = schema.new({
         id = id.from(_N, "GetCampaignDateRangeKpiInput", "CampaignId"),
         type = "string",
         name = "CampaignId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "GetCampaignDateRangeKpiInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "end-time" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "end-time" },
         },
      }),
      KpiName = schema.new({
         id = id.from(_N, "GetCampaignDateRangeKpiInput", "KpiName"),
         type = "string",
         name = "KpiName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetCampaignDateRangeKpiInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetCampaignDateRangeKpiInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "GetCampaignDateRangeKpiInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "start-time" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "start-time" },
         },
      }),
   },
})

M.GetCampaignDateRangeKpiOutput = schema.new({
   id = id.from(_N, "GetCampaignDateRangeKpiResponse"),
   type = "structure",
   members = {
      CampaignDateRangeKpiResponse = schema.new({
         id = id.from(_N, "GetCampaignDateRangeKpiOutput", "CampaignDateRangeKpiResponse"),
         type = "structure",
         name = "CampaignDateRangeKpiResponse",
         target_id = id.from(_N, "CampaignDateRangeKpiResponse"),
         target = M.CampaignDateRangeKpiResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetCampaignsInput = schema.new({
   id = id.from(_N, "GetCampaignsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetCampaignsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetCampaignsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetCampaignsInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.GetCampaignsOutput = schema.new({
   id = id.from(_N, "GetCampaignsResponse"),
   type = "structure",
   members = {
      CampaignsResponse = schema.new({
         id = id.from(_N, "GetCampaignsOutput", "CampaignsResponse"),
         type = "structure",
         name = "CampaignsResponse",
         target_id = id.from(_N, "CampaignsResponse"),
         target = M.CampaignsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetCampaignVersionInput = schema.new({
   id = id.from(_N, "GetCampaignVersionRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetCampaignVersionInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CampaignId = schema.new({
         id = id.from(_N, "GetCampaignVersionInput", "CampaignId"),
         type = "string",
         name = "CampaignId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "GetCampaignVersionInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetCampaignVersionOutput = schema.new({
   id = id.from(_N, "GetCampaignVersionResponse"),
   type = "structure",
   members = {
      CampaignResponse = schema.new({
         id = id.from(_N, "GetCampaignVersionOutput", "CampaignResponse"),
         type = "structure",
         name = "CampaignResponse",
         target_id = id.from(_N, "CampaignResponse"),
         target = M.CampaignResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetCampaignVersionsInput = schema.new({
   id = id.from(_N, "GetCampaignVersionsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetCampaignVersionsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CampaignId = schema.new({
         id = id.from(_N, "GetCampaignVersionsInput", "CampaignId"),
         type = "string",
         name = "CampaignId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetCampaignVersionsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetCampaignVersionsInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.GetCampaignVersionsOutput = schema.new({
   id = id.from(_N, "GetCampaignVersionsResponse"),
   type = "structure",
   members = {
      CampaignsResponse = schema.new({
         id = id.from(_N, "GetCampaignVersionsOutput", "CampaignsResponse"),
         type = "structure",
         name = "CampaignsResponse",
         target_id = id.from(_N, "CampaignsResponse"),
         target = M.CampaignsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetChannelsInput = schema.new({
   id = id.from(_N, "GetChannelsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetChannelsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetChannelsOutput = schema.new({
   id = id.from(_N, "GetChannelsResponse"),
   type = "structure",
   members = {
      ChannelsResponse = schema.new({
         id = id.from(_N, "GetChannelsOutput", "ChannelsResponse"),
         type = "structure",
         name = "ChannelsResponse",
         target_id = id.from(_N, "ChannelsResponse"),
         target = M.ChannelsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetEmailChannelInput = schema.new({
   id = id.from(_N, "GetEmailChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetEmailChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetEmailChannelOutput = schema.new({
   id = id.from(_N, "GetEmailChannelResponse"),
   type = "structure",
   members = {
      EmailChannelResponse = schema.new({
         id = id.from(_N, "GetEmailChannelOutput", "EmailChannelResponse"),
         type = "structure",
         name = "EmailChannelResponse",
         target_id = id.from(_N, "EmailChannelResponse"),
         target = M.EmailChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetEmailTemplateInput = schema.new({
   id = id.from(_N, "GetEmailTemplateRequest"),
   type = "structure",
   members = {
      TemplateName = schema.new({
         id = id.from(_N, "GetEmailTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "GetEmailTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.GetEmailTemplateOutput = schema.new({
   id = id.from(_N, "GetEmailTemplateResponse"),
   type = "structure",
   members = {
      EmailTemplateResponse = schema.new({
         id = id.from(_N, "GetEmailTemplateOutput", "EmailTemplateResponse"),
         type = "structure",
         name = "EmailTemplateResponse",
         target_id = id.from(_N, "EmailTemplateResponse"),
         target = M.EmailTemplateResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetEndpointInput = schema.new({
   id = id.from(_N, "GetEndpointRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetEndpointInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EndpointId = schema.new({
         id = id.from(_N, "GetEndpointInput", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetEndpointOutput = schema.new({
   id = id.from(_N, "GetEndpointResponse"),
   type = "structure",
   members = {
      EndpointResponse = schema.new({
         id = id.from(_N, "GetEndpointOutput", "EndpointResponse"),
         type = "structure",
         name = "EndpointResponse",
         target_id = id.from(_N, "EndpointResponse"),
         target = M.EndpointResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetEventStreamInput = schema.new({
   id = id.from(_N, "GetEventStreamRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetEventStreamInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetEventStreamOutput = schema.new({
   id = id.from(_N, "GetEventStreamResponse"),
   type = "structure",
   members = {
      EventStream = schema.new({
         id = id.from(_N, "GetEventStreamOutput", "EventStream"),
         type = "structure",
         name = "EventStream",
         target_id = id.from(_N, "EventStream"),
         target = M.EventStream,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetExportJobInput = schema.new({
   id = id.from(_N, "GetExportJobRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetExportJobInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "GetExportJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetExportJobOutput = schema.new({
   id = id.from(_N, "GetExportJobResponse"),
   type = "structure",
   members = {
      ExportJobResponse = schema.new({
         id = id.from(_N, "GetExportJobOutput", "ExportJobResponse"),
         type = "structure",
         name = "ExportJobResponse",
         target_id = id.from(_N, "ExportJobResponse"),
         target = M.ExportJobResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetExportJobsInput = schema.new({
   id = id.from(_N, "GetExportJobsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetExportJobsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetExportJobsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetExportJobsInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.GetExportJobsOutput = schema.new({
   id = id.from(_N, "GetExportJobsResponse"),
   type = "structure",
   members = {
      ExportJobsResponse = schema.new({
         id = id.from(_N, "GetExportJobsOutput", "ExportJobsResponse"),
         type = "structure",
         name = "ExportJobsResponse",
         target_id = id.from(_N, "ExportJobsResponse"),
         target = M.ExportJobsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetGcmChannelInput = schema.new({
   id = id.from(_N, "GetGcmChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetGcmChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetGcmChannelOutput = schema.new({
   id = id.from(_N, "GetGcmChannelResponse"),
   type = "structure",
   members = {
      GCMChannelResponse = schema.new({
         id = id.from(_N, "GetGcmChannelOutput", "GCMChannelResponse"),
         type = "structure",
         name = "GCMChannelResponse",
         target_id = id.from(_N, "GCMChannelResponse"),
         target = M.GCMChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetImportJobInput = schema.new({
   id = id.from(_N, "GetImportJobRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetImportJobInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "GetImportJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetImportJobOutput = schema.new({
   id = id.from(_N, "GetImportJobResponse"),
   type = "structure",
   members = {
      ImportJobResponse = schema.new({
         id = id.from(_N, "GetImportJobOutput", "ImportJobResponse"),
         type = "structure",
         name = "ImportJobResponse",
         target_id = id.from(_N, "ImportJobResponse"),
         target = M.ImportJobResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetImportJobsInput = schema.new({
   id = id.from(_N, "GetImportJobsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetImportJobsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetImportJobsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetImportJobsInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.ImportJobsResponse = schema.new({
   id = id.from(_N, "ImportJobsResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "ImportJobsResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.ImportJobResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ImportJobsResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetImportJobsOutput = schema.new({
   id = id.from(_N, "GetImportJobsResponse"),
   type = "structure",
   members = {
      ImportJobsResponse = schema.new({
         id = id.from(_N, "GetImportJobsOutput", "ImportJobsResponse"),
         type = "structure",
         name = "ImportJobsResponse",
         target_id = id.from(_N, "ImportJobsResponse"),
         target = M.ImportJobsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetInAppMessagesInput = schema.new({
   id = id.from(_N, "GetInAppMessagesRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetInAppMessagesInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EndpointId = schema.new({
         id = id.from(_N, "GetInAppMessagesInput", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.InAppMessage = schema.new({
   id = id.from(_N, "InAppMessage"),
   type = "structure",
   members = {
      Content = schema.new({
         id = id.from(_N, "InAppMessage", "Content"),
         type = "list",
         name = "Content",
         target_id = prelude.Document.id,
         list_member = M.InAppMessageContent,
      }),
      CustomConfig = schema.new({
         id = id.from(_N, "InAppMessage", "CustomConfig"),
         type = "map",
         name = "CustomConfig",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Layout = schema.new({
         id = id.from(_N, "InAppMessage", "Layout"),
         type = "string",
         name = "Layout",
         target_id = prelude.String.id,
      }),
   },
})

M.InAppCampaignSchedule = schema.new({
   id = id.from(_N, "InAppCampaignSchedule"),
   type = "structure",
   members = {
      EndDate = schema.new({
         id = id.from(_N, "InAppCampaignSchedule", "EndDate"),
         type = "string",
         name = "EndDate",
         target_id = prelude.String.id,
      }),
      EventFilter = schema.new({
         id = id.from(_N, "InAppCampaignSchedule", "EventFilter"),
         type = "structure",
         name = "EventFilter",
         target_id = id.from(_N, "CampaignEventFilter"),
         target = M.CampaignEventFilter,
      }),
      QuietTime = schema.new({
         id = id.from(_N, "InAppCampaignSchedule", "QuietTime"),
         type = "structure",
         name = "QuietTime",
         target_id = id.from(_N, "QuietTime"),
         target = M.QuietTime,
      }),
   },
})

M.InAppMessageCampaign = schema.new({
   id = id.from(_N, "InAppMessageCampaign"),
   type = "structure",
   members = {
      CampaignId = schema.new({
         id = id.from(_N, "InAppMessageCampaign", "CampaignId"),
         type = "string",
         name = "CampaignId",
         target_id = prelude.String.id,
      }),
      DailyCap = schema.new({
         id = id.from(_N, "InAppMessageCampaign", "DailyCap"),
         type = "integer",
         name = "DailyCap",
         target_id = prelude.Integer.id,
      }),
      InAppMessage = schema.new({
         id = id.from(_N, "InAppMessageCampaign", "InAppMessage"),
         type = "structure",
         name = "InAppMessage",
         target_id = id.from(_N, "InAppMessage"),
         target = M.InAppMessage,
      }),
      Priority = schema.new({
         id = id.from(_N, "InAppMessageCampaign", "Priority"),
         type = "integer",
         name = "Priority",
         target_id = prelude.Integer.id,
      }),
      Schedule = schema.new({
         id = id.from(_N, "InAppMessageCampaign", "Schedule"),
         type = "structure",
         name = "Schedule",
         target_id = id.from(_N, "InAppCampaignSchedule"),
         target = M.InAppCampaignSchedule,
      }),
      SessionCap = schema.new({
         id = id.from(_N, "InAppMessageCampaign", "SessionCap"),
         type = "integer",
         name = "SessionCap",
         target_id = prelude.Integer.id,
      }),
      TotalCap = schema.new({
         id = id.from(_N, "InAppMessageCampaign", "TotalCap"),
         type = "integer",
         name = "TotalCap",
         target_id = prelude.Integer.id,
      }),
      TreatmentId = schema.new({
         id = id.from(_N, "InAppMessageCampaign", "TreatmentId"),
         type = "string",
         name = "TreatmentId",
         target_id = prelude.String.id,
      }),
   },
})

M.InAppMessagesResponse = schema.new({
   id = id.from(_N, "InAppMessagesResponse"),
   type = "structure",
   members = {
      InAppMessageCampaigns = schema.new({
         id = id.from(_N, "InAppMessagesResponse", "InAppMessageCampaigns"),
         type = "list",
         name = "InAppMessageCampaigns",
         target_id = prelude.Document.id,
         list_member = M.InAppMessageCampaign,
      }),
   },
})

M.GetInAppMessagesOutput = schema.new({
   id = id.from(_N, "GetInAppMessagesResponse"),
   type = "structure",
   members = {
      InAppMessagesResponse = schema.new({
         id = id.from(_N, "GetInAppMessagesOutput", "InAppMessagesResponse"),
         type = "structure",
         name = "InAppMessagesResponse",
         target_id = id.from(_N, "InAppMessagesResponse"),
         target = M.InAppMessagesResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetInAppTemplateInput = schema.new({
   id = id.from(_N, "GetInAppTemplateRequest"),
   type = "structure",
   members = {
      TemplateName = schema.new({
         id = id.from(_N, "GetInAppTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "GetInAppTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.InAppTemplateResponse = schema.new({
   id = id.from(_N, "InAppTemplateResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "InAppTemplateResponse", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Content = schema.new({
         id = id.from(_N, "InAppTemplateResponse", "Content"),
         type = "list",
         name = "Content",
         target_id = prelude.Document.id,
         list_member = M.InAppMessageContent,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "InAppTemplateResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CustomConfig = schema.new({
         id = id.from(_N, "InAppTemplateResponse", "CustomConfig"),
         type = "map",
         name = "CustomConfig",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "InAppTemplateResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Layout = schema.new({
         id = id.from(_N, "InAppTemplateResponse", "Layout"),
         type = "string",
         name = "Layout",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "InAppTemplateResponse", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "InAppTemplateResponse", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
      TemplateName = schema.new({
         id = id.from(_N, "InAppTemplateResponse", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateType = schema.new({
         id = id.from(_N, "InAppTemplateResponse", "TemplateType"),
         type = "string",
         name = "TemplateType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "InAppTemplateResponse", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
      }),
   },
})

M.GetInAppTemplateOutput = schema.new({
   id = id.from(_N, "GetInAppTemplateResponse"),
   type = "structure",
   members = {
      InAppTemplateResponse = schema.new({
         id = id.from(_N, "GetInAppTemplateOutput", "InAppTemplateResponse"),
         type = "structure",
         name = "InAppTemplateResponse",
         target_id = id.from(_N, "InAppTemplateResponse"),
         target = M.InAppTemplateResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetJourneyInput = schema.new({
   id = id.from(_N, "GetJourneyRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetJourneyInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "GetJourneyInput", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetJourneyOutput = schema.new({
   id = id.from(_N, "GetJourneyResponse"),
   type = "structure",
   members = {
      JourneyResponse = schema.new({
         id = id.from(_N, "GetJourneyOutput", "JourneyResponse"),
         type = "structure",
         name = "JourneyResponse",
         target_id = id.from(_N, "JourneyResponse"),
         target = M.JourneyResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetJourneyDateRangeKpiInput = schema.new({
   id = id.from(_N, "GetJourneyDateRangeKpiRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetJourneyDateRangeKpiInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "GetJourneyDateRangeKpiInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "end-time" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "end-time" },
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "GetJourneyDateRangeKpiInput", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      KpiName = schema.new({
         id = id.from(_N, "GetJourneyDateRangeKpiInput", "KpiName"),
         type = "string",
         name = "KpiName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetJourneyDateRangeKpiInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetJourneyDateRangeKpiInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "GetJourneyDateRangeKpiInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "start-time" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "start-time" },
         },
      }),
   },
})

M.JourneyDateRangeKpiResponse = schema.new({
   id = id.from(_N, "JourneyDateRangeKpiResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "JourneyDateRangeKpiResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "JourneyDateRangeKpiResponse", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "JourneyDateRangeKpiResponse", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KpiName = schema.new({
         id = id.from(_N, "JourneyDateRangeKpiResponse", "KpiName"),
         type = "string",
         name = "KpiName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KpiResult = schema.new({
         id = id.from(_N, "JourneyDateRangeKpiResponse", "KpiResult"),
         type = "structure",
         name = "KpiResult",
         target_id = id.from(_N, "BaseKpiResult"),
         target = M.BaseKpiResult,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "JourneyDateRangeKpiResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "JourneyDateRangeKpiResponse", "StartTime"),
         type = "timestamp",
         name = "StartTime",
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

M.GetJourneyDateRangeKpiOutput = schema.new({
   id = id.from(_N, "GetJourneyDateRangeKpiResponse"),
   type = "structure",
   members = {
      JourneyDateRangeKpiResponse = schema.new({
         id = id.from(_N, "GetJourneyDateRangeKpiOutput", "JourneyDateRangeKpiResponse"),
         type = "structure",
         name = "JourneyDateRangeKpiResponse",
         target_id = id.from(_N, "JourneyDateRangeKpiResponse"),
         target = M.JourneyDateRangeKpiResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetJourneyExecutionActivityMetricsInput = schema.new({
   id = id.from(_N, "GetJourneyExecutionActivityMetricsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetJourneyExecutionActivityMetricsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyActivityId = schema.new({
         id = id.from(_N, "GetJourneyExecutionActivityMetricsInput", "JourneyActivityId"),
         type = "string",
         name = "JourneyActivityId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "GetJourneyExecutionActivityMetricsInput", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetJourneyExecutionActivityMetricsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetJourneyExecutionActivityMetricsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
   },
})

M.JourneyExecutionActivityMetricsResponse = schema.new({
   id = id.from(_N, "JourneyExecutionActivityMetricsResponse"),
   type = "structure",
   members = {
      ActivityType = schema.new({
         id = id.from(_N, "JourneyExecutionActivityMetricsResponse", "ActivityType"),
         type = "string",
         name = "ActivityType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "JourneyExecutionActivityMetricsResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JourneyActivityId = schema.new({
         id = id.from(_N, "JourneyExecutionActivityMetricsResponse", "JourneyActivityId"),
         type = "string",
         name = "JourneyActivityId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "JourneyExecutionActivityMetricsResponse", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastEvaluatedTime = schema.new({
         id = id.from(_N, "JourneyExecutionActivityMetricsResponse", "LastEvaluatedTime"),
         type = "string",
         name = "LastEvaluatedTime",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Metrics = schema.new({
         id = id.from(_N, "JourneyExecutionActivityMetricsResponse", "Metrics"),
         type = "map",
         name = "Metrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetJourneyExecutionActivityMetricsOutput = schema.new({
   id = id.from(_N, "GetJourneyExecutionActivityMetricsResponse"),
   type = "structure",
   members = {
      JourneyExecutionActivityMetricsResponse = schema.new({
         id = id.from(_N, "GetJourneyExecutionActivityMetricsOutput", "JourneyExecutionActivityMetricsResponse"),
         type = "structure",
         name = "JourneyExecutionActivityMetricsResponse",
         target_id = id.from(_N, "JourneyExecutionActivityMetricsResponse"),
         target = M.JourneyExecutionActivityMetricsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetJourneyExecutionMetricsInput = schema.new({
   id = id.from(_N, "GetJourneyExecutionMetricsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetJourneyExecutionMetricsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "GetJourneyExecutionMetricsInput", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetJourneyExecutionMetricsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetJourneyExecutionMetricsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
   },
})

M.JourneyExecutionMetricsResponse = schema.new({
   id = id.from(_N, "JourneyExecutionMetricsResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "JourneyExecutionMetricsResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "JourneyExecutionMetricsResponse", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastEvaluatedTime = schema.new({
         id = id.from(_N, "JourneyExecutionMetricsResponse", "LastEvaluatedTime"),
         type = "string",
         name = "LastEvaluatedTime",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Metrics = schema.new({
         id = id.from(_N, "JourneyExecutionMetricsResponse", "Metrics"),
         type = "map",
         name = "Metrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetJourneyExecutionMetricsOutput = schema.new({
   id = id.from(_N, "GetJourneyExecutionMetricsResponse"),
   type = "structure",
   members = {
      JourneyExecutionMetricsResponse = schema.new({
         id = id.from(_N, "GetJourneyExecutionMetricsOutput", "JourneyExecutionMetricsResponse"),
         type = "structure",
         name = "JourneyExecutionMetricsResponse",
         target_id = id.from(_N, "JourneyExecutionMetricsResponse"),
         target = M.JourneyExecutionMetricsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetJourneyRunExecutionActivityMetricsInput = schema.new({
   id = id.from(_N, "GetJourneyRunExecutionActivityMetricsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionActivityMetricsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyActivityId = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionActivityMetricsInput", "JourneyActivityId"),
         type = "string",
         name = "JourneyActivityId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionActivityMetricsInput", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionActivityMetricsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionActivityMetricsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      RunId = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionActivityMetricsInput", "RunId"),
         type = "string",
         name = "RunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.JourneyRunExecutionActivityMetricsResponse = schema.new({
   id = id.from(_N, "JourneyRunExecutionActivityMetricsResponse"),
   type = "structure",
   members = {
      ActivityType = schema.new({
         id = id.from(_N, "JourneyRunExecutionActivityMetricsResponse", "ActivityType"),
         type = "string",
         name = "ActivityType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "JourneyRunExecutionActivityMetricsResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JourneyActivityId = schema.new({
         id = id.from(_N, "JourneyRunExecutionActivityMetricsResponse", "JourneyActivityId"),
         type = "string",
         name = "JourneyActivityId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "JourneyRunExecutionActivityMetricsResponse", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastEvaluatedTime = schema.new({
         id = id.from(_N, "JourneyRunExecutionActivityMetricsResponse", "LastEvaluatedTime"),
         type = "string",
         name = "LastEvaluatedTime",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Metrics = schema.new({
         id = id.from(_N, "JourneyRunExecutionActivityMetricsResponse", "Metrics"),
         type = "map",
         name = "Metrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RunId = schema.new({
         id = id.from(_N, "JourneyRunExecutionActivityMetricsResponse", "RunId"),
         type = "string",
         name = "RunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetJourneyRunExecutionActivityMetricsOutput = schema.new({
   id = id.from(_N, "GetJourneyRunExecutionActivityMetricsResponse"),
   type = "structure",
   members = {
      JourneyRunExecutionActivityMetricsResponse = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionActivityMetricsOutput", "JourneyRunExecutionActivityMetricsResponse"),
         type = "structure",
         name = "JourneyRunExecutionActivityMetricsResponse",
         target_id = id.from(_N, "JourneyRunExecutionActivityMetricsResponse"),
         target = M.JourneyRunExecutionActivityMetricsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetJourneyRunExecutionMetricsInput = schema.new({
   id = id.from(_N, "GetJourneyRunExecutionMetricsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionMetricsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionMetricsInput", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionMetricsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionMetricsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      RunId = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionMetricsInput", "RunId"),
         type = "string",
         name = "RunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.JourneyRunExecutionMetricsResponse = schema.new({
   id = id.from(_N, "JourneyRunExecutionMetricsResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "JourneyRunExecutionMetricsResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "JourneyRunExecutionMetricsResponse", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastEvaluatedTime = schema.new({
         id = id.from(_N, "JourneyRunExecutionMetricsResponse", "LastEvaluatedTime"),
         type = "string",
         name = "LastEvaluatedTime",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Metrics = schema.new({
         id = id.from(_N, "JourneyRunExecutionMetricsResponse", "Metrics"),
         type = "map",
         name = "Metrics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RunId = schema.new({
         id = id.from(_N, "JourneyRunExecutionMetricsResponse", "RunId"),
         type = "string",
         name = "RunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetJourneyRunExecutionMetricsOutput = schema.new({
   id = id.from(_N, "GetJourneyRunExecutionMetricsResponse"),
   type = "structure",
   members = {
      JourneyRunExecutionMetricsResponse = schema.new({
         id = id.from(_N, "GetJourneyRunExecutionMetricsOutput", "JourneyRunExecutionMetricsResponse"),
         type = "structure",
         name = "JourneyRunExecutionMetricsResponse",
         target_id = id.from(_N, "JourneyRunExecutionMetricsResponse"),
         target = M.JourneyRunExecutionMetricsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetJourneyRunsInput = schema.new({
   id = id.from(_N, "GetJourneyRunsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetJourneyRunsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "GetJourneyRunsInput", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetJourneyRunsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetJourneyRunsInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.JourneyRunResponse = schema.new({
   id = id.from(_N, "JourneyRunResponse"),
   type = "structure",
   members = {
      CreationTime = schema.new({
         id = id.from(_N, "JourneyRunResponse", "CreationTime"),
         type = "string",
         name = "CreationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastUpdateTime = schema.new({
         id = id.from(_N, "JourneyRunResponse", "LastUpdateTime"),
         type = "string",
         name = "LastUpdateTime",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RunId = schema.new({
         id = id.from(_N, "JourneyRunResponse", "RunId"),
         type = "string",
         name = "RunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "JourneyRunResponse", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.JourneyRunsResponse = schema.new({
   id = id.from(_N, "JourneyRunsResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "JourneyRunsResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.JourneyRunResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "JourneyRunsResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetJourneyRunsOutput = schema.new({
   id = id.from(_N, "GetJourneyRunsResponse"),
   type = "structure",
   members = {
      JourneyRunsResponse = schema.new({
         id = id.from(_N, "GetJourneyRunsOutput", "JourneyRunsResponse"),
         type = "structure",
         name = "JourneyRunsResponse",
         target_id = id.from(_N, "JourneyRunsResponse"),
         target = M.JourneyRunsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetPushTemplateInput = schema.new({
   id = id.from(_N, "GetPushTemplateRequest"),
   type = "structure",
   members = {
      TemplateName = schema.new({
         id = id.from(_N, "GetPushTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "GetPushTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.PushNotificationTemplateResponse = schema.new({
   id = id.from(_N, "PushNotificationTemplateResponse"),
   type = "structure",
   members = {
      ADM = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "ADM"),
         type = "structure",
         name = "ADM",
         target_id = id.from(_N, "AndroidPushNotificationTemplate"),
         target = M.AndroidPushNotificationTemplate,
      }),
      APNS = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "APNS"),
         type = "structure",
         name = "APNS",
         target_id = id.from(_N, "APNSPushNotificationTemplate"),
         target = M.APNSPushNotificationTemplate,
      }),
      Arn = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Baidu = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "Baidu"),
         type = "structure",
         name = "Baidu",
         target_id = id.from(_N, "AndroidPushNotificationTemplate"),
         target = M.AndroidPushNotificationTemplate,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Default = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "Default"),
         type = "structure",
         name = "Default",
         target_id = id.from(_N, "DefaultPushNotificationTemplate"),
         target = M.DefaultPushNotificationTemplate,
      }),
      DefaultSubstitutions = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "DefaultSubstitutions"),
         type = "string",
         name = "DefaultSubstitutions",
         target_id = prelude.String.id,
      }),
      GCM = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "GCM"),
         type = "structure",
         name = "GCM",
         target_id = id.from(_N, "AndroidPushNotificationTemplate"),
         target = M.AndroidPushNotificationTemplate,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecommenderId = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "RecommenderId"),
         type = "string",
         name = "RecommenderId",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
      TemplateName = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateType = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "TemplateType"),
         type = "string",
         name = "TemplateType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "PushNotificationTemplateResponse", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
      }),
   },
})

M.GetPushTemplateOutput = schema.new({
   id = id.from(_N, "GetPushTemplateResponse"),
   type = "structure",
   members = {
      PushNotificationTemplateResponse = schema.new({
         id = id.from(_N, "GetPushTemplateOutput", "PushNotificationTemplateResponse"),
         type = "structure",
         name = "PushNotificationTemplateResponse",
         target_id = id.from(_N, "PushNotificationTemplateResponse"),
         target = M.PushNotificationTemplateResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetRecommenderConfigurationInput = schema.new({
   id = id.from(_N, "GetRecommenderConfigurationRequest"),
   type = "structure",
   members = {
      RecommenderId = schema.new({
         id = id.from(_N, "GetRecommenderConfigurationInput", "RecommenderId"),
         type = "string",
         name = "RecommenderId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetRecommenderConfigurationOutput = schema.new({
   id = id.from(_N, "GetRecommenderConfigurationResponse"),
   type = "structure",
   members = {
      RecommenderConfigurationResponse = schema.new({
         id = id.from(_N, "GetRecommenderConfigurationOutput", "RecommenderConfigurationResponse"),
         type = "structure",
         name = "RecommenderConfigurationResponse",
         target_id = id.from(_N, "RecommenderConfigurationResponse"),
         target = M.RecommenderConfigurationResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetRecommenderConfigurationsInput = schema.new({
   id = id.from(_N, "GetRecommenderConfigurationsRequest"),
   type = "structure",
   members = {
      PageSize = schema.new({
         id = id.from(_N, "GetRecommenderConfigurationsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetRecommenderConfigurationsInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.ListRecommenderConfigurationsResponse = schema.new({
   id = id.from(_N, "ListRecommenderConfigurationsResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "ListRecommenderConfigurationsResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.RecommenderConfigurationResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRecommenderConfigurationsResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetRecommenderConfigurationsOutput = schema.new({
   id = id.from(_N, "GetRecommenderConfigurationsResponse"),
   type = "structure",
   members = {
      ListRecommenderConfigurationsResponse = schema.new({
         id = id.from(_N, "GetRecommenderConfigurationsOutput", "ListRecommenderConfigurationsResponse"),
         type = "structure",
         name = "ListRecommenderConfigurationsResponse",
         target_id = id.from(_N, "ListRecommenderConfigurationsResponse"),
         target = M.ListRecommenderConfigurationsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetSegmentInput = schema.new({
   id = id.from(_N, "GetSegmentRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetSegmentInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SegmentId = schema.new({
         id = id.from(_N, "GetSegmentInput", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetSegmentOutput = schema.new({
   id = id.from(_N, "GetSegmentResponse"),
   type = "structure",
   members = {
      SegmentResponse = schema.new({
         id = id.from(_N, "GetSegmentOutput", "SegmentResponse"),
         type = "structure",
         name = "SegmentResponse",
         target_id = id.from(_N, "SegmentResponse"),
         target = M.SegmentResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetSegmentExportJobsInput = schema.new({
   id = id.from(_N, "GetSegmentExportJobsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetSegmentExportJobsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetSegmentExportJobsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      SegmentId = schema.new({
         id = id.from(_N, "GetSegmentExportJobsInput", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetSegmentExportJobsInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.GetSegmentExportJobsOutput = schema.new({
   id = id.from(_N, "GetSegmentExportJobsResponse"),
   type = "structure",
   members = {
      ExportJobsResponse = schema.new({
         id = id.from(_N, "GetSegmentExportJobsOutput", "ExportJobsResponse"),
         type = "structure",
         name = "ExportJobsResponse",
         target_id = id.from(_N, "ExportJobsResponse"),
         target = M.ExportJobsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetSegmentImportJobsInput = schema.new({
   id = id.from(_N, "GetSegmentImportJobsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetSegmentImportJobsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetSegmentImportJobsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      SegmentId = schema.new({
         id = id.from(_N, "GetSegmentImportJobsInput", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetSegmentImportJobsInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.GetSegmentImportJobsOutput = schema.new({
   id = id.from(_N, "GetSegmentImportJobsResponse"),
   type = "structure",
   members = {
      ImportJobsResponse = schema.new({
         id = id.from(_N, "GetSegmentImportJobsOutput", "ImportJobsResponse"),
         type = "structure",
         name = "ImportJobsResponse",
         target_id = id.from(_N, "ImportJobsResponse"),
         target = M.ImportJobsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetSegmentsInput = schema.new({
   id = id.from(_N, "GetSegmentsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetSegmentsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetSegmentsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetSegmentsInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.SegmentsResponse = schema.new({
   id = id.from(_N, "SegmentsResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "SegmentsResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.SegmentResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "SegmentsResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetSegmentsOutput = schema.new({
   id = id.from(_N, "GetSegmentsResponse"),
   type = "structure",
   members = {
      SegmentsResponse = schema.new({
         id = id.from(_N, "GetSegmentsOutput", "SegmentsResponse"),
         type = "structure",
         name = "SegmentsResponse",
         target_id = id.from(_N, "SegmentsResponse"),
         target = M.SegmentsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetSegmentVersionInput = schema.new({
   id = id.from(_N, "GetSegmentVersionRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetSegmentVersionInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SegmentId = schema.new({
         id = id.from(_N, "GetSegmentVersionInput", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "GetSegmentVersionInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetSegmentVersionOutput = schema.new({
   id = id.from(_N, "GetSegmentVersionResponse"),
   type = "structure",
   members = {
      SegmentResponse = schema.new({
         id = id.from(_N, "GetSegmentVersionOutput", "SegmentResponse"),
         type = "structure",
         name = "SegmentResponse",
         target_id = id.from(_N, "SegmentResponse"),
         target = M.SegmentResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetSegmentVersionsInput = schema.new({
   id = id.from(_N, "GetSegmentVersionsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetSegmentVersionsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "GetSegmentVersionsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      SegmentId = schema.new({
         id = id.from(_N, "GetSegmentVersionsInput", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Token = schema.new({
         id = id.from(_N, "GetSegmentVersionsInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.GetSegmentVersionsOutput = schema.new({
   id = id.from(_N, "GetSegmentVersionsResponse"),
   type = "structure",
   members = {
      SegmentsResponse = schema.new({
         id = id.from(_N, "GetSegmentVersionsOutput", "SegmentsResponse"),
         type = "structure",
         name = "SegmentsResponse",
         target_id = id.from(_N, "SegmentsResponse"),
         target = M.SegmentsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetSmsChannelInput = schema.new({
   id = id.from(_N, "GetSmsChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetSmsChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetSmsChannelOutput = schema.new({
   id = id.from(_N, "GetSmsChannelResponse"),
   type = "structure",
   members = {
      SMSChannelResponse = schema.new({
         id = id.from(_N, "GetSmsChannelOutput", "SMSChannelResponse"),
         type = "structure",
         name = "SMSChannelResponse",
         target_id = id.from(_N, "SMSChannelResponse"),
         target = M.SMSChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetSmsTemplateInput = schema.new({
   id = id.from(_N, "GetSmsTemplateRequest"),
   type = "structure",
   members = {
      TemplateName = schema.new({
         id = id.from(_N, "GetSmsTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "GetSmsTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.SMSTemplateResponse = schema.new({
   id = id.from(_N, "SMSTemplateResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "SMSTemplateResponse", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Body = schema.new({
         id = id.from(_N, "SMSTemplateResponse", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "SMSTemplateResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DefaultSubstitutions = schema.new({
         id = id.from(_N, "SMSTemplateResponse", "DefaultSubstitutions"),
         type = "string",
         name = "DefaultSubstitutions",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "SMSTemplateResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecommenderId = schema.new({
         id = id.from(_N, "SMSTemplateResponse", "RecommenderId"),
         type = "string",
         name = "RecommenderId",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "SMSTemplateResponse", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "SMSTemplateResponse", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
      TemplateName = schema.new({
         id = id.from(_N, "SMSTemplateResponse", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateType = schema.new({
         id = id.from(_N, "SMSTemplateResponse", "TemplateType"),
         type = "string",
         name = "TemplateType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "SMSTemplateResponse", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
      }),
   },
})

M.GetSmsTemplateOutput = schema.new({
   id = id.from(_N, "GetSmsTemplateResponse"),
   type = "structure",
   members = {
      SMSTemplateResponse = schema.new({
         id = id.from(_N, "GetSmsTemplateOutput", "SMSTemplateResponse"),
         type = "structure",
         name = "SMSTemplateResponse",
         target_id = id.from(_N, "SMSTemplateResponse"),
         target = M.SMSTemplateResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetUserEndpointsInput = schema.new({
   id = id.from(_N, "GetUserEndpointsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetUserEndpointsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      UserId = schema.new({
         id = id.from(_N, "GetUserEndpointsInput", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetUserEndpointsOutput = schema.new({
   id = id.from(_N, "GetUserEndpointsResponse"),
   type = "structure",
   members = {
      EndpointsResponse = schema.new({
         id = id.from(_N, "GetUserEndpointsOutput", "EndpointsResponse"),
         type = "structure",
         name = "EndpointsResponse",
         target_id = id.from(_N, "EndpointsResponse"),
         target = M.EndpointsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetVoiceChannelInput = schema.new({
   id = id.from(_N, "GetVoiceChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetVoiceChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetVoiceChannelOutput = schema.new({
   id = id.from(_N, "GetVoiceChannelResponse"),
   type = "structure",
   members = {
      VoiceChannelResponse = schema.new({
         id = id.from(_N, "GetVoiceChannelOutput", "VoiceChannelResponse"),
         type = "structure",
         name = "VoiceChannelResponse",
         target_id = id.from(_N, "VoiceChannelResponse"),
         target = M.VoiceChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetVoiceTemplateInput = schema.new({
   id = id.from(_N, "GetVoiceTemplateRequest"),
   type = "structure",
   members = {
      TemplateName = schema.new({
         id = id.from(_N, "GetVoiceTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "GetVoiceTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.VoiceTemplateResponse = schema.new({
   id = id.from(_N, "VoiceTemplateResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Body = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "Body"),
         type = "string",
         name = "Body",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DefaultSubstitutions = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "DefaultSubstitutions"),
         type = "string",
         name = "DefaultSubstitutions",
         target_id = prelude.String.id,
      }),
      LanguageCode = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
      TemplateName = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateType = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "TemplateType"),
         type = "string",
         name = "TemplateType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
      }),
      VoiceId = schema.new({
         id = id.from(_N, "VoiceTemplateResponse", "VoiceId"),
         type = "string",
         name = "VoiceId",
         target_id = prelude.String.id,
      }),
   },
})

M.GetVoiceTemplateOutput = schema.new({
   id = id.from(_N, "GetVoiceTemplateResponse"),
   type = "structure",
   members = {
      VoiceTemplateResponse = schema.new({
         id = id.from(_N, "GetVoiceTemplateOutput", "VoiceTemplateResponse"),
         type = "structure",
         name = "VoiceTemplateResponse",
         target_id = id.from(_N, "VoiceTemplateResponse"),
         target = M.VoiceTemplateResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.JourneysResponse = schema.new({
   id = id.from(_N, "JourneysResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "JourneysResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.JourneyResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "JourneysResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.JourneyStateRequest = schema.new({
   id = id.from(_N, "JourneyStateRequest"),
   type = "structure",
   members = {
      State = schema.new({
         id = id.from(_N, "JourneyStateRequest", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
   },
})

M.ListJourneysInput = schema.new({
   id = id.from(_N, "ListJourneysRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ListJourneysInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListJourneysInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "ListJourneysInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "token" },
         },
      }),
   },
})

M.ListJourneysOutput = schema.new({
   id = id.from(_N, "ListJourneysResponse"),
   type = "structure",
   members = {
      JourneysResponse = schema.new({
         id = id.from(_N, "ListJourneysOutput", "JourneysResponse"),
         type = "structure",
         name = "JourneysResponse",
         target_id = id.from(_N, "JourneysResponse"),
         target = M.JourneysResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.TemplateResponse = schema.new({
   id = id.from(_N, "TemplateResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "TemplateResponse", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "TemplateResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DefaultSubstitutions = schema.new({
         id = id.from(_N, "TemplateResponse", "DefaultSubstitutions"),
         type = "string",
         name = "DefaultSubstitutions",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "TemplateResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "TemplateResponse", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "TemplateResponse", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
      TemplateName = schema.new({
         id = id.from(_N, "TemplateResponse", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateType = schema.new({
         id = id.from(_N, "TemplateResponse", "TemplateType"),
         type = "string",
         name = "TemplateType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "TemplateResponse", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
      }),
   },
})

M.TemplateVersionResponse = schema.new({
   id = id.from(_N, "TemplateVersionResponse"),
   type = "structure",
   members = {
      CreationDate = schema.new({
         id = id.from(_N, "TemplateVersionResponse", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DefaultSubstitutions = schema.new({
         id = id.from(_N, "TemplateVersionResponse", "DefaultSubstitutions"),
         type = "string",
         name = "DefaultSubstitutions",
         target_id = prelude.String.id,
      }),
      LastModifiedDate = schema.new({
         id = id.from(_N, "TemplateVersionResponse", "LastModifiedDate"),
         type = "string",
         name = "LastModifiedDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateDescription = schema.new({
         id = id.from(_N, "TemplateVersionResponse", "TemplateDescription"),
         type = "string",
         name = "TemplateDescription",
         target_id = prelude.String.id,
      }),
      TemplateName = schema.new({
         id = id.from(_N, "TemplateVersionResponse", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateType = schema.new({
         id = id.from(_N, "TemplateVersionResponse", "TemplateType"),
         type = "string",
         name = "TemplateType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "TemplateVersionResponse", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TagsModel = schema.new({
   id = id.from(_N, "TagsModel"),
   type = "structure",
   members = {
      tags = schema.new({
         id = id.from(_N, "TagsModel", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResponse"),
   type = "structure",
   members = {
      TagsModel = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "TagsModel"),
         type = "structure",
         name = "TagsModel",
         target_id = id.from(_N, "TagsModel"),
         target = M.TagsModel,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.ListTemplatesInput = schema.new({
   id = id.from(_N, "ListTemplatesRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListTemplatesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListTemplatesInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "ListTemplatesInput", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "prefix" },
         },
      }),
      TemplateType = schema.new({
         id = id.from(_N, "ListTemplatesInput", "TemplateType"),
         type = "string",
         name = "TemplateType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "template-type" },
         },
      }),
   },
})

M.TemplatesResponse = schema.new({
   id = id.from(_N, "TemplatesResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "TemplatesResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.TemplateResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "TemplatesResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTemplatesOutput = schema.new({
   id = id.from(_N, "ListTemplatesResponse"),
   type = "structure",
   members = {
      TemplatesResponse = schema.new({
         id = id.from(_N, "ListTemplatesOutput", "TemplatesResponse"),
         type = "structure",
         name = "TemplatesResponse",
         target_id = id.from(_N, "TemplatesResponse"),
         target = M.TemplatesResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.ListTemplateVersionsInput = schema.new({
   id = id.from(_N, "ListTemplateVersionsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListTemplateVersionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListTemplateVersionsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "page-size" },
         },
      }),
      TemplateName = schema.new({
         id = id.from(_N, "ListTemplateVersionsInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TemplateType = schema.new({
         id = id.from(_N, "ListTemplateVersionsInput", "TemplateType"),
         type = "string",
         name = "TemplateType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TemplateVersionsResponse = schema.new({
   id = id.from(_N, "TemplateVersionsResponse"),
   type = "structure",
   members = {
      Item = schema.new({
         id = id.from(_N, "TemplateVersionsResponse", "Item"),
         type = "list",
         name = "Item",
         target_id = prelude.Document.id,
         list_member = M.TemplateVersionResponse,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Message = schema.new({
         id = id.from(_N, "TemplateVersionsResponse", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "TemplateVersionsResponse", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      RequestID = schema.new({
         id = id.from(_N, "TemplateVersionsResponse", "RequestID"),
         type = "string",
         name = "RequestID",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTemplateVersionsOutput = schema.new({
   id = id.from(_N, "ListTemplateVersionsResponse"),
   type = "structure",
   members = {
      TemplateVersionsResponse = schema.new({
         id = id.from(_N, "ListTemplateVersionsOutput", "TemplateVersionsResponse"),
         type = "structure",
         name = "TemplateVersionsResponse",
         target_id = id.from(_N, "TemplateVersionsResponse"),
         target = M.TemplateVersionsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.MessageResult = schema.new({
   id = id.from(_N, "MessageResult"),
   type = "structure",
   members = {
      DeliveryStatus = schema.new({
         id = id.from(_N, "MessageResult", "DeliveryStatus"),
         type = "string",
         name = "DeliveryStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MessageId = schema.new({
         id = id.from(_N, "MessageResult", "MessageId"),
         type = "string",
         name = "MessageId",
         target_id = prelude.String.id,
      }),
      StatusCode = schema.new({
         id = id.from(_N, "MessageResult", "StatusCode"),
         type = "integer",
         name = "StatusCode",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "MessageResult", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      UpdatedToken = schema.new({
         id = id.from(_N, "MessageResult", "UpdatedToken"),
         type = "string",
         name = "UpdatedToken",
         target_id = prelude.String.id,
      }),
   },
})

M.MessageRequest = schema.new({
   id = id.from(_N, "MessageRequest"),
   type = "structure",
   members = {
      Addresses = schema.new({
         id = id.from(_N, "MessageRequest", "Addresses"),
         type = "map",
         name = "Addresses",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AddressConfiguration,
      }),
      Context = schema.new({
         id = id.from(_N, "MessageRequest", "Context"),
         type = "map",
         name = "Context",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Endpoints = schema.new({
         id = id.from(_N, "MessageRequest", "Endpoints"),
         type = "map",
         name = "Endpoints",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.EndpointSendConfiguration,
      }),
      MessageConfiguration = schema.new({
         id = id.from(_N, "MessageRequest", "MessageConfiguration"),
         type = "structure",
         name = "MessageConfiguration",
         target_id = id.from(_N, "DirectMessageConfiguration"),
         target = M.DirectMessageConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateConfiguration = schema.new({
         id = id.from(_N, "MessageRequest", "TemplateConfiguration"),
         type = "structure",
         name = "TemplateConfiguration",
         target_id = id.from(_N, "TemplateConfiguration"),
         target = M.TemplateConfiguration,
      }),
      TraceId = schema.new({
         id = id.from(_N, "MessageRequest", "TraceId"),
         type = "string",
         name = "TraceId",
         target_id = prelude.String.id,
      }),
   },
})

M.MessageResponse = schema.new({
   id = id.from(_N, "MessageResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "MessageResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointResult = schema.new({
         id = id.from(_N, "MessageResponse", "EndpointResult"),
         type = "map",
         name = "EndpointResult",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.EndpointMessageResult,
      }),
      RequestId = schema.new({
         id = id.from(_N, "MessageResponse", "RequestId"),
         type = "string",
         name = "RequestId",
         target_id = prelude.String.id,
      }),
      Result = schema.new({
         id = id.from(_N, "MessageResponse", "Result"),
         type = "map",
         name = "Result",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.MessageResult,
      }),
   },
})

M.NumberValidateRequest = schema.new({
   id = id.from(_N, "NumberValidateRequest"),
   type = "structure",
   members = {
      IsoCountryCode = schema.new({
         id = id.from(_N, "NumberValidateRequest", "IsoCountryCode"),
         type = "string",
         name = "IsoCountryCode",
         target_id = prelude.String.id,
      }),
      PhoneNumber = schema.new({
         id = id.from(_N, "NumberValidateRequest", "PhoneNumber"),
         type = "string",
         name = "PhoneNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.NumberValidateResponse = schema.new({
   id = id.from(_N, "NumberValidateResponse"),
   type = "structure",
   members = {
      Carrier = schema.new({
         id = id.from(_N, "NumberValidateResponse", "Carrier"),
         type = "string",
         name = "Carrier",
         target_id = prelude.String.id,
      }),
      City = schema.new({
         id = id.from(_N, "NumberValidateResponse", "City"),
         type = "string",
         name = "City",
         target_id = prelude.String.id,
      }),
      CleansedPhoneNumberE164 = schema.new({
         id = id.from(_N, "NumberValidateResponse", "CleansedPhoneNumberE164"),
         type = "string",
         name = "CleansedPhoneNumberE164",
         target_id = prelude.String.id,
      }),
      CleansedPhoneNumberNational = schema.new({
         id = id.from(_N, "NumberValidateResponse", "CleansedPhoneNumberNational"),
         type = "string",
         name = "CleansedPhoneNumberNational",
         target_id = prelude.String.id,
      }),
      Country = schema.new({
         id = id.from(_N, "NumberValidateResponse", "Country"),
         type = "string",
         name = "Country",
         target_id = prelude.String.id,
      }),
      CountryCodeIso2 = schema.new({
         id = id.from(_N, "NumberValidateResponse", "CountryCodeIso2"),
         type = "string",
         name = "CountryCodeIso2",
         target_id = prelude.String.id,
      }),
      CountryCodeNumeric = schema.new({
         id = id.from(_N, "NumberValidateResponse", "CountryCodeNumeric"),
         type = "string",
         name = "CountryCodeNumeric",
         target_id = prelude.String.id,
      }),
      County = schema.new({
         id = id.from(_N, "NumberValidateResponse", "County"),
         type = "string",
         name = "County",
         target_id = prelude.String.id,
      }),
      OriginalCountryCodeIso2 = schema.new({
         id = id.from(_N, "NumberValidateResponse", "OriginalCountryCodeIso2"),
         type = "string",
         name = "OriginalCountryCodeIso2",
         target_id = prelude.String.id,
      }),
      OriginalPhoneNumber = schema.new({
         id = id.from(_N, "NumberValidateResponse", "OriginalPhoneNumber"),
         type = "string",
         name = "OriginalPhoneNumber",
         target_id = prelude.String.id,
      }),
      PhoneType = schema.new({
         id = id.from(_N, "NumberValidateResponse", "PhoneType"),
         type = "string",
         name = "PhoneType",
         target_id = prelude.String.id,
      }),
      PhoneTypeCode = schema.new({
         id = id.from(_N, "NumberValidateResponse", "PhoneTypeCode"),
         type = "integer",
         name = "PhoneTypeCode",
         target_id = prelude.Integer.id,
      }),
      Timezone = schema.new({
         id = id.from(_N, "NumberValidateResponse", "Timezone"),
         type = "string",
         name = "Timezone",
         target_id = prelude.String.id,
      }),
      ZipCode = schema.new({
         id = id.from(_N, "NumberValidateResponse", "ZipCode"),
         type = "string",
         name = "ZipCode",
         target_id = prelude.String.id,
      }),
   },
})

M.PhoneNumberValidateInput = schema.new({
   id = id.from(_N, "PhoneNumberValidateRequest"),
   type = "structure",
   members = {
      NumberValidateRequest = schema.new({
         id = id.from(_N, "PhoneNumberValidateInput", "NumberValidateRequest"),
         type = "structure",
         name = "NumberValidateRequest",
         target_id = id.from(_N, "NumberValidateRequest"),
         target = M.NumberValidateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.PhoneNumberValidateOutput = schema.new({
   id = id.from(_N, "PhoneNumberValidateResponse"),
   type = "structure",
   members = {
      NumberValidateResponse = schema.new({
         id = id.from(_N, "PhoneNumberValidateOutput", "NumberValidateResponse"),
         type = "structure",
         name = "NumberValidateResponse",
         target_id = id.from(_N, "NumberValidateResponse"),
         target = M.NumberValidateResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.PutEventsInput = schema.new({
   id = id.from(_N, "PutEventsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "PutEventsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EventsRequest = schema.new({
         id = id.from(_N, "PutEventsInput", "EventsRequest"),
         type = "structure",
         name = "EventsRequest",
         target_id = id.from(_N, "EventsRequest"),
         target = M.EventsRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.PutEventsOutput = schema.new({
   id = id.from(_N, "PutEventsResponse"),
   type = "structure",
   members = {
      EventsResponse = schema.new({
         id = id.from(_N, "PutEventsOutput", "EventsResponse"),
         type = "structure",
         name = "EventsResponse",
         target_id = id.from(_N, "EventsResponse"),
         target = M.EventsResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.WriteEventStream = schema.new({
   id = id.from(_N, "WriteEventStream"),
   type = "structure",
   members = {
      DestinationStreamArn = schema.new({
         id = id.from(_N, "WriteEventStream", "DestinationStreamArn"),
         type = "string",
         name = "DestinationStreamArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "WriteEventStream", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutEventStreamInput = schema.new({
   id = id.from(_N, "PutEventStreamRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "PutEventStreamInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      WriteEventStream = schema.new({
         id = id.from(_N, "PutEventStreamInput", "WriteEventStream"),
         type = "structure",
         name = "WriteEventStream",
         target_id = id.from(_N, "WriteEventStream"),
         target = M.WriteEventStream,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.PutEventStreamOutput = schema.new({
   id = id.from(_N, "PutEventStreamResponse"),
   type = "structure",
   members = {
      EventStream = schema.new({
         id = id.from(_N, "PutEventStreamOutput", "EventStream"),
         type = "structure",
         name = "EventStream",
         target_id = id.from(_N, "EventStream"),
         target = M.EventStream,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateAttributesRequest = schema.new({
   id = id.from(_N, "UpdateAttributesRequest"),
   type = "structure",
   members = {
      Blacklist = schema.new({
         id = id.from(_N, "UpdateAttributesRequest", "Blacklist"),
         type = "list",
         name = "Blacklist",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.RemoveAttributesInput = schema.new({
   id = id.from(_N, "RemoveAttributesRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "RemoveAttributesInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      AttributeType = schema.new({
         id = id.from(_N, "RemoveAttributesInput", "AttributeType"),
         type = "string",
         name = "AttributeType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      UpdateAttributesRequest = schema.new({
         id = id.from(_N, "RemoveAttributesInput", "UpdateAttributesRequest"),
         type = "structure",
         name = "UpdateAttributesRequest",
         target_id = id.from(_N, "UpdateAttributesRequest"),
         target = M.UpdateAttributesRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.RemoveAttributesOutput = schema.new({
   id = id.from(_N, "RemoveAttributesResponse"),
   type = "structure",
   members = {
      AttributesResource = schema.new({
         id = id.from(_N, "RemoveAttributesOutput", "AttributesResource"),
         type = "structure",
         name = "AttributesResource",
         target_id = id.from(_N, "AttributesResource"),
         target = M.AttributesResource,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SendMessagesInput = schema.new({
   id = id.from(_N, "SendMessagesRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "SendMessagesInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MessageRequest = schema.new({
         id = id.from(_N, "SendMessagesInput", "MessageRequest"),
         type = "structure",
         name = "MessageRequest",
         target_id = id.from(_N, "MessageRequest"),
         target = M.MessageRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SendMessagesOutput = schema.new({
   id = id.from(_N, "SendMessagesResponse"),
   type = "structure",
   members = {
      MessageResponse = schema.new({
         id = id.from(_N, "SendMessagesOutput", "MessageResponse"),
         type = "structure",
         name = "MessageResponse",
         target_id = id.from(_N, "MessageResponse"),
         target = M.MessageResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SendOTPMessageRequestParameters = schema.new({
   id = id.from(_N, "SendOTPMessageRequestParameters"),
   type = "structure",
   members = {
      AllowedAttempts = schema.new({
         id = id.from(_N, "SendOTPMessageRequestParameters", "AllowedAttempts"),
         type = "integer",
         name = "AllowedAttempts",
         target_id = prelude.Integer.id,
      }),
      BrandName = schema.new({
         id = id.from(_N, "SendOTPMessageRequestParameters", "BrandName"),
         type = "string",
         name = "BrandName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Channel = schema.new({
         id = id.from(_N, "SendOTPMessageRequestParameters", "Channel"),
         type = "string",
         name = "Channel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CodeLength = schema.new({
         id = id.from(_N, "SendOTPMessageRequestParameters", "CodeLength"),
         type = "integer",
         name = "CodeLength",
         target_id = prelude.Integer.id,
      }),
      DestinationIdentity = schema.new({
         id = id.from(_N, "SendOTPMessageRequestParameters", "DestinationIdentity"),
         type = "string",
         name = "DestinationIdentity",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EntityId = schema.new({
         id = id.from(_N, "SendOTPMessageRequestParameters", "EntityId"),
         type = "string",
         name = "EntityId",
         target_id = prelude.String.id,
      }),
      Language = schema.new({
         id = id.from(_N, "SendOTPMessageRequestParameters", "Language"),
         type = "string",
         name = "Language",
         target_id = prelude.String.id,
      }),
      OriginationIdentity = schema.new({
         id = id.from(_N, "SendOTPMessageRequestParameters", "OriginationIdentity"),
         type = "string",
         name = "OriginationIdentity",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ReferenceId = schema.new({
         id = id.from(_N, "SendOTPMessageRequestParameters", "ReferenceId"),
         type = "string",
         name = "ReferenceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateId = schema.new({
         id = id.from(_N, "SendOTPMessageRequestParameters", "TemplateId"),
         type = "string",
         name = "TemplateId",
         target_id = prelude.String.id,
      }),
      ValidityPeriod = schema.new({
         id = id.from(_N, "SendOTPMessageRequestParameters", "ValidityPeriod"),
         type = "integer",
         name = "ValidityPeriod",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SendOTPMessageInput = schema.new({
   id = id.from(_N, "SendOTPMessageRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "SendOTPMessageInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SendOTPMessageRequestParameters = schema.new({
         id = id.from(_N, "SendOTPMessageInput", "SendOTPMessageRequestParameters"),
         type = "structure",
         name = "SendOTPMessageRequestParameters",
         target_id = id.from(_N, "SendOTPMessageRequestParameters"),
         target = M.SendOTPMessageRequestParameters,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SendOTPMessageOutput = schema.new({
   id = id.from(_N, "SendOTPMessageResponse"),
   type = "structure",
   members = {
      MessageResponse = schema.new({
         id = id.from(_N, "SendOTPMessageOutput", "MessageResponse"),
         type = "structure",
         name = "MessageResponse",
         target_id = id.from(_N, "MessageResponse"),
         target = M.MessageResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SendUsersMessageRequest = schema.new({
   id = id.from(_N, "SendUsersMessageRequest"),
   type = "structure",
   members = {
      Context = schema.new({
         id = id.from(_N, "SendUsersMessageRequest", "Context"),
         type = "map",
         name = "Context",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      MessageConfiguration = schema.new({
         id = id.from(_N, "SendUsersMessageRequest", "MessageConfiguration"),
         type = "structure",
         name = "MessageConfiguration",
         target_id = id.from(_N, "DirectMessageConfiguration"),
         target = M.DirectMessageConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TemplateConfiguration = schema.new({
         id = id.from(_N, "SendUsersMessageRequest", "TemplateConfiguration"),
         type = "structure",
         name = "TemplateConfiguration",
         target_id = id.from(_N, "TemplateConfiguration"),
         target = M.TemplateConfiguration,
      }),
      TraceId = schema.new({
         id = id.from(_N, "SendUsersMessageRequest", "TraceId"),
         type = "string",
         name = "TraceId",
         target_id = prelude.String.id,
      }),
      Users = schema.new({
         id = id.from(_N, "SendUsersMessageRequest", "Users"),
         type = "map",
         name = "Users",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.EndpointSendConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SendUsersMessagesInput = schema.new({
   id = id.from(_N, "SendUsersMessagesRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "SendUsersMessagesInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SendUsersMessageRequest = schema.new({
         id = id.from(_N, "SendUsersMessagesInput", "SendUsersMessageRequest"),
         type = "structure",
         name = "SendUsersMessageRequest",
         target_id = id.from(_N, "SendUsersMessageRequest"),
         target = M.SendUsersMessageRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SendUsersMessageResponse = schema.new({
   id = id.from(_N, "SendUsersMessageResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "SendUsersMessageResponse", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RequestId = schema.new({
         id = id.from(_N, "SendUsersMessageResponse", "RequestId"),
         type = "string",
         name = "RequestId",
         target_id = prelude.String.id,
      }),
      Result = schema.new({
         id = id.from(_N, "SendUsersMessageResponse", "Result"),
         type = "map",
         name = "Result",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "map", map_key = prelude.String, map_value = M.EndpointMessageResult }),
      }),
   },
})

M.SendUsersMessagesOutput = schema.new({
   id = id.from(_N, "SendUsersMessagesResponse"),
   type = "structure",
   members = {
      SendUsersMessageResponse = schema.new({
         id = id.from(_N, "SendUsersMessagesOutput", "SendUsersMessageResponse"),
         type = "structure",
         name = "SendUsersMessageResponse",
         target_id = id.from(_N, "SendUsersMessageResponse"),
         target = M.SendUsersMessageResponse,
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
      ResourceArn = schema.new({
         id = id.from(_N, "TagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TagsModel = schema.new({
         id = id.from(_N, "TagResourceInput", "TagsModel"),
         type = "structure",
         name = "TagsModel",
         target_id = id.from(_N, "TagsModel"),
         target = M.TagsModel,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.TagResourceOutput = prelude.Unit

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "UntagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
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
            [traits.HTTP_QUERY] = { name = "tagKeys" },
         },
      }),
   },
})

M.UntagResourceOutput = prelude.Unit

M.UpdateAdmChannelInput = schema.new({
   id = id.from(_N, "UpdateAdmChannelRequest"),
   type = "structure",
   members = {
      ADMChannelRequest = schema.new({
         id = id.from(_N, "UpdateAdmChannelInput", "ADMChannelRequest"),
         type = "structure",
         name = "ADMChannelRequest",
         target_id = id.from(_N, "ADMChannelRequest"),
         target = M.ADMChannelRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateAdmChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateAdmChannelOutput = schema.new({
   id = id.from(_N, "UpdateAdmChannelResponse"),
   type = "structure",
   members = {
      ADMChannelResponse = schema.new({
         id = id.from(_N, "UpdateAdmChannelOutput", "ADMChannelResponse"),
         type = "structure",
         name = "ADMChannelResponse",
         target_id = id.from(_N, "ADMChannelResponse"),
         target = M.ADMChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateApnsChannelInput = schema.new({
   id = id.from(_N, "UpdateApnsChannelRequest"),
   type = "structure",
   members = {
      APNSChannelRequest = schema.new({
         id = id.from(_N, "UpdateApnsChannelInput", "APNSChannelRequest"),
         type = "structure",
         name = "APNSChannelRequest",
         target_id = id.from(_N, "APNSChannelRequest"),
         target = M.APNSChannelRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateApnsChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateApnsChannelOutput = schema.new({
   id = id.from(_N, "UpdateApnsChannelResponse"),
   type = "structure",
   members = {
      APNSChannelResponse = schema.new({
         id = id.from(_N, "UpdateApnsChannelOutput", "APNSChannelResponse"),
         type = "structure",
         name = "APNSChannelResponse",
         target_id = id.from(_N, "APNSChannelResponse"),
         target = M.APNSChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateApnsSandboxChannelInput = schema.new({
   id = id.from(_N, "UpdateApnsSandboxChannelRequest"),
   type = "structure",
   members = {
      APNSSandboxChannelRequest = schema.new({
         id = id.from(_N, "UpdateApnsSandboxChannelInput", "APNSSandboxChannelRequest"),
         type = "structure",
         name = "APNSSandboxChannelRequest",
         target_id = id.from(_N, "APNSSandboxChannelRequest"),
         target = M.APNSSandboxChannelRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateApnsSandboxChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateApnsSandboxChannelOutput = schema.new({
   id = id.from(_N, "UpdateApnsSandboxChannelResponse"),
   type = "structure",
   members = {
      APNSSandboxChannelResponse = schema.new({
         id = id.from(_N, "UpdateApnsSandboxChannelOutput", "APNSSandboxChannelResponse"),
         type = "structure",
         name = "APNSSandboxChannelResponse",
         target_id = id.from(_N, "APNSSandboxChannelResponse"),
         target = M.APNSSandboxChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateApnsVoipChannelInput = schema.new({
   id = id.from(_N, "UpdateApnsVoipChannelRequest"),
   type = "structure",
   members = {
      APNSVoipChannelRequest = schema.new({
         id = id.from(_N, "UpdateApnsVoipChannelInput", "APNSVoipChannelRequest"),
         type = "structure",
         name = "APNSVoipChannelRequest",
         target_id = id.from(_N, "APNSVoipChannelRequest"),
         target = M.APNSVoipChannelRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateApnsVoipChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateApnsVoipChannelOutput = schema.new({
   id = id.from(_N, "UpdateApnsVoipChannelResponse"),
   type = "structure",
   members = {
      APNSVoipChannelResponse = schema.new({
         id = id.from(_N, "UpdateApnsVoipChannelOutput", "APNSVoipChannelResponse"),
         type = "structure",
         name = "APNSVoipChannelResponse",
         target_id = id.from(_N, "APNSVoipChannelResponse"),
         target = M.APNSVoipChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateApnsVoipSandboxChannelInput = schema.new({
   id = id.from(_N, "UpdateApnsVoipSandboxChannelRequest"),
   type = "structure",
   members = {
      APNSVoipSandboxChannelRequest = schema.new({
         id = id.from(_N, "UpdateApnsVoipSandboxChannelInput", "APNSVoipSandboxChannelRequest"),
         type = "structure",
         name = "APNSVoipSandboxChannelRequest",
         target_id = id.from(_N, "APNSVoipSandboxChannelRequest"),
         target = M.APNSVoipSandboxChannelRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateApnsVoipSandboxChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateApnsVoipSandboxChannelOutput = schema.new({
   id = id.from(_N, "UpdateApnsVoipSandboxChannelResponse"),
   type = "structure",
   members = {
      APNSVoipSandboxChannelResponse = schema.new({
         id = id.from(_N, "UpdateApnsVoipSandboxChannelOutput", "APNSVoipSandboxChannelResponse"),
         type = "structure",
         name = "APNSVoipSandboxChannelResponse",
         target_id = id.from(_N, "APNSVoipSandboxChannelResponse"),
         target = M.APNSVoipSandboxChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.WriteApplicationSettingsRequest = schema.new({
   id = id.from(_N, "WriteApplicationSettingsRequest"),
   type = "structure",
   members = {
      CampaignHook = schema.new({
         id = id.from(_N, "WriteApplicationSettingsRequest", "CampaignHook"),
         type = "structure",
         name = "CampaignHook",
         target_id = id.from(_N, "CampaignHook"),
         target = M.CampaignHook,
      }),
      CloudWatchMetricsEnabled = schema.new({
         id = id.from(_N, "WriteApplicationSettingsRequest", "CloudWatchMetricsEnabled"),
         type = "boolean",
         name = "CloudWatchMetricsEnabled",
         target_id = prelude.Boolean.id,
      }),
      EventTaggingEnabled = schema.new({
         id = id.from(_N, "WriteApplicationSettingsRequest", "EventTaggingEnabled"),
         type = "boolean",
         name = "EventTaggingEnabled",
         target_id = prelude.Boolean.id,
      }),
      Limits = schema.new({
         id = id.from(_N, "WriteApplicationSettingsRequest", "Limits"),
         type = "structure",
         name = "Limits",
         target_id = id.from(_N, "CampaignLimits"),
         target = M.CampaignLimits,
      }),
      QuietTime = schema.new({
         id = id.from(_N, "WriteApplicationSettingsRequest", "QuietTime"),
         type = "structure",
         name = "QuietTime",
         target_id = id.from(_N, "QuietTime"),
         target = M.QuietTime,
      }),
      JourneyLimits = schema.new({
         id = id.from(_N, "WriteApplicationSettingsRequest", "JourneyLimits"),
         type = "structure",
         name = "JourneyLimits",
         target_id = id.from(_N, "ApplicationSettingsJourneyLimits"),
         target = M.ApplicationSettingsJourneyLimits,
      }),
   },
})

M.UpdateApplicationSettingsInput = schema.new({
   id = id.from(_N, "UpdateApplicationSettingsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateApplicationSettingsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      WriteApplicationSettingsRequest = schema.new({
         id = id.from(_N, "UpdateApplicationSettingsInput", "WriteApplicationSettingsRequest"),
         type = "structure",
         name = "WriteApplicationSettingsRequest",
         target_id = id.from(_N, "WriteApplicationSettingsRequest"),
         target = M.WriteApplicationSettingsRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateApplicationSettingsOutput = schema.new({
   id = id.from(_N, "UpdateApplicationSettingsResponse"),
   type = "structure",
   members = {
      ApplicationSettingsResource = schema.new({
         id = id.from(_N, "UpdateApplicationSettingsOutput", "ApplicationSettingsResource"),
         type = "structure",
         name = "ApplicationSettingsResource",
         target_id = id.from(_N, "ApplicationSettingsResource"),
         target = M.ApplicationSettingsResource,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateBaiduChannelInput = schema.new({
   id = id.from(_N, "UpdateBaiduChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateBaiduChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BaiduChannelRequest = schema.new({
         id = id.from(_N, "UpdateBaiduChannelInput", "BaiduChannelRequest"),
         type = "structure",
         name = "BaiduChannelRequest",
         target_id = id.from(_N, "BaiduChannelRequest"),
         target = M.BaiduChannelRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateBaiduChannelOutput = schema.new({
   id = id.from(_N, "UpdateBaiduChannelResponse"),
   type = "structure",
   members = {
      BaiduChannelResponse = schema.new({
         id = id.from(_N, "UpdateBaiduChannelOutput", "BaiduChannelResponse"),
         type = "structure",
         name = "BaiduChannelResponse",
         target_id = id.from(_N, "BaiduChannelResponse"),
         target = M.BaiduChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateCampaignInput = schema.new({
   id = id.from(_N, "UpdateCampaignRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateCampaignInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CampaignId = schema.new({
         id = id.from(_N, "UpdateCampaignInput", "CampaignId"),
         type = "string",
         name = "CampaignId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      WriteCampaignRequest = schema.new({
         id = id.from(_N, "UpdateCampaignInput", "WriteCampaignRequest"),
         type = "structure",
         name = "WriteCampaignRequest",
         target_id = id.from(_N, "WriteCampaignRequest"),
         target = M.WriteCampaignRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateCampaignOutput = schema.new({
   id = id.from(_N, "UpdateCampaignResponse"),
   type = "structure",
   members = {
      CampaignResponse = schema.new({
         id = id.from(_N, "UpdateCampaignOutput", "CampaignResponse"),
         type = "structure",
         name = "CampaignResponse",
         target_id = id.from(_N, "CampaignResponse"),
         target = M.CampaignResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateEmailChannelInput = schema.new({
   id = id.from(_N, "UpdateEmailChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateEmailChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EmailChannelRequest = schema.new({
         id = id.from(_N, "UpdateEmailChannelInput", "EmailChannelRequest"),
         type = "structure",
         name = "EmailChannelRequest",
         target_id = id.from(_N, "EmailChannelRequest"),
         target = M.EmailChannelRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateEmailChannelOutput = schema.new({
   id = id.from(_N, "UpdateEmailChannelResponse"),
   type = "structure",
   members = {
      EmailChannelResponse = schema.new({
         id = id.from(_N, "UpdateEmailChannelOutput", "EmailChannelResponse"),
         type = "structure",
         name = "EmailChannelResponse",
         target_id = id.from(_N, "EmailChannelResponse"),
         target = M.EmailChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateEmailTemplateInput = schema.new({
   id = id.from(_N, "UpdateEmailTemplateRequest"),
   type = "structure",
   members = {
      CreateNewVersion = schema.new({
         id = id.from(_N, "UpdateEmailTemplateInput", "CreateNewVersion"),
         type = "boolean",
         name = "CreateNewVersion",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "create-new-version" },
         },
      }),
      EmailTemplateRequest = schema.new({
         id = id.from(_N, "UpdateEmailTemplateInput", "EmailTemplateRequest"),
         type = "structure",
         name = "EmailTemplateRequest",
         target_id = id.from(_N, "EmailTemplateRequest"),
         target = M.EmailTemplateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      TemplateName = schema.new({
         id = id.from(_N, "UpdateEmailTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "UpdateEmailTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.UpdateEmailTemplateOutput = schema.new({
   id = id.from(_N, "UpdateEmailTemplateResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "UpdateEmailTemplateOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateEndpointInput = schema.new({
   id = id.from(_N, "UpdateEndpointRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateEndpointInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EndpointId = schema.new({
         id = id.from(_N, "UpdateEndpointInput", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EndpointRequest = schema.new({
         id = id.from(_N, "UpdateEndpointInput", "EndpointRequest"),
         type = "structure",
         name = "EndpointRequest",
         target_id = id.from(_N, "EndpointRequest"),
         target = M.EndpointRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateEndpointOutput = schema.new({
   id = id.from(_N, "UpdateEndpointResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "UpdateEndpointOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateEndpointsBatchInput = schema.new({
   id = id.from(_N, "UpdateEndpointsBatchRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateEndpointsBatchInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EndpointBatchRequest = schema.new({
         id = id.from(_N, "UpdateEndpointsBatchInput", "EndpointBatchRequest"),
         type = "structure",
         name = "EndpointBatchRequest",
         target_id = id.from(_N, "EndpointBatchRequest"),
         target = M.EndpointBatchRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateEndpointsBatchOutput = schema.new({
   id = id.from(_N, "UpdateEndpointsBatchResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "UpdateEndpointsBatchOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateGcmChannelInput = schema.new({
   id = id.from(_N, "UpdateGcmChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateGcmChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      GCMChannelRequest = schema.new({
         id = id.from(_N, "UpdateGcmChannelInput", "GCMChannelRequest"),
         type = "structure",
         name = "GCMChannelRequest",
         target_id = id.from(_N, "GCMChannelRequest"),
         target = M.GCMChannelRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateGcmChannelOutput = schema.new({
   id = id.from(_N, "UpdateGcmChannelResponse"),
   type = "structure",
   members = {
      GCMChannelResponse = schema.new({
         id = id.from(_N, "UpdateGcmChannelOutput", "GCMChannelResponse"),
         type = "structure",
         name = "GCMChannelResponse",
         target_id = id.from(_N, "GCMChannelResponse"),
         target = M.GCMChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateInAppTemplateInput = schema.new({
   id = id.from(_N, "UpdateInAppTemplateRequest"),
   type = "structure",
   members = {
      CreateNewVersion = schema.new({
         id = id.from(_N, "UpdateInAppTemplateInput", "CreateNewVersion"),
         type = "boolean",
         name = "CreateNewVersion",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "create-new-version" },
         },
      }),
      InAppTemplateRequest = schema.new({
         id = id.from(_N, "UpdateInAppTemplateInput", "InAppTemplateRequest"),
         type = "structure",
         name = "InAppTemplateRequest",
         target_id = id.from(_N, "InAppTemplateRequest"),
         target = M.InAppTemplateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      TemplateName = schema.new({
         id = id.from(_N, "UpdateInAppTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "UpdateInAppTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.UpdateInAppTemplateOutput = schema.new({
   id = id.from(_N, "UpdateInAppTemplateResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "UpdateInAppTemplateOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateJourneyInput = schema.new({
   id = id.from(_N, "UpdateJourneyRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateJourneyInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "UpdateJourneyInput", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      WriteJourneyRequest = schema.new({
         id = id.from(_N, "UpdateJourneyInput", "WriteJourneyRequest"),
         type = "structure",
         name = "WriteJourneyRequest",
         target_id = id.from(_N, "WriteJourneyRequest"),
         target = M.WriteJourneyRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateJourneyOutput = schema.new({
   id = id.from(_N, "UpdateJourneyResponse"),
   type = "structure",
   members = {
      JourneyResponse = schema.new({
         id = id.from(_N, "UpdateJourneyOutput", "JourneyResponse"),
         type = "structure",
         name = "JourneyResponse",
         target_id = id.from(_N, "JourneyResponse"),
         target = M.JourneyResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateJourneyStateInput = schema.new({
   id = id.from(_N, "UpdateJourneyStateRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateJourneyStateInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyId = schema.new({
         id = id.from(_N, "UpdateJourneyStateInput", "JourneyId"),
         type = "string",
         name = "JourneyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      JourneyStateRequest = schema.new({
         id = id.from(_N, "UpdateJourneyStateInput", "JourneyStateRequest"),
         type = "structure",
         name = "JourneyStateRequest",
         target_id = id.from(_N, "JourneyStateRequest"),
         target = M.JourneyStateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateJourneyStateOutput = schema.new({
   id = id.from(_N, "UpdateJourneyStateResponse"),
   type = "structure",
   members = {
      JourneyResponse = schema.new({
         id = id.from(_N, "UpdateJourneyStateOutput", "JourneyResponse"),
         type = "structure",
         name = "JourneyResponse",
         target_id = id.from(_N, "JourneyResponse"),
         target = M.JourneyResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdatePushTemplateInput = schema.new({
   id = id.from(_N, "UpdatePushTemplateRequest"),
   type = "structure",
   members = {
      CreateNewVersion = schema.new({
         id = id.from(_N, "UpdatePushTemplateInput", "CreateNewVersion"),
         type = "boolean",
         name = "CreateNewVersion",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "create-new-version" },
         },
      }),
      PushNotificationTemplateRequest = schema.new({
         id = id.from(_N, "UpdatePushTemplateInput", "PushNotificationTemplateRequest"),
         type = "structure",
         name = "PushNotificationTemplateRequest",
         target_id = id.from(_N, "PushNotificationTemplateRequest"),
         target = M.PushNotificationTemplateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      TemplateName = schema.new({
         id = id.from(_N, "UpdatePushTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "UpdatePushTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.UpdatePushTemplateOutput = schema.new({
   id = id.from(_N, "UpdatePushTemplateResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "UpdatePushTemplateOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateRecommenderConfigurationShape = schema.new({
   id = id.from(_N, "UpdateRecommenderConfigurationShape"),
   type = "structure",
   members = {
      Attributes = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationShape", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationShape", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationShape", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      RecommendationProviderIdType = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationShape", "RecommendationProviderIdType"),
         type = "string",
         name = "RecommendationProviderIdType",
         target_id = prelude.String.id,
      }),
      RecommendationProviderRoleArn = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationShape", "RecommendationProviderRoleArn"),
         type = "string",
         name = "RecommendationProviderRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecommendationProviderUri = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationShape", "RecommendationProviderUri"),
         type = "string",
         name = "RecommendationProviderUri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecommendationTransformerUri = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationShape", "RecommendationTransformerUri"),
         type = "string",
         name = "RecommendationTransformerUri",
         target_id = prelude.String.id,
      }),
      RecommendationsDisplayName = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationShape", "RecommendationsDisplayName"),
         type = "string",
         name = "RecommendationsDisplayName",
         target_id = prelude.String.id,
      }),
      RecommendationsPerMessage = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationShape", "RecommendationsPerMessage"),
         type = "integer",
         name = "RecommendationsPerMessage",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdateRecommenderConfigurationInput = schema.new({
   id = id.from(_N, "UpdateRecommenderConfigurationRequest"),
   type = "structure",
   members = {
      RecommenderId = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationInput", "RecommenderId"),
         type = "string",
         name = "RecommenderId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      UpdateRecommenderConfiguration = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationInput", "UpdateRecommenderConfiguration"),
         type = "structure",
         name = "UpdateRecommenderConfiguration",
         target_id = id.from(_N, "UpdateRecommenderConfigurationShape"),
         target = M.UpdateRecommenderConfigurationShape,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateRecommenderConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateRecommenderConfigurationResponse"),
   type = "structure",
   members = {
      RecommenderConfigurationResponse = schema.new({
         id = id.from(_N, "UpdateRecommenderConfigurationOutput", "RecommenderConfigurationResponse"),
         type = "structure",
         name = "RecommenderConfigurationResponse",
         target_id = id.from(_N, "RecommenderConfigurationResponse"),
         target = M.RecommenderConfigurationResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateSegmentInput = schema.new({
   id = id.from(_N, "UpdateSegmentRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateSegmentInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SegmentId = schema.new({
         id = id.from(_N, "UpdateSegmentInput", "SegmentId"),
         type = "string",
         name = "SegmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      WriteSegmentRequest = schema.new({
         id = id.from(_N, "UpdateSegmentInput", "WriteSegmentRequest"),
         type = "structure",
         name = "WriteSegmentRequest",
         target_id = id.from(_N, "WriteSegmentRequest"),
         target = M.WriteSegmentRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateSegmentOutput = schema.new({
   id = id.from(_N, "UpdateSegmentResponse"),
   type = "structure",
   members = {
      SegmentResponse = schema.new({
         id = id.from(_N, "UpdateSegmentOutput", "SegmentResponse"),
         type = "structure",
         name = "SegmentResponse",
         target_id = id.from(_N, "SegmentResponse"),
         target = M.SegmentResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SMSChannelRequest = schema.new({
   id = id.from(_N, "SMSChannelRequest"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "SMSChannelRequest", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      SenderId = schema.new({
         id = id.from(_N, "SMSChannelRequest", "SenderId"),
         type = "string",
         name = "SenderId",
         target_id = prelude.String.id,
      }),
      ShortCode = schema.new({
         id = id.from(_N, "SMSChannelRequest", "ShortCode"),
         type = "string",
         name = "ShortCode",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateSmsChannelInput = schema.new({
   id = id.from(_N, "UpdateSmsChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateSmsChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SMSChannelRequest = schema.new({
         id = id.from(_N, "UpdateSmsChannelInput", "SMSChannelRequest"),
         type = "structure",
         name = "SMSChannelRequest",
         target_id = id.from(_N, "SMSChannelRequest"),
         target = M.SMSChannelRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateSmsChannelOutput = schema.new({
   id = id.from(_N, "UpdateSmsChannelResponse"),
   type = "structure",
   members = {
      SMSChannelResponse = schema.new({
         id = id.from(_N, "UpdateSmsChannelOutput", "SMSChannelResponse"),
         type = "structure",
         name = "SMSChannelResponse",
         target_id = id.from(_N, "SMSChannelResponse"),
         target = M.SMSChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateSmsTemplateInput = schema.new({
   id = id.from(_N, "UpdateSmsTemplateRequest"),
   type = "structure",
   members = {
      CreateNewVersion = schema.new({
         id = id.from(_N, "UpdateSmsTemplateInput", "CreateNewVersion"),
         type = "boolean",
         name = "CreateNewVersion",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "create-new-version" },
         },
      }),
      SMSTemplateRequest = schema.new({
         id = id.from(_N, "UpdateSmsTemplateInput", "SMSTemplateRequest"),
         type = "structure",
         name = "SMSTemplateRequest",
         target_id = id.from(_N, "SMSTemplateRequest"),
         target = M.SMSTemplateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      TemplateName = schema.new({
         id = id.from(_N, "UpdateSmsTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "UpdateSmsTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.UpdateSmsTemplateOutput = schema.new({
   id = id.from(_N, "UpdateSmsTemplateResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "UpdateSmsTemplateOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.TemplateActiveVersionRequest = schema.new({
   id = id.from(_N, "TemplateActiveVersionRequest"),
   type = "structure",
   members = {
      Version = schema.new({
         id = id.from(_N, "TemplateActiveVersionRequest", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateTemplateActiveVersionInput = schema.new({
   id = id.from(_N, "UpdateTemplateActiveVersionRequest"),
   type = "structure",
   members = {
      TemplateActiveVersionRequest = schema.new({
         id = id.from(_N, "UpdateTemplateActiveVersionInput", "TemplateActiveVersionRequest"),
         type = "structure",
         name = "TemplateActiveVersionRequest",
         target_id = id.from(_N, "TemplateActiveVersionRequest"),
         target = M.TemplateActiveVersionRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      TemplateName = schema.new({
         id = id.from(_N, "UpdateTemplateActiveVersionInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TemplateType = schema.new({
         id = id.from(_N, "UpdateTemplateActiveVersionInput", "TemplateType"),
         type = "string",
         name = "TemplateType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateTemplateActiveVersionOutput = schema.new({
   id = id.from(_N, "UpdateTemplateActiveVersionResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "UpdateTemplateActiveVersionOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.VoiceChannelRequest = schema.new({
   id = id.from(_N, "VoiceChannelRequest"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "VoiceChannelRequest", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.UpdateVoiceChannelInput = schema.new({
   id = id.from(_N, "UpdateVoiceChannelRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateVoiceChannelInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VoiceChannelRequest = schema.new({
         id = id.from(_N, "UpdateVoiceChannelInput", "VoiceChannelRequest"),
         type = "structure",
         name = "VoiceChannelRequest",
         target_id = id.from(_N, "VoiceChannelRequest"),
         target = M.VoiceChannelRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateVoiceChannelOutput = schema.new({
   id = id.from(_N, "UpdateVoiceChannelResponse"),
   type = "structure",
   members = {
      VoiceChannelResponse = schema.new({
         id = id.from(_N, "UpdateVoiceChannelOutput", "VoiceChannelResponse"),
         type = "structure",
         name = "VoiceChannelResponse",
         target_id = id.from(_N, "VoiceChannelResponse"),
         target = M.VoiceChannelResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateVoiceTemplateInput = schema.new({
   id = id.from(_N, "UpdateVoiceTemplateRequest"),
   type = "structure",
   members = {
      CreateNewVersion = schema.new({
         id = id.from(_N, "UpdateVoiceTemplateInput", "CreateNewVersion"),
         type = "boolean",
         name = "CreateNewVersion",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "create-new-version" },
         },
      }),
      TemplateName = schema.new({
         id = id.from(_N, "UpdateVoiceTemplateInput", "TemplateName"),
         type = "string",
         name = "TemplateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "UpdateVoiceTemplateInput", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
      VoiceTemplateRequest = schema.new({
         id = id.from(_N, "UpdateVoiceTemplateInput", "VoiceTemplateRequest"),
         type = "structure",
         name = "VoiceTemplateRequest",
         target_id = id.from(_N, "VoiceTemplateRequest"),
         target = M.VoiceTemplateRequest,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateVoiceTemplateOutput = schema.new({
   id = id.from(_N, "UpdateVoiceTemplateResponse"),
   type = "structure",
   members = {
      MessageBody = schema.new({
         id = id.from(_N, "UpdateVoiceTemplateOutput", "MessageBody"),
         type = "structure",
         name = "MessageBody",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.VerifyOTPMessageRequestParameters = schema.new({
   id = id.from(_N, "VerifyOTPMessageRequestParameters"),
   type = "structure",
   members = {
      DestinationIdentity = schema.new({
         id = id.from(_N, "VerifyOTPMessageRequestParameters", "DestinationIdentity"),
         type = "string",
         name = "DestinationIdentity",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Otp = schema.new({
         id = id.from(_N, "VerifyOTPMessageRequestParameters", "Otp"),
         type = "string",
         name = "Otp",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ReferenceId = schema.new({
         id = id.from(_N, "VerifyOTPMessageRequestParameters", "ReferenceId"),
         type = "string",
         name = "ReferenceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VerifyOTPMessageInput = schema.new({
   id = id.from(_N, "VerifyOTPMessageRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "VerifyOTPMessageInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VerifyOTPMessageRequestParameters = schema.new({
         id = id.from(_N, "VerifyOTPMessageInput", "VerifyOTPMessageRequestParameters"),
         type = "structure",
         name = "VerifyOTPMessageRequestParameters",
         target_id = id.from(_N, "VerifyOTPMessageRequestParameters"),
         target = M.VerifyOTPMessageRequestParameters,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.VerificationResponse = schema.new({
   id = id.from(_N, "VerificationResponse"),
   type = "structure",
   members = {
      Valid = schema.new({
         id = id.from(_N, "VerificationResponse", "Valid"),
         type = "boolean",
         name = "Valid",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.VerifyOTPMessageOutput = schema.new({
   id = id.from(_N, "VerifyOTPMessageResponse"),
   type = "structure",
   members = {
      VerificationResponse = schema.new({
         id = id.from(_N, "VerifyOTPMessageOutput", "VerificationResponse"),
         type = "structure",
         name = "VerificationResponse",
         target_id = id.from(_N, "VerificationResponse"),
         target = M.VerificationResponse,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
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
   id = id.from("com.amazonaws.pinpoint", "Pinpoint"),
   version = "2016-12-01",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateApp = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreateApp"),
   input = M.CreateAppInput,
   output = M.CreateAppOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCampaign = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreateCampaign"),
   input = M.CreateCampaignInput,
   output = M.CreateCampaignOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps/{ApplicationId}/campaigns" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateEmailTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreateEmailTemplate"),
   input = M.CreateEmailTemplateInput,
   output = M.CreateEmailTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/templates/{TemplateName}/email" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateExportJob = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreateExportJob"),
   input = M.CreateExportJobInput,
   output = M.CreateExportJobOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps/{ApplicationId}/jobs/export" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateImportJob = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreateImportJob"),
   input = M.CreateImportJobInput,
   output = M.CreateImportJobOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps/{ApplicationId}/jobs/import" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateInAppTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreateInAppTemplate"),
   input = M.CreateInAppTemplateInput,
   output = M.CreateInAppTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/templates/{TemplateName}/inapp" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateJourney = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreateJourney"),
   input = M.CreateJourneyInput,
   output = M.CreateJourneyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps/{ApplicationId}/journeys" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePushTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreatePushTemplate"),
   input = M.CreatePushTemplateInput,
   output = M.CreatePushTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/templates/{TemplateName}/push" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRecommenderConfiguration = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreateRecommenderConfiguration"),
   input = M.CreateRecommenderConfigurationInput,
   output = M.CreateRecommenderConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/recommenders" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSegment = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreateSegment"),
   input = M.CreateSegmentInput,
   output = M.CreateSegmentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps/{ApplicationId}/segments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSmsTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreateSmsTemplate"),
   input = M.CreateSmsTemplateInput,
   output = M.CreateSmsTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/templates/{TemplateName}/sms" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateVoiceTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "CreateVoiceTemplate"),
   input = M.CreateVoiceTemplateInput,
   output = M.CreateVoiceTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/templates/{TemplateName}/voice" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAdmChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteAdmChannel"),
   input = M.DeleteAdmChannelInput,
   output = M.DeleteAdmChannelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/channels/adm" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApnsChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteApnsChannel"),
   input = M.DeleteApnsChannelInput,
   output = M.DeleteApnsChannelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/channels/apns" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApnsSandboxChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteApnsSandboxChannel"),
   input = M.DeleteApnsSandboxChannelInput,
   output = M.DeleteApnsSandboxChannelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/channels/apns_sandbox" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApnsVoipChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteApnsVoipChannel"),
   input = M.DeleteApnsVoipChannelInput,
   output = M.DeleteApnsVoipChannelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/channels/apns_voip" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApnsVoipSandboxChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteApnsVoipSandboxChannel"),
   input = M.DeleteApnsVoipSandboxChannelInput,
   output = M.DeleteApnsVoipSandboxChannelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApp = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteApp"),
   input = M.DeleteAppInput,
   output = M.DeleteAppOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBaiduChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteBaiduChannel"),
   input = M.DeleteBaiduChannelInput,
   output = M.DeleteBaiduChannelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/channels/baidu" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCampaign = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteCampaign"),
   input = M.DeleteCampaignInput,
   output = M.DeleteCampaignOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEmailChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteEmailChannel"),
   input = M.DeleteEmailChannelInput,
   output = M.DeleteEmailChannelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/channels/email" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEmailTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteEmailTemplate"),
   input = M.DeleteEmailTemplateInput,
   output = M.DeleteEmailTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/templates/{TemplateName}/email" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEndpoint = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteEndpoint"),
   input = M.DeleteEndpointInput,
   output = M.DeleteEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEventStream = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteEventStream"),
   input = M.DeleteEventStreamInput,
   output = M.DeleteEventStreamOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/eventstream" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteGcmChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteGcmChannel"),
   input = M.DeleteGcmChannelInput,
   output = M.DeleteGcmChannelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/channels/gcm" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteInAppTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteInAppTemplate"),
   input = M.DeleteInAppTemplateInput,
   output = M.DeleteInAppTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/templates/{TemplateName}/inapp" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteJourney = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteJourney"),
   input = M.DeleteJourneyInput,
   output = M.DeleteJourneyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePushTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeletePushTemplate"),
   input = M.DeletePushTemplateInput,
   output = M.DeletePushTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/templates/{TemplateName}/push" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRecommenderConfiguration = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteRecommenderConfiguration"),
   input = M.DeleteRecommenderConfigurationInput,
   output = M.DeleteRecommenderConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/recommenders/{RecommenderId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSegment = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteSegment"),
   input = M.DeleteSegmentInput,
   output = M.DeleteSegmentOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/segments/{SegmentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSmsChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteSmsChannel"),
   input = M.DeleteSmsChannelInput,
   output = M.DeleteSmsChannelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/channels/sms" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSmsTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteSmsTemplate"),
   input = M.DeleteSmsTemplateInput,
   output = M.DeleteSmsTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/templates/{TemplateName}/sms" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteUserEndpoints = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteUserEndpoints"),
   input = M.DeleteUserEndpointsInput,
   output = M.DeleteUserEndpointsOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/users/{UserId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteVoiceChannel"),
   input = M.DeleteVoiceChannelInput,
   output = M.DeleteVoiceChannelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/apps/{ApplicationId}/channels/voice" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "DeleteVoiceTemplate"),
   input = M.DeleteVoiceTemplateInput,
   output = M.DeleteVoiceTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/templates/{TemplateName}/voice" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAdmChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetAdmChannel"),
   input = M.GetAdmChannelInput,
   output = M.GetAdmChannelOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/channels/adm" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApnsChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetApnsChannel"),
   input = M.GetApnsChannelInput,
   output = M.GetApnsChannelOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/channels/apns" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApnsSandboxChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetApnsSandboxChannel"),
   input = M.GetApnsSandboxChannelInput,
   output = M.GetApnsSandboxChannelOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/channels/apns_sandbox" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApnsVoipChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetApnsVoipChannel"),
   input = M.GetApnsVoipChannelInput,
   output = M.GetApnsVoipChannelOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/channels/apns_voip" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApnsVoipSandboxChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetApnsVoipSandboxChannel"),
   input = M.GetApnsVoipSandboxChannelInput,
   output = M.GetApnsVoipSandboxChannelOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApp = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetApp"),
   input = M.GetAppInput,
   output = M.GetAppOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApplicationDateRangeKpi = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetApplicationDateRangeKpi"),
   input = M.GetApplicationDateRangeKpiInput,
   output = M.GetApplicationDateRangeKpiOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/kpis/daterange/{KpiName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApplicationSettings = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetApplicationSettings"),
   input = M.GetApplicationSettingsInput,
   output = M.GetApplicationSettingsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/settings" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApps = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetApps"),
   input = M.GetAppsInput,
   output = M.GetAppsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBaiduChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetBaiduChannel"),
   input = M.GetBaiduChannelInput,
   output = M.GetBaiduChannelOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/channels/baidu" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCampaign = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetCampaign"),
   input = M.GetCampaignInput,
   output = M.GetCampaignOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCampaignActivities = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetCampaignActivities"),
   input = M.GetCampaignActivitiesInput,
   output = M.GetCampaignActivitiesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/activities" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCampaignDateRangeKpi = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetCampaignDateRangeKpi"),
   input = M.GetCampaignDateRangeKpiInput,
   output = M.GetCampaignDateRangeKpiOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/kpis/daterange/{KpiName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCampaigns = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetCampaigns"),
   input = M.GetCampaignsInput,
   output = M.GetCampaignsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/campaigns" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCampaignVersion = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetCampaignVersion"),
   input = M.GetCampaignVersionInput,
   output = M.GetCampaignVersionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions/{Version}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCampaignVersions = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetCampaignVersions"),
   input = M.GetCampaignVersionsInput,
   output = M.GetCampaignVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetChannels = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetChannels"),
   input = M.GetChannelsInput,
   output = M.GetChannelsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/channels" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEmailChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetEmailChannel"),
   input = M.GetEmailChannelInput,
   output = M.GetEmailChannelOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/channels/email" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEmailTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetEmailTemplate"),
   input = M.GetEmailTemplateInput,
   output = M.GetEmailTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/templates/{TemplateName}/email" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEndpoint = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetEndpoint"),
   input = M.GetEndpointInput,
   output = M.GetEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEventStream = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetEventStream"),
   input = M.GetEventStreamInput,
   output = M.GetEventStreamOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/eventstream" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetExportJob = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetExportJob"),
   input = M.GetExportJobInput,
   output = M.GetExportJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/jobs/export/{JobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetExportJobs = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetExportJobs"),
   input = M.GetExportJobsInput,
   output = M.GetExportJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/jobs/export" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetGcmChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetGcmChannel"),
   input = M.GetGcmChannelInput,
   output = M.GetGcmChannelOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/channels/gcm" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetImportJob = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetImportJob"),
   input = M.GetImportJobInput,
   output = M.GetImportJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/jobs/import/{JobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetImportJobs = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetImportJobs"),
   input = M.GetImportJobsInput,
   output = M.GetImportJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/jobs/import" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetInAppMessages = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetInAppMessages"),
   input = M.GetInAppMessagesInput,
   output = M.GetInAppMessagesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}/inappmessages" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetInAppTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetInAppTemplate"),
   input = M.GetInAppTemplateInput,
   output = M.GetInAppTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/templates/{TemplateName}/inapp" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetJourney = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetJourney"),
   input = M.GetJourneyInput,
   output = M.GetJourneyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetJourneyDateRangeKpi = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetJourneyDateRangeKpi"),
   input = M.GetJourneyDateRangeKpiInput,
   output = M.GetJourneyDateRangeKpiOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/kpis/daterange/{KpiName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetJourneyExecutionActivityMetrics = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetJourneyExecutionActivityMetrics"),
   input = M.GetJourneyExecutionActivityMetricsInput,
   output = M.GetJourneyExecutionActivityMetricsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/activities/{JourneyActivityId}/execution-metrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetJourneyExecutionMetrics = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetJourneyExecutionMetrics"),
   input = M.GetJourneyExecutionMetricsInput,
   output = M.GetJourneyExecutionMetricsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/execution-metrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetJourneyRunExecutionActivityMetrics = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetJourneyRunExecutionActivityMetrics"),
   input = M.GetJourneyRunExecutionActivityMetricsInput,
   output = M.GetJourneyRunExecutionActivityMetricsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/activities/{JourneyActivityId}/execution-metrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetJourneyRunExecutionMetrics = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetJourneyRunExecutionMetrics"),
   input = M.GetJourneyRunExecutionMetricsInput,
   output = M.GetJourneyRunExecutionMetricsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/execution-metrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetJourneyRuns = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetJourneyRuns"),
   input = M.GetJourneyRunsInput,
   output = M.GetJourneyRunsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPushTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetPushTemplate"),
   input = M.GetPushTemplateInput,
   output = M.GetPushTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/templates/{TemplateName}/push" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRecommenderConfiguration = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetRecommenderConfiguration"),
   input = M.GetRecommenderConfigurationInput,
   output = M.GetRecommenderConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/recommenders/{RecommenderId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRecommenderConfigurations = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetRecommenderConfigurations"),
   input = M.GetRecommenderConfigurationsInput,
   output = M.GetRecommenderConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/recommenders" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSegment = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetSegment"),
   input = M.GetSegmentInput,
   output = M.GetSegmentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/segments/{SegmentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSegmentExportJobs = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetSegmentExportJobs"),
   input = M.GetSegmentExportJobsInput,
   output = M.GetSegmentExportJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/export" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSegmentImportJobs = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetSegmentImportJobs"),
   input = M.GetSegmentImportJobsInput,
   output = M.GetSegmentImportJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/import" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSegments = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetSegments"),
   input = M.GetSegmentsInput,
   output = M.GetSegmentsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/segments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSegmentVersion = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetSegmentVersion"),
   input = M.GetSegmentVersionInput,
   output = M.GetSegmentVersionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions/{Version}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSegmentVersions = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetSegmentVersions"),
   input = M.GetSegmentVersionsInput,
   output = M.GetSegmentVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSmsChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetSmsChannel"),
   input = M.GetSmsChannelInput,
   output = M.GetSmsChannelOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/channels/sms" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSmsTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetSmsTemplate"),
   input = M.GetSmsTemplateInput,
   output = M.GetSmsTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/templates/{TemplateName}/sms" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetUserEndpoints = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetUserEndpoints"),
   input = M.GetUserEndpointsInput,
   output = M.GetUserEndpointsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/users/{UserId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetVoiceChannel"),
   input = M.GetVoiceChannelInput,
   output = M.GetVoiceChannelOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/channels/voice" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "GetVoiceTemplate"),
   input = M.GetVoiceTemplateInput,
   output = M.GetVoiceTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/templates/{TemplateName}/voice" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListJourneys = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "ListJourneys"),
   input = M.ListJourneysInput,
   output = M.ListJourneysOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/apps/{ApplicationId}/journeys" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTemplates = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "ListTemplates"),
   input = M.ListTemplatesInput,
   output = M.ListTemplatesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/templates" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTemplateVersions = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "ListTemplateVersions"),
   input = M.ListTemplateVersionsInput,
   output = M.ListTemplateVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/templates/{TemplateName}/{TemplateType}/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PhoneNumberValidate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "PhoneNumberValidate"),
   input = M.PhoneNumberValidateInput,
   output = M.PhoneNumberValidateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/phone/number/validate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutEvents = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "PutEvents"),
   input = M.PutEventsInput,
   output = M.PutEventsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps/{ApplicationId}/events" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutEventStream = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "PutEventStream"),
   input = M.PutEventStreamInput,
   output = M.PutEventStreamOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps/{ApplicationId}/eventstream" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveAttributes = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "RemoveAttributes"),
   input = M.RemoveAttributesInput,
   output = M.RemoveAttributesOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/attributes/{AttributeType}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendMessages = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "SendMessages"),
   input = M.SendMessagesInput,
   output = M.SendMessagesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps/{ApplicationId}/messages" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendOTPMessage = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "SendOTPMessage"),
   input = M.SendOTPMessageInput,
   output = M.SendOTPMessageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps/{ApplicationId}/otp" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendUsersMessages = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "SendUsersMessages"),
   input = M.SendUsersMessagesInput,
   output = M.SendUsersMessagesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps/{ApplicationId}/users-messages" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAdmChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateAdmChannel"),
   input = M.UpdateAdmChannelInput,
   output = M.UpdateAdmChannelOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/channels/adm" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApnsChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateApnsChannel"),
   input = M.UpdateApnsChannelInput,
   output = M.UpdateApnsChannelOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/channels/apns" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApnsSandboxChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateApnsSandboxChannel"),
   input = M.UpdateApnsSandboxChannelInput,
   output = M.UpdateApnsSandboxChannelOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/channels/apns_sandbox" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApnsVoipChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateApnsVoipChannel"),
   input = M.UpdateApnsVoipChannelInput,
   output = M.UpdateApnsVoipChannelOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/channels/apns_voip" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApnsVoipSandboxChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateApnsVoipSandboxChannel"),
   input = M.UpdateApnsVoipSandboxChannelInput,
   output = M.UpdateApnsVoipSandboxChannelOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApplicationSettings = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateApplicationSettings"),
   input = M.UpdateApplicationSettingsInput,
   output = M.UpdateApplicationSettingsOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/settings" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBaiduChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateBaiduChannel"),
   input = M.UpdateBaiduChannelInput,
   output = M.UpdateBaiduChannelOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/channels/baidu" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCampaign = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateCampaign"),
   input = M.UpdateCampaignInput,
   output = M.UpdateCampaignOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEmailChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateEmailChannel"),
   input = M.UpdateEmailChannelInput,
   output = M.UpdateEmailChannelOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/channels/email" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEmailTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateEmailTemplate"),
   input = M.UpdateEmailTemplateInput,
   output = M.UpdateEmailTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/templates/{TemplateName}/email" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEndpoint = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateEndpoint"),
   input = M.UpdateEndpointInput,
   output = M.UpdateEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEndpointsBatch = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateEndpointsBatch"),
   input = M.UpdateEndpointsBatchInput,
   output = M.UpdateEndpointsBatchOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/endpoints" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateGcmChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateGcmChannel"),
   input = M.UpdateGcmChannelInput,
   output = M.UpdateGcmChannelOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/channels/gcm" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateInAppTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateInAppTemplate"),
   input = M.UpdateInAppTemplateInput,
   output = M.UpdateInAppTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/templates/{TemplateName}/inapp" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateJourney = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateJourney"),
   input = M.UpdateJourneyInput,
   output = M.UpdateJourneyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateJourneyState = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateJourneyState"),
   input = M.UpdateJourneyStateInput,
   output = M.UpdateJourneyStateOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/state" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePushTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdatePushTemplate"),
   input = M.UpdatePushTemplateInput,
   output = M.UpdatePushTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/templates/{TemplateName}/push" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRecommenderConfiguration = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateRecommenderConfiguration"),
   input = M.UpdateRecommenderConfigurationInput,
   output = M.UpdateRecommenderConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/recommenders/{RecommenderId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSegment = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateSegment"),
   input = M.UpdateSegmentInput,
   output = M.UpdateSegmentOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/segments/{SegmentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSmsChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateSmsChannel"),
   input = M.UpdateSmsChannelInput,
   output = M.UpdateSmsChannelOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/channels/sms" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSmsTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateSmsTemplate"),
   input = M.UpdateSmsTemplateInput,
   output = M.UpdateSmsTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/templates/{TemplateName}/sms" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateTemplateActiveVersion = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateTemplateActiveVersion"),
   input = M.UpdateTemplateActiveVersionInput,
   output = M.UpdateTemplateActiveVersionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/templates/{TemplateName}/{TemplateType}/active-version" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateVoiceChannel = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateVoiceChannel"),
   input = M.UpdateVoiceChannelInput,
   output = M.UpdateVoiceChannelOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/apps/{ApplicationId}/channels/voice" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateVoiceTemplate = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "UpdateVoiceTemplate"),
   input = M.UpdateVoiceTemplateInput,
   output = M.UpdateVoiceTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/templates/{TemplateName}/voice" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.VerifyOTPMessage = schema.operation({
   id = id.from("com.amazonaws.pinpoint", "VerifyOTPMessage"),
   input = M.VerifyOTPMessageInput,
   output = M.VerifyOTPMessageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/apps/{ApplicationId}/verify-otp" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
