

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.simspaceweaver"

local M = {}

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.SimulationList = schema.new({ type = "list", list_member = M.SimulationMetadata })

M.SimulationAppList = schema.new({ type = "list", list_member = M.SimulationAppMetadata })

M.LogDestinations = schema.new({ type = "list", list_member = M.LogDestination })

M.DomainList = schema.new({ type = "list", list_member = M.Domain })

M.SimulationClockList = schema.new({ type = "list", list_member = M.SimulationClock })

M.LaunchCommandList = schema.new({ type = "list", list_member = prelude.String })

M.AppPortMappings = schema.new({ type = "list", list_member = M.SimulationAppPortMapping })

M.AccessDeniedException = schema.new({
   id = id.from(_N, "AccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "AccessDeniedException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.SimulationAppPortMapping = schema.new({
   id = id.from(_N, "SimulationAppPortMapping"),
   type = "structure",
   members = {
      Declared = schema.new({
         id = id.from(_N, "SimulationAppPortMapping", "Declared"),
         type = "integer",
         name = "Declared",
         target_id = prelude.Integer.id,
      }),
      Actual = schema.new({
         id = id.from(_N, "SimulationAppPortMapping", "Actual"),
         type = "integer",
         name = "Actual",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CloudWatchLogsLogGroup = schema.new({
   id = id.from(_N, "CloudWatchLogsLogGroup"),
   type = "structure",
   members = {
      LogGroupArn = schema.new({
         id = id.from(_N, "CloudWatchLogsLogGroup", "LogGroupArn"),
         type = "string",
         name = "LogGroupArn",
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

M.S3Destination = schema.new({
   id = id.from(_N, "S3Destination"),
   type = "structure",
   members = {
      BucketName = schema.new({
         id = id.from(_N, "S3Destination", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ObjectKeyPrefix = schema.new({
         id = id.from(_N, "S3Destination", "ObjectKeyPrefix"),
         type = "string",
         name = "ObjectKeyPrefix",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateSnapshotInput = schema.new({
   id = id.from(_N, "CreateSnapshotInput"),
   type = "structure",
   members = {
      Simulation = schema.new({
         id = id.from(_N, "CreateSnapshotInput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Destination = schema.new({
         id = id.from(_N, "CreateSnapshotInput", "Destination"),
         type = "structure",
         name = "Destination",
         target_id = id.from(_N, "S3Destination"),
         target = M.S3Destination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateSnapshotOutput = schema.new({
   id = id.from(_N, "CreateSnapshotOutput"),
   type = "structure",
})

M.InternalServerException = schema.new({
   id = id.from(_N, "InternalServerException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalServerException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ValidationException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteAppInput = schema.new({
   id = id.from(_N, "DeleteAppInput"),
   type = "structure",
   members = {
      Simulation = schema.new({
         id = id.from(_N, "DeleteAppInput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "simulation" },
         },
      }),
      Domain = schema.new({
         id = id.from(_N, "DeleteAppInput", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      App = schema.new({
         id = id.from(_N, "DeleteAppInput", "App"),
         type = "string",
         name = "App",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "app" },
         },
      }),
   },
})

M.DeleteAppOutput = schema.new({
   id = id.from(_N, "DeleteAppOutput"),
   type = "structure",
})

M.DeleteSimulationInput = schema.new({
   id = id.from(_N, "DeleteSimulationInput"),
   type = "structure",
   members = {
      Simulation = schema.new({
         id = id.from(_N, "DeleteSimulationInput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "simulation" },
         },
      }),
   },
})

M.DeleteSimulationOutput = schema.new({
   id = id.from(_N, "DeleteSimulationOutput"),
   type = "structure",
})

M.DescribeAppInput = schema.new({
   id = id.from(_N, "DescribeAppInput"),
   type = "structure",
   members = {
      Simulation = schema.new({
         id = id.from(_N, "DescribeAppInput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "simulation" },
         },
      }),
      Domain = schema.new({
         id = id.from(_N, "DescribeAppInput", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      App = schema.new({
         id = id.from(_N, "DescribeAppInput", "App"),
         type = "string",
         name = "App",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "app" },
         },
      }),
   },
})

M.SimulationAppEndpointInfo = schema.new({
   id = id.from(_N, "SimulationAppEndpointInfo"),
   type = "structure",
   members = {
      Address = schema.new({
         id = id.from(_N, "SimulationAppEndpointInfo", "Address"),
         type = "string",
         name = "Address",
         target_id = prelude.String.id,
      }),
      IngressPortMappings = schema.new({
         id = id.from(_N, "SimulationAppEndpointInfo", "IngressPortMappings"),
         type = "list",
         name = "IngressPortMappings",
         target_id = prelude.Document.id,
         list_member = M.SimulationAppPortMapping,
      }),
   },
})

M.LaunchOverrides = schema.new({
   id = id.from(_N, "LaunchOverrides"),
   type = "structure",
   members = {
      LaunchCommands = schema.new({
         id = id.from(_N, "LaunchOverrides", "LaunchCommands"),
         type = "list",
         name = "LaunchCommands",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribeAppOutput = schema.new({
   id = id.from(_N, "DescribeAppOutput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DescribeAppOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Simulation = schema.new({
         id = id.from(_N, "DescribeAppOutput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
      }),
      Domain = schema.new({
         id = id.from(_N, "DescribeAppOutput", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DescribeAppOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      TargetStatus = schema.new({
         id = id.from(_N, "DescribeAppOutput", "TargetStatus"),
         type = "string",
         name = "TargetStatus",
         target_id = prelude.String.id,
      }),
      LaunchOverrides = schema.new({
         id = id.from(_N, "DescribeAppOutput", "LaunchOverrides"),
         type = "structure",
         name = "LaunchOverrides",
         target_id = id.from(_N, "LaunchOverrides"),
         target = M.LaunchOverrides,
      }),
      Description = schema.new({
         id = id.from(_N, "DescribeAppOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EndpointInfo = schema.new({
         id = id.from(_N, "DescribeAppOutput", "EndpointInfo"),
         type = "structure",
         name = "EndpointInfo",
         target_id = id.from(_N, "SimulationAppEndpointInfo"),
         target = M.SimulationAppEndpointInfo,
      }),
   },
})

M.DescribeSimulationInput = schema.new({
   id = id.from(_N, "DescribeSimulationInput"),
   type = "structure",
   members = {
      Simulation = schema.new({
         id = id.from(_N, "DescribeSimulationInput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "simulation" },
         },
      }),
   },
})

M.SimulationClock = schema.new({
   id = id.from(_N, "SimulationClock"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "SimulationClock", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      TargetStatus = schema.new({
         id = id.from(_N, "SimulationClock", "TargetStatus"),
         type = "string",
         name = "TargetStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.Domain = schema.new({
   id = id.from(_N, "Domain"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Domain", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Lifecycle = schema.new({
         id = id.from(_N, "Domain", "Lifecycle"),
         type = "string",
         name = "Lifecycle",
         target_id = prelude.String.id,
      }),
   },
})

M.LiveSimulationState = schema.new({
   id = id.from(_N, "LiveSimulationState"),
   type = "structure",
   members = {
      Domains = schema.new({
         id = id.from(_N, "LiveSimulationState", "Domains"),
         type = "list",
         name = "Domains",
         target_id = prelude.Document.id,
         list_member = M.Domain,
      }),
      Clocks = schema.new({
         id = id.from(_N, "LiveSimulationState", "Clocks"),
         type = "list",
         name = "Clocks",
         target_id = prelude.Document.id,
         list_member = M.SimulationClock,
      }),
   },
})

M.LogDestination = schema.new({
   id = id.from(_N, "LogDestination"),
   type = "structure",
   members = {
      CloudWatchLogsLogGroup = schema.new({
         id = id.from(_N, "LogDestination", "CloudWatchLogsLogGroup"),
         type = "structure",
         name = "CloudWatchLogsLogGroup",
         target_id = id.from(_N, "CloudWatchLogsLogGroup"),
         target = M.CloudWatchLogsLogGroup,
      }),
   },
})

M.LoggingConfiguration = schema.new({
   id = id.from(_N, "LoggingConfiguration"),
   type = "structure",
   members = {
      Destinations = schema.new({
         id = id.from(_N, "LoggingConfiguration", "Destinations"),
         type = "list",
         name = "Destinations",
         target_id = prelude.Document.id,
         list_member = M.LogDestination,
      }),
   },
})

M.S3Location = schema.new({
   id = id.from(_N, "S3Location"),
   type = "structure",
   members = {
      BucketName = schema.new({
         id = id.from(_N, "S3Location", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ObjectKey = schema.new({
         id = id.from(_N, "S3Location", "ObjectKey"),
         type = "string",
         name = "ObjectKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeSimulationOutput = schema.new({
   id = id.from(_N, "DescribeSimulationOutput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ExecutionId = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "ExecutionId"),
         type = "string",
         name = "ExecutionId",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      TargetStatus = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "TargetStatus"),
         type = "string",
         name = "TargetStatus",
         target_id = prelude.String.id,
      }),
      SchemaS3Location = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "SchemaS3Location"),
         type = "structure",
         name = "SchemaS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
      SchemaError = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "SchemaError"),
         type = "string",
         name = "SchemaError",
         target_id = prelude.String.id,
      }),
      LoggingConfiguration = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "LoggingConfiguration"),
         type = "structure",
         name = "LoggingConfiguration",
         target_id = id.from(_N, "LoggingConfiguration"),
         target = M.LoggingConfiguration,
      }),
      LiveSimulationState = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "LiveSimulationState"),
         type = "structure",
         name = "LiveSimulationState",
         target_id = id.from(_N, "LiveSimulationState"),
         target = M.LiveSimulationState,
      }),
      MaximumDuration = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "MaximumDuration"),
         type = "string",
         name = "MaximumDuration",
         target_id = prelude.String.id,
      }),
      SnapshotS3Location = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "SnapshotS3Location"),
         type = "structure",
         name = "SnapshotS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
      StartError = schema.new({
         id = id.from(_N, "DescribeSimulationOutput", "StartError"),
         type = "string",
         name = "StartError",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAppsInput = schema.new({
   id = id.from(_N, "ListAppsInput"),
   type = "structure",
   members = {
      Simulation = schema.new({
         id = id.from(_N, "ListAppsInput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "simulation" },
         },
      }),
      Domain = schema.new({
         id = id.from(_N, "ListAppsInput", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListAppsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAppsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.SimulationAppMetadata = schema.new({
   id = id.from(_N, "SimulationAppMetadata"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "SimulationAppMetadata", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Simulation = schema.new({
         id = id.from(_N, "SimulationAppMetadata", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
      }),
      Domain = schema.new({
         id = id.from(_N, "SimulationAppMetadata", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "SimulationAppMetadata", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      TargetStatus = schema.new({
         id = id.from(_N, "SimulationAppMetadata", "TargetStatus"),
         type = "string",
         name = "TargetStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAppsOutput = schema.new({
   id = id.from(_N, "ListAppsOutput"),
   type = "structure",
   members = {
      Apps = schema.new({
         id = id.from(_N, "ListAppsOutput", "Apps"),
         type = "list",
         name = "Apps",
         target_id = prelude.Document.id,
         list_member = M.SimulationAppMetadata,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAppsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSimulationsInput = schema.new({
   id = id.from(_N, "ListSimulationsInput"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListSimulationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSimulationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.SimulationMetadata = schema.new({
   id = id.from(_N, "SimulationMetadata"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "SimulationMetadata", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "SimulationMetadata", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "SimulationMetadata", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "SimulationMetadata", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      TargetStatus = schema.new({
         id = id.from(_N, "SimulationMetadata", "TargetStatus"),
         type = "string",
         name = "TargetStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSimulationsOutput = schema.new({
   id = id.from(_N, "ListSimulationsOutput"),
   type = "structure",
   members = {
      Simulations = schema.new({
         id = id.from(_N, "ListSimulationsOutput", "Simulations"),
         type = "list",
         name = "Simulations",
         target_id = prelude.Document.id,
         list_member = M.SimulationMetadata,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSimulationsOutput", "NextToken"),
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

M.ServiceQuotaExceededException = schema.new({
   id = id.from(_N, "ServiceQuotaExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.StartAppInput = schema.new({
   id = id.from(_N, "StartAppInput"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "StartAppInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Simulation = schema.new({
         id = id.from(_N, "StartAppInput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Domain = schema.new({
         id = id.from(_N, "StartAppInput", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "StartAppInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "StartAppInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      LaunchOverrides = schema.new({
         id = id.from(_N, "StartAppInput", "LaunchOverrides"),
         type = "structure",
         name = "LaunchOverrides",
         target_id = id.from(_N, "LaunchOverrides"),
         target = M.LaunchOverrides,
      }),
   },
})

M.StartAppOutput = schema.new({
   id = id.from(_N, "StartAppOutput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "StartAppOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Domain = schema.new({
         id = id.from(_N, "StartAppOutput", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
      }),
      Simulation = schema.new({
         id = id.from(_N, "StartAppOutput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
      }),
   },
})

M.StartClockInput = schema.new({
   id = id.from(_N, "StartClockInput"),
   type = "structure",
   members = {
      Simulation = schema.new({
         id = id.from(_N, "StartClockInput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartClockOutput = schema.new({
   id = id.from(_N, "StartClockOutput"),
   type = "structure",
})

M.StartSimulationInput = schema.new({
   id = id.from(_N, "StartSimulationInput"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "StartSimulationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "StartSimulationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "StartSimulationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "StartSimulationInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SchemaS3Location = schema.new({
         id = id.from(_N, "StartSimulationInput", "SchemaS3Location"),
         type = "structure",
         name = "SchemaS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
      MaximumDuration = schema.new({
         id = id.from(_N, "StartSimulationInput", "MaximumDuration"),
         type = "string",
         name = "MaximumDuration",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "StartSimulationInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      SnapshotS3Location = schema.new({
         id = id.from(_N, "StartSimulationInput", "SnapshotS3Location"),
         type = "structure",
         name = "SnapshotS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
   },
})

M.StartSimulationOutput = schema.new({
   id = id.from(_N, "StartSimulationOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "StartSimulationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      ExecutionId = schema.new({
         id = id.from(_N, "StartSimulationOutput", "ExecutionId"),
         type = "string",
         name = "ExecutionId",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "StartSimulationOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.StopAppInput = schema.new({
   id = id.from(_N, "StopAppInput"),
   type = "structure",
   members = {
      Simulation = schema.new({
         id = id.from(_N, "StopAppInput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Domain = schema.new({
         id = id.from(_N, "StopAppInput", "Domain"),
         type = "string",
         name = "Domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      App = schema.new({
         id = id.from(_N, "StopAppInput", "App"),
         type = "string",
         name = "App",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopAppOutput = schema.new({
   id = id.from(_N, "StopAppOutput"),
   type = "structure",
})

M.StopClockInput = schema.new({
   id = id.from(_N, "StopClockInput"),
   type = "structure",
   members = {
      Simulation = schema.new({
         id = id.from(_N, "StopClockInput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopClockOutput = schema.new({
   id = id.from(_N, "StopClockOutput"),
   type = "structure",
})

M.StopSimulationInput = schema.new({
   id = id.from(_N, "StopSimulationInput"),
   type = "structure",
   members = {
      Simulation = schema.new({
         id = id.from(_N, "StopSimulationInput", "Simulation"),
         type = "string",
         name = "Simulation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopSimulationOutput = schema.new({
   id = id.from(_N, "StopSimulationOutput"),
   type = "structure",
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
   },
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
   id = id.from("com.amazonaws.simspaceweaver", "SimSpaceWeaver"),
   version = "2022-10-28",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSnapshot = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "CreateSnapshot"),
   input = M.CreateSnapshotInput,
   output = M.CreateSnapshotOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/createsnapshot" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApp = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "DeleteApp"),
   input = M.DeleteAppInput,
   output = M.DeleteAppOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/deleteapp" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSimulation = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "DeleteSimulation"),
   input = M.DeleteSimulationInput,
   output = M.DeleteSimulationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/deletesimulation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeApp = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "DescribeApp"),
   input = M.DescribeAppInput,
   output = M.DescribeAppOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/describeapp" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeSimulation = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "DescribeSimulation"),
   input = M.DescribeSimulationInput,
   output = M.DescribeSimulationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/describesimulation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApps = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "ListApps"),
   input = M.ListAppsInput,
   output = M.ListAppsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/listapps" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSimulations = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "ListSimulations"),
   input = M.ListSimulationsInput,
   output = M.ListSimulationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/listsimulations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartApp = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "StartApp"),
   input = M.StartAppInput,
   output = M.StartAppOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/startapp" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartClock = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "StartClock"),
   input = M.StartClockInput,
   output = M.StartClockOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/startclock" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartSimulation = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "StartSimulation"),
   input = M.StartSimulationInput,
   output = M.StartSimulationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/startsimulation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopApp = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "StopApp"),
   input = M.StopAppInput,
   output = M.StopAppOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/stopapp" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopClock = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "StopClock"),
   input = M.StopClockInput,
   output = M.StopClockOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/stopclock" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopSimulation = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "StopSimulation"),
   input = M.StopSimulationInput,
   output = M.StopSimulationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/stopsimulation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.simspaceweaver", "TagResource"),
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
   id = id.from("com.amazonaws.simspaceweaver", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
