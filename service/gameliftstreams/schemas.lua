

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.gameliftstreams"

local M = {}

M.FilePaths = schema.new({ type = "list", list_member = prelude.String })

M.ReplicationStatuses = schema.new({ type = "list", list_member = M.ReplicationStatus })

M.Tags = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ArnList = schema.new({ type = "list", list_member = prelude.String })

M.LocationStates = schema.new({ type = "list", list_member = M.LocationState })

M.LocationConfigurations = schema.new({ type = "list", list_member = M.LocationConfiguration })

M.Identifiers = schema.new({ type = "list", list_member = prelude.String })

M.GameLaunchArgList = schema.new({ type = "list", list_member = prelude.String })

M.EnvironmentVariables = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.StreamSessionSummaryList = schema.new({ type = "list", list_member = M.StreamSessionSummary })

M.LocationsList = schema.new({ type = "list", list_member = prelude.String })

M.LocationList = schema.new({ type = "list", list_member = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ApplicationSummaryList = schema.new({ type = "list", list_member = M.ApplicationSummary })

M.StreamGroupSummaryList = schema.new({ type = "list", list_member = M.StreamGroupSummary })

M.Ipv4CidrBlockList = schema.new({ type = "list", list_member = prelude.String })

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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VpcTransitConfiguration = schema.new({
   id = id.from(_N, "VpcTransitConfiguration"),
   type = "structure",
   members = {
      VpcId = schema.new({
         id = id.from(_N, "VpcTransitConfiguration", "VpcId"),
         type = "string",
         name = "VpcId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Ipv4CidrBlocks = schema.new({
         id = id.from(_N, "VpcTransitConfiguration", "Ipv4CidrBlocks"),
         type = "list",
         name = "Ipv4CidrBlocks",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LocationConfiguration = schema.new({
   id = id.from(_N, "LocationConfiguration"),
   type = "structure",
   members = {
      LocationName = schema.new({
         id = id.from(_N, "LocationConfiguration", "LocationName"),
         type = "string",
         name = "LocationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AlwaysOnCapacity = schema.new({
         id = id.from(_N, "LocationConfiguration", "AlwaysOnCapacity"),
         type = "integer",
         name = "AlwaysOnCapacity",
         target_id = prelude.Integer.id,
      }),
      OnDemandCapacity = schema.new({
         id = id.from(_N, "LocationConfiguration", "OnDemandCapacity"),
         type = "integer",
         name = "OnDemandCapacity",
         target_id = prelude.Integer.id,
      }),
      TargetIdleCapacity = schema.new({
         id = id.from(_N, "LocationConfiguration", "TargetIdleCapacity"),
         type = "integer",
         name = "TargetIdleCapacity",
         target_id = prelude.Integer.id,
      }),
      MaximumCapacity = schema.new({
         id = id.from(_N, "LocationConfiguration", "MaximumCapacity"),
         type = "integer",
         name = "MaximumCapacity",
         target_id = prelude.Integer.id,
      }),
      VpcTransitConfiguration = schema.new({
         id = id.from(_N, "LocationConfiguration", "VpcTransitConfiguration"),
         type = "structure",
         name = "VpcTransitConfiguration",
         target_id = id.from(_N, "VpcTransitConfiguration"),
         target = M.VpcTransitConfiguration,
      }),
   },
})

M.AddStreamGroupLocationsInput = schema.new({
   id = id.from(_N, "AddStreamGroupLocationsInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "AddStreamGroupLocationsInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      LocationConfigurations = schema.new({
         id = id.from(_N, "AddStreamGroupLocationsInput", "LocationConfigurations"),
         type = "list",
         name = "LocationConfigurations",
         target_id = prelude.Document.id,
         list_member = M.LocationConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VpcTransitConfigurationResponse = schema.new({
   id = id.from(_N, "VpcTransitConfigurationResponse"),
   type = "structure",
   members = {
      VpcId = schema.new({
         id = id.from(_N, "VpcTransitConfigurationResponse", "VpcId"),
         type = "string",
         name = "VpcId",
         target_id = prelude.String.id,
      }),
      Ipv4CidrBlocks = schema.new({
         id = id.from(_N, "VpcTransitConfigurationResponse", "Ipv4CidrBlocks"),
         type = "list",
         name = "Ipv4CidrBlocks",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      TransitGatewayId = schema.new({
         id = id.from(_N, "VpcTransitConfigurationResponse", "TransitGatewayId"),
         type = "string",
         name = "TransitGatewayId",
         target_id = prelude.String.id,
      }),
      TransitGatewayResourceShareArn = schema.new({
         id = id.from(_N, "VpcTransitConfigurationResponse", "TransitGatewayResourceShareArn"),
         type = "string",
         name = "TransitGatewayResourceShareArn",
         target_id = prelude.String.id,
      }),
   },
})

M.LocationState = schema.new({
   id = id.from(_N, "LocationState"),
   type = "structure",
   members = {
      LocationName = schema.new({
         id = id.from(_N, "LocationState", "LocationName"),
         type = "string",
         name = "LocationName",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "LocationState", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      AlwaysOnCapacity = schema.new({
         id = id.from(_N, "LocationState", "AlwaysOnCapacity"),
         type = "integer",
         name = "AlwaysOnCapacity",
         target_id = prelude.Integer.id,
      }),
      OnDemandCapacity = schema.new({
         id = id.from(_N, "LocationState", "OnDemandCapacity"),
         type = "integer",
         name = "OnDemandCapacity",
         target_id = prelude.Integer.id,
      }),
      TargetIdleCapacity = schema.new({
         id = id.from(_N, "LocationState", "TargetIdleCapacity"),
         type = "integer",
         name = "TargetIdleCapacity",
         target_id = prelude.Integer.id,
      }),
      MaximumCapacity = schema.new({
         id = id.from(_N, "LocationState", "MaximumCapacity"),
         type = "integer",
         name = "MaximumCapacity",
         target_id = prelude.Integer.id,
      }),
      RequestedCapacity = schema.new({
         id = id.from(_N, "LocationState", "RequestedCapacity"),
         type = "integer",
         name = "RequestedCapacity",
         target_id = prelude.Integer.id,
      }),
      AllocatedCapacity = schema.new({
         id = id.from(_N, "LocationState", "AllocatedCapacity"),
         type = "integer",
         name = "AllocatedCapacity",
         target_id = prelude.Integer.id,
      }),
      IdleCapacity = schema.new({
         id = id.from(_N, "LocationState", "IdleCapacity"),
         type = "integer",
         name = "IdleCapacity",
         target_id = prelude.Integer.id,
      }),
      InternalVpcIpv4CidrBlock = schema.new({
         id = id.from(_N, "LocationState", "InternalVpcIpv4CidrBlock"),
         type = "string",
         name = "InternalVpcIpv4CidrBlock",
         target_id = prelude.String.id,
      }),
      VpcTransitConfiguration = schema.new({
         id = id.from(_N, "LocationState", "VpcTransitConfiguration"),
         type = "structure",
         name = "VpcTransitConfiguration",
         target_id = id.from(_N, "VpcTransitConfigurationResponse"),
         target = M.VpcTransitConfigurationResponse,
      }),
   },
})

M.AddStreamGroupLocationsOutput = schema.new({
   id = id.from(_N, "AddStreamGroupLocationsOutput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "AddStreamGroupLocationsOutput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Locations = schema.new({
         id = id.from(_N, "AddStreamGroupLocationsOutput", "Locations"),
         type = "list",
         name = "Locations",
         target_id = prelude.Document.id,
         list_member = M.LocationState,
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
      Message = schema.new({
         id = id.from(_N, "InternalServerException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ThrottlingException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ValidationException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
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
      Message = schema.new({
         id = id.from(_N, "ConflictException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RuntimeEnvironment = schema.new({
   id = id.from(_N, "RuntimeEnvironment"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "RuntimeEnvironment", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Version = schema.new({
         id = id.from(_N, "RuntimeEnvironment", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateApplicationInput = schema.new({
   id = id.from(_N, "CreateApplicationInput"),
   type = "structure",
   members = {
      Description = schema.new({
         id = id.from(_N, "CreateApplicationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RuntimeEnvironment = schema.new({
         id = id.from(_N, "CreateApplicationInput", "RuntimeEnvironment"),
         type = "structure",
         name = "RuntimeEnvironment",
         target_id = id.from(_N, "RuntimeEnvironment"),
         target = M.RuntimeEnvironment,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExecutablePath = schema.new({
         id = id.from(_N, "CreateApplicationInput", "ExecutablePath"),
         type = "string",
         name = "ExecutablePath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApplicationSourceUri = schema.new({
         id = id.from(_N, "CreateApplicationInput", "ApplicationSourceUri"),
         type = "string",
         name = "ApplicationSourceUri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApplicationLogPaths = schema.new({
         id = id.from(_N, "CreateApplicationInput", "ApplicationLogPaths"),
         type = "list",
         name = "ApplicationLogPaths",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ApplicationLogOutputUri = schema.new({
         id = id.from(_N, "CreateApplicationInput", "ApplicationLogOutputUri"),
         type = "string",
         name = "ApplicationLogOutputUri",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateApplicationInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateApplicationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.ReplicationStatus = schema.new({
   id = id.from(_N, "ReplicationStatus"),
   type = "structure",
   members = {
      Location = schema.new({
         id = id.from(_N, "ReplicationStatus", "Location"),
         type = "string",
         name = "Location",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ReplicationStatus", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateApplicationOutput = schema.new({
   id = id.from(_N, "CreateApplicationOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      RuntimeEnvironment = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "RuntimeEnvironment"),
         type = "structure",
         name = "RuntimeEnvironment",
         target_id = id.from(_N, "RuntimeEnvironment"),
         target = M.RuntimeEnvironment,
      }),
      ExecutablePath = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "ExecutablePath"),
         type = "string",
         name = "ExecutablePath",
         target_id = prelude.String.id,
      }),
      ApplicationLogPaths = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "ApplicationLogPaths"),
         type = "list",
         name = "ApplicationLogPaths",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ApplicationLogOutputUri = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "ApplicationLogOutputUri"),
         type = "string",
         name = "ApplicationLogOutputUri",
         target_id = prelude.String.id,
      }),
      ApplicationSourceUri = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "ApplicationSourceUri"),
         type = "string",
         name = "ApplicationSourceUri",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      ReplicationStatuses = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "ReplicationStatuses"),
         type = "list",
         name = "ReplicationStatuses",
         target_id = prelude.Document.id,
         list_member = M.ReplicationStatus,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      AssociatedStreamGroups = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "AssociatedStreamGroups"),
         type = "list",
         name = "AssociatedStreamGroups",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DeleteApplicationInput = schema.new({
   id = id.from(_N, "DeleteApplicationInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "DeleteApplicationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteApplicationOutput = prelude.Unit

M.GetApplicationInput = schema.new({
   id = id.from(_N, "GetApplicationInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetApplicationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetApplicationOutput = schema.new({
   id = id.from(_N, "GetApplicationOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      RuntimeEnvironment = schema.new({
         id = id.from(_N, "GetApplicationOutput", "RuntimeEnvironment"),
         type = "structure",
         name = "RuntimeEnvironment",
         target_id = id.from(_N, "RuntimeEnvironment"),
         target = M.RuntimeEnvironment,
      }),
      ExecutablePath = schema.new({
         id = id.from(_N, "GetApplicationOutput", "ExecutablePath"),
         type = "string",
         name = "ExecutablePath",
         target_id = prelude.String.id,
      }),
      ApplicationLogPaths = schema.new({
         id = id.from(_N, "GetApplicationOutput", "ApplicationLogPaths"),
         type = "list",
         name = "ApplicationLogPaths",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ApplicationLogOutputUri = schema.new({
         id = id.from(_N, "GetApplicationOutput", "ApplicationLogOutputUri"),
         type = "string",
         name = "ApplicationLogOutputUri",
         target_id = prelude.String.id,
      }),
      ApplicationSourceUri = schema.new({
         id = id.from(_N, "GetApplicationOutput", "ApplicationSourceUri"),
         type = "string",
         name = "ApplicationSourceUri",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "GetApplicationOutput", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      ReplicationStatuses = schema.new({
         id = id.from(_N, "GetApplicationOutput", "ReplicationStatuses"),
         type = "list",
         name = "ReplicationStatuses",
         target_id = prelude.Document.id,
         list_member = M.ReplicationStatus,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetApplicationOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "GetApplicationOutput", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      AssociatedStreamGroups = schema.new({
         id = id.from(_N, "GetApplicationOutput", "AssociatedStreamGroups"),
         type = "list",
         name = "AssociatedStreamGroups",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListApplicationsInput = schema.new({
   id = id.from(_N, "ListApplicationsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListApplicationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListApplicationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.ApplicationSummary = schema.new({
   id = id.from(_N, "ApplicationSummary"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "ApplicationSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "ApplicationSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "ApplicationSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ApplicationSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "ApplicationSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "ApplicationSummary", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      RuntimeEnvironment = schema.new({
         id = id.from(_N, "ApplicationSummary", "RuntimeEnvironment"),
         type = "structure",
         name = "RuntimeEnvironment",
         target_id = id.from(_N, "RuntimeEnvironment"),
         target = M.RuntimeEnvironment,
      }),
   },
})

M.ListApplicationsOutput = schema.new({
   id = id.from(_N, "ListApplicationsOutput"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.ApplicationSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateApplicationInput = schema.new({
   id = id.from(_N, "UpdateApplicationInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ApplicationLogPaths = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "ApplicationLogPaths"),
         type = "list",
         name = "ApplicationLogPaths",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ApplicationLogOutputUri = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "ApplicationLogOutputUri"),
         type = "string",
         name = "ApplicationLogOutputUri",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateApplicationOutput = schema.new({
   id = id.from(_N, "UpdateApplicationOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      RuntimeEnvironment = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "RuntimeEnvironment"),
         type = "structure",
         name = "RuntimeEnvironment",
         target_id = id.from(_N, "RuntimeEnvironment"),
         target = M.RuntimeEnvironment,
      }),
      ExecutablePath = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "ExecutablePath"),
         type = "string",
         name = "ExecutablePath",
         target_id = prelude.String.id,
      }),
      ApplicationLogPaths = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "ApplicationLogPaths"),
         type = "list",
         name = "ApplicationLogPaths",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ApplicationLogOutputUri = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "ApplicationLogOutputUri"),
         type = "string",
         name = "ApplicationLogOutputUri",
         target_id = prelude.String.id,
      }),
      ApplicationSourceUri = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "ApplicationSourceUri"),
         type = "string",
         name = "ApplicationSourceUri",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      ReplicationStatuses = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "ReplicationStatuses"),
         type = "list",
         name = "ReplicationStatuses",
         target_id = prelude.Document.id,
         list_member = M.ReplicationStatus,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      AssociatedStreamGroups = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "AssociatedStreamGroups"),
         type = "list",
         name = "AssociatedStreamGroups",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.AssociateApplicationsInput = schema.new({
   id = id.from(_N, "AssociateApplicationsInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "AssociateApplicationsInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifiers = schema.new({
         id = id.from(_N, "AssociateApplicationsInput", "ApplicationIdentifiers"),
         type = "list",
         name = "ApplicationIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateApplicationsOutput = schema.new({
   id = id.from(_N, "AssociateApplicationsOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "AssociateApplicationsOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      ApplicationArns = schema.new({
         id = id.from(_N, "AssociateApplicationsOutput", "ApplicationArns"),
         type = "list",
         name = "ApplicationArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreateStreamGroupInput = schema.new({
   id = id.from(_N, "CreateStreamGroupInput"),
   type = "structure",
   members = {
      Description = schema.new({
         id = id.from(_N, "CreateStreamGroupInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StreamClass = schema.new({
         id = id.from(_N, "CreateStreamGroupInput", "StreamClass"),
         type = "string",
         name = "StreamClass",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DefaultApplicationIdentifier = schema.new({
         id = id.from(_N, "CreateStreamGroupInput", "DefaultApplicationIdentifier"),
         type = "string",
         name = "DefaultApplicationIdentifier",
         target_id = prelude.String.id,
      }),
      LocationConfigurations = schema.new({
         id = id.from(_N, "CreateStreamGroupInput", "LocationConfigurations"),
         type = "list",
         name = "LocationConfigurations",
         target_id = prelude.Document.id,
         list_member = M.LocationConfiguration,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateStreamGroupInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateStreamGroupInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.DefaultApplication = schema.new({
   id = id.from(_N, "DefaultApplication"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "DefaultApplication", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "DefaultApplication", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateStreamGroupOutput = schema.new({
   id = id.from(_N, "CreateStreamGroupOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DefaultApplication = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "DefaultApplication"),
         type = "structure",
         name = "DefaultApplication",
         target_id = id.from(_N, "DefaultApplication"),
         target = M.DefaultApplication,
      }),
      LocationStates = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "LocationStates"),
         type = "list",
         name = "LocationStates",
         target_id = prelude.Document.id,
         list_member = M.LocationState,
      }),
      StreamClass = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "StreamClass"),
         type = "string",
         name = "StreamClass",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ExpiresAt = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "ExpiresAt"),
         type = "timestamp",
         name = "ExpiresAt",
         target_id = prelude.Timestamp.id,
      }),
      AssociatedApplications = schema.new({
         id = id.from(_N, "CreateStreamGroupOutput", "AssociatedApplications"),
         type = "list",
         name = "AssociatedApplications",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreateStreamSessionConnectionInput = schema.new({
   id = id.from(_N, "CreateStreamSessionConnectionInput"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateStreamSessionConnectionInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "CreateStreamSessionConnectionInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      StreamSessionIdentifier = schema.new({
         id = id.from(_N, "CreateStreamSessionConnectionInput", "StreamSessionIdentifier"),
         type = "string",
         name = "StreamSessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SignalRequest = schema.new({
         id = id.from(_N, "CreateStreamSessionConnectionInput", "SignalRequest"),
         type = "string",
         name = "SignalRequest",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateStreamSessionConnectionOutput = schema.new({
   id = id.from(_N, "CreateStreamSessionConnectionOutput"),
   type = "structure",
   members = {
      SignalResponse = schema.new({
         id = id.from(_N, "CreateStreamSessionConnectionOutput", "SignalResponse"),
         type = "string",
         name = "SignalResponse",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteStreamGroupInput = schema.new({
   id = id.from(_N, "DeleteStreamGroupInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "DeleteStreamGroupInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteStreamGroupOutput = prelude.Unit

M.DisassociateApplicationsInput = schema.new({
   id = id.from(_N, "DisassociateApplicationsInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "DisassociateApplicationsInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifiers = schema.new({
         id = id.from(_N, "DisassociateApplicationsInput", "ApplicationIdentifiers"),
         type = "list",
         name = "ApplicationIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateApplicationsOutput = schema.new({
   id = id.from(_N, "DisassociateApplicationsOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DisassociateApplicationsOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      ApplicationArns = schema.new({
         id = id.from(_N, "DisassociateApplicationsOutput", "ApplicationArns"),
         type = "list",
         name = "ApplicationArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ExportFilesMetadata = schema.new({
   id = id.from(_N, "ExportFilesMetadata"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "ExportFilesMetadata", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "ExportFilesMetadata", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      OutputUri = schema.new({
         id = id.from(_N, "ExportFilesMetadata", "OutputUri"),
         type = "string",
         name = "OutputUri",
         target_id = prelude.String.id,
      }),
   },
})

M.ExportStreamSessionFilesInput = schema.new({
   id = id.from(_N, "ExportStreamSessionFilesInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "ExportStreamSessionFilesInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      StreamSessionIdentifier = schema.new({
         id = id.from(_N, "ExportStreamSessionFilesInput", "StreamSessionIdentifier"),
         type = "string",
         name = "StreamSessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      OutputUri = schema.new({
         id = id.from(_N, "ExportStreamSessionFilesInput", "OutputUri"),
         type = "string",
         name = "OutputUri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ExportStreamSessionFilesOutput = schema.new({
   id = id.from(_N, "ExportStreamSessionFilesOutput"),
   type = "structure",
})

M.GetStreamSessionInput = schema.new({
   id = id.from(_N, "GetStreamSessionInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetStreamSessionInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      StreamSessionIdentifier = schema.new({
         id = id.from(_N, "GetStreamSessionInput", "StreamSessionIdentifier"),
         type = "string",
         name = "StreamSessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.PerformanceStatsConfiguration = schema.new({
   id = id.from(_N, "PerformanceStatsConfiguration"),
   type = "structure",
   members = {
      SharedWithClient = schema.new({
         id = id.from(_N, "PerformanceStatsConfiguration", "SharedWithClient"),
         type = "boolean",
         name = "SharedWithClient",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GetStreamSessionOutput = schema.new({
   id = id.from(_N, "GetStreamSessionOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      StreamGroupId = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "StreamGroupId"),
         type = "string",
         name = "StreamGroupId",
         target_id = prelude.String.id,
      }),
      UserId = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      Protocol = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
      Location = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "Location"),
         type = "string",
         name = "Location",
         target_id = prelude.String.id,
      }),
      SignalRequest = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "SignalRequest"),
         type = "string",
         name = "SignalRequest",
         target_id = prelude.String.id,
      }),
      SignalResponse = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "SignalResponse"),
         type = "string",
         name = "SignalResponse",
         target_id = prelude.String.id,
      }),
      ConnectionTimeoutSeconds = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "ConnectionTimeoutSeconds"),
         type = "integer",
         name = "ConnectionTimeoutSeconds",
         target_id = prelude.Integer.id,
      }),
      SessionLengthSeconds = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "SessionLengthSeconds"),
         type = "integer",
         name = "SessionLengthSeconds",
         target_id = prelude.Integer.id,
      }),
      AdditionalLaunchArgs = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "AdditionalLaunchArgs"),
         type = "list",
         name = "AdditionalLaunchArgs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AdditionalEnvironmentVariables = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "AdditionalEnvironmentVariables"),
         type = "map",
         name = "AdditionalEnvironmentVariables",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      PerformanceStatsConfiguration = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "PerformanceStatsConfiguration"),
         type = "structure",
         name = "PerformanceStatsConfiguration",
         target_id = id.from(_N, "PerformanceStatsConfiguration"),
         target = M.PerformanceStatsConfiguration,
      }),
      LogFileLocationUri = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "LogFileLocationUri"),
         type = "string",
         name = "LogFileLocationUri",
         target_id = prelude.String.id,
      }),
      WebSdkProtocolUrl = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "WebSdkProtocolUrl"),
         type = "string",
         name = "WebSdkProtocolUrl",
         target_id = prelude.String.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ApplicationArn = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "ApplicationArn"),
         type = "string",
         name = "ApplicationArn",
         target_id = prelude.String.id,
      }),
      ExportFilesMetadata = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "ExportFilesMetadata"),
         type = "structure",
         name = "ExportFilesMetadata",
         target_id = id.from(_N, "ExportFilesMetadata"),
         target = M.ExportFilesMetadata,
      }),
   },
})

M.ListStreamSessionsInput = schema.new({
   id = id.from(_N, "ListStreamSessionsInput"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "ListStreamSessionsInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "Status" },
         },
      }),
      ExportFilesStatus = schema.new({
         id = id.from(_N, "ListStreamSessionsInput", "ExportFilesStatus"),
         type = "string",
         name = "ExportFilesStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ExportFilesStatus" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListStreamSessionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListStreamSessionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "ListStreamSessionsInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StreamSessionSummary = schema.new({
   id = id.from(_N, "StreamSessionSummary"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "StreamSessionSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      UserId = schema.new({
         id = id.from(_N, "StreamSessionSummary", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "StreamSessionSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "StreamSessionSummary", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      Protocol = schema.new({
         id = id.from(_N, "StreamSessionSummary", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "StreamSessionSummary", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "StreamSessionSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ApplicationArn = schema.new({
         id = id.from(_N, "StreamSessionSummary", "ApplicationArn"),
         type = "string",
         name = "ApplicationArn",
         target_id = prelude.String.id,
      }),
      ExportFilesMetadata = schema.new({
         id = id.from(_N, "StreamSessionSummary", "ExportFilesMetadata"),
         type = "structure",
         name = "ExportFilesMetadata",
         target_id = id.from(_N, "ExportFilesMetadata"),
         target = M.ExportFilesMetadata,
      }),
      Location = schema.new({
         id = id.from(_N, "StreamSessionSummary", "Location"),
         type = "string",
         name = "Location",
         target_id = prelude.String.id,
      }),
   },
})

M.ListStreamSessionsOutput = schema.new({
   id = id.from(_N, "ListStreamSessionsOutput"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListStreamSessionsOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.StreamSessionSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListStreamSessionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListStreamSessionsByAccountInput = schema.new({
   id = id.from(_N, "ListStreamSessionsByAccountInput"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "ListStreamSessionsByAccountInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "Status" },
         },
      }),
      ExportFilesStatus = schema.new({
         id = id.from(_N, "ListStreamSessionsByAccountInput", "ExportFilesStatus"),
         type = "string",
         name = "ExportFilesStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ExportFilesStatus" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListStreamSessionsByAccountInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListStreamSessionsByAccountInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.ListStreamSessionsByAccountOutput = schema.new({
   id = id.from(_N, "ListStreamSessionsByAccountOutput"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListStreamSessionsByAccountOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.StreamSessionSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListStreamSessionsByAccountOutput", "NextToken"),
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
   id = id.from(_N, "ListTagsForResourceResponse"),
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

M.RemoveStreamGroupLocationsInput = schema.new({
   id = id.from(_N, "RemoveStreamGroupLocationsInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "RemoveStreamGroupLocationsInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Locations = schema.new({
         id = id.from(_N, "RemoveStreamGroupLocationsInput", "Locations"),
         type = "list",
         name = "Locations",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "locations" },
         },
      }),
   },
})

M.RemoveStreamGroupLocationsOutput = prelude.Unit

M.StartStreamSessionInput = schema.new({
   id = id.from(_N, "StartStreamSessionInput"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Identifier = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Protocol = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SignalRequest = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "SignalRequest"),
         type = "string",
         name = "SignalRequest",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserId = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
      }),
      Locations = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "Locations"),
         type = "list",
         name = "Locations",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ConnectionTimeoutSeconds = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "ConnectionTimeoutSeconds"),
         type = "integer",
         name = "ConnectionTimeoutSeconds",
         target_id = prelude.Integer.id,
      }),
      SessionLengthSeconds = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "SessionLengthSeconds"),
         type = "integer",
         name = "SessionLengthSeconds",
         target_id = prelude.Integer.id,
      }),
      AdditionalLaunchArgs = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "AdditionalLaunchArgs"),
         type = "list",
         name = "AdditionalLaunchArgs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AdditionalEnvironmentVariables = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "AdditionalEnvironmentVariables"),
         type = "map",
         name = "AdditionalEnvironmentVariables",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      PerformanceStatsConfiguration = schema.new({
         id = id.from(_N, "StartStreamSessionInput", "PerformanceStatsConfiguration"),
         type = "structure",
         name = "PerformanceStatsConfiguration",
         target_id = id.from(_N, "PerformanceStatsConfiguration"),
         target = M.PerformanceStatsConfiguration,
      }),
   },
})

M.StartStreamSessionOutput = schema.new({
   id = id.from(_N, "StartStreamSessionOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      StreamGroupId = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "StreamGroupId"),
         type = "string",
         name = "StreamGroupId",
         target_id = prelude.String.id,
      }),
      UserId = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      Protocol = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
      Location = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "Location"),
         type = "string",
         name = "Location",
         target_id = prelude.String.id,
      }),
      SignalRequest = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "SignalRequest"),
         type = "string",
         name = "SignalRequest",
         target_id = prelude.String.id,
      }),
      SignalResponse = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "SignalResponse"),
         type = "string",
         name = "SignalResponse",
         target_id = prelude.String.id,
      }),
      ConnectionTimeoutSeconds = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "ConnectionTimeoutSeconds"),
         type = "integer",
         name = "ConnectionTimeoutSeconds",
         target_id = prelude.Integer.id,
      }),
      SessionLengthSeconds = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "SessionLengthSeconds"),
         type = "integer",
         name = "SessionLengthSeconds",
         target_id = prelude.Integer.id,
      }),
      AdditionalLaunchArgs = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "AdditionalLaunchArgs"),
         type = "list",
         name = "AdditionalLaunchArgs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AdditionalEnvironmentVariables = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "AdditionalEnvironmentVariables"),
         type = "map",
         name = "AdditionalEnvironmentVariables",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      PerformanceStatsConfiguration = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "PerformanceStatsConfiguration"),
         type = "structure",
         name = "PerformanceStatsConfiguration",
         target_id = id.from(_N, "PerformanceStatsConfiguration"),
         target = M.PerformanceStatsConfiguration,
      }),
      LogFileLocationUri = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "LogFileLocationUri"),
         type = "string",
         name = "LogFileLocationUri",
         target_id = prelude.String.id,
      }),
      WebSdkProtocolUrl = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "WebSdkProtocolUrl"),
         type = "string",
         name = "WebSdkProtocolUrl",
         target_id = prelude.String.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ApplicationArn = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "ApplicationArn"),
         type = "string",
         name = "ApplicationArn",
         target_id = prelude.String.id,
      }),
      ExportFilesMetadata = schema.new({
         id = id.from(_N, "StartStreamSessionOutput", "ExportFilesMetadata"),
         type = "structure",
         name = "ExportFilesMetadata",
         target_id = id.from(_N, "ExportFilesMetadata"),
         target = M.ExportFilesMetadata,
      }),
   },
})

M.GetStreamGroupInput = schema.new({
   id = id.from(_N, "GetStreamGroupInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetStreamGroupInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetStreamGroupOutput = schema.new({
   id = id.from(_N, "GetStreamGroupOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DefaultApplication = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "DefaultApplication"),
         type = "structure",
         name = "DefaultApplication",
         target_id = id.from(_N, "DefaultApplication"),
         target = M.DefaultApplication,
      }),
      LocationStates = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "LocationStates"),
         type = "list",
         name = "LocationStates",
         target_id = prelude.Document.id,
         list_member = M.LocationState,
      }),
      StreamClass = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "StreamClass"),
         type = "string",
         name = "StreamClass",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ExpiresAt = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "ExpiresAt"),
         type = "timestamp",
         name = "ExpiresAt",
         target_id = prelude.Timestamp.id,
      }),
      AssociatedApplications = schema.new({
         id = id.from(_N, "GetStreamGroupOutput", "AssociatedApplications"),
         type = "list",
         name = "AssociatedApplications",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListStreamGroupsInput = schema.new({
   id = id.from(_N, "ListStreamGroupsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListStreamGroupsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListStreamGroupsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.StreamGroupSummary = schema.new({
   id = id.from(_N, "StreamGroupSummary"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "StreamGroupSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "StreamGroupSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "StreamGroupSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DefaultApplication = schema.new({
         id = id.from(_N, "StreamGroupSummary", "DefaultApplication"),
         type = "structure",
         name = "DefaultApplication",
         target_id = id.from(_N, "DefaultApplication"),
         target = M.DefaultApplication,
      }),
      StreamClass = schema.new({
         id = id.from(_N, "StreamGroupSummary", "StreamClass"),
         type = "string",
         name = "StreamClass",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "StreamGroupSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "StreamGroupSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "StreamGroupSummary", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ExpiresAt = schema.new({
         id = id.from(_N, "StreamGroupSummary", "ExpiresAt"),
         type = "timestamp",
         name = "ExpiresAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListStreamGroupsOutput = schema.new({
   id = id.from(_N, "ListStreamGroupsOutput"),
   type = "structure",
   members = {
      Items = schema.new({
         id = id.from(_N, "ListStreamGroupsOutput", "Items"),
         type = "list",
         name = "Items",
         target_id = prelude.Document.id,
         list_member = M.StreamGroupSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListStreamGroupsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateStreamGroupInput = schema.new({
   id = id.from(_N, "UpdateStreamGroupInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "UpdateStreamGroupInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      LocationConfigurations = schema.new({
         id = id.from(_N, "UpdateStreamGroupInput", "LocationConfigurations"),
         type = "list",
         name = "LocationConfigurations",
         target_id = prelude.Document.id,
         list_member = M.LocationConfiguration,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateStreamGroupInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DefaultApplicationIdentifier = schema.new({
         id = id.from(_N, "UpdateStreamGroupInput", "DefaultApplicationIdentifier"),
         type = "string",
         name = "DefaultApplicationIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateStreamGroupOutput = schema.new({
   id = id.from(_N, "UpdateStreamGroupOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DefaultApplication = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "DefaultApplication"),
         type = "structure",
         name = "DefaultApplication",
         target_id = id.from(_N, "DefaultApplication"),
         target = M.DefaultApplication,
      }),
      LocationStates = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "LocationStates"),
         type = "list",
         name = "LocationStates",
         target_id = prelude.Document.id,
         list_member = M.LocationState,
      }),
      StreamClass = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "StreamClass"),
         type = "string",
         name = "StreamClass",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ExpiresAt = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "ExpiresAt"),
         type = "timestamp",
         name = "ExpiresAt",
         target_id = prelude.Timestamp.id,
      }),
      AssociatedApplications = schema.new({
         id = id.from(_N, "UpdateStreamGroupOutput", "AssociatedApplications"),
         type = "list",
         name = "AssociatedApplications",
         target_id = prelude.Document.id,
         list_member = prelude.String,
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
   id = id.from(_N, "TagResourceResponse"),
   type = "structure",
})

M.TerminateStreamSessionInput = schema.new({
   id = id.from(_N, "TerminateStreamSessionInput"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "TerminateStreamSessionInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      StreamSessionIdentifier = schema.new({
         id = id.from(_N, "TerminateStreamSessionInput", "StreamSessionIdentifier"),
         type = "string",
         name = "StreamSessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TerminateStreamSessionOutput = prelude.Unit

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
   id = id.from("com.amazonaws.gameliftstreams", "GameLiftStreams"),
   version = "2018-05-10",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddStreamGroupLocations = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "AddStreamGroupLocations"),
   input = M.AddStreamGroupLocationsInput,
   output = M.AddStreamGroupLocationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/streamgroups/{Identifier}/locations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateApplications = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "AssociateApplications"),
   input = M.AssociateApplicationsInput,
   output = M.AssociateApplicationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/streamgroups/{Identifier}/associations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateApplication = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "CreateApplication"),
   input = M.CreateApplicationInput,
   output = M.CreateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateStreamGroup = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "CreateStreamGroup"),
   input = M.CreateStreamGroupInput,
   output = M.CreateStreamGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/streamgroups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateStreamSessionConnection = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "CreateStreamSessionConnection"),
   input = M.CreateStreamSessionConnectionInput,
   output = M.CreateStreamSessionConnectionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/connections" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApplication = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "DeleteApplication"),
   input = M.DeleteApplicationInput,
   output = M.DeleteApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/applications/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteStreamGroup = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "DeleteStreamGroup"),
   input = M.DeleteStreamGroupInput,
   output = M.DeleteStreamGroupOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/streamgroups/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateApplications = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "DisassociateApplications"),
   input = M.DisassociateApplicationsInput,
   output = M.DisassociateApplicationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/streamgroups/{Identifier}/disassociations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ExportStreamSessionFiles = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "ExportStreamSessionFiles"),
   input = M.ExportStreamSessionFilesInput,
   output = M.ExportStreamSessionFilesOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/exportfiles" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApplication = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "GetApplication"),
   input = M.GetApplicationInput,
   output = M.GetApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetStreamGroup = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "GetStreamGroup"),
   input = M.GetStreamGroupInput,
   output = M.GetStreamGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/streamgroups/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetStreamSession = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "GetStreamSession"),
   input = M.GetStreamSessionInput,
   output = M.GetStreamSessionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApplications = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "ListApplications"),
   input = M.ListApplicationsInput,
   output = M.ListApplicationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListStreamGroups = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "ListStreamGroups"),
   input = M.ListStreamGroupsInput,
   output = M.ListStreamGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/streamgroups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListStreamSessions = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "ListStreamSessions"),
   input = M.ListStreamSessionsInput,
   output = M.ListStreamSessionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/streamgroups/{Identifier}/streamsessions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListStreamSessionsByAccount = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "ListStreamSessionsByAccount"),
   input = M.ListStreamSessionsByAccountInput,
   output = M.ListStreamSessionsByAccountOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/streamsessions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveStreamGroupLocations = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "RemoveStreamGroupLocations"),
   input = M.RemoveStreamGroupLocationsInput,
   output = M.RemoveStreamGroupLocationsOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/streamgroups/{Identifier}/locations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartStreamSession = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "StartStreamSession"),
   input = M.StartStreamSessionInput,
   output = M.StartStreamSessionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/streamgroups/{Identifier}/streamsessions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TerminateStreamSession = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "TerminateStreamSession"),
   input = M.TerminateStreamSessionInput,
   output = M.TerminateStreamSessionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApplication = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "UpdateApplication"),
   input = M.UpdateApplicationInput,
   output = M.UpdateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/applications/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateStreamGroup = schema.operation({
   id = id.from("com.amazonaws.gameliftstreams", "UpdateStreamGroup"),
   input = M.UpdateStreamGroupInput,
   output = M.UpdateStreamGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/streamgroups/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
