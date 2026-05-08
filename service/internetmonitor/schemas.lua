

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.internetmonitor"

local M = {}

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeys = schema.new({ type = "list", list_member = prelude.String })

M.InternetEventsList = schema.new({ type = "list", list_member = M.InternetEventSummary })

M.MonitorList = schema.new({ type = "list", list_member = M.Monitor })

M.SetOfARNs = schema.new({ type = "list", list_member = prelude.String })

M.QueryFields = schema.new({ type = "list", list_member = M.QueryField })

M.QueryData = schema.new({ type = "list", list_member = M.QueryRow })

M.FilterParameters = schema.new({ type = "list", list_member = M.FilterParameter })

M.HealthEventList = schema.new({ type = "list", list_member = M.HealthEvent })

M.ImpactedLocationsList = schema.new({ type = "list", list_member = M.ImpactedLocation })

M.QueryRow = schema.new({ type = "list", list_member = prelude.String })

M.FilterList = schema.new({ type = "list", list_member = prelude.String })

M.Ipv4PrefixList = schema.new({ type = "list", list_member = prelude.String })

M.NetworkList = schema.new({ type = "list", list_member = M.Network })

M.AccessDeniedException = schema.new({
   id = id.from(_N, "AccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "AccessDeniedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AvailabilityMeasurement = schema.new({
   id = id.from(_N, "AvailabilityMeasurement"),
   type = "structure",
   members = {
      ExperienceScore = schema.new({
         id = id.from(_N, "AvailabilityMeasurement", "ExperienceScore"),
         type = "double",
         name = "ExperienceScore",
         target_id = prelude.Double.id,
      }),
      PercentOfTotalTrafficImpacted = schema.new({
         id = id.from(_N, "AvailabilityMeasurement", "PercentOfTotalTrafficImpacted"),
         type = "double",
         name = "PercentOfTotalTrafficImpacted",
         target_id = prelude.Double.id,
      }),
      PercentOfClientLocationImpacted = schema.new({
         id = id.from(_N, "AvailabilityMeasurement", "PercentOfClientLocationImpacted"),
         type = "double",
         name = "PercentOfClientLocationImpacted",
         target_id = prelude.Double.id,
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
      message = schema.new({
         id = id.from(_N, "BadRequestException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ClientLocation = schema.new({
   id = id.from(_N, "ClientLocation"),
   type = "structure",
   members = {
      ASName = schema.new({
         id = id.from(_N, "ClientLocation", "ASName"),
         type = "string",
         name = "ASName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ASNumber = schema.new({
         id = id.from(_N, "ClientLocation", "ASNumber"),
         type = "long",
         name = "ASNumber",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Country = schema.new({
         id = id.from(_N, "ClientLocation", "Country"),
         type = "string",
         name = "Country",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Subdivision = schema.new({
         id = id.from(_N, "ClientLocation", "Subdivision"),
         type = "string",
         name = "Subdivision",
         target_id = prelude.String.id,
      }),
      Metro = schema.new({
         id = id.from(_N, "ClientLocation", "Metro"),
         type = "string",
         name = "Metro",
         target_id = prelude.String.id,
      }),
      City = schema.new({
         id = id.from(_N, "ClientLocation", "City"),
         type = "string",
         name = "City",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Latitude = schema.new({
         id = id.from(_N, "ClientLocation", "Latitude"),
         type = "double",
         name = "Latitude",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Longitude = schema.new({
         id = id.from(_N, "ClientLocation", "Longitude"),
         type = "double",
         name = "Longitude",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
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

M.LocalHealthEventsConfig = schema.new({
   id = id.from(_N, "LocalHealthEventsConfig"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "LocalHealthEventsConfig", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      HealthScoreThreshold = schema.new({
         id = id.from(_N, "LocalHealthEventsConfig", "HealthScoreThreshold"),
         type = "double",
         name = "HealthScoreThreshold",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      MinTrafficImpact = schema.new({
         id = id.from(_N, "LocalHealthEventsConfig", "MinTrafficImpact"),
         type = "double",
         name = "MinTrafficImpact",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.HealthEventsConfig = schema.new({
   id = id.from(_N, "HealthEventsConfig"),
   type = "structure",
   members = {
      AvailabilityScoreThreshold = schema.new({
         id = id.from(_N, "HealthEventsConfig", "AvailabilityScoreThreshold"),
         type = "double",
         name = "AvailabilityScoreThreshold",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      PerformanceScoreThreshold = schema.new({
         id = id.from(_N, "HealthEventsConfig", "PerformanceScoreThreshold"),
         type = "double",
         name = "PerformanceScoreThreshold",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      AvailabilityLocalHealthEventsConfig = schema.new({
         id = id.from(_N, "HealthEventsConfig", "AvailabilityLocalHealthEventsConfig"),
         type = "structure",
         name = "AvailabilityLocalHealthEventsConfig",
         target_id = id.from(_N, "LocalHealthEventsConfig"),
         target = M.LocalHealthEventsConfig,
      }),
      PerformanceLocalHealthEventsConfig = schema.new({
         id = id.from(_N, "HealthEventsConfig", "PerformanceLocalHealthEventsConfig"),
         type = "structure",
         name = "PerformanceLocalHealthEventsConfig",
         target_id = id.from(_N, "LocalHealthEventsConfig"),
         target = M.LocalHealthEventsConfig,
      }),
   },
})

M.S3Config = schema.new({
   id = id.from(_N, "S3Config"),
   type = "structure",
   members = {
      BucketName = schema.new({
         id = id.from(_N, "S3Config", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
      }),
      BucketPrefix = schema.new({
         id = id.from(_N, "S3Config", "BucketPrefix"),
         type = "string",
         name = "BucketPrefix",
         target_id = prelude.String.id,
      }),
      LogDeliveryStatus = schema.new({
         id = id.from(_N, "S3Config", "LogDeliveryStatus"),
         type = "string",
         name = "LogDeliveryStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.InternetMeasurementsLogDelivery = schema.new({
   id = id.from(_N, "InternetMeasurementsLogDelivery"),
   type = "structure",
   members = {
      S3Config = schema.new({
         id = id.from(_N, "InternetMeasurementsLogDelivery", "S3Config"),
         type = "structure",
         name = "S3Config",
         target_id = id.from(_N, "S3Config"),
         target = M.S3Config,
      }),
   },
})

M.CreateMonitorInput = schema.new({
   id = id.from(_N, "CreateMonitorInput"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "CreateMonitorInput", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Resources = schema.new({
         id = id.from(_N, "CreateMonitorInput", "Resources"),
         type = "list",
         name = "Resources",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateMonitorInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateMonitorInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      MaxCityNetworksToMonitor = schema.new({
         id = id.from(_N, "CreateMonitorInput", "MaxCityNetworksToMonitor"),
         type = "integer",
         name = "MaxCityNetworksToMonitor",
         target_id = prelude.Integer.id,
      }),
      InternetMeasurementsLogDelivery = schema.new({
         id = id.from(_N, "CreateMonitorInput", "InternetMeasurementsLogDelivery"),
         type = "structure",
         name = "InternetMeasurementsLogDelivery",
         target_id = id.from(_N, "InternetMeasurementsLogDelivery"),
         target = M.InternetMeasurementsLogDelivery,
      }),
      TrafficPercentageToMonitor = schema.new({
         id = id.from(_N, "CreateMonitorInput", "TrafficPercentageToMonitor"),
         type = "integer",
         name = "TrafficPercentageToMonitor",
         target_id = prelude.Integer.id,
      }),
      HealthEventsConfig = schema.new({
         id = id.from(_N, "CreateMonitorInput", "HealthEventsConfig"),
         type = "structure",
         name = "HealthEventsConfig",
         target_id = id.from(_N, "HealthEventsConfig"),
         target = M.HealthEventsConfig,
      }),
   },
})

M.CreateMonitorOutput = schema.new({
   id = id.from(_N, "CreateMonitorOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "CreateMonitorOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CreateMonitorOutput", "Status"),
         type = "string",
         name = "Status",
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
      message = schema.new({
         id = id.from(_N, "LimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
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

M.DeleteMonitorInput = schema.new({
   id = id.from(_N, "DeleteMonitorInput"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "DeleteMonitorInput", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteMonitorOutput = schema.new({
   id = id.from(_N, "DeleteMonitorOutput"),
   type = "structure",
})

M.FilterParameter = schema.new({
   id = id.from(_N, "FilterParameter"),
   type = "structure",
   members = {
      Field = schema.new({
         id = id.from(_N, "FilterParameter", "Field"),
         type = "string",
         name = "Field",
         target_id = prelude.String.id,
      }),
      Operator = schema.new({
         id = id.from(_N, "FilterParameter", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
      }),
      Values = schema.new({
         id = id.from(_N, "FilterParameter", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetHealthEventInput = schema.new({
   id = id.from(_N, "GetHealthEventInput"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "GetHealthEventInput", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EventId = schema.new({
         id = id.from(_N, "GetHealthEventInput", "EventId"),
         type = "string",
         name = "EventId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      LinkedAccountId = schema.new({
         id = id.from(_N, "GetHealthEventInput", "LinkedAccountId"),
         type = "string",
         name = "LinkedAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "LinkedAccountId" },
         },
      }),
   },
})

M.Network = schema.new({
   id = id.from(_N, "Network"),
   type = "structure",
   members = {
      ASName = schema.new({
         id = id.from(_N, "Network", "ASName"),
         type = "string",
         name = "ASName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ASNumber = schema.new({
         id = id.from(_N, "Network", "ASNumber"),
         type = "long",
         name = "ASNumber",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NetworkImpairment = schema.new({
   id = id.from(_N, "NetworkImpairment"),
   type = "structure",
   members = {
      Networks = schema.new({
         id = id.from(_N, "NetworkImpairment", "Networks"),
         type = "list",
         name = "Networks",
         target_id = prelude.Document.id,
         list_member = M.Network,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AsPath = schema.new({
         id = id.from(_N, "NetworkImpairment", "AsPath"),
         type = "list",
         name = "AsPath",
         target_id = prelude.Document.id,
         list_member = M.Network,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NetworkEventType = schema.new({
         id = id.from(_N, "NetworkImpairment", "NetworkEventType"),
         type = "string",
         name = "NetworkEventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RoundTripTime = schema.new({
   id = id.from(_N, "RoundTripTime"),
   type = "structure",
   members = {
      P50 = schema.new({
         id = id.from(_N, "RoundTripTime", "P50"),
         type = "double",
         name = "P50",
         target_id = prelude.Double.id,
      }),
      P90 = schema.new({
         id = id.from(_N, "RoundTripTime", "P90"),
         type = "double",
         name = "P90",
         target_id = prelude.Double.id,
      }),
      P95 = schema.new({
         id = id.from(_N, "RoundTripTime", "P95"),
         type = "double",
         name = "P95",
         target_id = prelude.Double.id,
      }),
   },
})

M.PerformanceMeasurement = schema.new({
   id = id.from(_N, "PerformanceMeasurement"),
   type = "structure",
   members = {
      ExperienceScore = schema.new({
         id = id.from(_N, "PerformanceMeasurement", "ExperienceScore"),
         type = "double",
         name = "ExperienceScore",
         target_id = prelude.Double.id,
      }),
      PercentOfTotalTrafficImpacted = schema.new({
         id = id.from(_N, "PerformanceMeasurement", "PercentOfTotalTrafficImpacted"),
         type = "double",
         name = "PercentOfTotalTrafficImpacted",
         target_id = prelude.Double.id,
      }),
      PercentOfClientLocationImpacted = schema.new({
         id = id.from(_N, "PerformanceMeasurement", "PercentOfClientLocationImpacted"),
         type = "double",
         name = "PercentOfClientLocationImpacted",
         target_id = prelude.Double.id,
      }),
      RoundTripTime = schema.new({
         id = id.from(_N, "PerformanceMeasurement", "RoundTripTime"),
         type = "structure",
         name = "RoundTripTime",
         target_id = id.from(_N, "RoundTripTime"),
         target = M.RoundTripTime,
      }),
   },
})

M.InternetHealth = schema.new({
   id = id.from(_N, "InternetHealth"),
   type = "structure",
   members = {
      Availability = schema.new({
         id = id.from(_N, "InternetHealth", "Availability"),
         type = "structure",
         name = "Availability",
         target_id = id.from(_N, "AvailabilityMeasurement"),
         target = M.AvailabilityMeasurement,
      }),
      Performance = schema.new({
         id = id.from(_N, "InternetHealth", "Performance"),
         type = "structure",
         name = "Performance",
         target_id = id.from(_N, "PerformanceMeasurement"),
         target = M.PerformanceMeasurement,
      }),
   },
})

M.ImpactedLocation = schema.new({
   id = id.from(_N, "ImpactedLocation"),
   type = "structure",
   members = {
      ASName = schema.new({
         id = id.from(_N, "ImpactedLocation", "ASName"),
         type = "string",
         name = "ASName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ASNumber = schema.new({
         id = id.from(_N, "ImpactedLocation", "ASNumber"),
         type = "long",
         name = "ASNumber",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Country = schema.new({
         id = id.from(_N, "ImpactedLocation", "Country"),
         type = "string",
         name = "Country",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Subdivision = schema.new({
         id = id.from(_N, "ImpactedLocation", "Subdivision"),
         type = "string",
         name = "Subdivision",
         target_id = prelude.String.id,
      }),
      Metro = schema.new({
         id = id.from(_N, "ImpactedLocation", "Metro"),
         type = "string",
         name = "Metro",
         target_id = prelude.String.id,
      }),
      City = schema.new({
         id = id.from(_N, "ImpactedLocation", "City"),
         type = "string",
         name = "City",
         target_id = prelude.String.id,
      }),
      Latitude = schema.new({
         id = id.from(_N, "ImpactedLocation", "Latitude"),
         type = "double",
         name = "Latitude",
         target_id = prelude.Double.id,
      }),
      Longitude = schema.new({
         id = id.from(_N, "ImpactedLocation", "Longitude"),
         type = "double",
         name = "Longitude",
         target_id = prelude.Double.id,
      }),
      CountryCode = schema.new({
         id = id.from(_N, "ImpactedLocation", "CountryCode"),
         type = "string",
         name = "CountryCode",
         target_id = prelude.String.id,
      }),
      SubdivisionCode = schema.new({
         id = id.from(_N, "ImpactedLocation", "SubdivisionCode"),
         type = "string",
         name = "SubdivisionCode",
         target_id = prelude.String.id,
      }),
      ServiceLocation = schema.new({
         id = id.from(_N, "ImpactedLocation", "ServiceLocation"),
         type = "string",
         name = "ServiceLocation",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ImpactedLocation", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CausedBy = schema.new({
         id = id.from(_N, "ImpactedLocation", "CausedBy"),
         type = "structure",
         name = "CausedBy",
         target_id = id.from(_N, "NetworkImpairment"),
         target = M.NetworkImpairment,
      }),
      InternetHealth = schema.new({
         id = id.from(_N, "ImpactedLocation", "InternetHealth"),
         type = "structure",
         name = "InternetHealth",
         target_id = id.from(_N, "InternetHealth"),
         target = M.InternetHealth,
      }),
      Ipv4Prefixes = schema.new({
         id = id.from(_N, "ImpactedLocation", "Ipv4Prefixes"),
         type = "list",
         name = "Ipv4Prefixes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetHealthEventOutput = schema.new({
   id = id.from(_N, "GetHealthEventOutput"),
   type = "structure",
   members = {
      EventArn = schema.new({
         id = id.from(_N, "GetHealthEventOutput", "EventArn"),
         type = "string",
         name = "EventArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventId = schema.new({
         id = id.from(_N, "GetHealthEventOutput", "EventId"),
         type = "string",
         name = "EventId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartedAt = schema.new({
         id = id.from(_N, "GetHealthEventOutput", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      EndedAt = schema.new({
         id = id.from(_N, "GetHealthEventOutput", "EndedAt"),
         type = "timestamp",
         name = "EndedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetHealthEventOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "GetHealthEventOutput", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ImpactedLocations = schema.new({
         id = id.from(_N, "GetHealthEventOutput", "ImpactedLocations"),
         type = "list",
         name = "ImpactedLocations",
         target_id = prelude.Document.id,
         list_member = M.ImpactedLocation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GetHealthEventOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PercentOfTotalTrafficImpacted = schema.new({
         id = id.from(_N, "GetHealthEventOutput", "PercentOfTotalTrafficImpacted"),
         type = "double",
         name = "PercentOfTotalTrafficImpacted",
         target_id = prelude.Double.id,
      }),
      ImpactType = schema.new({
         id = id.from(_N, "GetHealthEventOutput", "ImpactType"),
         type = "string",
         name = "ImpactType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      HealthScoreThreshold = schema.new({
         id = id.from(_N, "GetHealthEventOutput", "HealthScoreThreshold"),
         type = "double",
         name = "HealthScoreThreshold",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetInternetEventInput = schema.new({
   id = id.from(_N, "GetInternetEventInput"),
   type = "structure",
   members = {
      EventId = schema.new({
         id = id.from(_N, "GetInternetEventInput", "EventId"),
         type = "string",
         name = "EventId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetInternetEventOutput = schema.new({
   id = id.from(_N, "GetInternetEventOutput"),
   type = "structure",
   members = {
      EventId = schema.new({
         id = id.from(_N, "GetInternetEventOutput", "EventId"),
         type = "string",
         name = "EventId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventArn = schema.new({
         id = id.from(_N, "GetInternetEventOutput", "EventArn"),
         type = "string",
         name = "EventArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartedAt = schema.new({
         id = id.from(_N, "GetInternetEventOutput", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      EndedAt = schema.new({
         id = id.from(_N, "GetInternetEventOutput", "EndedAt"),
         type = "timestamp",
         name = "EndedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ClientLocation = schema.new({
         id = id.from(_N, "GetInternetEventOutput", "ClientLocation"),
         type = "structure",
         name = "ClientLocation",
         target_id = id.from(_N, "ClientLocation"),
         target = M.ClientLocation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventType = schema.new({
         id = id.from(_N, "GetInternetEventOutput", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventStatus = schema.new({
         id = id.from(_N, "GetInternetEventOutput", "EventStatus"),
         type = "string",
         name = "EventStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetMonitorInput = schema.new({
   id = id.from(_N, "GetMonitorInput"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "GetMonitorInput", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      LinkedAccountId = schema.new({
         id = id.from(_N, "GetMonitorInput", "LinkedAccountId"),
         type = "string",
         name = "LinkedAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "LinkedAccountId" },
         },
      }),
   },
})

M.GetMonitorOutput = schema.new({
   id = id.from(_N, "GetMonitorOutput"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "GetMonitorOutput", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MonitorArn = schema.new({
         id = id.from(_N, "GetMonitorOutput", "MonitorArn"),
         type = "string",
         name = "MonitorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Resources = schema.new({
         id = id.from(_N, "GetMonitorOutput", "Resources"),
         type = "list",
         name = "Resources",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GetMonitorOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetMonitorOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ModifiedAt = schema.new({
         id = id.from(_N, "GetMonitorOutput", "ModifiedAt"),
         type = "timestamp",
         name = "ModifiedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ProcessingStatus = schema.new({
         id = id.from(_N, "GetMonitorOutput", "ProcessingStatus"),
         type = "string",
         name = "ProcessingStatus",
         target_id = prelude.String.id,
      }),
      ProcessingStatusInfo = schema.new({
         id = id.from(_N, "GetMonitorOutput", "ProcessingStatusInfo"),
         type = "string",
         name = "ProcessingStatusInfo",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetMonitorOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      MaxCityNetworksToMonitor = schema.new({
         id = id.from(_N, "GetMonitorOutput", "MaxCityNetworksToMonitor"),
         type = "integer",
         name = "MaxCityNetworksToMonitor",
         target_id = prelude.Integer.id,
      }),
      InternetMeasurementsLogDelivery = schema.new({
         id = id.from(_N, "GetMonitorOutput", "InternetMeasurementsLogDelivery"),
         type = "structure",
         name = "InternetMeasurementsLogDelivery",
         target_id = id.from(_N, "InternetMeasurementsLogDelivery"),
         target = M.InternetMeasurementsLogDelivery,
      }),
      TrafficPercentageToMonitor = schema.new({
         id = id.from(_N, "GetMonitorOutput", "TrafficPercentageToMonitor"),
         type = "integer",
         name = "TrafficPercentageToMonitor",
         target_id = prelude.Integer.id,
      }),
      HealthEventsConfig = schema.new({
         id = id.from(_N, "GetMonitorOutput", "HealthEventsConfig"),
         type = "structure",
         name = "HealthEventsConfig",
         target_id = id.from(_N, "HealthEventsConfig"),
         target = M.HealthEventsConfig,
      }),
   },
})

M.GetQueryResultsInput = schema.new({
   id = id.from(_N, "GetQueryResultsInput"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "GetQueryResultsInput", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      QueryId = schema.new({
         id = id.from(_N, "GetQueryResultsInput", "QueryId"),
         type = "string",
         name = "QueryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetQueryResultsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "GetQueryResultsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.QueryField = schema.new({
   id = id.from(_N, "QueryField"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "QueryField", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "QueryField", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
   },
})

M.GetQueryResultsOutput = schema.new({
   id = id.from(_N, "GetQueryResultsOutput"),
   type = "structure",
   members = {
      Fields = schema.new({
         id = id.from(_N, "GetQueryResultsOutput", "Fields"),
         type = "list",
         name = "Fields",
         target_id = prelude.Document.id,
         list_member = M.QueryField,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Data = schema.new({
         id = id.from(_N, "GetQueryResultsOutput", "Data"),
         type = "list",
         name = "Data",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "list", list_member = prelude.String }),
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetQueryResultsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetQueryStatusInput = schema.new({
   id = id.from(_N, "GetQueryStatusInput"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "GetQueryStatusInput", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      QueryId = schema.new({
         id = id.from(_N, "GetQueryStatusInput", "QueryId"),
         type = "string",
         name = "QueryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetQueryStatusOutput = schema.new({
   id = id.from(_N, "GetQueryStatusOutput"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "GetQueryStatusOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.HealthEvent = schema.new({
   id = id.from(_N, "HealthEvent"),
   type = "structure",
   members = {
      EventArn = schema.new({
         id = id.from(_N, "HealthEvent", "EventArn"),
         type = "string",
         name = "EventArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventId = schema.new({
         id = id.from(_N, "HealthEvent", "EventId"),
         type = "string",
         name = "EventId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartedAt = schema.new({
         id = id.from(_N, "HealthEvent", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      EndedAt = schema.new({
         id = id.from(_N, "HealthEvent", "EndedAt"),
         type = "timestamp",
         name = "EndedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "HealthEvent", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "HealthEvent", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ImpactedLocations = schema.new({
         id = id.from(_N, "HealthEvent", "ImpactedLocations"),
         type = "list",
         name = "ImpactedLocations",
         target_id = prelude.Document.id,
         list_member = M.ImpactedLocation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "HealthEvent", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PercentOfTotalTrafficImpacted = schema.new({
         id = id.from(_N, "HealthEvent", "PercentOfTotalTrafficImpacted"),
         type = "double",
         name = "PercentOfTotalTrafficImpacted",
         target_id = prelude.Double.id,
      }),
      ImpactType = schema.new({
         id = id.from(_N, "HealthEvent", "ImpactType"),
         type = "string",
         name = "ImpactType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      HealthScoreThreshold = schema.new({
         id = id.from(_N, "HealthEvent", "HealthScoreThreshold"),
         type = "double",
         name = "HealthScoreThreshold",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.ListHealthEventsInput = schema.new({
   id = id.from(_N, "ListHealthEventsInput"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "ListHealthEventsInput", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "ListHealthEventsInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "StartTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "ListHealthEventsInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "EndTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListHealthEventsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListHealthEventsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      EventStatus = schema.new({
         id = id.from(_N, "ListHealthEventsInput", "EventStatus"),
         type = "string",
         name = "EventStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "EventStatus" },
         },
      }),
      LinkedAccountId = schema.new({
         id = id.from(_N, "ListHealthEventsInput", "LinkedAccountId"),
         type = "string",
         name = "LinkedAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "LinkedAccountId" },
         },
      }),
   },
})

M.ListHealthEventsOutput = schema.new({
   id = id.from(_N, "ListHealthEventsOutput"),
   type = "structure",
   members = {
      HealthEvents = schema.new({
         id = id.from(_N, "ListHealthEventsOutput", "HealthEvents"),
         type = "list",
         name = "HealthEvents",
         target_id = prelude.Document.id,
         list_member = M.HealthEvent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListHealthEventsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
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
      message = schema.new({
         id = id.from(_N, "InternalServerErrorException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ListInternetEventsInput = schema.new({
   id = id.from(_N, "ListInternetEventsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListInternetEventsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListInternetEventsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "InternetEventMaxResults" },
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "ListInternetEventsInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "StartTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "ListInternetEventsInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "EndTime" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      EventStatus = schema.new({
         id = id.from(_N, "ListInternetEventsInput", "EventStatus"),
         type = "string",
         name = "EventStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "EventStatus" },
         },
      }),
      EventType = schema.new({
         id = id.from(_N, "ListInternetEventsInput", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "EventType" },
         },
      }),
   },
})

M.InternetEventSummary = schema.new({
   id = id.from(_N, "InternetEventSummary"),
   type = "structure",
   members = {
      EventId = schema.new({
         id = id.from(_N, "InternetEventSummary", "EventId"),
         type = "string",
         name = "EventId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventArn = schema.new({
         id = id.from(_N, "InternetEventSummary", "EventArn"),
         type = "string",
         name = "EventArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartedAt = schema.new({
         id = id.from(_N, "InternetEventSummary", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      EndedAt = schema.new({
         id = id.from(_N, "InternetEventSummary", "EndedAt"),
         type = "timestamp",
         name = "EndedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ClientLocation = schema.new({
         id = id.from(_N, "InternetEventSummary", "ClientLocation"),
         type = "structure",
         name = "ClientLocation",
         target_id = id.from(_N, "ClientLocation"),
         target = M.ClientLocation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventType = schema.new({
         id = id.from(_N, "InternetEventSummary", "EventType"),
         type = "string",
         name = "EventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventStatus = schema.new({
         id = id.from(_N, "InternetEventSummary", "EventStatus"),
         type = "string",
         name = "EventStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListInternetEventsOutput = schema.new({
   id = id.from(_N, "ListInternetEventsOutput"),
   type = "structure",
   members = {
      InternetEvents = schema.new({
         id = id.from(_N, "ListInternetEventsOutput", "InternetEvents"),
         type = "list",
         name = "InternetEvents",
         target_id = prelude.Document.id,
         list_member = M.InternetEventSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListInternetEventsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceInput"),
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

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceOutput"),
   type = "structure",
   members = {
      Tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
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
      message = schema.new({
         id = id.from(_N, "NotFoundException", "message"),
         type = "string",
         name = "message",
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
      message = schema.new({
         id = id.from(_N, "TooManyRequestsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMonitorsInput = schema.new({
   id = id.from(_N, "ListMonitorsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListMonitorsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListMonitorsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      MonitorStatus = schema.new({
         id = id.from(_N, "ListMonitorsInput", "MonitorStatus"),
         type = "string",
         name = "MonitorStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MonitorStatus" },
         },
      }),
      IncludeLinkedAccounts = schema.new({
         id = id.from(_N, "ListMonitorsInput", "IncludeLinkedAccounts"),
         type = "boolean",
         name = "IncludeLinkedAccounts",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "IncludeLinkedAccounts" },
         },
      }),
   },
})

M.Monitor = schema.new({
   id = id.from(_N, "Monitor"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "Monitor", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MonitorArn = schema.new({
         id = id.from(_N, "Monitor", "MonitorArn"),
         type = "string",
         name = "MonitorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "Monitor", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProcessingStatus = schema.new({
         id = id.from(_N, "Monitor", "ProcessingStatus"),
         type = "string",
         name = "ProcessingStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMonitorsOutput = schema.new({
   id = id.from(_N, "ListMonitorsOutput"),
   type = "structure",
   members = {
      Monitors = schema.new({
         id = id.from(_N, "ListMonitorsOutput", "Monitors"),
         type = "list",
         name = "Monitors",
         target_id = prelude.Document.id,
         list_member = M.Monitor,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListMonitorsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartQueryInput = schema.new({
   id = id.from(_N, "StartQueryInput"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "StartQueryInput", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "StartQueryInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "StartQueryInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      QueryType = schema.new({
         id = id.from(_N, "StartQueryInput", "QueryType"),
         type = "string",
         name = "QueryType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FilterParameters = schema.new({
         id = id.from(_N, "StartQueryInput", "FilterParameters"),
         type = "list",
         name = "FilterParameters",
         target_id = prelude.Document.id,
         list_member = M.FilterParameter,
      }),
      LinkedAccountId = schema.new({
         id = id.from(_N, "StartQueryInput", "LinkedAccountId"),
         type = "string",
         name = "LinkedAccountId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartQueryOutput = schema.new({
   id = id.from(_N, "StartQueryOutput"),
   type = "structure",
   members = {
      QueryId = schema.new({
         id = id.from(_N, "StartQueryOutput", "QueryId"),
         type = "string",
         name = "QueryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopQueryInput = schema.new({
   id = id.from(_N, "StopQueryInput"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "StopQueryInput", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      QueryId = schema.new({
         id = id.from(_N, "StopQueryInput", "QueryId"),
         type = "string",
         name = "QueryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StopQueryOutput = schema.new({
   id = id.from(_N, "StopQueryOutput"),
   type = "structure",
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

M.UpdateMonitorInput = schema.new({
   id = id.from(_N, "UpdateMonitorInput"),
   type = "structure",
   members = {
      MonitorName = schema.new({
         id = id.from(_N, "UpdateMonitorInput", "MonitorName"),
         type = "string",
         name = "MonitorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourcesToAdd = schema.new({
         id = id.from(_N, "UpdateMonitorInput", "ResourcesToAdd"),
         type = "list",
         name = "ResourcesToAdd",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ResourcesToRemove = schema.new({
         id = id.from(_N, "UpdateMonitorInput", "ResourcesToRemove"),
         type = "list",
         name = "ResourcesToRemove",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateMonitorInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "UpdateMonitorInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      MaxCityNetworksToMonitor = schema.new({
         id = id.from(_N, "UpdateMonitorInput", "MaxCityNetworksToMonitor"),
         type = "integer",
         name = "MaxCityNetworksToMonitor",
         target_id = prelude.Integer.id,
      }),
      InternetMeasurementsLogDelivery = schema.new({
         id = id.from(_N, "UpdateMonitorInput", "InternetMeasurementsLogDelivery"),
         type = "structure",
         name = "InternetMeasurementsLogDelivery",
         target_id = id.from(_N, "InternetMeasurementsLogDelivery"),
         target = M.InternetMeasurementsLogDelivery,
      }),
      TrafficPercentageToMonitor = schema.new({
         id = id.from(_N, "UpdateMonitorInput", "TrafficPercentageToMonitor"),
         type = "integer",
         name = "TrafficPercentageToMonitor",
         target_id = prelude.Integer.id,
      }),
      HealthEventsConfig = schema.new({
         id = id.from(_N, "UpdateMonitorInput", "HealthEventsConfig"),
         type = "structure",
         name = "HealthEventsConfig",
         target_id = id.from(_N, "HealthEventsConfig"),
         target = M.HealthEventsConfig,
      }),
   },
})

M.UpdateMonitorOutput = schema.new({
   id = id.from(_N, "UpdateMonitorOutput"),
   type = "structure",
   members = {
      MonitorArn = schema.new({
         id = id.from(_N, "UpdateMonitorOutput", "MonitorArn"),
         type = "string",
         name = "MonitorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateMonitorOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceInput"),
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
      Tags = schema.new({
         id = id.from(_N, "TagResourceInput", "Tags"),
         type = "map",
         name = "Tags",
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
   id = id.from(_N, "TagResourceOutput"),
   type = "structure",
})

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceInput"),
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

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceOutput"),
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
   id = id.from("com.amazonaws.internetmonitor", "InternetMonitor20210603"),
   version = "2021-06-03",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateMonitor = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "CreateMonitor"),
   input = M.CreateMonitorInput,
   output = M.CreateMonitorOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v20210603/Monitors" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteMonitor = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "DeleteMonitor"),
   input = M.DeleteMonitorInput,
   output = M.DeleteMonitorOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v20210603/Monitors/{MonitorName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetHealthEvent = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "GetHealthEvent"),
   input = M.GetHealthEventInput,
   output = M.GetHealthEventOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v20210603/Monitors/{MonitorName}/HealthEvents/{EventId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetInternetEvent = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "GetInternetEvent"),
   input = M.GetInternetEventInput,
   output = M.GetInternetEventOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v20210603/InternetEvents/{EventId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetMonitor = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "GetMonitor"),
   input = M.GetMonitorInput,
   output = M.GetMonitorOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v20210603/Monitors/{MonitorName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetQueryResults = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "GetQueryResults"),
   input = M.GetQueryResultsInput,
   output = M.GetQueryResultsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Results" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetQueryStatus = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "GetQueryStatus"),
   input = M.GetQueryStatusInput,
   output = M.GetQueryStatusOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Status" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListHealthEvents = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "ListHealthEvents"),
   input = M.ListHealthEventsInput,
   output = M.ListHealthEventsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v20210603/Monitors/{MonitorName}/HealthEvents" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInternetEvents = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "ListInternetEvents"),
   input = M.ListInternetEventsInput,
   output = M.ListInternetEventsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v20210603/InternetEvents" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListMonitors = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "ListMonitors"),
   input = M.ListMonitorsInput,
   output = M.ListMonitorsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v20210603/Monitors" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartQuery = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "StartQuery"),
   input = M.StartQueryInput,
   output = M.StartQueryOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v20210603/Monitors/{MonitorName}/Queries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopQuery = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "StopQuery"),
   input = M.StopQueryInput,
   output = M.StopQueryOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateMonitor = schema.operation({
   id = id.from("com.amazonaws.internetmonitor", "UpdateMonitor"),
   input = M.UpdateMonitorInput,
   output = M.UpdateMonitorOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/v20210603/Monitors/{MonitorName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
